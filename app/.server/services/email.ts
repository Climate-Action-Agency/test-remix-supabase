/* Using Twilio SendGrid's v3 Node.js Library: https://github.com/sendgrid/sendgrid-nodejs

  Usage:
    import { sendEmailWithTemplate, EmailTemplate } from '~/.server/services/email'
    await sendEmailWithTemplate(EmailTemplate.GenericEmail, emailAddress, { firstName, subject, html });

  Manual mode:
    await sendEmail({ to, subject, text/html });
*/

import sendgridEmail, { MailDataRequired } from '@sendgrid/mail';
import { isDevelopment } from '~/config/config';

sendgridEmail.setApiKey(process.env.SENDGRID_API_KEY!);

const DEFAULT_EMAIL_SENDER = process.env.EMAIL_SENDER ?? 'platform@climateaction.agency';

type EmailMessageData = Omit<MailDataRequired, 'from'> & {
  to: string;
  subject: string;
  text?: string;
  html?: string;
};

export async function sendEmail(messageData: EmailMessageData) {
  const newMessage = {
    from: DEFAULT_EMAIL_SENDER,
    ...messageData,
  };
  if (isDevelopment) {
    console.log('📧 Email NOT sent:', newMessage);
  } else {
    const [response] = await sendgridEmail.send(newMessage as MailDataRequired);
    return response;
  }
  return null;
}

/* ----- Templates: https://mc.sendgrid.com/dynamic-templates ----- */

// Inside the template editor, use double {{variable}} for plain text, and triple {{{variable}}} for HTML markup
enum EmailTemplate {
  GenericEmail = 'd-de3300ebee2c45aea13abc690017e47d',
  UserInvitation = 'd-3a10e3247e734097a15d5afdea451280',
  DataCollectionInvitation = 'd-eb4d858c2ab74dfc9cc66ad858535aad',
  DataCollectionReviewInvitation = 'd-f730173d706840cd9c5bc66f420aa4e0',
  DataCollectionReopen = 'd-7104547c78bf416a8bbee01df33659da',
}

type TemplateData = Record<string, string | number>;

async function sendEmailWithTemplate(
  templateId: EmailTemplate,
  to: string,
  templateVariables: TemplateData,
) {
  const newMessage = {
    to,
    templateId: templateId,
    dynamicTemplateData: templateVariables,
  };
  return await sendEmail(newMessage as EmailMessageData);
}

// GenericEmail
interface GenericEmailTemplateData extends TemplateData {
  firstName: string;
  subject: string;
  html: string;
}

export const sendEmailGenericEmail = (to: string, templateVariables: GenericEmailTemplateData) =>
  sendEmailWithTemplate(EmailTemplate.GenericEmail, to, templateVariables);

// UserInvitation
interface UserInvitationTemplateData extends TemplateData {
  fromEmail: string;
  accountName: string;
  inviteUrl: string;
}

export const sendEmailUserInvitation = (
  to: string,
  templateVariables: UserInvitationTemplateData,
) => sendEmailWithTemplate(EmailTemplate.UserInvitation, to, templateVariables);

/* ----- Data Collection ----- */

// DataCollectionInvitation
interface DataCollectionInvitationTemplateData extends TemplateData {
  fromEmail: string;
  accountName: string;
  categories: string;
  dataCollectionUrl: string;
}

export const sendEmailDataCollectionInvitation = (
  to: string,
  templateVariables: DataCollectionInvitationTemplateData,
) => sendEmailWithTemplate(EmailTemplate.DataCollectionInvitation, to, templateVariables);

// DataCollectionReviewInvitation
export const sendEmailDataCollectionReviewInvitation = (
  to: string,
  templateVariables: DataCollectionInvitationTemplateData,
) => sendEmailWithTemplate(EmailTemplate.DataCollectionReviewInvitation, to, templateVariables);

// DataCollectionReopen
export const sendEmailDataCollectionReopen = (
  to: string,
  templateVariables: DataCollectionInvitationTemplateData,
) => sendEmailWithTemplate(EmailTemplate.DataCollectionReopen, to, templateVariables);
