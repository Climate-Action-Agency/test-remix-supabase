-- This is every time you run `supabase start` or `supabase db reset`
-- https://supabase.com/docs/guides/cli/seeding-your-database

INSERT INTO "auth"."users"
  ("email", "id", "instance_id", "aud", "role", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous")
VALUES
	('testing@climateaction.agency', 'da351548-dcb7-4b04-9094-8a55f074024a', '00000000-0000-0000-0000-000000000000', 'authenticated', 'authenticated', '$2a$10$.th1o6Qo.qCrJnJxEM38KO1EXwXQQpjC0HBd23h6WNYxWcCAD3dsK', '2024-07-26 10:52:08.26163+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-07-26 10:52:08.264035+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "da351548-dcb7-4b04-9094-8a55f074024a", "email": "testing@climateaction.agency", "email_verified": false, "phone_verified": false}', NULL, '2024-07-26 10:52:08.255625+00', '2024-07-26 10:52:08.265658+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('tom@climateaction.agency', '2faba613-a99b-4577-bcbe-499a2fccf461', '00000000-0000-0000-0000-000000000000', 'authenticated', 'authenticated', '$2a$10$ISeazxw36QScjD126/wVMOznHLxZuQ42cltxjBN.f4Aa/cU2elLGC', '2024-07-26 10:53:53.696084+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-07-26 10:53:53.703253+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "2faba613-a99b-4577-bcbe-499a2fccf461", "email": "tom@climateaction.agency", "email_verified": false, "phone_verified": false}', NULL, '2024-07-26 10:53:53.692529+00', '2024-07-26 10:53:53.70421+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('da351548-dcb7-4b04-9094-8a55f074024a', 'da351548-dcb7-4b04-9094-8a55f074024a', '{"sub": "da351548-dcb7-4b04-9094-8a55f074024a", "email": "testing@climateaction.agency", "email_verified": false, "phone_verified": false}', 'email', '2024-07-26 10:52:08.259926+00', '2024-07-26 10:52:08.259947+00', '2024-07-26 10:52:08.259947+00', '55333f28-9130-4fe3-8462-527a3d5d3309'),
	('2faba613-a99b-4577-bcbe-499a2fccf461', '2faba613-a99b-4577-bcbe-499a2fccf461', '{"sub": "2faba613-a99b-4577-bcbe-499a2fccf461", "email": "tom@climateaction.agency", "email_verified": false, "phone_verified": false}', 'email', '2024-07-26 10:53:53.694709+00', '2024-07-26 10:53:53.694731+00', '2024-07-26 10:53:53.694731+00', 'eade56dc-0827-47ca-bcff-529ced461bac');

INSERT INTO basejump.accounts (
  id, primary_owner_user_id, name, slug, public_metadata
) VALUES
  ('e8416572-1fcb-4464-a5f9-b17f0bbdc4f5', 'da351548-dcb7-4b04-9094-8a55f074024a', 'The Climate Action Agency', 'climate-action-agency', '{ "feature_flags": ["beta"] }'),
  ('a10d34d3-c884-485a-8dc5-632b47e36990', 'da351548-dcb7-4b04-9094-8a55f074024a', 'BigCorp', 'bigcorp', '{ "feature_flags": ["beta"] }'),
  ('51829cb4-ca36-492d-929e-db66096b2ca8', 'da351548-dcb7-4b04-9094-8a55f074024a', 'Subsiduary', 'subsiduary', '{ "feature_flags": ["beta"] }'),
  ('ce722261-e8a8-491d-b313-61671ea14bc0', '2faba613-a99b-4577-bcbe-499a2fccf461', 'Tomorroworld', 'tomorroworld', '{ "feature_flags": ["beta"] }');

INSERT INTO public.account_account (
  account_id, relation, other_account_id
) VALUES
  ('a10d34d3-c884-485a-8dc5-632b47e36990', 'owner-of', '51829cb4-ca36-492d-929e-db66096b2ca8'), -- BigCorp -> Subsiduary
  ('a10d34d3-c884-485a-8dc5-632b47e36990', 'owner-of', 'e8416572-1fcb-4464-a5f9-b17f0bbdc4f5'), -- BigCorp -> TCAA
  ('ce722261-e8a8-491d-b313-61671ea14bc0', 'owner-of', 'e8416572-1fcb-4464-a5f9-b17f0bbdc4f5'), -- Tomorroworld -> TCAA

  ('ce722261-e8a8-491d-b313-61671ea14bc0', 'customer-to', 'a10d34d3-c884-485a-8dc5-632b47e36990'), -- Tomorroworld customer to BigCorp
  ('51829cb4-ca36-492d-929e-db66096b2ca8', 'customer-to', 'ce722261-e8a8-491d-b313-61671ea14bc0'); -- Subsiduary customer to Tomorroworld

INSERT INTO basejump.account_user (user_id, account_role, account_id) VALUES
  ('da351548-dcb7-4b04-9094-8a55f074024a', 'owner', 'a10d34d3-c884-485a-8dc5-632b47e36990'), -- Testing account -> BigCorp
  ('2faba613-a99b-4577-bcbe-499a2fccf461', 'member', 'a10d34d3-c884-485a-8dc5-632b47e36990'), -- Testing account -> BigCorp
  ('2faba613-a99b-4577-bcbe-499a2fccf461', 'owner', '51829cb4-ca36-492d-929e-db66096b2ca8'), -- Tom -> Subsiduary
  ('2faba613-a99b-4577-bcbe-499a2fccf461', 'owner', 'ce722261-e8a8-491d-b313-61671ea14bc0'); -- Tom -> Tomorroworld

-- category: ESRS
INSERT INTO "public"."category"
  ("id", "parent_category_id", "position", "reference", "name", "slug", "description", "ai_instructions")
VALUES
  (100000, NULL, 1, NULL, 'ESRS', 'esrs', 'The European Sustainability Reporting Standards', NULL),
    (101000, 100000, 1, 'ESRS2', 'General disclosures', 'esrs2-general-disclosures', NULL, NULL),
      (101010, 101000, 1, 'ESRS2.BP-1', 'General basis for preparation of sustainability statement', 'esrs2-bp-1', NULL, NULL),
      (101020, 101000, 2, 'ESRS2.BP-2', 'Disclosures in relation to specific circumstances', 'esrs2-bp-2', NULL, NULL),
      (101030, 101000, 3, 'ESRS2.GOV-1', 'Role of administrative, management and supervisory bodies', 'esrs2-gov-1', NULL, NULL),
      (101040, 101000, 4, 'ESRS2.GOV-2', 'Information provided to and sustainability matters addressed by administrative, management and supervisory bodies', 'esrs2-gov-2', NULL, NULL),
      (101050, 101000, 5, 'ESRS2.GOV-3', 'Integration of sustainability-related performance in incentive schemes', 'esrs2-gov-3', NULL, NULL),
      (101060, 101000, 6, 'ESRS2.GOV-4', 'Statement on due diligence', 'esrs2-gov-4', NULL, NULL),
      (101070, 101000, 7, 'ESRS2.GOV-5', 'Risk management and internal controls over sustainability reporting', 'esrs2-gov-5', NULL, NULL),
      (101080, 101000, 8, 'ESRS2.SBM-1', 'Strategy, business model and value chain', 'esrs2-sbm-1', NULL, NULL),
      (101090, 101000, 9, 'ESRS2.SBM-2', 'Interests and views of stakeholders', 'esrs2-sbm-2', NULL, NULL),
      (101100, 101000, 10, 'ESRS2.SBM-3', 'Material impacts, risks and opportunities and their interaction with strategy and business model', 'esrs2-sbm-3', NULL, NULL),
      (101110, 101000, 11, 'ESRS2.IRO-1', 'Process to identify and assess material impacts, risks and opportunities', 'esrs2-iro-1', NULL, NULL),
      (101120, 101000, 12, 'ESRS2.IRO-2', 'Disclosure Requirements in ESRS covered by sustainability statement', 'esrs2-iro-2', NULL, NULL),
      (101130, 101000, 13, NULL, 'ESRS2 Policies, actions and (or) targets not adopted', 'esrs2-policies-actions-and-or-targets-not-adopted', NULL, NULL),
      (101140, 101000, 14, 'ESRS2.MDR-P.1', 'Minimum Disclosure Requirement - Policies MDR-P', 'esrs2-mdr-p-1', NULL, NULL),
      (101150, 101000, 15, 'ESRS2.MDR-A.1', 'Minimum Disclosure Requirement - Actions MDR-A', 'esrs2-mdr-a-1', NULL, NULL),
      (101160, 101000, 16, 'ESRS2.MDR-A.2', 'Minimum Disclosure Requirement – Resources MDR-A', 'esrs2-mdr-a-2', NULL, NULL),
      (101170, 101000, 17, 'ESRS2.MDR-T.1', 'Minimum Disclosure Requirement - Targets MDR-T', 'esrs2-mdr-t-1', NULL, NULL),
      (101180, 101000, 18, 'ESRS2.MDR-T.2', 'Minimum Disclosure Requirement - Targets MDR-T - measurable outcome-oriented targets not adopted', 'esrs2-mdr-t-2', NULL, NULL),
      (101190, 101000, 19, 'ESRS2.MDR-M.1', 'Minimum disclosure requirement - Metrics MDR-M - list of ESRS metrics', 'esrs2-mdr-m-1', NULL, NULL),
      (101200, 101000, 20, 'ESRS2.MDR-M.2', 'Minimum disclosure requirement - Metrics MDR-M - additional or entity specific metrics', 'esrs2-mdr-m-2', NULL, NULL),
    (102000, 100000, 2, 'E1', 'Climate change', 'e1', NULL, NULL),
      (102010, 102000, 1, 'E1.GOV-3', 'Integration of sustainability-related performance in incentive schemes', 'e1-gov-3', NULL, NULL),
      (102020, 102000, 2, 'E1.SBM-3', 'Material impacts, risks and opportunities and their interaction with strategy and business model', 'e1-sbm-3', NULL, NULL),
      (102030, 102000, 3, 'E1.IRO-1', 'Processes to identify and assess material climate-related impacts, risks and opportunities', 'e1-iro-1', NULL, NULL),
      (102040, 102000, 4, 'E1-1', 'Transition plan for climate change mitigation', 'e1-1', NULL, NULL),
      (102050, 102000, 5, 'E1-2', 'Policies related to climate change mitigation and adaptation', 'e1-2', NULL, NULL),
      (102060, 102000, 6, 'E1-3', 'Actions and resources in relation to climate change policies', 'e1-3', NULL, NULL),
      (102070, 102000, 7, 'E1-4', 'Targets related to climate change mitigation and adaptation', 'e1-4', NULL, NULL),
      (102080, 102000, 8, 'E1-4.1', 'Targets related to climate change mitigation and adaptation - Minimum Disclosure Requirement', 'e1-4-1', NULL, NULL),
      (102090, 102000, 9, 'E1-5', 'Energy consumption and mix', 'e1-5', NULL, NULL),
      (102100, 102000, 10, 'E1-6', 'Gross Scopes 1, 2, 3 and Total GHG emissions', 'e1-6', NULL, NULL),
      (102110, 102000, 11, 'E1-6.1', 'Gross Scopes 1, 2, 3 and Total GHG emissions - other numerical disclosures', 'e1-6-1', NULL, NULL),
      (102120, 102000, 12, 'E1-7', 'GHG removals and GHG mitigation projects financed through carbon credits', 'e1-7', NULL, NULL),
      (102130, 102000, 13, 'E1-8', 'Internal carbon pricing', 'e1-8', NULL, NULL),
      (102140, 102000, 14, 'E1-9', 'Anticipated financial effects from material physical risks', 'e1-9', NULL, NULL),
      (102150, 102000, 15, 'E1-9.1', 'Anticipated financial effects from material transition risks and potential climate-related opportunities', 'e1-9-1', NULL, NULL),
      (102160, 102000, 16, 'E1-9.2', 'Anticipated financial effects from material physical and transition risks', 'e1-9-2', NULL, NULL),
      (102170, 102000, 17, 'E1-9.3', 'Anticipated financial effects from material physical and transition risks - percentage of net revenue', 'e1-9-3', NULL, NULL),
      (102180, 102000, 18, 'E1-9.4', 'Anticipated financial effects from material transition risks - real estate assets', 'e1-9-4', NULL, NULL),
    (103000, 100000, 3, 'E2', 'Pollution', 'e2', NULL, NULL),
      (103010, 103000, 1, 'E2.IRO-1', 'Processes to identify and assess material pollution-related impacts, risks and opportunities', 'e2-iro-1', NULL, NULL),
      (103020, 103000, 2, 'E2-1', 'Policies related to pollution', 'e2-1', NULL, NULL),
      (103030, 103000, 3, 'E2-2', 'Actions and resources related to pollution', 'e2-2', NULL, NULL),
      (103040, 103000, 4, 'E2-3', 'Targets related to pollution', 'e2-3', NULL, NULL),
      (103050, 103000, 5, 'E2-4', 'Pollution of air, water and soil', 'e2-4', NULL, NULL),
      (103060, 103000, 6, 'E2-5', 'Substances of concern and substances of very high concern', 'e2-5', NULL, NULL),
      (103070, 103000, 7, 'E2-6', 'Anticipated financial effects from material pollution-related risks and opportunities', 'e2-6', NULL, NULL),
      (103080, 103000, 8, 'E2-6.1', 'Anticipated financial effects from material pollution-related risks and opportunities - time horizons', 'e2-6-1', NULL, NULL),
    (104000, 100000, 4, 'E3', 'Water and marine resources', 'e3', NULL, NULL),
      (104010, 104000, 1, 'E3.IRO-1', 'Processes to identify and assess material water and marine resources-related impacts, risks and opportunities', 'e3-iro-1', NULL, NULL),
      (104020, 104000, 2, 'E3-1', 'Policies related to water and marine resources', 'e3-1', NULL, NULL),
      (104030, 104000, 3, 'E3-2', 'Actions and resources related to water and marine resources', 'e3-2', NULL, NULL),
      (104040, 104000, 4, 'E3-3', 'Targets related to water and marine resources', 'e3-3', NULL, NULL),
      (104050, 104000, 5, 'E3-4', 'Water consumption', 'e3-4', NULL, NULL),
      (104060, 104000, 6, 'E3-5', 'Anticipated financial effects from material water and marine resources-related risks and opportunities', 'e3-5', NULL, NULL),
      (104070, 104000, 7, 'E3-5.1', 'Anticipated financial effects from material water and marine resources-related risks and opportunities - time horizons', 'e3-5-1', NULL, NULL),
    (105000, 100000, 5, 'E4', 'Biodiversity and ecosystems', 'e4', NULL, NULL),
      (105010, 105000, 1, 'E4.SBM-3', 'Material impacts, risks and opportunities and their interaction with strategy and business model', 'e4-sbm-3', NULL, NULL),
      (105020, 105000, 2, 'E4.SBM-3.1', 'Material impacts, risks and opportunities and their interaction with strategy and business model - breakdown of sites', 'e4-sbm-3-1', NULL, NULL),
      (105030, 105000, 3, 'E4.IRO-1', 'Processes to identify and assess material biodiversity and ecosystem-related impacts, risks, dependencies and opportunities', 'e4-iro-1', NULL, NULL),
      (105040, 105000, 4, 'E4-1', 'Transition plan and consideration of biodiversity and ecosystems in strategy and business model', 'e4-1', NULL, NULL),
      (105050, 105000, 5, 'E4-2', 'Policies related to biodiversity and ecosystems', 'e4-2', NULL, NULL),
      (105060, 105000, 6, 'E4-3', 'Actions and resources related to biodiversity and ecosystems', 'e4-3', NULL, NULL),
      (105070, 105000, 7, 'E4-4', 'Targets related to biodiversity and ecosystems', 'e4-4', NULL, NULL),
      (105080, 105000, 8, 'E4-5', 'Impact metrics related to biodiversity and ecosystems change', 'e4-5', NULL, NULL),
      (105090, 105000, 9, 'E4-6', 'Anticipated financial effects from material biodiversity and ecosystem-related risks and opportunities', 'e4-6', NULL, NULL),
      (105100, 105000, 10, 'E4-6.1', 'Anticipated financial effects from material biodiversity and ecosystem-related risks and opportunities - time horizons', 'e4-6-1', NULL, NULL),
    (106000, 100000, 6, 'E5', 'Resource use and circular economy', 'e5', NULL, NULL),
      (106010, 106000, 1, 'E5.IRO-1', 'Processes to identify and assess material resource use and circular economy-related impacts, risks and opportunities', 'e5-iro-1', NULL, NULL),
      (106020, 106000, 2, 'E5-1', 'Policies related to resource use and circular economy', 'e5-1', NULL, NULL),
      (106030, 106000, 3, 'E5-2', 'Actions and resources related to resource use and circular economy', 'e5-2', NULL, NULL),
      (106040, 106000, 4, 'E5-3', 'Targets related to resource use and circular economy', 'e5-3', NULL, NULL),
      (106050, 106000, 5, 'E5-4', 'Resource inflows', 'e5-4', NULL, NULL),
      (106060, 106000, 6, 'E5-5', 'Resource outflows', 'e5-5', NULL, NULL),
      (106070, 106000, 7, 'E5-6', 'Anticipated financial effects from material resource use and circular economy-related risks and opportunities', 'e5-6', NULL, NULL),
      (106080, 106000, 8, 'E5-6.1', 'Anticipated financial effects from material resource use and circular economy-related risks and opportunities - time horizons', 'e5-6-1', NULL, NULL),
    (107000, 100000, 7, 'S1', 'Own workforce', 's1', NULL, NULL),
      (107010, 107000, 1, 'S1.SBM-3', 'Material impacts, risks and opportunities and their interaction with strategy and business model', 's1-sbm-3', NULL, NULL),
      (107020, 107000, 2, 'S1-1', 'Policies related to own workforce', 's1-1', NULL, NULL),
      (107030, 107000, 3, 'S1-2', 'Processes for engaging with own workforce and workers’ representatives about impacts', 's1-2', NULL, NULL),
      (107040, 107000, 4, 'S1-3', 'Processes to remediate negative impacts and channels for own workforce to raise concerns', 's1-3', NULL, NULL),
      (107050, 107000, 5, 'S1-4', 'Taking action on material impacts on own workforce, and approaches to managing material risks and pursuing material opportunities related to own workforce, and effectiveness of those actions', 's1-4', NULL, NULL),
      (107060, 107000, 6, 'S1-5', 'Targets related to managing material negative impacts, advancing positive impacts, and managing material risks and opportunities', 's1-5', NULL, NULL),
      (107070, 107000, 7, 'S1-6', 'Characteristics of undertaking’s employees', 's1-6', NULL, NULL),
      (107080, 107000, 8, 'S1-7', 'Characteristics of non-employees in undertaking’s own workforce', 's1-7', NULL, NULL),
      (107090, 107000, 9, 'S1-8', 'Collective bargaining coverage and social dialogue', 's1-8', NULL, NULL),
      (107100, 107000, 10, 'S1-9', 'Diversity metrics', 's1-9', NULL, NULL),
      (107110, 107000, 11, 'S1-10', 'Adequate wages', 's1-10', NULL, NULL),
      (107120, 107000, 12, 'S1-11', 'Social protection', 's1-11', NULL, NULL),
      (107130, 107000, 13, 'S1-12', 'Persons with disabilities', 's1-12', NULL, NULL),
      (107140, 107000, 14, 'S1-13', 'Training and skills development metrics', 's1-13', NULL, NULL),
      (107150, 107000, 15, 'S1-14', 'Health and safety metrics', 's1-14', NULL, NULL),
      (107160, 107000, 16, 'S1-15', 'Work-life balance metrics', 's1-15', NULL, NULL),
      (107170, 107000, 17, 'S1-16', 'Remuneration metrics (pay gap and total remuneration)', 's1-16', NULL, NULL),
      (107180, 107000, 18, 'S1-17', 'Incidents, complaints and severe human rights impacts', 's1-17', NULL, NULL),
    (108000, 100000, 8, 'S2', 'Workers in the value chain', 's2', NULL, NULL),
      (108010, 108000, 1, 'S2.SBM-3', 'Material impacts, risks and opportunities and their interaction with strategy and business model', 's2-sbm-3', NULL, NULL),
      (108020, 108000, 2, 'S2-1', 'Policies related to value chain workers', 's2-1', NULL, NULL),
      (108030, 108000, 3, 'S2-2', 'Processes for engaging with value chain workers about impacts', 's2-2', NULL, NULL),
      (108040, 108000, 4, 'S2-3', 'Processes to remediate negative impacts and channels for value chain workers to raise concerns', 's2-3', NULL, NULL),
      (108050, 108000, 5, 'S2-4', 'Taking action on material impacts on value chain workers, and approaches to managing material risks and pursuing material opportunities related to value chain workers, and effectiveness of those actions', 's2-4', NULL, NULL),
      (108060, 108000, 6, 'S2-5', 'Targets related to managing material negative impacts, advancing positive impacts, and managing material risks and opportunities', 's2-5', NULL, NULL),
    (109000, 100000, 9, 'S3', 'Affected communities', 's3', NULL, NULL),
      (109010, 109000, 1, 'S3.SBM-3', 'Material impacts, risks and opportunities and their interaction with strategy and business model', 's3-sbm-3', NULL, NULL),
      (109020, 109000, 2, 'S3-1', 'Policies related to affected communities', 's3-1', NULL, NULL),
      (109030, 109000, 3, 'S3-2', 'Processes for engaging with affected communities about impacts', 's3-2', NULL, NULL),
      (109040, 109000, 4, 'S3-3', 'Processes to remediate negative impacts and channels for affected communities to raise concerns', 's3-3', NULL, NULL),
      (109050, 109000, 5, 'S3-4', 'Taking action on material impacts on affected communities, and approaches to managing material risks and pursuing material opportunities related to affected communities, and effectiveness of those actions', 's3-4', NULL, NULL),
      (109060, 109000, 6, 'S3-5', 'Targets related to managing material negative impacts, advancing positive impacts, and managing material risks and opportunities', 's3-5', NULL, NULL),
    (110000, 100000, 10, 'S4', 'Consumers and end-users', 's4', NULL, NULL),
      (110010, 110000, 1, 'S4.SBM-3', 'Material impacts, risks and opportunities and their interaction with strategy and business model', 's4-sbm-3', NULL, NULL),
      (110020, 110000, 2, 'S4-1', 'Policies related to consumers and end-users', 's4-1', NULL, NULL),
      (110030, 110000, 3, 'S4-2', 'Processes for engaging with consumers and end-users about impacts', 's4-2', NULL, NULL),
      (110040, 110000, 4, 'S4-3', 'Processes to remediate negative impacts and channels for consumers and end-users to raise concerns', 's4-3', NULL, NULL),
      (110050, 110000, 5, 'S4-4', 'Taking action on material impacts on consumers and end-users, and approaches to managing material risks and pursuing material opportunities related to consumers and end-users, and effectiveness of those actions', 's4-4', NULL, NULL),
      (110060, 110000, 6, 'S4-5', 'Targets related to managing material negative impacts, advancing positive impacts, and managing material risks and opportunities (consumers and end-users)', 's4-5', NULL, NULL),
    (111000, 100000, 11, 'G1', 'Business conduct', 'g1', NULL, NULL),
      (111010, 111000, 1, 'G1.GOV-1', 'Role of administrative, management and supervisory bodies', 'g1-gov-1', NULL, NULL),
      (111020, 111000, 2, 'G1.IRO-1', 'Processes to identify and assess material business conduct related impacts, risks and opportunities', 'g1-iro-1', NULL, NULL),
      (111030, 111000, 3, 'G1-1', 'Business conduct policies and corporate culture', 'g1-1', NULL, NULL),
      (111040, 111000, 4, 'G1-2', 'Management of relationships with suppliers', 'g1-2', NULL, NULL),
      (111050, 111000, 5, 'G1-3', 'Prevention and detection of corruption and bribery', 'g1-3', NULL, NULL),
      (111060, 111000, 6, 'G1.MDR-A.1', 'Actions related to business conduct - Minimum Disclosure Requirement - actions related to business conduct', 'g1-mdr-a-1', NULL, NULL),
      (111070, 111000, 7, 'G1.MDR-A.2', 'Resources related to business conduct - Minimum Disclosure Requirement - resources related to business conduct', 'g1-mdr-a-2', NULL, NULL),
      (111080, 111000, 8, 'G1.MDR-T.1', 'Targets related to business conduct - Minimum Disclosure Requirement - targets related to business conduct', 'g1-mdr-t-1', NULL, NULL),
      (111090, 111000, 9, 'G1-4', 'Incidents of corruption or bribery', 'g1-4', NULL, NULL),
      (111100, 111000, 10, 'G1-5', 'Political influence and lobbying activities', 'g1-5', NULL, NULL),
      (111110, 111000, 11, 'G1-6', 'Payment practices', 'g1-6', NULL, NULL);

-- account_category
INSERT INTO public.account_category (
  account_id, category_id, status
) VALUES
  ('a10d34d3-c884-485a-8dc5-632b47e36990', 100000, 'not-started'), -- BigCorp reporting ESRS
  ('51829cb4-ca36-492d-929e-db66096b2ca8', 102000, 'not-started'), -- Subsiduary reporting ESRS E1
  ('ce722261-e8a8-491d-b313-61671ea14bc0', 100000, 'not-started'); -- Tomorroworld reporting ESRS

INSERT INTO public.account_category_user (
  account_id, category_id, user_id, account_role
) VALUES
  ('51829cb4-ca36-492d-929e-db66096b2ca8', 102050, 'da351548-dcb7-4b04-9094-8a55f074024a', 'owner'), -- Subsiduary, ESRS E1-2, Testing account
  ('51829cb4-ca36-492d-929e-db66096b2ca8', 102050, '2faba613-a99b-4577-bcbe-499a2fccf461', 'owner'); -- Subsiduary, ESRS E1-2, Tom

-- FUNCTIONS

CREATE OR REPLACE FUNCTION public.get_all_group_accounts(current_account_slug text)
RETURNS TABLE(
  id uuid,
  parent_account_id uuid,
  name text,
  slug text,
  primary_owner_user_id uuid,
  primary_owner_user_email character varying(255),
  primary_owner_personal_account_id uuid,
  primary_owner_personal_account_name text
)
LANGUAGE plpgsql
SECURITY DEFINER
AS $function$
BEGIN
  RETURN QUERY
    WITH RECURSIVE upward_tree AS (
      ---------- Anchor account: starting point
      SELECT 
        a.id, 
        NULL::uuid AS parent_account_id, 
        a.name, 
        a.slug,
        a.primary_owner_user_id   -- Include primary_owner_user_id in the anchor node
      FROM basejump.accounts a
      WHERE a.slug = current_account_slug

      UNION ALL

      ---------- Recursive: find parent accounts using account_account table with relation = 'owner-of'
      SELECT 
        parent.id,
        CASE 
          WHEN parent.id = aac.account_id THEN NULL  -- root account
          ELSE aac.account_id
        END AS parent_account_id,
        parent.name,
        parent.slug,
        parent.primary_owner_user_id  -- Include primary_owner_user_id in the recursive query
      FROM basejump.accounts parent
      JOIN account_account aac ON parent.id = aac.account_id
      JOIN upward_tree ut ON aac.other_account_id = ut.id
      WHERE aac.relation = 'owner-of'
    ),
    downward_tree AS (
      ---------- Start with the same root accounts from upward_tree
      SELECT ut.id, ut.parent_account_id, ut.name, ut.slug, ut.primary_owner_user_id
      FROM upward_tree ut

      UNION ALL

      ---------- Recursive: find child accounts using account_account table with relation = 'owner-of'
      SELECT 
        child.id, 
        aac.account_id AS parent_account_id, 
        child.name, 
        child.slug, 
        child.primary_owner_user_id  -- Include primary_owner_user_id in the downward tree
      FROM basejump.accounts child
      JOIN account_account aac ON child.id = aac.other_account_id
      JOIN downward_tree dt ON aac.account_id = dt.id
      WHERE aac.relation = 'owner-of'
    ),
    all_accounts AS (
      ---------- Include all nodes in the tree (ancestors and descendants)
      SELECT dt.id, dt.parent_account_id, dt.name, dt.slug, dt.primary_owner_user_id
      FROM downward_tree dt

      UNION

      ---------- Include siblings of each node in the tree using account_account relationships
      SELECT 
        sibling.id, 
        aac.account_id AS parent_account_id, 
        sibling.name, 
        sibling.slug, 
        sibling.primary_owner_user_id
      FROM basejump.accounts sibling
      JOIN account_account aac ON sibling.id = aac.other_account_id
      JOIN downward_tree dt ON aac.account_id = dt.parent_account_id
      WHERE sibling.id != dt.id
        AND aac.relation = 'owner-of'
    ),
    all_accounts_with_joins AS (
      ---------- Join with primary_owner_user and primary_owner_personal_account
      SELECT 
        all_accounts.id, 
        all_accounts.parent_account_id, 
        all_accounts.name, 
        all_accounts.slug,
        all_accounts.primary_owner_user_id,
        primary_owner_user.email AS primary_owner_user_email,
        primary_owner_personal_account.id AS primary_owner_personal_account_id,
        primary_owner_personal_account.name AS primary_owner_personal_account_name
      FROM all_accounts
      LEFT JOIN auth.users primary_owner_user ON all_accounts.primary_owner_user_id = primary_owner_user.id
      LEFT JOIN (
          SELECT account_user.user_id, account_user.account_id, accounts.name, accounts.id
          FROM basejump.account_user account_user
          JOIN basejump.accounts accounts ON account_user.account_id = accounts.id
          WHERE accounts.personal_account = TRUE
      ) primary_owner_personal_account ON primary_owner_personal_account.user_id = all_accounts.primary_owner_user_id
    )
    ---------- Select all accounts with primary owner details
    SELECT DISTINCT 
      all_accounts_with_joins.id, 
      all_accounts_with_joins.parent_account_id, 
      all_accounts_with_joins.name, 
      all_accounts_with_joins.slug,
      all_accounts_with_joins.primary_owner_user_id,
      all_accounts_with_joins.primary_owner_user_email,
      all_accounts_with_joins.primary_owner_personal_account_id,
      all_accounts_with_joins.primary_owner_personal_account_name
    FROM all_accounts_with_joins
    ORDER BY name;
END;
$function$;

GRANT EXECUTE ON FUNCTION public.get_all_group_accounts(text) TO authenticated;


CREATE OR REPLACE FUNCTION public.get_child_accounts(parent_account_slug text)
RETURNS TABLE(id uuid, parent_account_id uuid, name text, slug text)
LANGUAGE plpgsql
SECURITY DEFINER
AS $function$
BEGIN
  RETURN QUERY
    WITH RECURSIVE accounts_tree AS (
      -- Anchor member: starting point
      SELECT a.id, NULL::uuid AS parent_account_id, a.name, a.slug
      FROM basejump.accounts a
      WHERE a.slug = parent_account_slug

      UNION ALL

      -- Recursive member: find child accounts using 'owner-of' relation in account_account table
      SELECT a2.id, aac.account_id AS parent_account_id, a2.name, a2.slug
      FROM basejump.accounts a2
      JOIN account_account aac ON a2.id = aac.other_account_id
      JOIN accounts_tree at ON aac.account_id = at.id
      WHERE aac.relation = 'owner-of'
    )
    -- Select all child accounts, including the starting point
    SELECT * FROM accounts_tree;
END;
$function$;

GRANT EXECUTE ON FUNCTION get_child_accounts(text) TO authenticated;

CREATE OR REPLACE FUNCTION public.is_member_of_company_group(group_slug text)
RETURNS boolean
LANGUAGE plpgsql
AS $function$
DECLARE
  account RECORD;
BEGIN
  -- Iterate through each account in the company group
  FOR account IN
    SELECT id
    FROM public.get_all_group_accounts(group_slug)
  LOOP
    -- Check if the user has a role on the current account
    IF basejump.has_role_on_account(account.id) THEN
      -- If the user has a role on any account, return true
      RETURN true;
    END IF;
  END LOOP;
  -- If no account has the user's role, return false
  RETURN false;
END;
$function$;

GRANT EXECUTE ON FUNCTION public.is_member_of_company_group(account_slug text) TO authenticated;

CREATE OR REPLACE FUNCTION get_view_categories_overview(account_slug text)
  RETURNS SETOF view_categories_overview
  LANGUAGE plpgsql
  SECURITY DEFINER
  AS $$
DECLARE
  account_id_value uuid;
BEGIN 
  -- Look up the account ID by slug
  SELECT get_account_id(account_slug) INTO account_id_value;
  -- Check if the user is a member of the company group
  IF is_member_of_company_group(account_slug) THEN
    -- If the user is a member of the group, they can access rows with that account_id
    RETURN QUERY
    SELECT *
    FROM view_categories_overview
    WHERE view_categories_overview.account_id = account_id_value;
  ELSE
    -- Raise an error if the user is not a member of the company group
    RAISE EXCEPTION 'User is not a member of company group';
  END IF;
END;
$$;

GRANT EXECUTE ON FUNCTION public.get_view_categories_overview(account_slug text) TO authenticated;
