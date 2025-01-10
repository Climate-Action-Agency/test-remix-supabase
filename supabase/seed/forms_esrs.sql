UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose whether the sustainability statement is prepared on a consolidated or individual basis."
        },
        "req2": {
          "type": "boolean",
          "title": "Confirm if the scope of consolidation is the same as the financial statements."
        },
        "req3": {
          "type": "boolean",
          "title": "Declare if financial statements are not required or if consolidated sustainability reporting is being prepared according to Article 48i of Directive 2013/34/EU."
        },
        "req4": {
          "type": "boolean",
          "title": "Indicate any subsidiary undertakings exempted from individual or consolidated sustainability reporting according to Articles 19a(9) or 29a(8) of Directive 2013/34/EU."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain the extent of the coverage of the undertaking’s upstream and downstream value chain in the sustainability statement."
        },
        "req6": {
          "type": "boolean",
          "title": "State if the undertaking has opted to omit information pertaining to intellectual property, know-how, or results of innovation."
        },
        "req7": {
          "type": "boolean",
          "title": "For EU member states, disclose if the exemption from disclosure of impending developments or negotiation matters was used as per articles 19a(3) and 29a(3) of Directive 2013/34/EU."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "omissions-due-to-intellectual-property": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "information-type": {
            "type": "string"
          },
          "omitted-yes-no": {
            "type": "boolean"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the general basis for preparation of the sustainability statement. This should include clarifications on the scope of consolidation, coverage of the value chain, and any use of options for omitting confidential information or current negotiations."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/consolidation-and-scope-disclosure",
              "label": "Table: Consolidation and Scope Disclosure"
            },
            {
              "type": "Control",
              "scope": "#/properties/exemption-details",
              "label": "Table: Exemption Details"
            },
            {
              "type": "Control",
              "scope": "#/properties/value-chain-coverage",
              "label": "Table: Value Chain Coverage"
            },
            {
              "type": "Control",
              "scope": "#/properties/omissions-due-to-intellectual-property",
              "label": "Table: Omissions Due to Intellectual Property"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of how the undertaking prepares its sustainability statement. This includes detailing the scope of consolidation, the extent of coverage of the upstream and downstream value chain, and any instances where omissions of information have been applied as allowed by relevant directives. By fulfilling this requirement, stakeholders will better understand the boundaries and completeness of the sustainability reporting presented."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-bp-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify and describe each specific circumstance affecting the sustainability statement."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain the impact of each circumstance on the accuracy and completeness of the report."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail any deviations in methodologies or assumptions due to these circumstances."
        },
        "req4": {
          "type": "boolean",
          "title": "Clarify if and how the reporting of these circumstances fulfills the requirements of related disclosures."
        },
        "req5": {
          "type": "boolean",
          "title": "Ensure transparency in how these specific circumstances have been incorporated or explained in the sustainability statement."
        }
      }
    },
    "description": {
      "type": "string"
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the specific circumstances that affect the preparation of the sustainability statement. Explain how these circumstances impact the report’s completeness, accuracy, and reliability."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the effect of specific circumstances on the preparation of the sustainability statement. By outlining these circumstances, stakeholders can better comprehend deviations or particular methodologies adopted in the sustainability report."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-bp-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose the composition of administrative, management, and supervisory bodies, including the number of executive and non-executive members."
        },
        "req2": {
          "type": "boolean",
          "title": "Detail gender diversity and other diversity aspects considered, including the board’s average gender diversity ratio."
        },
        "req3": {
          "type": "boolean",
          "title": "Specify the percentage of independent board members for unitary and dual boards."
        },
        "req4": {
          "type": "boolean",
          "title": "Explain the roles and responsibilities regarding oversight of sustainability impacts, risks, and opportunities."
        },
        "req5": {
          "type": "boolean",
          "title": "Identify specific bodies or individuals responsible for oversight and describe their related policies and terms of reference."
        },
        "req6": {
          "type": "boolean",
          "title": "Define management’s role in governance processes to manage sustainability impacts, risks, and opportunities."
        },
        "req7": {
          "type": "boolean",
          "title": "Illustrate how senior executive management oversees target setting for material impacts, risks, and opportunities, and how they monitor progress."
        },
        "req8": {
          "type": "boolean",
          "title": "Describe how the bodies assess and ensure the availability or development of appropriate skills and expertise concerning sustainability matters."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "skills-and-expertise-assessment": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "expertise-skill": {
            "type": "string"
          },
          "availability": {
            "type": "string"
          },
          "development-plan": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the composition, roles, responsibilities, expertise, and skills of the administrative, management, and supervisory bodies concerning sustainability matters for your organization. Include information regarding diversity, access to and development of expertise, and monitoring of sustainability impact and risk management processes."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/composition-and-diversity-of-administrative-management-and-supervisory-bodies",
              "label": "Table: Composition and Diversity of Administrative, Management and Supervisory Bodies"
            },
            {
              "type": "Control",
              "scope": "#/properties/roles-and-responsibilities-overview",
              "label": "Table: Roles and Responsibilities Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/skills-and-expertise-assessment",
              "label": "Table: Skills and Expertise Assessment"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of: the composition and diversity of the administrative, management and supervisory bodies; the roles and responsibilities of the administrative, management and supervisory bodies in exercising oversight of the process to manage material impacts, risks, and opportunities, including management’s role in these processes; and the expertise and skills of its administrative, management, and supervisory bodies on sustainability matters or access to such expertise and skills."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-gov-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Determine whether, by whom, and how frequently the administrative, management, and supervisory bodies are informed about material impacts, risks, and opportunities."
        },
        "req2": {
          "type": "boolean",
          "title": "Describe the processes through which these bodies are informed about the implementation of due diligence and the effectiveness of policies, actions, metrics, and targets related to sustainability."
        },
        "req3": {
          "type": "boolean",
          "title": "Ascertain how these bodies consider impacts, risks, and opportunities in overseeing the company’s strategy, decisions on major transactions, and risk management process."
        },
        "req4": {
          "type": "boolean",
          "title": "Document whether the bodies have considered trade-offs associated with impacts, risks, and opportunities."
        },
        "req5": {
          "type": "boolean",
          "title": "Compile a list of material impacts, risks, and opportunities addressed by the administrative, management, and supervisory bodies during the reporting period."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "material-impacts-and-risks-addressed-table": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "material-impact-risk": {
            "type": "string"
          },
          "addressed-by-body-committee": {
            "type": "string"
          },
          "actions-taken": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how the administrative, management, and supervisory bodies are informed about sustainability matters and how these matters were addressed during the reporting period."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/sustainability-information-frequency-table",
              "label": "Table: Sustainability Information Frequency Table"
            },
            {
              "type": "Control",
              "scope": "#/properties/material-impacts-and-risks-addressed-table",
              "label": "Table: Material Impacts and Risks Addressed Table"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of how the administrative, management, and supervisory bodies are informed about sustainability matters, as well as what information and matters they addressed during the reporting period. This in turn allows an understanding of whether the members of these bodies were adequately informed and whether they were able to fulfil their roles."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-gov-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the key characteristics of the incentive schemes related to sustainability."
        },
        "req2": {
          "type": "boolean",
          "title": "Indicate whether sustainability-related targets and/or impacts are used to assess performance."
        },
        "req3": {
          "type": "boolean",
          "title": "Mention specific sustainability targets included in performance assessments."
        },
        "req4": {
          "type": "boolean",
          "title": "Explain how sustainability-related performance metrics are incorporated into remuneration policies."
        },
        "req5": {
          "type": "boolean",
          "title": "Identify the proportion of variable remuneration tied to sustainability targets and/or impacts."
        },
        "req6": {
          "type": "boolean",
          "title": "Describe the level at which incentive scheme terms are approved and updated within the organization."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "incentive-scheme-characteristics": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "position-level": {
            "type": "string"
          },
          "scheme-description": {
            "type": "string"
          },
          "performance-targets": {
            "type": "string"
          },
          "variable-remuneration-proportion-": {
            "type": "number"
          },
          "approval-level": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how sustainability-related performance is integrated into the incentive schemes for your company’s administrative, management, and supervisory bodies. Specifically include details on the characteristics of the schemes, performance assessments, and the proportion of variable remuneration linked to sustainability targets."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/incentive-scheme-characteristics",
              "label": "Table: Incentive Scheme Characteristics"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide stakeholders with a clear understanding of how incentive schemes are structured to promote sustainability efforts within the organization. By disclosing this information, stakeholders can evaluate the extent to which sustainability targets are prioritized in performance evaluations and remuneration policies. This understanding helps to assess the alignment of company leadership incentives with sustainability goals, ensuring that those in decision-making positions are motivated to achieve sustainable outcomes."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-gov-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Ensure the sustainability statement includes a detailed mapping of the due diligence processes."
        },
        "req2": {
          "type": "boolean",
          "title": "Verify all key aspects and steps of due diligence, as outlined in ESRS 1 chapter 4, are addressed in the sustainability statement."
        },
        "req3": {
          "type": "boolean",
          "title": "Cross-reference due diligence mapping with related cross-cutting and topical Disclosure Requirements in the ESRS."
        },
        "req4": {
          "type": "boolean",
          "title": "Confirm no new behavioral requirements or modifications to existing governance roles are introduced."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "cross-references-to-esrs": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "esrs-reference": {
            "type": "string"
          },
          "description": {
            "type": "string"
          },
          "relevance-to-due-diligence": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how the undertaking’s due diligence process is outlined within its sustainability statement, specifically mapping the steps and main aspects of due diligence as outlined in ESRS 1 Chapter 4. The mapping should make explicit connections between the sustainability statement and the due diligence practices adhered to by the undertaking."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/due-diligence-mapping",
              "label": "Table: Due Diligence Mapping"
            },
            {
              "type": "Control",
              "scope": "#/properties/cross-references-to-esrs",
              "label": "Table: Cross-References to ESRS"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to facilitate an understanding of the undertaking’s due diligence process with regard to sustainability matters. It aims to ensure transparency regarding how the organization applies due diligence steps and principles in its operations and decision-making processes, linking these elements directly to the broader sustainability goals and statements of the company. This provision focuses on providing clarity without imposing specific behavioral expectations or altering existing governance structures."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-gov-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "The undertaking has disclosed the main features of its risk management and internal control system for sustainability reporting."
        },
        "req2": {
          "type": "boolean",
          "title": "A description of the scope and components of the risk management processes and systems is provided."
        },
        "req3": {
          "type": "boolean",
          "title": "The methodology for risk assessment and prioritisation is explained."
        },
        "req4": {
          "type": "boolean",
          "title": "Main risks identified in the sustainability reporting process are enumerated along with mitigation strategies and related controls."
        },
        "req5": {
          "type": "boolean",
          "title": "Integration of risk assessment findings into relevant internal functions and processes is clearly described."
        },
        "req6": {
          "type": "boolean",
          "title": "Periodic reporting mechanisms of these risk management findings to the administrative, management, and supervisory bodies are described."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "integration-and-reporting-processes": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "integration-into-functions": {
            "type": "string"
          },
          "description": {
            "type": "string"
          },
          "reporting-frequency": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s risk management and internal control processes related to sustainability reporting. Highlight key features, systems, and methodologies employed in evaluating and mitigating risks associated with sustainability disclosures."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/risk-management-and-internal-control-systems",
              "label": "Table: Risk Management and Internal Control Systems"
            },
            {
              "type": "Control",
              "scope": "#/properties/risk-assessment-and-mitigation-strategies",
              "label": "Table: Risk Assessment and Mitigation Strategies"
            },
            {
              "type": "Control",
              "scope": "#/properties/integration-and-reporting-processes",
              "label": "Table: Integration and Reporting Processes"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the undertaking’s risk management and internal control processes in relation to sustainability reporting. This disclosure aims to illustrate how the undertaking identifies, assesses, and manages risks that can impact the accuracy and reliability of sustainability information provided. Furthermore, it demonstrates the integration and reporting mechanism of risk management findings into the undertaking’s strategic and operational decision-making processes."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-gov-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe significant groups of products and/or services, including changes in the reporting period."
        },
        "req2": {
          "type": "boolean",
          "title": "List significant markets and/or customer groups, including any changes."
        },
        "req3": {
          "type": "boolean",
          "title": "Provide headcount of employees by geographical areas."
        },
        "req4": {
          "type": "boolean",
          "title": "Disclose any products or services banned in certain markets, if applicable and material."
        },
        "req5": {
          "type": "boolean",
          "title": "Break down total revenue by significant ESRS sectors, reconcilable with IFRS 8 reporting if applicable."
        },
        "req6": {
          "type": "boolean",
          "title": "Identify additional significant ESRS sectors beyond primary revenues, aligned with materiality assessment."
        },
        "req7": {
          "type": "boolean",
          "title": "State involvement in sectors like fossil fuels, chemicals, controversial weapons, or tobacco, with related revenues."
        },
        "req8": {
          "type": "boolean",
          "title": "Outline sustainability-related goals pertaining to products, customer categories, geographical areas, and stakeholders."
        },
        "req9": {
          "type": "boolean",
          "title": "Assess current products and markets against sustainability goals."
        },
        "req10": {
          "type": "boolean",
          "title": "Detail strategy elements impacting sustainability, highlighting challenges and critical solutions."
        },
        "req11": {
          "type": "boolean",
          "title": "Describe business model, including inputs, outputs, and value chain position, covering key suppliers and stakeholders."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "value-chain-overview": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "main-actor-segment": {
            "type": "string"
          },
          "relationship-to-undertaking": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the key elements of your organization’s strategy, business model, and value chain that relate to or impact sustainability matters. Ensure to include significant products or services, key markets, and any additional relevant elements in your disclosure."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/products-and-services-overview",
              "label": "Table: Products and Services Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/revenue-breakdown-by-esrs-sector",
              "label": "Table: Revenue Breakdown by ESRS Sector"
            },
            {
              "type": "Control",
              "scope": "#/properties/involvement-in-sensitive-sectors",
              "label": "Table: Involvement in Sensitive Sectors"
            },
            {
              "type": "Control",
              "scope": "#/properties/employee-headcount-by-geography",
              "label": "Table: Employee Headcount by Geography"
            },
            {
              "type": "Control",
              "scope": "#/properties/value-chain-overview",
              "label": "Table: Value Chain Overview"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to describe the key elements of the undertaking’s general strategy that relate to or affect sustainability matters, and the key elements of the undertaking’s business model and value chain, in order to provide an understanding of its exposure to impacts, risks, and opportunities and where they originate."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-sbm-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify key stakeholders and describe if and how engagement occurs for different categories of them."
        },
        "req2": {
          "type": "boolean",
          "title": "Outline the organization of your stakeholder engagement activities, their purpose, and the accounting of their outcomes."
        },
        "req3": {
          "type": "boolean",
          "title": "Summarize your organization’s understanding of stakeholders’ interests and views, specifically as they relate to strategy and business model."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail any amendments made or planned to the strategy and/or business model based on stakeholder insights."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain how these amendments impact or are likely to impact relationships with stakeholders."
        },
        "req6": {
          "type": "boolean",
          "title": "Clarify the role of administrative, management, and supervisory bodies in being informed about stakeholder views and interests."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "strategic-amendments-based-on-stakeholder-input": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "amendment-description": {
            "type": "string"
          },
          "affected-stakeholder-category": {
            "type": "string"
          },
          "timeline": {
            "type": "string"
          },
          "impact-assessment": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how your organization considers stakeholder interests and views within your strategy and business model, including engagement processes, analysis findings, and strategic amendments as applicable."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/stakeholder-engagement-summary",
              "label": "Table: Stakeholder Engagement Summary"
            },
            {
              "type": "Control",
              "scope": "#/properties/strategic-amendments-based-on-stakeholder-input",
              "label": "Table: Strategic Amendments Based on Stakeholder Input"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of how stakeholders’ interests and views inform the undertaking’s strategy and business model."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-sbm-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide a description of the material impacts, risks, and opportunities identified in the materiality assessment."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain where in the business model, operations, and value chain these impacts, risks, and opportunities are concentrated."
        },
        "req3": {
          "type": "boolean",
          "title": "Describe the current and anticipated effects of these impacts, risks, and opportunities on strategy, business model, and decision-making."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail any strategic or business model changes in response to these impacts, risks, and opportunities."
        },
        "req5": {
          "type": "boolean",
          "title": "Clarify how the undertaking’s material negative and positive impacts affect people or the environment."
        },
        "req6": {
          "type": "boolean",
          "title": "Discuss how the impacts are connected to or originate from the strategy and business model."
        },
        "req7": {
          "type": "boolean",
          "title": "Provide the expected time horizons for these impacts."
        },
        "req8": {
          "type": "boolean",
          "title": "Explain the involvement with these impacts through activities or business relationships."
        },
        "req9": {
          "type": "boolean",
          "title": "Outline the current financial effects on financial position, performance, and cash flows."
        },
        "req10": {
          "type": "boolean",
          "title": "Anticipate the financial effects over short, medium, and long-term horizons, including the impact on financial position, performance, and cash flows."
        },
        "req11": {
          "type": "boolean",
          "title": "Detail the resilience of the strategy and business model concerning the capacity to address impacts and risks and leverage opportunities."
        },
        "req12": {
          "type": "boolean",
          "title": "Indicate changes to material impacts, risks, and opportunities from the previous reporting period."
        },
        "req13": {
          "type": "boolean",
          "title": "Define which impacts, risks, and opportunities are covered by ESRS Disclosures and which are covered by additional entity-specific disclosures."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "strategy-resilience-table": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "impact-risk-opportunity": {
            "type": "string"
          },
          "resilience-analysis-description": {
            "type": "string"
          },
          "quantitative-qualitative": {
            "type": "string"
          },
          "time-horizon-considered": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the material impacts, risks, and opportunities that arise from the undertaking’s materiality assessment and analyze how they influence the strategy and business model. Include descriptions of effects on the business model, decision-making, financial position, and response strategies."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/material-impacts-risks-and-opportunities-table",
              "label": "Table: Material Impacts, Risks, and Opportunities Table"
            },
            {
              "type": "Control",
              "scope": "#/properties/financial-effects-table",
              "label": "Table: Financial Effects Table"
            },
            {
              "type": "Control",
              "scope": "#/properties/strategy-resilience-table",
              "label": "Table: Strategy Resilience Table"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the material impacts, risks and opportunities as they result from the undertaking’s materiality assessment and how they originate from and trigger adaptation of the undertaking’s strategy and business model including its resources allocation. The information to be disclosed about the management of the undertaking’s material impacts, risks and opportunities is prescribed in topical ESRS and in sector-specific standards, which shall be applied in conjunction with the Minimum Disclosure Requirements on policies, actions and targets established in this Standard."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-sbm-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the methodologies and assumptions applied in the process."
        },
        "req2": {
          "type": "boolean",
          "title": "Provide an overview of the process to identify, assess, prioritize, and monitor impacts on people and the environment."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain if the process focuses on specific activities, business relationships, geographies, or factors with heightened risk of adverse impacts."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail how consultation with affected stakeholders and external experts is incorporated."
        },
        "req5": {
          "type": "boolean",
          "title": "Outline how negative impacts are prioritized based on severity and likelihood and detail the process for positive impacts."
        },
        "req6": {
          "type": "boolean",
          "title": "Provide the criteria for determining material sustainability matters for reporting."
        },
        "req7": {
          "type": "boolean",
          "title": "Offer an overview of the process to identify, assess, and prioritize risks and opportunities with potential financial effects."
        },
        "req8": {
          "type": "boolean",
          "title": "Detail the connections between impacts and dependencies and their potential risks and opportunities."
        },
        "req9": {
          "type": "boolean",
          "title": "Explain how likelihood, magnitude, and nature of effects are assessed."
        },
        "req10": {
          "type": "boolean",
          "title": "Detail the prioritization of sustainability-related risks relative to other risks."
        },
        "req11": {
          "type": "boolean",
          "title": "Describe the decision-making processes and internal control procedures involved."
        },
        "req12": {
          "type": "boolean",
          "title": "Explain the integration of these processes into the overall risk management process."
        },
        "req13": {
          "type": "boolean",
          "title": "Detail the input parameters used, such as data sources and assumptions."
        },
        "req14": {
          "type": "boolean",
          "title": "Indicate any changes in the process compared to the prior reporting period and schedule for future revisions."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "changes-and-revisions-history": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "change-description": {
            "type": "string"
          },
          "date-of-change": {
            "type": "date"
          },
          "reason-for-change": {
            "type": "string"
          },
          "future-revision-date": {
            "type": "date"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s process for identifying and assessing material impacts, risks, and opportunities. Ensure to cover methodologies, assumptions, and the overall integration of these processes within the company’s framework."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/material-impacts-identification-process",
              "label": "Table: Material Impacts Identification Process"
            },
            {
              "type": "Control",
              "scope": "#/properties/risks-and-opportunities-assessment",
              "label": "Table: Risks and Opportunities Assessment"
            },
            {
              "type": "Control",
              "scope": "#/properties/integration-and-decision-processes",
              "label": "Table: Integration and Decision Processes"
            },
            {
              "type": "Control",
              "scope": "#/properties/changes-and-revisions-history",
              "label": "Table: Changes and Revisions History"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement (IRO-1) is to provide an understanding of the process through which the undertaking identifies impacts, risks, and opportunities and assesses their materiality. This is essential for determining the disclosures in the undertaking’s sustainability statement. The disclosure emphasizes the principle of double materiality and details the methodologies and assumptions engaged in this evaluative process."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-iro-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Report on all the Disclosure Requirements complied with in the sustainability statement."
        },
        "req2": {
          "type": "boolean",
          "title": "Include a content index indicating page numbers/paragraphs for each disclosure."
        },
        "req3": {
          "type": "boolean",
          "title": "List all datapoints derived from other EU legislation as per Appendix B and indicate their location in the report, marking non-material items as “Not material”."
        },
        "req4": {
          "type": "boolean",
          "title": "Provide a detailed explanation if climate change is deemed not material, including future conditions that may alter this assessment."
        },
        "req5": {
          "type": "boolean",
          "title": "Offer brief explanations for any topics other than climate change considered non-material."
        },
        "req6": {
          "type": "boolean",
          "title": "Explain how material information was determined using thresholds or criteria from ESRS 1 section 3.2."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "datapoints-from-eu-legislation": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "datapoint": {
            "type": "string"
          },
          "location-in-statement": {
            "type": "string"
          },
          "materiality": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the Disclosure Requirements complied with in the sustainability statement, the results of materiality assessments, and provide content indexing of the sustainability statement along with a disclosure of datapoints derived from other EU legislation. Include explanations for any non-material conclusions, specifically on climate change and other topics."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/disclosure-content-index",
              "label": "Table: Disclosure Content Index"
            },
            {
              "type": "Control",
              "scope": "#/properties/datapoints-from-eu-legislation",
              "label": "Table: Datapoints from EU Legislation"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide stakeholders with a comprehensive understanding of the disclosures included in the undertaking’s sustainability statement and to elucidate the topics deemed not material following a structured materiality assessment. It aims to ensure transparency in the disclosure of material information concerning impacts, risks, and opportunities and to explain any exclusions made by the undertaking through detailed assessments."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='esrs2-iro-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose the transition plan for climate change mitigation covering past, current, and future strategies."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain how GHG emission targets are compatible with limiting global warming to 1.5°C, referencing Disclosure Requirement E1-4."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail the decarbonisation levers and key actions planned across operations and supply chain."
        },
        "req4": {
          "type": "boolean",
          "title": "Quantify investments and funding supporting the transition, including taxonomy-aligned CapEx and CapEx plans."
        },
        "req5": {
          "type": "boolean",
          "title": "Assess potential locked-in GHG emissions and management plans for GHG-intensive assets."
        },
        "req6": {
          "type": "boolean",
          "title": "Explain alignment of economic activities with EU Taxonomy Climate Regulations, including CapEx and OpEx plans."
        },
        "req7": {
          "type": "boolean",
          "title": "Disclose significant CapEx invested in coal, oil, and gas-related activities during the reporting period."
        },
        "req8": {
          "type": "boolean",
          "title": "State whether the undertaking is excluded from the EU Paris-aligned Benchmarks."
        },
        "req9": {
          "type": "boolean",
          "title": "Detail the embedding and alignment of the transition plan within the business strategy and financial planning."
        },
        "req10": {
          "type": "boolean",
          "title": "Declare whether the transition plan is approved by administrative, management, and supervisory bodies."
        },
        "req11": {
          "type": "boolean",
          "title": "Summarize progress in implementing the transition plan."
        },
        "req12": {
          "type": "boolean",
          "title": "If no transition plan is in place, indicate future adoption timelines and intentions."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "locked-in-ghg-emissions-assessment": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "asset-product": {
            "type": "string"
          },
          "potential-locked-in-emissions": {
            "type": "number"
          },
          "mitigation-strategy": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the comprehensive transition plan your undertaking has formulated to mitigate climate change. The plan should detail past, current, and future mitigation actions and how they align with the Paris Agreement, aiming to limit global warming to 1.5°C. Include references to GHG reduction targets, decarbonisation levers, investments and funding supporting transition, and the alignment of economic activities with the EU Taxonomy."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/ghg-emission-targets-and-compatibility",
              "label": "Table: GHG Emission Targets and Compatibility"
            },
            {
              "type": "Control",
              "scope": "#/properties/decarbonisation-levers-and-key-actions",
              "label": "Table: Decarbonisation Levers and Key Actions"
            },
            {
              "type": "Control",
              "scope": "#/properties/investment-in-transition-plan",
              "label": "Table: Investment in Transition Plan"
            },
            {
              "type": "Control",
              "scope": "#/properties/locked-in-ghg-emissions-assessment",
              "label": "Table: Locked-in GHG Emissions Assessment"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the undertaking’s past, current, and future mitigation efforts to ensure that its strategy and business model are compatible with the transition to a sustainable economy, and with the limiting of global warming to 1.5°C in line with the Paris Agreement and with the objective of achieving climate neutrality by 2050. It should address the undertaking’s exposure to coal, oil, and gas-related activities and detail transition actions across strategic areas, emphasizing on transparency of targets, key actions, investments, risks, and alignment with broader business strategies."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e1-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify all material climate-related risks."
        },
        "req2": {
          "type": "boolean",
          "title": "Categorize each climate-related risk as either physical or transition risk."
        },
        "req3": {
          "type": "boolean",
          "title": "Describe the scope of resilience analysis conducted for strategy and business model."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail the timing and methodology of the resilience analysis, including climate scenario analyses."
        },
        "req5": {
          "type": "boolean",
          "title": "Present the results of the resilience analysis, highlighting the findings from scenario analysis."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "resilience-analysis-summary": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "analysis-scope": {
            "type": "string"
          },
          "conduct-timing": {
            "type": "string"
          },
          "methodology": {
            "type": "string"
          },
          "scenario-used": {
            "type": "string"
          },
          "findings-summary": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe all material climate-related risks identified by the undertaking, specifying if each is a physical risk or a transition risk. Additionally, outline the resilience of the undertaking’s strategy and business model to climate change, detailing the scope, timing, methodology (including climate scenario analysis), and results of this resilience analysis."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/climate-related-risks",
              "label": "Table: Climate-related Risks"
            },
            {
              "type": "Control",
              "scope": "#/properties/resilience-analysis-summary",
              "label": "Table: Resilience Analysis Summary"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure that stakeholders are informed about the entity’s material climate-related risks and its proactive measures to address these through its strategy and business model. It requires transparent communication on how the entity identifies such risks, categorizes them as physical or transition risks, and elaborates on the robustness of its strategic direction and business model against climate change impacts."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 sbm-3';

UPDATE "public"."category" SET
  "description"='### About

This disclosure requires the undertaking to provide a detailed description of its policies concerning climate change mitigation and adaptation. It covers the management of material impacts, risks, and opportunities related to climate changes. This includes the identification, assessment, management, and remediation strategies that the company employs to address climate-related impacts.

### Objective

  The objective of this Disclosure Requirement is to enable stakeholders to understand the extent to which the undertaking has comprehensive policies addressing its material impacts, risks, and opportunities concerning climate change. This understanding will shed light on the company’s approach to managing climate change through mitigation, adaptation, energy efficiency, renewable energy deployment, and additional relevant strategies.',
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
      "type": "object",
      "properties": {
        "description": {
          "type": "string"
        },
        "climate-change-policies-overview": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "policy-area": {
                "type": "string"
              },
              "policy-description": {
                "type": "string"
              },
              "implementation-date": {
                "type": "string",
                "format": "date"
              },
              "policy-owner": {
                "type": "string"
              }
            }
          }
        },
        "risk-and-opportunity-management": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "impact-risk-opportunity": {
                "type": "string"
              },
              "management-approach": {
                "type": "string"
              },
              "related-policy": {
                "type": "string"
              },
              "status": {
                "type": "string"
              }
            }
          }
        },
        "energy-efficiency-initiatives": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "initiative-name": {
                "type": "string"
              },
              "description": {
                "type": "string"
              },
              "expected-savings": {
                "type": "number"
              },
              "implementation-date": {
                "type": "string",
                "format": "date"
              }
            }
          }
        },
        "renewable-energy-deployment": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "project-name": {
                "type": "string"
              },
              "energy-generation-type": {
                "type": "string"
              },
              "capacity-mw": {
                "type": "number"
              },
              "location": {
                "type": "string"
              }
            }
          }
        }
      }
    },
    "uischema": {
      "type": "VerticalLayout",
      "elements": [
        {
          "type": "Control",
          "scope": "#/properties/description",
          "options": {
            "multi": true
          }
        },
        {
          "type": "Control",
          "scope": "#/properties/climate-change-policies-overview",
          "label": "Table: Climate Change Policies Overview"
        },
        {
          "type": "Control",
          "scope": "#/properties/risk-and-opportunity-management",
          "label": "Table: Risk and Opportunity Management"
        },
        {
          "type": "Control",
          "scope": "#/properties/energy-efficiency-initiatives",
          "label": "Table: Energy Efficiency Initiatives"
        },
        {
          "type": "Control",
          "scope": "#/properties/renewable-energy-deployment",
          "label": "Table: Renewable Energy Deployment"
        }
      ]
    }
  }
}',
  "requirements_form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
      "type": "object",
      "properties": {
        "describePoliciesClimateChangeMitigationAdaptation": {
          "type": "boolean",
          "title": "The undertaking shall describe its policies adopted to manage its material impacts, risks and opportunities related to climate change mitigation and adaptation."
        },
        "disclosureContainInformationPoliciesMitigationAdaptation": {
          "type": "boolean",
          "title": "The disclosure required by paragraph 22 shall contain the information on the policies the undertaking has in place to manage its material impacts, risks and opportunities related to climate change mitigation and adaptation in accordance with ESRS 2 MDR-P Policies adopted to manage material sustainability matters."
        },
        "indicatePoliciesAddressAreas": {
          "type": "boolean",
          "title": "The undertaking shall indicate whether and how its policies address the following areas:"
        },
        "addressClimateChangeMitigation": {
          "type": "boolean",
          "title": "(a) climate change mitigation;"
        },
        "addressClimateChangeAdaptation": {
          "type": "boolean",
          "title": "(b) climate change adaptation;"
        },
        "addressEnergyEfficiency": {
          "type": "boolean",
          "title": "(c) energy efficiency;"
        },
        "addressRenewableEnergyDeployment": {
          "type": "boolean",
          "title": "(d) renewable energy deployment; and"
        },
        "addressOtherAreas": {
          "type": "boolean",
          "title": "(e) other."
        }
      }
    },
    "uischema": {
      "type": "VerticalLayout",
      "elements": [
        {
          "type": "Control",
          "scope": "#/properties/describePoliciesClimateChangeMitigationAdaptation"
        },
        {
          "type": "Label",
          "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management and/or remediation of its material climate change mitigation and adaptation impacts, risks and opportunities."
        },
        {
          "type": "Control",
          "scope": "#/properties/disclosureContainInformationPoliciesMitigationAdaptation"
        },
        {
          "type": "Control",
          "scope": "#/properties/indicatePoliciesAddressAreas"
        },
        {
          "type": "Control",
          "scope": "#/properties/addressClimateChangeMitigation"
        },
        {
          "type": "Control",
          "scope": "#/properties/addressClimateChangeAdaptation"
        },
        {
          "type": "Control",
          "scope": "#/properties/addressEnergyEfficiency"
        },
        {
          "type": "Control",
          "scope": "#/properties/addressRenewableEnergyDeployment"
        },
        {
          "type": "Control",
          "scope": "#/properties/addressOtherAreas"
        }
      ]
    }
  }
}'
WHERE "slug"='e1-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe climate change mitigation and adaptation actions implemented during the reporting year and planned for the future."
        },
        "req2": {
          "type": "boolean",
          "title": "Categorize mitigation actions by decarbonization levers, including nature-based solutions."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail the achieved and expected greenhouse gas (GHG) emission reductions from these actions."
        },
        "req4": {
          "type": "boolean",
          "title": "Disclose significant monetary amounts of CapEx and OpEx, linking to financial statements as applicable."
        },
        "req5": {
          "type": "boolean",
          "title": "Align CapEx and OpEx disclosure with key performance indicators and any relevant plans required under EU regulations."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "financial-alignment-table": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "action-id": {
            "type": "number"
          },
          "capex-eur": {
            "type": "number"
          },
          "opex-eur": {
            "type": "number"
          },
          "financial-statement-reference": {
            "type": "string"
          },
          "kpi-reference": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the climate change mitigation and adaptation actions undertaken and planned by the company, along with the resources allocated for their execution. Ensure the description aligns with the principles of ESRS 2 MDR-A and includes actions categorized by decarbonization levers, emissions reduction outcomes, and related significant CapEx and OpEx figures."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/climate-actions-table",
              "label": "Table: Climate Actions Table"
            },
            {
              "type": "Control",
              "scope": "#/properties/financial-alignment-table",
              "label": "Table: Financial Alignment Table"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the key actions taken and planned to achieve climate-related policy objectives and targets. It seeks to ensure transparency in how a company plans to mitigate and adapt to climate change by outlining specific actions, resources, and associated costs within the broader financial context outlined in applicable EU regulations."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e1-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose climate-related targets including GHG emissions reduction targets and any other relevant targets."
        },
        "req2": {
          "type": "boolean",
          "title": "Ensure targets are disclosed in absolute and intensity values, where applicable, following ESRS 2 MDR-T requirements."
        },
        "req3": {
          "type": "boolean",
          "title": "Clearly separate or combine targets for Scopes 1, 2, and 3, specifying which Scopes are covered."
        },
        "req4": {
          "type": "boolean",
          "title": "Provide details on the baseline year, base value, and future updates post-2030 in 5-year increments."
        },
        "req5": {
          "type": "boolean",
          "title": "Declare if targets are science-based and aligned with limiting global warming to 1.5°C."
        },
        "req6": {
          "type": "boolean",
          "title": "Explain the frameworks, methodologies, and scenarios used to define the targets, and mention if these are externally assured."
        },
        "req7": {
          "type": "boolean",
          "title": "Describe the critical assumptions and potential impacts of future developments on GHG emissions and reductions."
        },
        "req8": {
          "type": "boolean",
          "title": "Outline expected decarbonisation levers and their quantitative contributions towards achieving emission reduction targets."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "climate-related-targets": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "target": {
            "type": "string"
          },
          "date": {
            "type": "string"
          }
        }
      }
    },
    "decarbonisation-levers": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "lever": {
            "type": "string"
          },
          "quantitative-contribution": {
            "type": "number"
          },
          "description": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the climate-related targets your undertaking has set, including GHG emission reduction targets for Scopes 1, 2, and 3 emissions, and the methodologies used to determine these targets. Ensure the disclosure explains how these targets address material climate-related impacts, risks, and opportunities."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/climate-related-targets",
              "label": "Table: Climate-related Targets"
            },
            {
              "type": "Control",
              "scope": "#/properties/decarbonisation-levers",
              "label": "Table: Decarbonisation Levers"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the targets the undertaking has set to support its climate change mitigation and adaptation policies and address its material climate-related impacts, risks, and opportunities. This provides stakeholders with insights into the strategic direction and effectiveness of the undertaking’s climate strategies."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e1-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide absolute total energy consumption in MWh for own operations."
        },
        "req2": {
          "type": "boolean",
          "title": "Disaggregate total energy consumption by source: fossil, nuclear, and renewable."
        },
        "req3": {
          "type": "boolean",
          "title": "For renewable sources, break down consumption by fuel, purchased/acquired, and self-generated."
        },
        "req4": {
          "type": "boolean",
          "title": "For operations in high climate impact sectors, further disaggregate fossil fuel consumption by source: coal, oil, gas, and others."
        },
        "req5": {
          "type": "boolean",
          "title": "Disaggregate purchased/acquired energy from fossil and renewable sources."
        },
        "req6": {
          "type": "boolean",
          "title": "If applicable, separately disclose non-renewable and renewable energy production in MWh."
        },
        "req7": {
          "type": "boolean",
          "title": "Monitor and report improvements in energy efficiency across operations."
        },
        "req8": {
          "type": "boolean",
          "title": "Identify and disclose any energy sourcing related to coal, oil, and gas activities."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "energy-production": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "production-type": {
            "type": "string"
          },
          "energy-type": {
            "type": "string"
          },
          "production-in-mwh": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s total energy consumption in absolute values for its own operations, including its energy mix broken down by fossil, nuclear, and renewable sources. Disaggregate the information based on the types of energy sources, and specify any activities related to high climate impact sectors where applicable."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/total-energy-consumption",
              "label": "Table: Total Energy Consumption"
            },
            {
              "type": "Control",
              "scope": "#/properties/energy-production",
              "label": "Table: Energy Production"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the undertaking’s total energy consumption in absolute value, improvement in energy efficiency, exposure to coal, oil and gas-related activities, and the share of renewable energy in its overall energy mix. This includes a detailed breakdown of energy consumption by source type and a reflection of the undertaking’s efforts to transition to cleaner energy solutions."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e1-5';

UPDATE "public"."category" SET
  "description"='### About

ESRS Disclosure Requirement E1-6 involves the disclosure of Gross Scopes 1, 2, 3, and Total GHG emissions in metric tonnes of CO2 equivalent. This requirement aims to provide insights into a company’s direct and indirect impacts on climate change, focusing on emissions throughout the company’s value chain, and overall climate-related transition risks.

### Objective

  The objective of this Disclosure Requirement is to provide a comprehensive understanding of a company’s greenhouse gas emissions. It addresses direct impacts through gross Scope 1 GHG emissions, indirect impacts from energy consumption through gross Scope 2, and value chain emissions via gross Scope 3. This holistic view supports the assessment of climate-related transition risks and helps gauge the company’s alignment with climate-related targets and EU policy goals.',
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
      "type": "object",
      "properties": {
        "description": {
          "type": "string"
        },
        "scope-1-ghg-emissions": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "scope-1-emissions-mtco2eq": {
                "type": "number"
              },
              "-regulated-emissions": {
                "type": "number"
              }
            }
          }
        },
        "scope-2-ghg-emissions": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "location-based-scope-2-mtco2eq": {
                "type": "number"
              },
              "market-based-scope-2-mtco2eq": {
                "type": "number"
              }
            }
          }
        },
        "scope-3-ghg-emissions": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "scope-3-category": {
                "type": "string"
              },
              "scope-3-emissions-mtco2eq": {
                "type": "number"
              }
            }
          }
        },
        "total-ghg-emissions": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "total-emissions-location-based-scope-2-mtco2eq": {
                "type": "number"
              },
              "total-emissions-market-based-scope-2-mtco2eq": {
                "type": "number"
              }
            }
          }
        },
        "operational-control-disaggregation": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "entity": {
                "type": "string"
              },
              "operational-control-emissions-mtco2eq": {
                "type": "number"
              }
            }
          }
        }
      }
    },
    "uischema": {
      "type": "VerticalLayout",
      "elements": [
        {
          "type": "Control",
          "scope": "#/properties/description",
          "options": {
            "multi": true
          }
        },
        {
          "type": "Control",
          "scope": "#/properties/scope-1-ghg-emissions",
          "label": "Table: Scope 1 GHG Emissions"
        },
        {
          "type": "Control",
          "scope": "#/properties/scope-2-ghg-emissions",
          "label": "Table: Scope 2 GHG Emissions"
        },
        {
          "type": "Control",
          "scope": "#/properties/scope-3-ghg-emissions",
          "label": "Table: Scope 3 GHG Emissions"
        },
        {
          "type": "Control",
          "scope": "#/properties/total-ghg-emissions",
          "label": "Table: Total GHG Emissions"
        },
        {
          "type": "Control",
          "scope": "#/properties/operational-control-disaggregation",
          "label": "Table: Operational Control Disaggregation"
        }
      ]
    }
  }
}',
  "requirements_form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
      "type": "object",
      "properties": {
        "discloseGrossGHGEmissions": {
          "type": "boolean",
          "title": "§44. The company shall disclose in metric tonnes of CO2eq its (45) : (a) gross Scope 1 GHG emissions; (b) gross Scope 2 GHG emissions; (c) gross Scope 3 GHG emissions; and (d) total GHG emissions."
        },
        "referESRS1ForGHGDisclosures": {
          "type": "boolean",
          "title": "§46. When disclosing the information on GHG emissions required under paragraph 44, the company shall refer to ESRS 1 paragraphs from 62 to 67."
        },
        "includeAssocJointVenturesGHG": {
          "type": "boolean",
          "title": "In principle, the data on GHG emissions of its associates or joint ventures that are part of the company’s upstream and downstream value chain (ESRS 1 Paragraph 67) are not limited to the share of equity held."
        },
        "operationalControlGHGEmissions": {
          "type": "boolean",
          "title": "For its associates, joint ventures, unconsolidated subsidiaries (investment entities) and contractual arrangements that are joint arrangements not structured through an entity (i.e., jointly controlled operations and assets), the company shall include the GHG emissions in accordance with the extent of the company’s operational control over them."
        },
        "discloseChangesInGHGDefinitions": {
          "type": "boolean",
          "title": "§47. In case of significant changes in the definition of what constitutes the reporting company and its upstream and downstream value chain, the company shall disclose these changes and explain their effect on the year-to-year comparability of its reported GHG emissions (i.e., the effect on the comparability of current versus previous reporting period GHG emissions)."
        },
        "discloseGrossScope1Emissions": {
          "type": "boolean",
          "title": "§48. The disclosure on gross Scope 1 GHG emissions required by paragraph 44 (a) shall include: (a) the gross Scope 1 GHG emissions in metric tonnes of CO2eq; and"
        },
        "percentageScope1FromTradingSchemes": {
          "type": "boolean",
          "title": "(b) the percentage of Scope 1 GHG emissions from regulated emission trading schemes."
        },
        "discloseLocationBasedScope2": {
          "type": "boolean",
          "title": "§49. The disclosure on gross Scope 2 GHG emissions required by paragraph 44 (b) shall include: (a) the gross location-based Scope 2 GHG emissions in metric tonnes of CO2eq; and"
        },
        "discloseMarketBasedScope2": {
          "type": "boolean",
          "title": "(b) the gross market-based Scope 2 GHG emissions in metric tonnes of CO2eq."
        },
        "disaggregateScope1Scope2ByGroup": {
          "type": "boolean",
          "title": "§50. For Scope 1 and Scope 2 emissions disclosed as required by paragraphs 44 (a) and (b), the company shall disaggregate the information, separately disclosing emissions from: (a) the consolidated accounting group (the parent and subsidiaries); and"
        },
        "disaggregateScope1Scope2ByInvestee": {
          "type": "boolean",
          "title": "(b) investees such as associates, joint ventures, or unconsolidated subsidiaries that are not fully consolidated in the financial statements of the consolidated accounting group, as well as contractual arrangements that are joint arrangements not structured through an entity (i.e., jointly controlled operations and assets), for which it has operational control."
        },
        "discloseGrossScope3ByCategory": {
          "type": "boolean",
          "title": "§51. The disclosure of gross Scope 3 GHG emissions required by paragraph 44 (c) shall include GHG emissions in metric tonnes of CO2eq from each significant Scope 3 category (i.e. each Scope 3 category that is a priority for the company)."
        },
        "discloseTotalGHGSum": {
          "type": "boolean",
          "title": "§52. The disclosure of total GHG emissions required by paragraph 44 (d) shall be the sum of Scope 1, 2 and 3 GHG emissions required by paragraphs 44 (a) to (c)."
        },
        "disaggregateTotalGHGLocationBased": {
          "type": "boolean",
          "title": "The total GHG emissions shall be disclosed with a disaggregation that makes a distinction of: (a) the total GHG emissions derived from the underlying Scope 2 GHG emissions being measured using the location-based method; and"
        },
        "disaggregateTotalGHGMarketBased": {
          "type": "boolean",
          "title": "(b) the total GHG emissions derived from the underlying Scope 2 GHG emissions being measured using the market-based method."
        },
        "discloseGHGEmissions": {
          "type": "boolean",
          "title": "1. Companies must provide disclosures on their greenhouse gas emissions."
        },
        "reportWaterUsage": {
          "type": "boolean",
          "title": "2. Organizations need to report on their water usage."
        },
        "discloseGHGIntensityInfo": {
          "type": "boolean",
          "title": "When disclosing the information on GHG intensity based on net revenue required under paragraph 53, the company shall:"
        },
        "calculateGHGIntensityRatioFormula": {
          "type": "boolean",
          "title": "(a) calculate the GHG intensity ratio by the following formula:"
        },
        "expressGHGEmissionsAndNetRevenue": {
          "type": "boolean",
          "title": "(b) express the total GHG emissions in metric tonnes of CO2eq and the net revenue in monetary units (e.g., Euros) and present the results for the market-based and location-based method;"
        },
        "includeGHGEmissionsAndNetRevenue": {
          "type": "boolean",
          "title": "(c) include the total GHG emissions in the numerator and overall net revenue in the denominator;"
        },
        "calculateGHGEmissionsPara44And52": {
          "type": "boolean",
          "title": "(d) calculate the total GHG emissions as required by paragraphs 44 (d) and 52; and"
        },
        "calculateNetRevenueAccountingStandards": {
          "type": "boolean",
          "title": "(e) calculate the net revenue in line with the requirements in accounting standards applied for financial statements, i.e., IFRS 15 or local GAAP."
        },
        "reconcileNetRevenueToFinancialStatements": {
          "type": "boolean",
          "title": "The reconciliation of the net revenue used to calculate GHG intensity to the relevant line item or notes in the financial statements (as required by paragraph 55) may be done by either:"
        },
        "crossReferenceLineItem": {
          "type": "boolean",
          "title": "A cross-reference to the related line item or disclosure in the financial statements;"
        },
        "quantitativeReconciliationIfNoDirectCrossReference": {
          "type": "boolean",
          "title": "If the net revenue cannot be directly cross-referenced to a line item or disclosure in the financial statements, by a quantitative reconciliation using the below tabular format."
        }
      }
    },
    "uischema": {
      "type": "VerticalLayout",
      "elements": [
        {
          "type": "Control",
          "scope": "#/properties/discloseGrossGHGEmissions"
        },
        {
          "type": "Label",
          "text": "§45. The objective of the Disclosure Requirement in paragraph 44 in respect of: (a) gross Scope 1 GHG emissions as required by paragraph 44 (a) is to provide an understanding of the direct impacts of the company on climate change and the proportion of its total GHG emissions that are regulated under emission trading schemes."
        },
        {
          "type": "Label",
          "text": "(b) gross Scope 2 GHG emissions as required by paragraph 44 (b) is to provide an understanding of the indirect impacts on climate change caused by the company’s consumed energy whether externally purchased or acquired."
        },
        {
          "type": "Label",
          "text": "(c) gross Scope 3 GHG emissions as required by paragraph 44 (c) is to provide an understanding of the GHG emissions that occur in the company’s upstream and downstream value chain beyond its Scope 1 and 2 GHG emissions."
        },
        {
          "type": "Label",
          "text": "For many companies, Scope 3 GHG emissions may be the main component of their GHG inventory and are an important driver of the company’s transition risks."
        },
        {
          "type": "Label",
          "text": "(d) total GHG emissions as required by paragraph 44 (d) is to provide an overall understanding of the company’s GHG emissions and whether they occur from its own operations or the upstream and downstream value chain."
        },
        {
          "type": "Label",
          "text": "This disclosure is a prerequisite for measuring progress towards reducing GHG emissions in accordance with the company’s climate-related targets and EU policy goals."
        },
        {
          "type": "Label",
          "text": "The information from this Disclosure Requirement is also needed to understand the company’s climate-related transition risks."
        },
        {
          "type": "Control",
          "scope": "#/properties/referESRS1ForGHGDisclosures"
        },
        {
          "type": "Control",
          "scope": "#/properties/includeAssocJointVenturesGHG"
        },
        {
          "type": "Control",
          "scope": "#/properties/operationalControlGHGEmissions"
        },
        {
          "type": "Control",
          "scope": "#/properties/discloseChangesInGHGDefinitions"
        },
        {
          "type": "Control",
          "scope": "#/properties/discloseGrossScope1Emissions"
        },
        {
          "type": "Control",
          "scope": "#/properties/percentageScope1FromTradingSchemes"
        },
        {
          "type": "Control",
          "scope": "#/properties/discloseLocationBasedScope2"
        },
        {
          "type": "Control",
          "scope": "#/properties/discloseMarketBasedScope2"
        },
        {
          "type": "Control",
          "scope": "#/properties/disaggregateScope1Scope2ByGroup"
        },
        {
          "type": "Control",
          "scope": "#/properties/disaggregateScope1Scope2ByInvestee"
        },
        {
          "type": "Control",
          "scope": "#/properties/discloseGrossScope3ByCategory"
        },
        {
          "type": "Control",
          "scope": "#/properties/discloseTotalGHGSum"
        },
        {
          "type": "Control",
          "scope": "#/properties/disaggregateTotalGHGLocationBased"
        },
        {
          "type": "Control",
          "scope": "#/properties/disaggregateTotalGHGMarketBased"
        },
        {
          "type": "Control",
          "scope": "#/properties/discloseGHGEmissions"
        },
        {
          "type": "Control",
          "scope": "#/properties/reportWaterUsage"
        },
        {
          "type": "Label",
          "text": "3. A sustainability strategy should be developed."
        },
        {
          "type": "Label",
          "text": "The Board is encouraged to integrate sustainability risks into their risk management processes."
        },
        {
          "type": "Label",
          "text": "Employees should be trained on sustainability practices."
        },
        {
          "type": "Label",
          "text": "AR 53."
        },
        {
          "type": "Control",
          "scope": "#/properties/discloseGHGIntensityInfo"
        },
        {
          "type": "Control",
          "scope": "#/properties/calculateGHGIntensityRatioFormula"
        },
        {
          "type": "Control",
          "scope": "#/properties/expressGHGEmissionsAndNetRevenue"
        },
        {
          "type": "Control",
          "scope": "#/properties/includeGHGEmissionsAndNetRevenue"
        },
        {
          "type": "Control",
          "scope": "#/properties/calculateGHGEmissionsPara44And52"
        },
        {
          "type": "Control",
          "scope": "#/properties/calculateNetRevenueAccountingStandards"
        },
        {
          "type": "Label",
          "text": "AR 54."
        },
        {
          "type": "Label",
          "text": "The quantitative information may be presented in the following tabular format."
        },
        {
          "type": "Label",
          "text": "GHG intensity per net revenue"
        },
        {
          "type": "Label",
          "text": "Comparative"
        },
        {
          "type": "Label",
          "text": "N %"
        },
        {
          "type": "Label",
          "text": "N / N-1"
        },
        {
          "type": "Label",
          "text": "Total GHG emissions (location-based) per net revenue (tCO2eq/Monetary unit)"
        },
        {
          "type": "Label",
          "text": "Total GHG emissions (market-based) per net revenue (tCO2eq/Monetary unit)"
        },
        {
          "type": "Label",
          "text": "AR 55."
        },
        {
          "type": "Control",
          "scope": "#/properties/reconcileNetRevenueToFinancialStatements"
        },
        {
          "type": "Control",
          "scope": "#/properties/crossReferenceLineItem"
        },
        {
          "type": "Control",
          "scope": "#/properties/quantitativeReconciliationIfNoDirectCrossReference"
        },
        {
          "type": "Label",
          "text": "Net revenue used to calculate GHG intensity"
        },
        {
          "type": "Label",
          "text": "Net revenue (other)"
        },
        {
          "type": "Label",
          "text": "Total net revenue (in financial statements)"
        }
      ]
    }
  }
}'
WHERE "slug"='e1-6';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose total GHG removals and storage in metric tonnes of CO2eq from own operations and value chain, disaggregated by removal activity."
        },
        "req2": {
          "type": "boolean",
          "title": "Provide details on calculation assumptions, methodologies, and frameworks applied for GHG removals and storage."
        },
        "req3": {
          "type": "boolean",
          "title": "State the total amount of carbon credits outside the value chain in metric tonnes of CO2eq that have been verified and cancelled in the reporting period."
        },
        "req4": {
          "type": "boolean",
          "title": "Disclose future plans for cancelling carbon credits, indicating any contractual agreements."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain methodologies for net-zero targets and how residual GHGs are neutralized."
        },
        "req6": {
          "type": "boolean",
          "title": "For claims of GHG neutrality, describe accompanying GHG emission reduction targets."
        },
        "req7": {
          "type": "boolean",
          "title": "Ensure confidence in the quality and integrity of carbon credits used, referencing recognised standards."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "carbon-credits": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "verified-credits-tonnes-co2eq": {
            "type": "number"
          },
          "cancelled-credits-tonnes-co2eq": {
            "type": "number"
          },
          "planned-credits-cancellation-tonnes-co2eq": {
            "type": "number"
          },
          "standard": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s actions regarding GHG removals and storage, including the details of any financial investments in carbon credits. The disclosure should precisely delineate both internal GHG management efforts and external financing towards carbon-neutral activities."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/ghg-removals-and-storage",
              "label": "Table: GHG Removals and Storage"
            },
            {
              "type": "Control",
              "scope": "#/properties/carbon-credits",
              "label": "Table: Carbon Credits"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the undertaking’s actions to permanently remove or actively support the removal of GHG from the atmosphere, potentially for achieving net-zero targets. It also aims to offer insight into the extent and quality of carbon credits the undertaking has purchased or intends to purchase from the voluntary market, potentially for supporting its GHG neutrality claims."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e1-7';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Confirm if the undertaking uses internal carbon pricing schemes."
        },
        "req2": {
          "type": "boolean",
          "title": "Describe the type of internal carbon pricing schemes in place (e.g., shadow prices, internal carbon fees, funds)."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain the scope and application of the carbon pricing schemes (e.g., activities, geographies, entities)."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail the carbon prices applied, including critical assumptions and the sources of these prices."
        },
        "req5": {
          "type": "boolean",
          "title": "Justify the relevance of chosen carbon prices for their specific application."
        },
        "req6": {
          "type": "boolean",
          "title": "Optionally, provide the calculation methodology of the carbon prices, emphasizing scientific guidance."
        },
        "req7": {
          "type": "boolean",
          "title": "Report the gross GHG emissions by Scopes 1, 2, and where applicable 3, in metric tonnes of CO2eq covered by these schemes."
        },
        "req8": {
          "type": "boolean",
          "title": "Indicate the share of these emissions relative to the undertaking’s overall GHG emissions for each Scope."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "ghg-emissions-covered-by-carbon-pricing-schemes": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "scope": {
            "type": "string"
          },
          "ghg-emissions-tonnes-co2eq": {
            "type": "number"
          },
          "percentage-of-overall-emissions": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe whether the undertaking applies internal carbon pricing schemes, and if so, how they support its decision making and incentivise the implementation of climate-related policies and targets."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/internal-carbon-pricing-schemes",
              "label": "Table: Internal Carbon Pricing Schemes"
            },
            {
              "type": "Control",
              "scope": "#/properties/ghg-emissions-covered-by-carbon-pricing-schemes",
              "label": "Table: GHG Emissions Covered by Carbon Pricing Schemes"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide stakeholders with information on how internal carbon pricing is integrated into an undertaking’s strategic and operational decision-making processes. This disclosure helps assess the alignment of the undertaking’s climate strategy with science-based carbon pricing trajectories and ensures accountability in achieving climate-related targets."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e1-8';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify anticipated financial effects from material physical risks over short-, medium-, and long-term."
        },
        "req2": {
          "type": "boolean",
          "title": "Determine anticipated financial effects from material transition risks over short-, medium-, and long-term."
        },
        "req3": {
          "type": "boolean",
          "title": "Explore and document potential financial benefits from material climate-related opportunities."
        },
        "req4": {
          "type": "boolean",
          "title": "Conduct scenario analysis to assess resilience and inform anticipated effects."
        },
        "req5": {
          "type": "boolean",
          "title": "Quantify the proportion of assets at material physical risk, disaggregated by acute and chronic risks."
        },
        "req6": {
          "type": "boolean",
          "title": "Identify location of significant assets at material physical risk."
        },
        "req7": {
          "type": "boolean",
          "title": "Compute monetary and percentage proportion of assets and revenue at material transition risk."
        },
        "req8": {
          "type": "boolean",
          "title": "Breakdown real estate assets by energy-efficiency class."
        },
        "req9": {
          "type": "boolean",
          "title": "Document liabilities arising from transition risks in short-, medium-, and long-term."
        },
        "req10": {
          "type": "boolean",
          "title": "Demonstrate reconciliation with financial statement line items."
        },
        "req11": {
          "type": "boolean",
          "title": "Consider expected cost savings from climate change mitigation and adaptation."
        },
        "req12": {
          "type": "boolean",
          "title": "Estimate market size or changes to revenue from low-carbon approaches."
        },
        "req13": {
          "type": "boolean",
          "title": "Ensure qualitative characteristics of information are met as per ESRS 1 Appendix B."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "climate-related-opportunities": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "expected-cost-savings": {
            "type": "number"
          },
          "market-size-changes": {
            "type": "number"
          },
          "revenue-from-low-carbon-products": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the anticipated financial effects from material physical and transition risks, and the potential benefits from material climate-related opportunities. This includes an assessment over short-, medium-, and long-term periods, informed by scenario and resilience analysis."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/anticipated-financial-effects-from-physical-risks",
              "label": "Table: Anticipated Financial Effects from Physical Risks"
            },
            {
              "type": "Control",
              "scope": "#/properties/anticipated-financial-effects-from-transition-risks",
              "label": "Table: Anticipated Financial Effects from Transition Risks"
            },
            {
              "type": "Control",
              "scope": "#/properties/climate-related-opportunities",
              "label": "Table: Climate-Related Opportunities"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the anticipated financial effects due to material physical and transition risks, and to convey how these risks may impact the undertaking’s financial position, performance, and cash flows. Additionally, it aims to provide insights into how the undertaking might financially benefit from climate-related opportunities. This disclosure complements key performance indicators required under the Commission Delegated Regulation (EU) 2021/2178."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e1-9';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Explain the process used to identify pollution-related impacts, risks, and opportunities across site locations and business activities."
        },
        "req2": {
          "type": "boolean",
          "title": "Specify the methodologies, assumptions, and tools used in screening operations for pollution impacts."
        },
        "req3": {
          "type": "boolean",
          "title": "Clarify whether screening extends to upstream and downstream activities in the value chain."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail any external consultations undertaken, specifically with affected communities, in the identification and assessment of pollution problems."
        },
        "req5": {
          "type": "boolean",
          "title": "Provide information on stakeholder engagement strategies used during consultations."
        },
        "req6": {
          "type": "boolean",
          "title": "Include any action plans or strategies resulting from identified risks and opportunities."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "community-consultations": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "community-name": {
            "type": "string"
          },
          "consultation-date": {
            "type": "date"
          },
          "issues-identified": {
            "type": "string"
          },
          "community-feedback": {
            "type": "string"
          },
          "follow-up-actions": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes undertaken to identify material pollution-related impacts, risks, and opportunities within the organization and in relation to its value chain, specifying methods, assumptions, and tools used during such identifications, as well as consultations conducted with affected communities."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/pollution-screening-details",
              "label": "Table: Pollution Screening Details"
            },
            {
              "type": "Control",
              "scope": "#/properties/community-consultations",
              "label": "Table: Community Consultations"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure transparency in the processes employed by the undertaking to assess and address potential and actual pollution-related impacts, risks, and opportunities. This understanding helps stakeholders assess how effectively the undertaking identifies and mitigates pollution-related issues affecting its site locations, operations, and value chain. By detailing these processes, the undertaking demonstrates its commitment to proactive environmental stewardship and responsible business practices."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 iro-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Has the company identified its material impacts, risks and opportunities related to pollution?"
        },
        "req2": {
          "type": "boolean",
          "title": "Does the company have policies in place for pollution prevention and control?"
        },
        "req3": {
          "type": "boolean",
          "title": "Are the policies addressing air, water, and soil pollution?"
        },
        "req4": {
          "type": "boolean",
          "title": "Are there measures to substitute and minimize the use of substances of concern?"
        },
        "req5": {
          "type": "boolean",
          "title": "Is there a plan to phase out substances of very high concern for non-essential use?"
        },
        "req6": {
          "type": "boolean",
          "title": "How does the company address incidents and emergency situations related to pollution?"
        },
        "req7": {
          "type": "boolean",
          "title": "Are the pollution policies aligned with ESRS 2 MDR-P requirements?"
        }
      }
    },
    "description": {
      "type": "string"
    },
    "incident-response-and-control-measures": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "incident-type": {
            "type": "string"
          },
          "policy-description": {
            "type": "string"
          },
          "control-measures": {
            "type": "string"
          },
          "impact-mitigation": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the policies adopted by the undertaking to manage its material impacts, risks and opportunities related to pollution prevention and control, including how these policies address specific areas such as mitigating pollution impacts, managing substances of concern, and handling incidents."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/pollution-policies-overview",
              "label": "Table: Pollution Policies Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/substances-of-concern-management",
              "label": "Table: Substances of Concern Management"
            },
            {
              "type": "Control",
              "scope": "#/properties/incident-response-and-control-measures",
              "label": "Table: Incident Response and Control Measures"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management, and/or remediation of material pollution-related impacts, risks, and opportunities."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e2-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide a detailed list of actions taken to mitigate pollution."
        },
        "req2": {
          "type": "boolean",
          "title": "Allocate resources for each action identified."
        },
        "req3": {
          "type": "boolean",
          "title": "Specify the layer of the mitigation hierarchy each action addresses (avoid, reduce, or restore)."
        },
        "req4": {
          "type": "boolean",
          "title": "Ensure compliance with ESRS 2 MDR-A related to material sustainability matters."
        },
        "req5": {
          "type": "boolean",
          "title": "Align actions with EU Taxonomy Do No Significant Harm criteria."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "resource-allocation": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "action": {
            "type": "string"
          },
          "resource-type": {
            "type": "string"
          },
          "amount-allocated-in-euros": {
            "type": "number"
          },
          "allocation-date": {
            "type": "date"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the actions taken by the undertaking to address pollution, how resources are allocated to these actions, and align each action with the defined layers of the mitigation hierarchy. Include any additional details prescribed in ESRS 2 MDR-A."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/pollution-mitigation-actions",
              "label": "Table: Pollution Mitigation Actions"
            },
            {
              "type": "Control",
              "scope": "#/properties/resource-allocation",
              "label": "Table: Resource Allocation"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the key actions taken and planned to achieve the pollution-related policy objectives and targets. It aims to provide transparency regarding the undertaking’s commitment to environmental impact reduction and to specify the stages of the mitigation hierarchy that each action addresses, ensuring alignment with EU Taxonomy and regulatory frameworks."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e2-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose all pollution-related targets set by the undertaking."
        },
        "req2": {
          "type": "boolean",
          "title": "Indicate how targets relate to the prevention and control of air pollutants and respective specific loads."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail how targets relate to emissions to water and respective specific loads."
        },
        "req4": {
          "type": "boolean",
          "title": "Clarify how targets address pollution to soil and respective specific loads."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain how targets manage substances of concern and substances of very high concern."
        },
        "req6": {
          "type": "boolean",
          "title": "Specify if ecological thresholds were considered when setting targets and provide details if applicable."
        },
        "req7": {
          "type": "boolean",
          "title": "Determine whether the targets are mandatory (required by legislation) or voluntary."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "pollution-related-targets-overview": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "target-description": {
            "type": "string"
          },
          "target-type-mandatory-voluntary": {
            "type": "string"
          },
          "target-relation-air-water-soil-substances": {
            "type": "string"
          },
          "specific-load-addressed": {
            "type": "string"
          },
          "ecological-threshold-consideration": {
            "type": "boolean"
          },
          "implementation-responsibility": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the pollution-related targets the undertaking has set, ensuring to include information on how these targets relate to the prevention and control of air pollutants, emissions to water, pollution to soil, and substances of concern. Additionally, specify the use of ecological thresholds and whether targets are mandatory or voluntary."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/pollution-related-targets-overview",
              "label": "Table: Pollution-related Targets Overview"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the targets the undertaking has set to support its pollution-related policies and to address its material pollution-related impacts, risks, and opportunities."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e2-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose pollutants emitted to air, water, and soil as per Annex II of E-PRTR Regulation, excluding GHGs."
        },
        "req2": {
          "type": "boolean",
          "title": "Disclose the quantity of microplastics generated or used by the company."
        },
        "req3": {
          "type": "boolean",
          "title": "Ensure emission amounts are consolidated for all facilities with financial and operational control, considering the applicable threshold value from Annex II of E-PRTR."
        },
        "req4": {
          "type": "boolean",
          "title": "Contextualize disclosures by describing emission changes over time."
        },
        "req5": {
          "type": "boolean",
          "title": "Include measurement methodologies for emissions."
        },
        "req6": {
          "type": "boolean",
          "title": "Detail processes for pollution-related data collection, specifying type of data and sources."
        },
        "req7": {
          "type": "boolean",
          "title": "Justify use of inferior methodologies to direct measurement, if applicable."
        },
        "req8": {
          "type": "boolean",
          "title": "Specify any estimates used, along with standards or sources, degrees of uncertainty, and range of estimates."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "data-sources-and-references": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "data-source-study-reference": {
            "type": "string"
          },
          "function-in-estimation": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the pollutants that your company emits through its operations, along with the microplastics it generates or uses. Include quantitative data on these emissions, consolidated for all facilities under financial and operational control, considering only those facilities exceeding relevant thresholds."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/pollutants-emissions",
              "label": "Table: Pollutants Emissions"
            },
            {
              "type": "Control",
              "scope": "#/properties/microplastics-usage-and-generation",
              "label": "Table: Microplastics Usage and Generation"
            },
            {
              "type": "Control",
              "scope": "#/properties/measurement-methodologies",
              "label": "Table: Measurement Methodologies"
            },
            {
              "type": "Control",
              "scope": "#/properties/emission-changes-over-time",
              "label": "Table: Emission Changes Over Time"
            },
            {
              "type": "Control",
              "scope": "#/properties/methodology-justification-and-uncertainty",
              "label": "Table: Methodology Justification and Uncertainty"
            },
            {
              "type": "Control",
              "scope": "#/properties/data-sources-and-references",
              "label": "Table: Data Sources and References"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the emissions that the undertaking generates to air, water, and soil in its own operations, and of its generation and use of microplastics. By fulfilling this requirement, stakeholders gain insights into the environmental impact of the undertaking’s operations and its compliance with regulatory standards."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e2-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify all substances of concern and substances of very high concern used, produced, or distributed by the undertaking."
        },
        "req2": {
          "type": "boolean",
          "title": "Disclose the total amounts of substances of concern generated or used during production and those procured."
        },
        "req3": {
          "type": "boolean",
          "title": "Report total amounts of substances of concern leaving facilities, categorized as emissions, products, or as part of products."
        },
        "req4": {
          "type": "boolean",
          "title": "Split information into main hazard classes for substances of concern."
        },
        "req5": {
          "type": "boolean",
          "title": "Separate presentation and details for substances of very high concern."
        },
        "req6": {
          "type": "boolean",
          "title": "Discuss the undertaking’s exposure risks and opportunities related to these substances."
        },
        "req7": {
          "type": "boolean",
          "title": "Describe the regulatory compliance challenges faced and how the undertaking addresses them."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "substances-of-very-high-concern": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "substance-name": {
            "type": "string"
          },
          "total-amount": {
            "type": "number"
          },
          "use-phase": {
            "type": "string"
          },
          "exposure-risk-level": {
            "type": "string"
          },
          "control-measures": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the production, use, distribution, commercialization, and import/export activities related to substances of concern and substances of very high concern by the undertaking, including their formats in mixtures or articles. Ensure distinct presentation of information for substances of very high concern."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/substances-of-concern-overview",
              "label": "Table: Substances of Concern Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/substances-of-very-high-concern",
              "label": "Table: Substances of Very High Concern"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to facilitate understanding of the undertaking’s impact on health and environmental safety due to substances of concern and substances of very high concern. It also seeks to highlight the undertaking’s material risks and opportunities associated with the exposure to these substances and risks from regulatory changes."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e2-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Quantify anticipated financial effects in monetary terms or describe them qualitatively if quantification is not possible."
        },
        "req2": {
          "type": "boolean",
          "title": "Describe the effects considered, their related impacts, and the time horizons in which they are anticipated to materialize."
        },
        "req3": {
          "type": "boolean",
          "title": "Identify and explain critical assumptions used to quantify the financial effects, along with their sources and the level of uncertainty."
        },
        "req4": {
          "type": "boolean",
          "title": "Report the share of net revenue from products/services containing substances of concern and substances of very high concern."
        },
        "req5": {
          "type": "boolean",
          "title": "Detail operating and capital expenditures related to major pollution incidents and deposit management."
        },
        "req6": {
          "type": "boolean",
          "title": "Document provisions set aside for environmental protection and site remediation."
        },
        "req7": {
          "type": "boolean",
          "title": "Provide contextual information regarding material incidents and deposits with pollution impacts."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "provisions-for-environmental-protection": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "provision-type": {
            "type": "string"
          },
          "amount": {
            "type": "number"
          },
          "description": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the process and outcomes of assessing anticipated financial effects due to material pollution-related risks and opportunities. This includes quantifying the potential impacts, detailing associated impacts, identifying critical assumptions and uncertainties, and providing contextual information."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/anticipated-financial-effects",
              "label": "Table: Anticipated Financial Effects"
            },
            {
              "type": "Control",
              "scope": "#/properties/assumptions-and-uncertainties",
              "label": "Table: Assumptions and Uncertainties"
            },
            {
              "type": "Control",
              "scope": "#/properties/revenue-from-substances-of-concern",
              "label": "Table: Revenue from Substances of Concern"
            },
            {
              "type": "Control",
              "scope": "#/properties/environmental-expenditures",
              "label": "Table: Environmental Expenditures"
            },
            {
              "type": "Control",
              "scope": "#/properties/provisions-for-environmental-protection",
              "label": "Table: Provisions for Environmental Protection"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of: (a) anticipated financial effects due to material risks arising from pollution-related impacts and dependencies and how those risks have (or could reasonably be expected to have) a material influence on the undertaking’s financial position, financial performance, and cash flows, over the short-, medium-, and long-term. (b) anticipated financial effects due to material opportunities related to pollution prevention and control."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e2-6';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the methodology used for screening site locations for pollution-related impacts."
        },
        "req2": {
          "type": "boolean",
          "title": "Detail assumptions and tools applied in the screening processes."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain how site locations and business activities were screened or assessed."
        },
        "req4": {
          "type": "boolean",
          "title": "State whether actual and potential impacts, risks, and opportunities were identified in operations and value chain."
        },
        "req5": {
          "type": "boolean",
          "title": "Specify if consultations with affected communities were conducted."
        },
        "req6": {
          "type": "boolean",
          "title": "Describe the methods and outcomes of such consultations."
        },
        "req7": {
          "type": "boolean",
          "title": "Provide evidence of consultation methodologies, either qualitative or quantitative."
        },
        "req8": {
          "type": "boolean",
          "title": "Detail any feedback mechanisms from stakeholder consultations."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "consultation-records": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "community-stakeholder-group": {
            "type": "string"
          },
          "consultation-date": {
            "type": "date"
          },
          "consultation-method": {
            "type": "string"
          },
          "discussion-topics": {
            "type": "string"
          },
          "outcome-feedback": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes, methodologies, and tools used by the undertaking to identify material pollution-related impacts, risks, and opportunities across its operations and value chain. Include information on whether and how site location screening and stakeholder consultations have been conducted."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/screening-methodology-details",
              "label": "Table: Screening Methodology Details"
            },
            {
              "type": "Control",
              "scope": "#/properties/consultation-records",
              "label": "Table: Consultation Records"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure undertakings articulate their approach in identifying material pollution-related impacts, risks, and opportunities across their operations, including upstream and downstream value chain activities. This encompasses methodologies for screening site locations and business activities, highlighting engagements with affected communities and stakeholders. The intention is to provide transparency on the enterprise’s comprehensive monitoring and consultative practices in mitigating pollution-related impacts."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 iro-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide a detailed description of policies related to water management, including usage, sourcing, treatment, and prevention of pollution."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain how product and service designs consider water-related issues and marine resource preservation."
        },
        "req3": {
          "type": "boolean",
          "title": "Clarify any commitments to reduce water consumption in high-risk water areas, both in operations and the supply chain."
        },
        "req4": {
          "type": "boolean",
          "title": "If applicable, state reasons for not having water policies in areas of high-water stress along with a timeframe for policy development."
        },
        "req5": {
          "type": "boolean",
          "title": "Indicate adoption of policies or practices concerning sustainable oceans and seas."
        },
        "req6": {
          "type": "boolean",
          "title": "Ensure policies are in accordance with the standards prescribed in ESRS 2 MDR-P."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "high-water-stress-area-policies": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "site-location": {
            "type": "string"
          },
          "existence-of-policy": {
            "type": "boolean"
          },
          "reasons-for-no-policy": {
            "type": "string"
          },
          "timeframe-for-adoption": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s policies related to the management of water and marine resources, considering potential impacts, risks, and opportunities. These policies should align with ESRS 2 MDR-P and address areas such as water management, product design concerning water issues, and commitments to reduce water consumption in high-risk areas."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/water-management-policy-details",
              "label": "Table: Water Management Policy Details"
            },
            {
              "type": "Control",
              "scope": "#/properties/high-water-stress-area-policies",
              "label": "Table: High-water Stress Area Policies"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management, and/or remediation of its material water and marine resources-related impacts, risks, and opportunities. This ensures transparency in how the undertaking seeks to mitigate environmental effects and utilize water and marine resources sustainably."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e3-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify and describe all actions taken and planned to achieve water and marine resources-related policy objectives."
        },
        "req2": {
          "type": "boolean",
          "title": "Outline specific resource allocations for water and marine conservation efforts, categorized by mitigation hierarchy layers."
        },
        "req3": {
          "type": "boolean",
          "title": "Highlight any actions and resources specifically addressing areas at water risk, such as regions with high-water stress."
        },
        "req4": {
          "type": "boolean",
          "title": "Follow reporting principles as described in ESRS 2 MDR-A for actions and resource disclosures."
        },
        "req5": {
          "type": "boolean",
          "title": "Provide qualitative and quantitative data where applicable to substantiate resource allocation and action effectiveness."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "water-and-marine-actions-and-resources-table": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "action": {
            "type": "string"
          },
          "resource-allocation": {
            "type": "string"
          },
          "mitigation-hierarchy-layer": {
            "type": "string"
          },
          "water-risk-area": {
            "type": "string"
          },
          "planned-implemented": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the measures and resources your organization is currently undertaking or planning to implement to manage and conserve water and marine resources. Ensure the description includes any links to the mitigation hierarchy, such as avoidance, reduction, reclamation, or restoration efforts, particularly in areas identified as high-risk for water stress."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/water-and-marine-actions-and-resources-table",
              "label": "Table: Water and Marine Actions and Resources Table"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable stakeholders to understand the key actions and plans your organization has in place to meet its water and marine resource-related objectives and targets. By outlining these measures, stakeholders can assess the effectiveness and readiness of your organization in conserving water and marine ecosystems, as well as ensuring sustainable resource use, particularly in high-risk water stress areas."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e3-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose all water and marine resources-related targets set by the undertaking."
        },
        "req2": {
          "type": "boolean",
          "title": "Indicate how targets relate to management of impacts, risks, and opportunities in water risk areas."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain targets concerning the responsible management and usage of marine resources."
        },
        "req4": {
          "type": "boolean",
          "title": "Describe water consumption reduction targets and relation to water risk areas."
        },
        "req5": {
          "type": "boolean",
          "title": "Detail consideration of ecological thresholds and methodology used."
        },
        "req6": {
          "type": "boolean",
          "title": "Specify whether targets are mandatory or voluntary."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "ecological-thresholds": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "threshold-description": {
            "type": "string"
          },
          "methodology-used": {
            "type": "string"
          },
          "entity-specific-allocation": {
            "type": "boolean"
          },
          "responsible-entity": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the water and marine resources-related targets set by the undertaking, indicating how these targets address the management of material impacts, risks and opportunities related to water and marine resources, and whether ecological thresholds and entity-specific allocations have been taken into consideration when setting these targets."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/water-and-marine-resources-targets",
              "label": "Table: Water and Marine Resources Targets"
            },
            {
              "type": "Control",
              "scope": "#/properties/ecological-thresholds",
              "label": "Table: Ecological Thresholds"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the targets the undertaking has adopted to support its water and marine resources-related policies and address its material water and marine resources-related impacts, risks, and opportunities. The disclosure aims to provide insight into how the undertaking sets and allocates these targets, including any environmental considerations that influence the establishment of these targets."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e3-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide total water consumption in m3 including relevant data sources, standards, and assumptions."
        },
        "req2": {
          "type": "boolean",
          "title": "Report total water consumption in m3 in areas of high water risk and stress, detailing methodologies used."
        },
        "req3": {
          "type": "boolean",
          "title": "Report the volume of water recycled and reused in m3 with context on how this data is calculated or measured."
        },
        "req4": {
          "type": "boolean",
          "title": "Indicate changes in water storage in m3, including fluctuations during the reporting period."
        },
        "req5": {
          "type": "boolean",
          "title": "Include contextual information about water basins, including water quality, data compilation methods, calculations, or estimations involved."
        },
        "req6": {
          "type": "boolean",
          "title": "Measure and report water intensity as total water consumption in m3 per million EUR net revenue."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "water-storage-changes": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "date": {
            "type": "string"
          },
          "stored-volume-changes-m3": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s water consumption performance, its material impacts, risks, opportunities, and any progress toward its targets. Include comprehensive information on total water consumption, water risk areas, water recycling, and storage, as well as water intensity metrics."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/water-consumption-overview",
              "label": "Table: Water Consumption Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/water-consumption-risk-areas",
              "label": "Table: Water Consumption Risk Areas"
            },
            {
              "type": "Control",
              "scope": "#/properties/water-recycling-and-reuse",
              "label": "Table: Water Recycling and Reuse"
            },
            {
              "type": "Control",
              "scope": "#/properties/water-storage-changes",
              "label": "Table: Water Storage Changes"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the undertaking’s water consumption and any progress by the undertaking in relation to its targets. A clear articulation of total water consumed, especially in water-stressed regions, can illuminate areas of vulnerability and efficiency improvements. This disclosure aims to identify the undertaking’s actual and potential impacts on water resources, which can lead to informed resource management and strategic planning to mitigate risks and leverage opportunities in water management."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e3-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify material water and marine resources-related risks."
        },
        "req2": {
          "type": "boolean",
          "title": "Identify material opportunities related to water and marine resources."
        },
        "req3": {
          "type": "boolean",
          "title": "Quantify anticipated financial effects in monetary terms, where possible, for risks associated with water and marine resources."
        },
        "req4": {
          "type": "boolean",
          "title": "Provide qualitative information if quantification in monetary terms is not possible without undue cost or effort."
        },
        "req5": {
          "type": "boolean",
          "title": "Describe the anticipated financial effects related to opportunities, ensuring the qualitative characteristics of information are maintained."
        },
        "req6": {
          "type": "boolean",
          "title": "Outline the impacts and dependencies related to water and marine resources."
        },
        "req7": {
          "type": "boolean",
          "title": "Define the time horizons (short-, medium-, long-term) in which these effects are likely to materialize."
        },
        "req8": {
          "type": "boolean",
          "title": "Explain the critical assumptions used in quantifying financial effects."
        },
        "req9": {
          "type": "boolean",
          "title": "Indicate sources and uncertainty levels of the assumptions used."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "risks-and-opportunities-financial-effects": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "effect-description": {
            "type": "string"
          },
          "monetary-value": {
            "type": "number"
          },
          "impact-dependency": {
            "type": "string"
          },
          "time-horizon": {
            "type": "string"
          },
          "critical-assumptions": {
            "type": "string"
          },
          "uncertainty-level": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the anticipated financial effects of material risks and opportunities related to water and marine resources. Include quantification in monetary terms where feasible, and provide qualitative descriptions when quantification is not possible. Describe the impacts, dependencies, and time horizons, and explain the critical assumptions used, including their uncertainties."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/risks-and-opportunities-financial-effects",
              "label": "Table: Risks and Opportunities Financial Effects"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of: the anticipated financial effects due to material risks arising from water and marine resources-related impacts and dependencies and how these risks have (or could reasonably be expected to have) a material influence on the undertaking’s financial position, financial performance and cash flows, over the short-, medium-, and long-term; and the anticipated financial effects due to material opportunities related to water and marine resources."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e3-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide an overview of the transition plan and considerations for biodiversity and ecosystems in the business model."
        },
        "req2": {
          "type": "boolean",
          "title": "Describe how biodiversity and ecosystem impacts, dependencies, risks, and opportunities influence strategy adaptation."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain the resilience of the strategy and business model to biodiversity and ecosystems-related physical, transition, and systemic risks."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail the scope of resilience analysis concerning own operations, upstream, and downstream value chains."
        },
        "req5": {
          "type": "boolean",
          "title": "Enumerate the key assumptions made in the resilience analysis."
        },
        "req6": {
          "type": "boolean",
          "title": "Specify the time horizons used in resilience analysis."
        },
        "req7": {
          "type": "boolean",
          "title": "Present the results of the resilience analysis."
        },
        "req8": {
          "type": "boolean",
          "title": "Describe stakeholder involvement, emphasizing the inclusion of indigenous and local knowledge holders."
        },
        "req9": {
          "type": "boolean",
          "title": "Reference related information disclosed under ESRS 2 SBM-3, if applicable."
        },
        "req10": {
          "type": "boolean",
          "title": "Could disclose a transition plan aligned with global biodiversity frameworks and strategies."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "resilience-analysis-results": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "indicator": {
            "type": "string"
          },
          "baseline": {
            "type": "number"
          },
          "projected-outcome": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how the undertaking’s biodiversity and ecosystem impacts, dependencies, risks, and opportunities inform and necessitate adaptations in its strategy and business model. Provide a detailed account of the undertaking’s strategy resilience and alignment with biodiversity and ecosystem policy goals."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/resilience-analysis-overview",
              "label": "Table: Resilience Analysis Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/key-assumptions-in-resilience-analysis",
              "label": "Table: Key Assumptions in Resilience Analysis"
            },
            {
              "type": "Control",
              "scope": "#/properties/resilience-analysis-results",
              "label": "Table: Resilience Analysis Results"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the resilience of the undertaking’s strategy and business model in relation to biodiversity and ecosystems, and of the compatibility of the undertaking’s strategy and business model with local, national, and global public policy targets related to biodiversity and ecosystems."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e4-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "List all material sites in the company’s operations."
        },
        "req2": {
          "type": "boolean",
          "title": "Specify activities negatively affecting biodiversity-sensitive areas."
        },
        "req3": {
          "type": "boolean",
          "title": "Breakdown sites according to the identified impacts and dependencies, and the ecological status of respective areas."
        },
        "req4": {
          "type": "boolean",
          "title": "Identify biodiversity-sensitive areas impacted, relevant authorities, and specific activities."
        },
        "req5": {
          "type": "boolean",
          "title": "Declare if there are any material negative impacts related to land degradation, desertification, or soil sealing."
        },
        "req6": {
          "type": "boolean",
          "title": "Indicate if operations affect threatened species."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "land-degradation-and-threatened-species-impact": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "site-name": {
            "type": "string"
          },
          "land-degradation-impact": {
            "type": "boolean"
          },
          "desertification-impact": {
            "type": "boolean"
          },
          "soil-sealing-impact": {
            "type": "boolean"
          },
          "threatened-species-impact": {
            "type": "boolean"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the material sites within the company’s operations and their impact on biodiversity-sensitive areas. Provide a detailed breakdown of these sites as per the criteria listed, including impacts on specific ecosystems, material negative impacts concerning land use, and effects on threatened species."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/material-sites-and-biodiversity-impact",
              "label": "Table: Material Sites and Biodiversity Impact"
            },
            {
              "type": "Control",
              "scope": "#/properties/land-degradation-and-threatened-species-impact",
              "label": "Table: Land Degradation and Threatened Species Impact"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure that companies transparently report material impacts, risks, and opportunities related to biodiversity-sensitive areas and their interaction with strategic operations. It aims to highlight the responsibility of companies to identify and communicate ecological consequences from their operations, emphasizing land degradation, desertification, soil sealing, and effects on threatened species, thereby enabling users to understand and assess potential risks and opportunities from a sustainability perspective."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='sbm 3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the methodologies and tools used to identify material pollution-related impacts in the organization’s operations."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain the processes involved in screening site locations and business activities for potential pollution-related impacts."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail the assumptions made during the screening process for pollution-related impacts and risks."
        },
        "req4": {
          "type": "boolean",
          "title": "Outline consultations conducted with affected communities and other relevant stakeholders."
        },
        "req5": {
          "type": "boolean",
          "title": "Discuss the integration of identified impacts, risks, and opportunities into the organization’s strategic planning."
        },
        "req6": {
          "type": "boolean",
          "title": "State whether the initiative includes both upstream and downstream value chain considerations."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "stakeholder-consultation-process": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "stakeholder-group": {
            "type": "string"
          },
          "method-of-consultation": {
            "type": "string"
          },
          "key-feedback": {
            "type": "string"
          },
          "follow-up-actions": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes your organization uses to identify and assess material pollution-related impacts, risks, and opportunities. Emphasize on any screening processes of site locations, scenarios considered, methodologies and tools used, and engagement techniques with external stakeholders, including affected communities."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/pollution-related-impact-screening-processes",
              "label": "Table: Pollution-related Impact Screening Processes"
            },
            {
              "type": "Control",
              "scope": "#/properties/stakeholder-consultation-process",
              "label": "Table: Stakeholder Consultation Process"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure that undertakings provide comprehensive insights into their approach to identifying, assessing, and addressing pollution-related impacts and risks. This disclosure is essential for stakeholders to understand the potential environmental and social impacts arising from the company’s operations and value chain. Additionally, it aims to illustrate the level of engagement and consultation with affected communities, which can strengthen stakeholder relationships and improve sustainability outcomes."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 iro-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe policies related to biodiversity and ecosystems, addressing material impacts, risks, dependencies, and opportunities."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain how these policies relate to the matters specified in ESRS E4 AR 4."
        },
        "req3": {
          "type": "boolean",
          "title": "Discuss how the policies manage impacts, support traceability, and address social consequences related to biodiversity and ecosystems."
        },
        "req4": {
          "type": "boolean",
          "title": "Disclose specific policies such as biodiversity protection, sustainable land/agriculture practices, sustainable oceans/seas practices, and policies addressing deforestation."
        },
        "req5": {
          "type": "boolean",
          "title": "Include information on monitoring and reporting the status of biodiversity gains or losses."
        },
        "req6": {
          "type": "boolean",
          "title": "Reference policies in place at operational sites in or near biodiversity-sensitive areas."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "sustainable-practices-and-policies": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "practice-policy": {
            "type": "string"
          },
          "description": {
            "type": "string"
          },
          "implementation-area": {
            "type": "string"
          },
          "impact-on-biodiversity": {
            "type": "string"
          },
          "monitoring-reporting-procedures": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe your company’s adopted policies to manage material impacts, risks, dependencies, and opportunities that are associated with biodiversity and ecosystems. Include how these policies address issues such as traceability of products, sustainable land, ocean practices, and deforestation."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/biodiversity-and-ecosystems-policies-overview",
              "label": "Table: Biodiversity and Ecosystems Policies Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/sustainable-practices-and-policies",
              "label": "Table: Sustainable Practices and Policies"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management, and/or remediation of its material biodiversity and ecosystem-related impacts, dependencies, risks, and opportunities. These disclosures assist stakeholders in evaluating the company’s commitment to biodiversity and ecosystems, informing investment and collaboration decisions."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e4-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose all biodiversity and ecosystems-related actions taken."
        },
        "req2": {
          "type": "boolean",
          "title": "Detail the resources allocated to the implementation of these actions."
        },
        "req3": {
          "type": "boolean",
          "title": "Optional: Explain how the mitigation hierarchy (avoidance, minimisation, restoration/rehabilitation, and compensation or offsets) is applied."
        },
        "req4": {
          "type": "boolean",
          "title": "State whether biodiversity offsets are used in action plans."
        },
        "req5": {
          "type": "boolean",
          "title": "If biodiversity offsets are used, disclose the aim of the offsets and key performance indicators used."
        },
        "req6": {
          "type": "boolean",
          "title": "Provide the financial implications (direct and indirect costs) of biodiversity offsets."
        },
        "req7": {
          "type": "boolean",
          "title": "Describe offsets in terms of area, type, quality criteria, and compliance with standards."
        },
        "req8": {
          "type": "boolean",
          "title": "Explain how local and indigenous knowledge and nature-based solutions are incorporated into actions."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "integration-of-local-knowledge-and-solutions": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "action-description": {
            "type": "string"
          },
          "local-and-indigenous-knowledge-used": {
            "type": "string"
          },
          "nature-based-solutions": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s biodiversity and ecosystems-related actions, the resources allocated to their implementation, and additional voluntary disclosures. Include how the mitigation hierarchy is applied, use of biodiversity offsets, and integration of local and indigenous knowledge and nature-based solutions."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/biodiversity-and-ecosystems-actions-and-resources",
              "label": "Table: Biodiversity and Ecosystems Actions and Resources"
            },
            {
              "type": "Control",
              "scope": "#/properties/biodiversity-offsets",
              "label": "Table: Biodiversity Offsets"
            },
            {
              "type": "Control",
              "scope": "#/properties/integration-of-local-knowledge-and-solutions",
              "label": "Table: Integration of Local Knowledge and Solutions"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the key actions taken and planned that significantly contribute to the achievement of biodiversity and ecosystems-related policy objectives and targets."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e4-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Specify whether ecological thresholds and allocations of impacts were applied when setting the targets."
        },
        "req2": {
          "type": "boolean",
          "title": "If ecological thresholds were applied, disclose the methodology used to identify these thresholds."
        },
        "req3": {
          "type": "boolean",
          "title": "Indicate whether these thresholds are entity-specific and how they were determined."
        },
        "req4": {
          "type": "boolean",
          "title": "Explain how responsibility for respecting ecological thresholds is allocated within the organization."
        },
        "req5": {
          "type": "boolean",
          "title": "State whether the targets are informed by or aligned with the Kunming-Montreal Global Biodiversity Framework and other relevant policies."
        },
        "req6": {
          "type": "boolean",
          "title": "Describe how the targets relate to the biodiversity and ecosystem impacts, dependencies, risks, and opportunities identified."
        },
        "req7": {
          "type": "boolean",
          "title": "Provide the geographical scope of the targets, if relevant."
        },
        "req8": {
          "type": "boolean",
          "title": "Indicate the use of biodiversity offsets in setting the targets, if applicable."
        },
        "req9": {
          "type": "boolean",
          "title": "Specify which mitigation hierarchy layers the targets can be allocated to (avoidance, minimisation, restoration, rehabilitation, compensation, offsets)."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "biodiversity-targets-overview": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "target-description": {
            "type": "string"
          },
          "ecological-thresholds-applied": {
            "type": "string"
          },
          "alignment-with-global-frameworks": {
            "type": "string"
          },
          "related-impacts-dependencies-risks": {
            "type": "string"
          },
          "geographical-scope": {
            "type": "string"
          },
          "use-of-biodiversity-offsets": {
            "type": "boolean"
          },
          "mitigation-hierarchy-layer": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the biodiversity and ecosystem-related targets your company has set, including details on ecological thresholds, methodologies applied, alignment with global frameworks, and other relevant factors."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/biodiversity-targets-overview",
              "label": "Table: Biodiversity Targets Overview"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable stakeholders to understand the targets that the undertaking has adopted in support of its biodiversity and ecosystem policies. This should address its material impacts, dependencies, risks, and opportunities related to biodiversity and ecosystems."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e4-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify the sites located in or near biodiversity-sensitive areas that you are negatively affecting. Disclose the number and area (in hectares) of these sites."
        },
        "req2": {
          "type": "boolean",
          "title": "If applicable, disclose land-use changes using a Life Cycle Assessment."
        },
        "req3": {
          "type": "boolean",
          "title": "Report metrics for land-use change, freshwater-use change, and sea-use change. Include conversions in land cover, changes in ecosystem management, landscape configuration, and connectivity."
        },
        "req4": {
          "type": "boolean",
          "title": "If applicable, disclose metrics for managing the introduction and spread of invasive alien species."
        },
        "req5": {
          "type": "boolean",
          "title": "Report metrics related to the state of species, considering population sizes, distribution ranges, and extinction risks."
        },
        "req6": {
          "type": "boolean",
          "title": "If applicable, disclose the changes in ecosystem extent, such as area coverage of different ecosystems."
        },
        "req7": {
          "type": "boolean",
          "title": "Report on ecosystems condition with metrics that compare ecosystem quality to a pre-determined reference state."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "ecosystem-condition-metrics": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "ecosystem-type": {
            "type": "string"
          },
          "quality-metric": {
            "type": "string"
          },
          "reference-state": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how the undertaking reports metrics concerning its material impacts on biodiversity and ecosystems, and if it has identified impacts related to land-use change, freshwater use change, sea-use change, invasive species, and the state of species and ecosystems."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/biodiversity-sensitive-areas-impact",
              "label": "Table: Biodiversity-sensitive Areas Impact"
            },
            {
              "type": "Control",
              "scope": "#/properties/land-use-change-metrics",
              "label": "Table: Land-use Change Metrics"
            },
            {
              "type": "Control",
              "scope": "#/properties/invasive-species-management",
              "label": "Table: Invasive Species Management"
            },
            {
              "type": "Control",
              "scope": "#/properties/species-population-and-extinction-risk",
              "label": "Table: Species Population and Extinction Risk"
            },
            {
              "type": "Control",
              "scope": "#/properties/ecosystem-extent-metrics",
              "label": "Table: Ecosystem Extent Metrics"
            },
            {
              "type": "Control",
              "scope": "#/properties/ecosystem-condition-metrics",
              "label": "Table: Ecosystem Condition Metrics"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the performance of the undertaking against impacts identified as material in the materiality assessment on biodiversity and ecosystems change. It aims to provide transparency on the extent to which the undertaking is affecting biodiversity, by reporting relevant metrics that detail the condition of ecosystems and species affected by operational activities."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e4-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose anticipated financial effects of material biodiversity and ecosystem-related risks and opportunities."
        },
        "req2": {
          "type": "boolean",
          "title": "Provide information in addition to the current financial effects as per ESRS 2 SBM-3 para 48 (d)."
        },
        "req3": {
          "type": "boolean",
          "title": "Include quantification in monetary terms of financial effects, providing a range or single amount."
        },
        "req4": {
          "type": "boolean",
          "title": "If quantification isn’t possible due to undue cost or effort, provide qualitative information."
        },
        "req5": {
          "type": "boolean",
          "title": "Describe the impacts and dependencies these effects relate to and the time horizons for their materialization."
        },
        "req6": {
          "type": "boolean",
          "title": "Detail the critical assumptions used for quantification and their sources."
        },
        "req7": {
          "type": "boolean",
          "title": "Include the level of uncertainty for the assumptions used."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "anticipated-financial-effects": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "effect-description": {
            "type": "string"
          },
          "monetary-value": {
            "type": "number"
          },
          "type-risk-opportunity": {
            "type": "string"
          },
          "time-horizon": {
            "type": "string"
          },
          "critical-assumptions": {
            "type": "string"
          },
          "uncertainty-level": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the anticipated financial effects from material biodiversity and ecosystem-related risks and opportunities. Include a quantification of these effects in monetary terms, describe the impacts and dependencies, and detail the critical assumptions and uncertainty levels. If quantification is not possible, provide qualitative information."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/anticipated-financial-effects",
              "label": "Table: Anticipated Financial Effects"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of anticipated financial effects due to material risks arising from biodiversity- and ecosystem-related impacts and dependencies and their potential influence on the financial position, performance, and cash flows in the short-, medium-, and long-term. It also aims to outline anticipated financial effects from opportunities related to biodiversity and ecosystems."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e4-6';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide a detailed description of the process for identifying material pollution-related impacts."
        },
        "req2": {
          "type": "boolean",
          "title": "Indicate if a screening of site locations and business activities has been conducted for pollution-related impacts and risks."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail the methodologies, assumptions, and tools used in the screening process."
        },
        "req4": {
          "type": "boolean",
          "title": "Explain the process of consultations with affected communities regarding pollution impacts."
        },
        "req5": {
          "type": "boolean",
          "title": "Describe methodologies for assessing opportunities related to pollution."
        },
        "req6": {
          "type": "boolean",
          "title": "Outline the steps taken to engage with stakeholders, including communities affected by pollution impacts."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "stakeholder-consultation-overview": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "community-name": {
            "type": "string"
          },
          "date-of-consultation": {
            "type": "date"
          },
          "concerns-raised": {
            "type": "string"
          },
          "actions-taken": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes your organization has implemented to identify and assess material pollution-related impacts, risks, and opportunities. Provide detailed information on any screenings of site locations and business activities, the methodologies, assumptions, and tools used, as well as any consultations conducted with affected communities."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/pollution-screening-methodologies",
              "label": "Table: Pollution Screening Methodologies"
            },
            {
              "type": "Control",
              "scope": "#/properties/stakeholder-consultation-overview",
              "label": "Table: Stakeholder Consultation Overview"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure transparency about the processes an undertaking uses to identify and assess its material pollution-related impacts, risks, and opportunities. This includes whether and how the organization screens its operations and value chain, and its engagement with stakeholders, particularly affected communities, in this context."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 iro-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide a comprehensive description of the policies related to resource use and circular economy."
        },
        "req2": {
          "type": "boolean",
          "title": "Ensure policies cover transitioning away from virgin resources and increasing use of recycled resources."
        },
        "req3": {
          "type": "boolean",
          "title": "Include sustainable sourcing and usage policies for renewable resources."
        },
        "req4": {
          "type": "boolean",
          "title": "Describe how policies address material impacts, risks, and opportunities in upstream and downstream value chains."
        },
        "req5": {
          "type": "boolean",
          "title": "Summarize how these policies are applied across the organization and value chain."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "resource-transition-metrics": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "metric-name": {
            "type": "string"
          },
          "baseline-use-of-virgin-resources": {
            "type": "number"
          },
          "use-of-recycled-resources": {
            "type": "number"
          },
          "percentage-change": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the organization’s policies regarding the management of material impacts, risks, and opportunities connected to resource use and the circular economy. This description should include details on how these policies address transitioning away from virgin resources, sustainable sourcing, and impact management throughout the value chain."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/policies-on-resource-use-and-circular-economy",
              "label": "Table: Policies on Resource Use and Circular Economy"
            },
            {
              "type": "Control",
              "scope": "#/properties/resource-transition-metrics",
              "label": "Table: Resource Transition Metrics"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management, and/or remediation of its material impacts, risks, and opportunities related to resource use and circular economy. This understanding will be based on policies that manage sustainability matters throughout the organization and its value chain."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e5-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Detail key actions undertaken to enhance resource efficiency in technical and biological materials, including critical raw materials and rare earths."
        },
        "req2": {
          "type": "boolean",
          "title": "List resources allocated to implement these resource use and circular economy actions."
        },
        "req3": {
          "type": "boolean",
          "title": "Provide data on the use of secondary raw materials (recyclates) in operations."
        },
        "req4": {
          "type": "boolean",
          "title": "Demonstrate application of circular design principles optimizing product durability, and achieving higher Reuse, Repair, Refurbishing, Remanufacture, Repurposing, and Recycling rates."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain circular business practices adopted, including value retention, value maximisation, end-of-life, and systems efficiency actions."
        },
        "req6": {
          "type": "boolean",
          "title": "Describe measures taken to prevent waste generation in the value chain."
        },
        "req7": {
          "type": "boolean",
          "title": "Show efforts made towards optimizing waste management per waste hierarchy standards."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "waste-management-and-prevention": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "type-of-waste": {
            "type": "string"
          },
          "prevention-actions": {
            "type": "string"
          },
          "management-efforts": {
            "type": "string"
          },
          "waste-reduction": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s actions and resources related to efficient resource use and circular economy. Highlight key actions, such as deployment of resources, increased material efficiency, use of recyclates, circular design, and business practices. Specify improvements in areas including reuse, waste prevention, and waste management optimization."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/resource-use-and-circular-economy-actions",
              "label": "Table: Resource Use and Circular Economy Actions"
            },
            {
              "type": "Control",
              "scope": "#/properties/material-efficiency-and-circular-design",
              "label": "Table: Material Efficiency and Circular Design"
            },
            {
              "type": "Control",
              "scope": "#/properties/waste-management-and-prevention",
              "label": "Table: Waste Management and Prevention"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the key actions taken and planned to achieve the resource use and circular economy-related policy objectives and targets. It requires disclosing how actions and resources enhance resource efficiency, implement circular business models, and optimize waste handling."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e5-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify and list resource use and circular economy-related targets."
        },
        "req2": {
          "type": "boolean",
          "title": "Indicate if targets are related to resource inflows and outflows."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail the targets’ connections to circular product design, material use rate, and minimization of primary materials."
        },
        "req4": {
          "type": "boolean",
          "title": "Describe methods of sustainable sourcing and use of renewable resources."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain waste management targets and their placement in the waste hierarchy."
        },
        "req6": {
          "type": "boolean",
          "title": "Clarify whether targets are mandatory or voluntary."
        },
        "req7": {
          "type": "boolean",
          "title": "If applicable, specify ecological thresholds and the methodology for their identification."
        },
        "req8": {
          "type": "boolean",
          "title": "State whether the targets consider entity-specific ecological thresholds and the criteria for their determination."
        },
        "req9": {
          "type": "boolean",
          "title": "Provide allocation of responsibility for adhering to ecological thresholds."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "ecological-thresholds": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "ecological-threshold": {
            "type": "string"
          },
          "identification-methodology": {
            "type": "string"
          },
          "entity-specific": {
            "type": "boolean"
          },
          "responsibility-allocation": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the resource use and circular economy-related targets set by your undertaking, ensuring to address how these targets relate to resource inflows and outflows, including waste and other materials. Provide details on the increase of circular design, material use rate, and minimization of primary raw material use among others, as outlined by ESRS guidelines."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/resource-use-and-circular-economy-targets",
              "label": "Table: Resource Use and Circular Economy Targets"
            },
            {
              "type": "Control",
              "scope": "#/properties/ecological-thresholds",
              "label": "Table: Ecological Thresholds"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the targets the undertaking has adopted to support its resource use and circular economy policy and to address its material impacts, risks, and opportunities. The description should include relation to the ESRS 2 MDR-T requirements and specify if ecological thresholds were considered."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e5-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose resource inflows that are materially significant, including products, materials, water, and P,P&E."
        },
        "req2": {
          "type": "boolean",
          "title": "Quantify resource inflows used in the organization’s operations and upstream value chain."
        },
        "req3": {
          "type": "boolean",
          "title": "Report the total weight of products and the materials used in tonnes or kilogrammes."
        },
        "req4": {
          "type": "boolean",
          "title": "Disclose the percentage of sustainably sourced biological materials and biofuels used."
        },
        "req5": {
          "type": "boolean",
          "title": "Provide details of the certification scheme and cascading principle application."
        },
        "req6": {
          "type": "boolean",
          "title": "Report the weight and percentage of secondary reused or recycled materials used."
        },
        "req7": {
          "type": "boolean",
          "title": "Detail methodologies and key assumptions for data calculation."
        },
        "req8": {
          "type": "boolean",
          "title": "Specify if data is from direct measurement or estimations."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "methodology-and-assumptions": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "data-source": {
            "type": "string"
          },
          "measurement-method": {
            "type": "string"
          },
          "key-assumptions": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s resource inflows in relation to its material impacts, risks, and opportunities, detailing products, materials, water, and property, plant, and equipment used both in operations and within the upstream value chain."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/resource-inflows-overview",
              "label": "Table: Resource Inflows Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/sustainability-certification",
              "label": "Table: Sustainability Certification"
            },
            {
              "type": "Control",
              "scope": "#/properties/methodology-and-assumptions",
              "label": "Table: Methodology and Assumptions"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the resource use in the undertaking’s own operations and its upstream value chain. It aims to provide stakeholders with insights into how efficiently and sustainably resources are used, emphasizing the significance of material inflows that have a considerable impact on the organization."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e5-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify and disclose all resource outflows related to your operations, focusing on waste generation and management."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain how principles of the circular economy are integrated into product and material design."
        },
        "req3": {
          "type": "boolean",
          "title": "Demonstrate actual practices and initiatives for recirculating products and materials after their first use."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail the waste reduction strategies in place and their outcomes."
        },
        "req5": {
          "type": "boolean",
          "title": "Describe the process and strategies for waste management, particularly for pre-consumer waste."
        },
        "req6": {
          "type": "boolean",
          "title": "Provide data and insights on the management of waste within your own activities."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "waste-management-strategy-table": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "strategy-name": {
            "type": "string"
          },
          "description": {
            "type": "string"
          },
          "reduction-target": {
            "type": "string"
          },
          "status": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how your organization manages resource outflows, including strategies and measures taken to reduce waste and optimize resource use, contributing to the circular economy. Include details of how products and materials are designed in line with circular economy principles and the actual practices for recirculating them after first use."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/resource-outflows-table",
              "label": "Table: Resource Outflows Table"
            },
            {
              "type": "Control",
              "scope": "#/properties/circular-economy-initiatives-table",
              "label": "Table: Circular Economy Initiatives Table"
            },
            {
              "type": "Control",
              "scope": "#/properties/waste-management-strategy-table",
              "label": "Table: Waste Management Strategy Table"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of how the undertaking contributes to the circular economy by designing products and materials in line with circular economy principles and increasing or maximising the extent to which products, materials, and waste processing are recirculated in practice after first use. Additionally, it aims to illustrate the undertaking’s waste reduction and waste management strategy, highlighting the extent of knowledge concerning its pre-consumer waste management in its operations."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e5-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Quantify anticipated financial effects in monetary terms for material risks if possible. If not, provide qualitative information."
        },
        "req2": {
          "type": "boolean",
          "title": "Describe financial effects, impacts, dependencies, and time horizons for these effects to materialise."
        },
        "req3": {
          "type": "boolean",
          "title": "List critical assumptions and their sources used to quantify anticipated financial effects, including level of uncertainty in these assumptions."
        },
        "req4": {
          "type": "boolean",
          "title": "Disclosure should be consistent with ESRS 1 Appendix B Qualitative characteristics of information."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "circular-economy-related-risks-and-opportunities": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "description-of-effects": {
            "type": "string"
          },
          "material-risk-or-opportunity-y-n": {
            "type": "boolean"
          },
          "qualitative-information": {
            "type": "string"
          },
          "critical-assumptions": {
            "type": "string"
          },
          "sources-of-assumptions": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the anticipated financial effects due to material risks and opportunities related to resource use and circular economy impacts. This includes monetary quantification or qualitative descriptions, particularly for opportunities where quantification is not feasible without undue cost or effort."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/anticipated-financial-effects-from-resource-use",
              "label": "Table: Anticipated Financial Effects from Resource Use"
            },
            {
              "type": "Control",
              "scope": "#/properties/circular-economy-related-risks-and-opportunities",
              "label": "Table: Circular Economy-Related Risks and Opportunities"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of anticipated financial effects due to material risks arising from material resource use and circular economy-related impacts and dependencies. These risks are assessed on how they could reasonably be expected to materially influence the undertaking’s financial position, financial performance, and cash flows over the short-, medium-, and long-term. Additionally, it aims to elucidate anticipated financial effects from material opportunities arising from resource use and circular economy."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='e5-6';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify the key interests and views of the company’s workforce that are relevant to the business model."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain how these interests and views are integrated into the development and adjustment of the company’s strategy."
        },
        "req3": {
          "type": "boolean",
          "title": "Describe processes or mechanisms in place for gathering workforce views, e.g., surveys or feedback systems."
        },
        "req4": {
          "type": "boolean",
          "title": "Demonstrate how respect for human rights is considered within the strategy, providing specific examples."
        },
        "req5": {
          "type": "boolean",
          "title": "Outline any changes in business strategy as a direct result of workforce interests and rights assessments."
        },
        "req6": {
          "type": "boolean",
          "title": "Ensure alignment between workforce interests and corporate objectives, showing coherence in decision-making processes."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "human-rights-consideration": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "human-right-aspect": {
            "type": "string"
          },
          "impact-on-strategy": {
            "type": "string"
          },
          "actions-taken": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how the interests, views, and rights of people in the company’s workforce, including respect for their human rights, inform the company’s strategy and business model. Ensure to include how these considerations impact decision-making processes and align with corporate objectives."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/stakeholder-interests",
              "label": "Table: Stakeholder Interests"
            },
            {
              "type": "Control",
              "scope": "#/properties/human-rights-consideration",
              "label": "Table: Human Rights Consideration"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide transparency on how the company’s strategy and business model are influenced by the interests, views, and human rights of its workforce. This encompasses significant matters such as respect for human rights and inclusion in decision-making, thereby demonstrating the company’s commitment to responsible business conduct. The disclosure aims to ensure that stakeholders understand how the company’s workforce is considered in strategic decision-making, enhancing stakeholder trust and ensuring compliance with responsible business practices."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 sbm-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify each material climate-related risk and classify as either a physical risk or transition risk."
        },
        "req2": {
          "type": "boolean",
          "title": "Describe the scope of resilience analysis conducted on the strategy and business model."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain the methodology and timing of resilience analysis, including specific climate scenario analyses used."
        },
        "req4": {
          "type": "boolean",
          "title": "Disclose the results of resilience analysis, emphasizing how scenarios affect the strategy."
        },
        "req5": {
          "type": "boolean",
          "title": "State how these risks and resilience findings inform strategic planning and business decisions."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "resilience-analysis-table": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "analysis-scope": {
            "type": "string"
          },
          "scenario-referenced": {
            "type": "string"
          },
          "conducted-date": {
            "type": "date"
          },
          "result-summary": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s assessment and management of material climate-related risks, detailing whether they are physical or transition risks. Further, elucidate how these risks interact with and influence the strategy and business model resilience against climate change, including analysis methodologies and results."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/climate-related-risks-table",
              "label": "Table: Climate-related Risks Table"
            },
            {
              "type": "Control",
              "scope": "#/properties/resilience-analysis-table",
              "label": "Table: Resilience Analysis Table"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure that the undertaking provides a comprehensive account of its exposure to material climate-related risks and opportunities, clarifying their nature, whether physical or transition, and their implications for the business model and strategy. This disclosure seeks to offer stakeholders insights into the undertaking’s preparedness and adjustments in response to climate change challenges and the long-term viability of its operations under various climate scenarios."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 sbm-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the undertaking’s policies for managing material impacts, risks, and opportunities on its workforce."
        },
        "req2": {
          "type": "boolean",
          "title": "Specify if policies apply to all groups within the workforce or specific groups."
        },
        "req3": {
          "type": "boolean",
          "title": "Outline human rights policy commitments relevant to the workforce, including monitoring compliance with UN and ILO guidelines."
        },
        "req4": {
          "type": "boolean",
          "title": "Explain alignment with international instruments like the UN Guiding Principles and OECD Guidelines."
        },
        "req5": {
          "type": "boolean",
          "title": "State if policies explicitly address human trafficking, forced labour, or child labour."
        },
        "req6": {
          "type": "boolean",
          "title": "Disclose the presence of a workplace accident prevention policy or system."
        },
        "req7": {
          "type": "boolean",
          "title": "Report on specific policies for eliminating discrimination and promoting diversity and inclusion."
        },
        "req8": {
          "type": "boolean",
          "title": "Detail discrimination grounds covered by the policy, including all forms mentioned in Union regulation and national law."
        },
        "req9": {
          "type": "boolean",
          "title": "Identify policy commitments for inclusion or positive action for vulnerable groups and action procedures."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "discrimination-and-diversity-policies": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "policy-type": {
            "type": "string"
          },
          "specific-coverage": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe all policies adopted to manage material impacts on the company’s own workforce. Include all relevant human rights policy commitments and ensure to cover all groups within the workforce, specifying if particular groups are addressed. Explain the alignment with internationally recognized instruments and address policies regarding specific issues such as discrimination and workplace safety."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/workforce-policy-summary",
              "label": "Table: Workforce Policy Summary"
            },
            {
              "type": "Control",
              "scope": "#/properties/human-rights-policy-commitments",
              "label": "Table: Human Rights Policy Commitments"
            },
            {
              "type": "Control",
              "scope": "#/properties/workplace-safety-policies",
              "label": "Table: Workplace Safety Policies"
            },
            {
              "type": "Control",
              "scope": "#/properties/discrimination-and-diversity-policies",
              "label": "Table: Discrimination and Diversity Policies"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management and/or remediation of material impacts on the undertaking’s own workforce specifically, as well as policies that cover material impacts, risks and opportunities related to its own workforce."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose the general processes for engaging with the workforce about impacts."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain whether engagement is direct or through representatives."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail the stages and frequencies of the engagement process."
        },
        "req4": {
          "type": "boolean",
          "title": "Identify the function and senior role responsible for engagement."
        },
        "req5": {
          "type": "boolean",
          "title": "Disclose any Global Framework Agreements or similar."
        },
        "req6": {
          "type": "boolean",
          "title": "Explain assessment methods for engagement effectiveness."
        },
        "req7": {
          "type": "boolean",
          "title": "Disclose measures for engaging with vulnerable or marginalised groups."
        },
        "req8": {
          "type": "boolean",
          "title": "If no process exists, disclose this fact and future plans."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "engagement-with-vulnerable-groups": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "vulnerable-group-type": {
            "type": "string"
          },
          "engagement-strategy": {
            "type": "string"
          },
          "assessment-outcome": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes that the undertaking has in place for engaging with its own workforce and workers’ representatives about the actual and potential impacts on its own workforce, including direct engagement and representative engagement. Include stages, types, frequencies of engagement, roles responsible, possible agreements, and insights into perspectives, particularly of vulnerable groups."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/engagement-processes",
              "label": "Table: Engagement Processes"
            },
            {
              "type": "Control",
              "scope": "#/properties/agreements-and-effectiveness-assessment",
              "label": "Table: Agreements and Effectiveness Assessment"
            },
            {
              "type": "Control",
              "scope": "#/properties/engagement-with-vulnerable-groups",
              "label": "Table: Engagement with Vulnerable Groups"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of how the undertaking engages, as part of its ongoing due diligence process, with people in its own workforce and workers’ representatives about material, actual and potential, positive and/or negative impacts that do or are likely to affect them, and whether and how perspectives of its own workforce are taken into account in the decision-making processes of the undertaking."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe general processes for providing or contributing to remedies for negative impacts on the workforce."
        },
        "req2": {
          "type": "boolean",
          "title": "Detail the effectiveness assessment of remedies provided for negative impacts."
        },
        "req3": {
          "type": "boolean",
          "title": "List and describe specific channels for employees to raise concerns."
        },
        "req4": {
          "type": "boolean",
          "title": "Clarify whether the channels are internal or involve third-party mechanisms."
        },
        "req5": {
          "type": "boolean",
          "title": "State whether a grievance/complaint handling mechanism is implemented."
        },
        "req6": {
          "type": "boolean",
          "title": "Explain how the availability of such channels is supported in the workplace."
        },
        "req7": {
          "type": "boolean",
          "title": "Describe the processes for tracking and monitoring issues, including stakeholder involvement."
        },
        "req8": {
          "type": "boolean",
          "title": "Assess awareness and trust of workforce in these processes."
        },
        "req9": {
          "type": "boolean",
          "title": "Disclose existence of protection policies against retaliation for users of these channels."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "tracking-and-monitoring-processes": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "issue-raised": {
            "type": "string"
          },
          "resolution-follow-up": {
            "type": "string"
          },
          "stakeholder-involvement": {
            "type": "boolean"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s processes for remedial actions concerning negative impacts on its workforce and the methods available for employees to voice concerns. Include information on the effectiveness assessment of these channels, stakeholder involvement, and protective measures against retaliation."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/remediation-processes-and-channels",
              "label": "Table: Remediation Processes and Channels"
            },
            {
              "type": "Control",
              "scope": "#/properties/tracking-and-monitoring-processes",
              "label": "Table: Tracking and Monitoring Processes"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the formal means by which the undertaking’s own workforce can make their concerns and needs known directly to the undertaking and/or through which the undertaking supports the availability of such channels (for example, grievance mechanisms) in the workplace, and how follow-up is carried out with the people concerned regarding the issues raised and the effectiveness of these channels."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe actions taken, planned, or underway to prevent or mitigate material negative impacts on the workforce."
        },
        "req2": {
          "type": "boolean",
          "title": "Indicate whether and how actions have been taken to provide or enable remedy for actual material impacts."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail any additional actions or initiatives aimed at delivering positive impacts for the workforce."
        },
        "req4": {
          "type": "boolean",
          "title": "Explain how the effectiveness of actions and initiatives in delivering workforce outcomes is tracked and assessed."
        },
        "req5": {
          "type": "boolean",
          "title": "Describe the processes used to identify necessary actions in response to actual or potential negative impacts on the workforce."
        },
        "req6": {
          "type": "boolean",
          "title": "Outline actions planned or underway to mitigate material risks and how their effectiveness is tracked."
        },
        "req7": {
          "type": "boolean",
          "title": "Outline actions planned or underway to pursue material opportunities for the workforce."
        },
        "req8": {
          "type": "boolean",
          "title": "Disclose measures ensuring that company practices do not cause or contribute to negative workforce impacts."
        },
        "req9": {
          "type": "boolean",
          "title": "Provide information about the resources allocated to managing material impacts and their strategic alignment."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "resource-allocation-for-impact-management": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "resource-type": {
            "type": "string"
          },
          "allocated-amount": {
            "type": "number"
          },
          "use-of-resource": {
            "type": "string"
          },
          "impact-alignment": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how your company takes action to address material negative and positive impacts and manage material risks and pursue material opportunities related to its own workforce, and evaluate the effectiveness of those actions. Ensure completeness by considering processes, actions, resources, and strategic alignment."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/actions-and-effectiveness-tracking",
              "label": "Table: Actions and Effectiveness Tracking"
            },
            {
              "type": "Control",
              "scope": "#/properties/resource-allocation-for-impact-management",
              "label": "Table: Resource Allocation for Impact Management"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is twofold. Firstly, it is to enable an understanding of any actions and initiatives through which the undertaking seeks to: (a) to prevent, mitigate and remediate negative material impacts on its own workforce; and/or (b) to achieve positive material impacts for its own workforce. Secondly, it is to enable an understanding of the ways in which the undertaking is addressing the material risks and pursuing the material opportunities related to its own workforce."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose time-bound and outcome-oriented targets related to reducing negative impacts on its own workforce."
        },
        "req2": {
          "type": "boolean",
          "title": "Disclose time-bound and outcome-oriented targets related to advancing positive impacts on its own workforce."
        },
        "req3": {
          "type": "boolean",
          "title": "Disclose time-bound and outcome-oriented targets related to managing material risks and opportunities related to its own workforce."
        },
        "req4": {
          "type": "boolean",
          "title": "Summarize the description of these targets, detailing information requirements as defined in ESRS 2 MDR-T."
        },
        "req5": {
          "type": "boolean",
          "title": "Describe the process for setting the targets, including workforce or workers’ representatives’ engagement."
        },
        "req6": {
          "type": "boolean",
          "title": "Describe the tracking process for monitoring performance against these targets."
        },
        "req7": {
          "type": "boolean",
          "title": "Identify and describe any lessons or improvements based on performance."
        },
        "req8": {
          "type": "boolean",
          "title": "Indicate whether outcome-oriented targets are driving the progress in addressing impacts and managing risks/opportunities."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "performance-tracking": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "performance-metric": {
            "type": "string"
          },
          "target": {
            "type": "string"
          },
          "current-status": {
            "type": "string"
          },
          "variance": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the targets set by the undertaking that are time-bound and outcome-oriented, focusing on addressing material negative impacts, advancing positive impacts, and managing material risks and opportunities related to the undertaking’s own workforce. Include information about the setting and tracking of these targets, and how the workforce was engaged in this process."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/outcome-oriented-targets",
              "label": "Table: Outcome-Oriented Targets"
            },
            {
              "type": "Control",
              "scope": "#/properties/engagement-process",
              "label": "Table: Engagement Process"
            },
            {
              "type": "Control",
              "scope": "#/properties/performance-tracking",
              "label": "Table: Performance Tracking"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking is using outcome-oriented targets to drive and measure its progress in addressing its material negative impacts and/or advancing positive impacts on its own workforce, and/or in managing material risks and opportunities related to its own workforce."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the total number of employees by head count, and provide breakdowns by gender and country."
        },
        "req2": {
          "type": "boolean",
          "title": "Provide the total number of employees by head count or full-time equivalent (FTE) for permanent, temporary, and non-guaranteed hours employees, with gender breakdowns."
        },
        "req3": {
          "type": "boolean",
          "title": "Disclose the total number of employees who have left during the reporting period and the rate of employee turnover."
        },
        "req4": {
          "type": "boolean",
          "title": "Describe the methodologies and assumptions used to compile data, including head count or FTE, and the timing of reporting."
        },
        "req5": {
          "type": "boolean",
          "title": "Provide contextual information to understand fluctuations in employee numbers during the reporting period."
        },
        "req6": {
          "type": "boolean",
          "title": "Cross-reference the number of employees reported to the most representative number in financial statements."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "methodologies-and-assumptions": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "aspect": {
            "type": "string"
          },
          "description": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the key characteristics of employees in the undertaking’s workforce. Include the total number of employees by head count, with breakdowns by gender and country for countries where the undertaking has 50 or more employees representing at least 10% of its total employees. Provide a breakdown of permanent, temporary, and non-guaranteed hours employees by gender. Disclose employee turnover, methodologies used, and provide contextual information for understanding the data. Cross-reference this information to the financial statements."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/employee-head-count-and-breakdown",
              "label": "Table: Employee Head Count and Breakdown"
            },
            {
              "type": "Control",
              "scope": "#/properties/employment-type-and-gender-breakdown",
              "label": "Table: Employment Type and Gender Breakdown"
            },
            {
              "type": "Control",
              "scope": "#/properties/employee-turnover",
              "label": "Table: Employee Turnover"
            },
            {
              "type": "Control",
              "scope": "#/properties/methodologies-and-assumptions",
              "label": "Table: Methodologies and Assumptions"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide insight into the undertaking’s employment practices, and the scope and nature of impacts arising from these practices. It aims to provide contextual information that aids in understanding other reported disclosures and serves as the basis for calculating quantitative metrics disclosed in this Standard."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-6';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose the total number of non-employees in the workforce."
        },
        "req2": {
          "type": "boolean",
          "title": "Provide definitions and methodology for data compilation (e.g., headcount or FTE)."
        },
        "req3": {
          "type": "boolean",
          "title": "Include explanations of methodologies and assumptions used."
        },
        "req4": {
          "type": "boolean",
          "title": "Clarify reporting period or average calculation method."
        },
        "req5": {
          "type": "boolean",
          "title": "Provide contextual information to understand the data, including fluctuations."
        },
        "req6": {
          "type": "boolean",
          "title": "List the common types of non-employees and their roles."
        },
        "req7": {
          "type": "boolean",
          "title": "State and explain any estimation used when data is unavailable."
        },
        "req8": {
          "type": "boolean",
          "title": "Ensure documentation of relationships and types of work performed by non-employees."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "year-over-year-workforce-comparison": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "year": {
            "type": "string"
          },
          "total-non-employees": {
            "type": "number"
          },
          "significant-changes-context": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the key characteristics of non-employees in your workforce, including their number, classification, and the methodologies used for data compilation. Ensure clarity by providing definitions and context where necessary, especially regarding methodologies like headcount vs. full-time equivalent counts. Explain any significant variations in workforce numbers and provide thorough documentation of any estimates made, including methodologies used for these estimations."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/non-employee-workforce-characteristics",
              "label": "Table: Non-Employee Workforce Characteristics"
            },
            {
              "type": "Control",
              "scope": "#/properties/methodologies-and-assumptions",
              "label": "Table: Methodologies and Assumptions"
            },
            {
              "type": "Control",
              "scope": "#/properties/year-over-year-workforce-comparison",
              "label": "Table: Year-over-Year Workforce Comparison"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to convey insights into the organization’s employment strategies, particularly the utilization and impact of non-employees within its operations. This disclosure offers crucial background that enhances comprehension of related data presented in other disclosures, serving as a foundation for metric calculations required by other Standard mandates. Furthermore, it elucidates the degree of reliance on non-employees in the organization’s workforce."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-7';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose the percentage of total employees covered by collective bargaining agreements."
        },
        "req2": {
          "type": "boolean",
          "title": "Identify whether the undertaking has collective bargaining agreements within the EEA and provide the percentage of employees covered per significant employment country."
        },
        "req3": {
          "type": "boolean",
          "title": "Provide the percentage of employees outside the EEA covered by collective bargaining agreements, organized by region."
        },
        "req4": {
          "type": "boolean",
          "title": "Optionally, disclose if working conditions for employees not under a collective bargaining agreement are influenced by such agreements either from within or from other undertakings."
        },
        "req5": {
          "type": "boolean",
          "title": "Optionally, disclose estimates of coverage rates for non-employees in the workforce influenced by collective bargaining agreements."
        },
        "req6": {
          "type": "boolean",
          "title": "Report the global percentage of employees covered by workers’ representatives, specifically at the country level for each significant employment EEA country."
        },
        "req7": {
          "type": "boolean",
          "title": "Indicate the existence of any agreements for representation by a European Works Council (EWC), a Societas Europaea (SE) Works Council, or a Societas Cooperativa Europaea (SCE) Works Council."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "social-dialogue-representation": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "eea-country": {
            "type": "string"
          },
          "percentage-of-employees": {
            "type": "number"
          },
          "workers-representation-type": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the extent and coverage of collective bargaining agreements and social dialogue within your undertaking, both in the EEA and outside it. Include relevant percentages of employees covered by such agreements and report on social dialogue mechanisms. This will provide clarity on employee representation and input in employment terms."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/collective-bargaining-agreement-coverage",
              "label": "Table: Collective Bargaining Agreement Coverage"
            },
            {
              "type": "Control",
              "scope": "#/properties/social-dialogue-representation",
              "label": "Table: Social Dialogue Representation"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the coverage of collective bargaining agreements and social dialogue for the undertaking’s own employees. It seeks to present the level of employee representation and involvement in shaping working conditions through formal agreements and dialogue channels, particularly within significant employment regions in the EEA and globally."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-8';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose gender distribution at top management both in numbers and percentages."
        },
        "req2": {
          "type": "boolean",
          "title": "Categorize employees by age group and provide the distribution as a percentage and the actual number."
        },
        "req3": {
          "type": "boolean",
          "title": "Ensure data accuracy and relevance by regularly updating the disclosed metrics."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "employee-age-distribution": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "age-group": {
            "type": "string"
          },
          "number-of-employees": {
            "type": "number"
          },
          "percentage": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the gender distribution at the top management level and the age distribution of all employees across defined age groups. Ensure that the information is organized to reflect both numerical values and percentages where applicable to provide a comprehensive view of diversity metrics within the organization."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/top-management-gender-distribution",
              "label": "Table: Top Management Gender Distribution"
            },
            {
              "type": "Control",
              "scope": "#/properties/employee-age-distribution",
              "label": "Table: Employee Age Distribution"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable stakeholders to understand the level of gender diversity within top management and to assess the age demographic distribution across the organization’s workforce. This information is crucial for evaluating diversity and inclusivity efforts and contributes to transparency and accountability in equality practices."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-9';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Confirm whether all employees are paid an adequate wage."
        },
        "req2": {
          "type": "boolean",
          "title": "If all employees are adequately paid, state this information clearly."
        },
        "req3": {
          "type": "boolean",
          "title": "If not all employees are adequately paid, list the countries affected."
        },
        "req4": {
          "type": "boolean",
          "title": "Provide the percentage of employees not earning adequate wages for each country."
        },
        "req5": {
          "type": "boolean",
          "title": "Optionally, disclose if non-employees in the workforce are paid adequate wages."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "employee-wage-adequacy-by-country": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "country": {
            "type": "string"
          },
          "percentage-of-employees-below-adequate-wage": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe whether or not all employees are paid an adequate wage, and provide further details if some employees do not earn wages in line with applicable benchmarks."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/employee-wage-adequacy-by-country",
              "label": "Table: Employee Wage Adequacy by Country"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of whether or not all of the undertaking’s employees are paid an adequate wage, in line with applicable benchmarks. This allows stakeholders to assess fair employee compensation practices within the undertaking’s operations. Achieving transparency in wage practices helps ensure compliance with social equity standards."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-10';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Verify if all employees are covered by social protection against major life events."
        },
        "req2": {
          "type": "boolean",
          "title": "Identify if any employees are not covered and the specific life events they lack coverage for: sickness, unemployment, employment injury, parental leave, retirement."
        },
        "req3": {
          "type": "boolean",
          "title": "Document the countries where employees lack social protection, if any."
        },
        "req4": {
          "type": "boolean",
          "title": "Specify types of employees who do not have coverage in those countries."
        },
        "req5": {
          "type": "boolean",
          "title": "Optionally, include information about non-employees in the workforce and their social protection status."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "employee-types-without-coverage": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "country": {
            "type": "string"
          },
          "employee-type": {
            "type": "string"
          },
          "life-event-lacking-coverage": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe whether employees are covered by social protection against loss of income due to major life events, specifying countries and employee types if not all employees are covered."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/employee-social-protection-coverage",
              "label": "Table: Employee Social Protection Coverage"
            },
            {
              "type": "Control",
              "scope": "#/properties/employee-types-without-coverage",
              "label": "Table: Employee Types without Coverage"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of whether the undertaking’s employees are covered by social protection against loss of income due to major life events and, if not, the countries where this is not the case."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-11';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose the percentage of employees with disabilities in the undertaking."
        },
        "req2": {
          "type": "boolean",
          "title": "Ensure the data collection complies with relevant legal restrictions concerning employee data."
        },
        "req3": {
          "type": "boolean",
          "title": "Optionally, provide a breakdown of the percentage by gender."
        },
        "req4": {
          "type": "boolean",
          "title": "Mention any data collection methods and validation processes used."
        },
        "req5": {
          "type": "boolean",
          "title": "Discuss any challenges encountered while collecting this data and how they were addressed."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "percentage-breakdown": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "category": {
            "type": "string"
          },
          "percentage": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the procedure and considerations for collecting data on the percentage of employees with disabilities. Include any legal restrictions and methodologies used for data collection and validation."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/employees-with-disabilities",
              "label": "Table: Employees with Disabilities"
            },
            {
              "type": "Control",
              "scope": "#/properties/percentage-breakdown",
              "label": "Table: Percentage Breakdown"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which persons with disabilities are included among the undertaking’s employees. This disclosure aims to increase transparency and inclusivity by providing stakeholders with relevant data concerning the representation of persons with disabilities within the workforce."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-12';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Ensure the percentage of employees that participated in regular performance and career development reviews is disclosed."
        },
        "req2": {
          "type": "boolean",
          "title": "Break down the information by gender as required."
        },
        "req3": {
          "type": "boolean",
          "title": "Disclose the average number of training hours per employee."
        },
        "req4": {
          "type": "boolean",
          "title": "Provide breakdowns of training hours by gender."
        },
        "req5": {
          "type": "boolean",
          "title": "Include categories of employees where applicable for more granularity."
        },
        "req6": {
          "type": "boolean",
          "title": "Consider providing information for non-employees in the workforce if available."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "performance-and-career-development-participation": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "employee-id": {
            "type": "string"
          },
          "participated-in-reviews": {
            "type": "boolean"
          },
          "gender": {
            "type": "string"
          },
          "employee-category": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the training and skills development programs provided to employees, including information about performance and career development reviews. Include details like participation rates, average training hours, and breakdowns by gender and employee categories."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/employee-training-and-development",
              "label": "Table: Employee Training and Development"
            },
            {
              "type": "Control",
              "scope": "#/properties/performance-and-career-development-participation",
              "label": "Table: Performance and Career Development Participation"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the training and skills development-related activities that have been offered to employees, within the context of continuous professional growth, to upgrade employees’ skills and facilitate continued employability."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-13';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose the percentage of own workforce covered by the health and safety management system based on legal requirements and/or recognised standards."
        },
        "req2": {
          "type": "boolean",
          "title": "Report the number of fatalities due to work-related injuries and ill health among the own workforce and other workers on-site."
        },
        "req3": {
          "type": "boolean",
          "title": "Provide the number and rate of recordable work-related accidents for both employees and non-employees."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail the number of cases of recordable work-related ill health for employees, considering legal restrictions on data collection."
        },
        "req5": {
          "type": "boolean",
          "title": "Report the number of days lost due to work-related injuries, health issues, and fatalities for employees."
        },
        "req6": {
          "type": "boolean",
          "title": "Optionally include data on recordable work-related ill health and days lost for non-employees."
        },
        "req7": {
          "type": "boolean",
          "title": "Specify the percentage of workers covered by health and safety systems internally or externally audited or certified."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "days-lost-due-to-work-related-incidents": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "type-of-incident": {
            "type": "string"
          },
          "number-of-days-lost": {
            "type": "number"
          },
          "employee-status": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the extent of the workforce covered by the health and safety management system, along with work-related injury, ill health, and fatality incidents. Additionally, report this data broken down between employees and non-employees, where applicable, and include information on other workers on-site."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/workforce-coverage-by-health-and-safety-system",
              "label": "Table: Workforce Coverage by Health and Safety System"
            },
            {
              "type": "Control",
              "scope": "#/properties/work-related-incident-report",
              "label": "Table: Work-related Incident Report"
            },
            {
              "type": "Control",
              "scope": "#/properties/days-lost-due-to-work-related-incidents",
              "label": "Table: Days Lost Due to Work-related Incidents"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide insights into the coverage, quality, and effectiveness of the health and safety management system in place to prevent work-related injuries and health issues."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-14';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose if all employees are entitled to family-related leave through social policies or collective agreements."
        },
        "req2": {
          "type": "boolean",
          "title": "Provide the percentage of employees entitled to take family-related leave."
        },
        "req3": {
          "type": "boolean",
          "title": "Provide the percentage of entitled employees who took family-related leave."
        },
        "req4": {
          "type": "boolean",
          "title": "Break down the percentage of employees taking family-related leave by gender."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "family-related-leave-entitlement-and-utilization": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "total-employees-entitled": {
            "type": "number"
          },
          "total-employees-taking-leave": {
            "type": "number"
          },
          "percentage-entitled": {
            "type": "number"
          },
          "percentage-taking-leave-total": {
            "type": "number"
          },
          "percentage-male-taking-leave": {
            "type": "number"
          },
          "percentage-female-taking-leave": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the company’s practices and policies regarding employees’ entitlement to and actual utilization of family-related leave. Include relevant data highlights such as overall entitlements, utilization rates, and gender breakdowns."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/family-related-leave-entitlement-and-utilization",
              "label": "Table: Family-related Leave Entitlement and Utilization"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the entitlement and actual practices amongst the employees to take family-related leave in a gender equitable manner, as it is one of the dimensions of work-life balance."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-15';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose the percentage gender pay gap between female and male employees."
        },
        "req2": {
          "type": "boolean",
          "title": "Report the ratio of the highest-paid individual’s total annual remuneration to the median annual remuneration of employees, excluding the highest-paid individual."
        },
        "req3": {
          "type": "boolean",
          "title": "Provide any contextual information necessary to understand the data, including methodology and changes to the underlying data."
        },
        "req4": {
          "type": "boolean",
          "title": "Include a breakdown of the gender pay gap by employee category and/or by country or segment, if applicable."
        },
        "req5": {
          "type": "boolean",
          "title": "Detail the gender pay gap by categories of employees broken down by ordinary basic salary and complementary/variable components, if available."
        },
        "req6": {
          "type": "boolean",
          "title": "Adjust and report the remuneration ratio for purchasing power differences between countries if such adjustment is made, specifying the methodology used."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "remuneration-ratio": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "highest-paid-individuals-remuneration": {
            "type": "number"
          },
          "median-employee-remuneration-excluding-highest": {
            "type": "number"
          },
          "remuneration-ratio": {
            "type": "number"
          },
          "adjusted-for-purchasing-power": {
            "type": "boolean"
          },
          "methodology-description": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the percentage gap in pay between female and male employees and the ratio of the highest individual’s remuneration to the median remuneration for employees. Explain any contextual information necessary to understand the data and any adjustments or changes made to the underlying data."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/gender-pay-gap",
              "label": "Table: Gender Pay Gap"
            },
            {
              "type": "Control",
              "scope": "#/properties/remuneration-ratio",
              "label": "Table: Remuneration Ratio"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is twofold: to allow an understanding of the extent of any gap in the pay between women and men amongst the undertaking’s employees and to provide insight into the level of remuneration inequality inside the undertaking and whether wide pay disparities exist."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-16';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose the total number of incidents of discrimination, including harassment, reported during the reporting period."
        },
        "req2": {
          "type": "boolean",
          "title": "Include the number of complaints filed through grievance mechanisms in the workforce, excluding those already included in the total number of incidents."
        },
        "req3": {
          "type": "boolean",
          "title": "Provide the total amount of fines, penalties, and compensation for damages related to the incidents and complaints."
        },
        "req4": {
          "type": "boolean",
          "title": "Reconcile the monetary penalties and compensation details with financial statements to ensure accuracy."
        },
        "req5": {
          "type": "boolean",
          "title": "Disclose the number of severe human rights incidents within the undertaking’s workforce, specifying cases of non-respect for international guidelines like the UN Guiding Principles on Business and Human Rights."
        },
        "req6": {
          "type": "boolean",
          "title": "State the total fines, penalties, and compensation for severe human rights incidents, with financial reconciliation."
        },
        "req7": {
          "type": "boolean",
          "title": "Include contextual information to help understand the nature of the data and its compilation."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "severe-human-rights-incidents": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "incident-id": {
            "type": "string"
          },
          "type-of-human-rights-issue-eg-forced-labour": {
            "type": "string"
          },
          "date": {
            "type": "date"
          },
          "related-guidelines-violated-eg-un-guiding-principles": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the number of work-related incidents, complaints, and severe human rights impacts within your workforce, and any related fines, sanctions, or compensation for the reporting period, including contextual details as applicable."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/discrimination-and-harassment-incidents",
              "label": "Table: Discrimination and Harassment Incidents"
            },
            {
              "type": "Control",
              "scope": "#/properties/compensation-and-penalties",
              "label": "Table: Compensation and Penalties"
            },
            {
              "type": "Control",
              "scope": "#/properties/severe-human-rights-incidents",
              "label": "Table: Severe Human Rights Incidents"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to allow an understanding of the extent to which work-related incidents and severe cases of human rights impacts are affecting its own workforce. This helps stakeholders evaluate the effectiveness of the undertaking’s policies and practices in managing human rights impacts and protecting their workforce."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s1-17';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identification of key value chain workers and their relevance to the organization’s operations."
        },
        "req2": {
          "type": "boolean",
          "title": "Description of the methodology used for identifying and engaging with value chain workers."
        },
        "req3": {
          "type": "boolean",
          "title": "Examples of how the undertaking engages or plans to engage with the value chain workers to gather their interests, views, and rights."
        },
        "req4": {
          "type": "boolean",
          "title": "Details of specific human rights considerations impacting value chain workers."
        },
        "req5": {
          "type": "boolean",
          "title": "Analysis on the impact of business activities on value chain workers’ rights and interests."
        },
        "req6": {
          "type": "boolean",
          "title": "Examples or case studies where the views of value chain workers informed strategic decisions."
        },
        "req7": {
          "type": "boolean",
          "title": "References to policies or strategies that document the integration of value chain workers’ perspectives."
        },
        "req8": {
          "type": "boolean",
          "title": "Metrics or benchmarks used to assess the impact on or contributions from value chain workers."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "impact-of-business-operations-on-value-chain-workers": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "business-operation": {
            "type": "string"
          },
          "potential-impact": {
            "type": "string"
          },
          "mitigation-strategies": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the process and methodology used by the undertaking to assess how the interests, views, and rights of value chain workers within its operations are impacted. Provide examples of how these assessments have informed strategic or business decisions."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/value-chain-workers-engagement-data",
              "label": "Table: Value Chain Workers Engagement Data"
            },
            {
              "type": "Control",
              "scope": "#/properties/impact-of-business-operations-on-value-chain-workers",
              "label": "Table: Impact of Business Operations on Value Chain Workers"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure companies consider and incorporate the interests, views, and rights of their value chain workers into their overall business strategy. This involves recognizing value chain workers as key stakeholders whose human rights and work-related interests might be impacted by the company’s operations. By doing so, an undertaking demonstrates commitment to sustainable development goals and responsible business practices, whilst ensuring informed decision-making processes at a strategic level."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 sbm-2 interests and views of stakeholders';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify and explain how actual and potential impacts on value chain workers originate from the undertaking’s strategy and business model."
        },
        "req2": {
          "type": "boolean",
          "title": "Describe how these impacts inform and contribute to the adaptation of the undertaking’s strategy and business model."
        },
        "req3": {
          "type": "boolean",
          "title": "Clarify the relationship between material risks and opportunities arising from impacts and dependencies on value chain workers and the undertaking’s strategy and business model."
        },
        "req4": {
          "type": "boolean",
          "title": "Ensure all value chain workers materially impacted by the undertaking are included in the disclosure scope."
        },
        "req5": {
          "type": "boolean",
          "title": "Provide a brief description of the types of value chain workers impacted."
        },
        "req6": {
          "type": "boolean",
          "title": "Specify geographies or commodities with significant risks of child, forced, or compulsory labor."
        },
        "req7": {
          "type": "boolean",
          "title": "Explain if material negative impacts are widespread, systemic, or related to individual incidents."
        },
        "req8": {
          "type": "boolean",
          "title": "Describe activities resulting in material positive impacts and the value chain workers affected."
        },
        "req9": {
          "type": "boolean",
          "title": "Disclose risks and opportunities arising from impacts and dependencies on value chain workers."
        },
        "req10": {
          "type": "boolean",
          "title": "Reveal how workers in particular contexts or with specific characteristics may be at greater risk of harm."
        },
        "req11": {
          "type": "boolean",
          "title": "Indicate which material risks and opportunities relate to specific groups of value chain workers."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "geographies-and-commodities-at-risk": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "geography-commodity": {
            "type": "string"
          },
          "type-of-risk": {
            "type": "string"
          },
          "extent-of-risk": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how actual and potential impacts on value chain workers inform and contribute to adapting the undertaking’s strategy and business model, and clarify the relationship between material risks and opportunities arising from impacts on these workers and the strategy."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/value-chain-worker-impacts",
              "label": "Table: Value Chain Worker Impacts"
            },
            {
              "type": "Control",
              "scope": "#/properties/material-risks-opportunities",
              "label": "Table: Material Risks & Opportunities"
            },
            {
              "type": "Control",
              "scope": "#/properties/geographies-and-commodities-at-risk",
              "label": "Table: Geographies and Commodities at Risk"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide transparency on how the undertaking’s strategy and business model are informed by and contribute to actual and potential impacts on value chain workers. It aims to elucidate the relationship between material risks and opportunities concerning these workers and the broader strategic operations of the organization."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 sbm-3 material impacts, risks and opportunities and their interaction with strategy and business model';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the company’s policies for managing impacts on value chain workers."
        },
        "req2": {
          "type": "boolean",
          "title": "Specify if the policies cover all or specific groups of value chain workers."
        },
        "req3": {
          "type": "boolean",
          "title": "Highlight human rights policy commitments relevant to value chain workers."
        },
        "req4": {
          "type": "boolean",
          "title": "Explain how policies monitor compliance with UN, ILO, and OECD guidelines."
        },
        "req5": {
          "type": "boolean",
          "title": "State whether policies address issues like human trafficking and forced or child labor."
        },
        "req6": {
          "type": "boolean",
          "title": "Indicate if there is a supplier code of conduct relevant to these policies."
        },
        "req7": {
          "type": "boolean",
          "title": "Describe alignment with internationally recognized instruments for value chain workers."
        },
        "req8": {
          "type": "boolean",
          "title": "Report cases of non-compliance with UN, ILO, and OECD guidelines involving value chain workers."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "material-impact-and-risk-management": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "impact-risk-description": {
            "type": "string"
          },
          "management-policy-applied": {
            "type": "string"
          },
          "opportunities-identified": {
            "type": "string"
          },
          "policy-evaluation-date": {
            "type": "date"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the policies your company has adopted to manage any material impacts on value chain workers, including any associated risks and opportunities. Provide details about human rights policy commitments, compliance with major international guidelines, and engagement with value chain workers. Note if the policies cover all or only specific groups of value chain workers."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/value-chain-worker-policy-overview",
              "label": "Table: Value Chain Worker Policy Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/human-rights-compliance-measures",
              "label": "Table: Human Rights Compliance Measures"
            },
            {
              "type": "Control",
              "scope": "#/properties/material-impact-and-risk-management",
              "label": "Table: Material Impact and Risk Management"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management, and/or remediation of material impacts on value chain workers specifically, as well as policies that cover material risks or opportunities related to value chain workers. This includes detailing commitments relevant to the UN Guiding Principles on Business and Human Rights, ILO Declaration on Fundamental Principles and Rights at Work, and other key frameworks."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s2-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Engage directly or indirectly with value chain workers about impacts."
        },
        "req2": {
          "type": "boolean",
          "title": "Identify stages, type, and frequency of engagements with workers."
        },
        "req3": {
          "type": "boolean",
          "title": "Assign operational responsibility for the engagement process to a senior role."
        },
        "req4": {
          "type": "boolean",
          "title": "Disclose Global Framework Agreements related to workers’ rights."
        },
        "req5": {
          "type": "boolean",
          "title": "Assess effectiveness of engagements with value chain workers."
        },
        "req6": {
          "type": "boolean",
          "title": "Disclose steps to engage vulnerable or marginalized workers’ perspectives."
        },
        "req7": {
          "type": "boolean",
          "title": "Provide timeframe if no engagement process is currently adopted."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "vulnerable-worker-engagement": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "vulnerable-group": {
            "type": "string"
          },
          "engagement-strategy": {
            "type": "string"
          },
          "outcomes": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the general processes your company uses to engage with value chain workers and their representatives. Explain how these processes capture positive and negative impacts, and how worker perspectives inform decision-making. If specific processes or agreements are implemented to manage these engagements, detail their scope, frequency, and responsible parties."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/engagement-process-overview",
              "label": "Table: Engagement Process Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/agreements-and-frameworks",
              "label": "Table: Agreements and Frameworks"
            },
            {
              "type": "Control",
              "scope": "#/properties/vulnerable-worker-engagement",
              "label": "Table: Vulnerable Worker Engagement"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of whether and how the undertaking engages, as part of its ongoing due diligence process, with value chain workers and their legitimate representatives, or with credible proxies, about material actual and potential positive and/or negative impacts that do or are likely to affect them, and whether and how perspectives of value chain workers are taken into account in the decision-making processes of the undertaking."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s2-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the general approach and processes for remedying material negative impacts on value chain workers."
        },
        "req2": {
          "type": "boolean",
          "title": "Detail specific channels established for value chain workers to raise their concerns directly with the undertaking."
        },
        "req3": {
          "type": "boolean",
          "title": "Provide information on third-party mechanisms used for grievance purposes."
        },
        "req4": {
          "type": "boolean",
          "title": "Describe how the undertaking supports or mandates the existence of such channels in the workplace."
        },
        "req5": {
          "type": "boolean",
          "title": "Outline the tracking and monitoring process of issues raised by value chain workers."
        },
        "req6": {
          "type": "boolean",
          "title": "Assess and report on the effectiveness of these channels, involving the stakeholders concerned."
        },
        "req7": {
          "type": "boolean",
          "title": "Disclose the awareness and trust level of value chain workers in these processes."
        },
        "req8": {
          "type": "boolean",
          "title": "Confirm the existence of policies protecting individuals using these channels from retaliation."
        },
        "req9": {
          "type": "boolean",
          "title": "If no channels or processes exist, disclose the lack thereof and provide a timeframe for implementation, if possible."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "awareness-and-trust-metrics": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "metric": {
            "type": "string"
          },
          "value": {
            "type": "number"
          },
          "trust-level": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes implemented by the undertaking to provide or cooperate in the remediation of negative impacts incurred by value chain workers. Detail the channels established for these workers to raise their concerns and needs and ensure their concerns are addressed. Additionally, emphasize on how these mechanisms are assessed for effectiveness and worker awareness and trust."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/value-chain-workers-grievance-channels",
              "label": "Table: Value Chain Workers Grievance Channels"
            },
            {
              "type": "Control",
              "scope": "#/properties/remediation-processes-overview",
              "label": "Table: Remediation Processes Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/awareness-and-trust-metrics",
              "label": "Table: Awareness and Trust Metrics"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the formal means by which value chain workers can make their concerns and needs known directly to the undertaking. It also seeks to understand how the undertaking supports the availability of grievance mechanisms in the workplace of value chain workers, and how effectively these are followed up on and perceived."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s2-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe actions taken or planned to prevent or mitigate negative impacts on value chain workers."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain processes for identifying actions needed for potential or actual negative impacts."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail actions for providing remedy for actual negative impacts on value chain workers."
        },
        "req4": {
          "type": "boolean",
          "title": "List additional initiatives for delivering positive impacts for value chain workers."
        },
        "req5": {
          "type": "boolean",
          "title": "Describe processes and metrics used to track the effectiveness of actions on value chain workers."
        },
        "req6": {
          "type": "boolean",
          "title": "Detail actions planned or underway to mitigate material risks associated with value chain workers and track effectiveness."
        },
        "req7": {
          "type": "boolean",
          "title": "Outline actions to pursue material opportunities related to value chain workers."
        },
        "req8": {
          "type": "boolean",
          "title": "Describe resources allocated for managing material impacts on value chain workers."
        },
        "req9": {
          "type": "boolean",
          "title": "State whether processes to provide or enable remedy for negative impacts are effective."
        },
        "req10": {
          "type": "boolean",
          "title": "Disclose severe human rights issues or incidents in the value chain, if applicable."
        },
        "req11": {
          "type": "boolean",
          "title": "Explain how internal practices avoid causing negative impacts on value chain workers."
        },
        "req12": {
          "type": "boolean",
          "title": "Discuss how tensions between prevention/mitigation of impacts and business pressures are handled."
        },
        "req13": {
          "type": "boolean",
          "title": "Consider ESRS 2 MDR-T when evaluating action effectiveness through target setting."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "human-rights-issues": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "issue-description": {
            "type": "string"
          },
          "incident-reported": {
            "type": "boolean"
          },
          "follow-up-action": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how your organization takes action to address material impacts on workers in the value chain and manage associated risks and opportunities. Include the effectiveness of these actions and resources allocated."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/actions-on-material-impacts",
              "label": "Table: Actions on Material Impacts"
            },
            {
              "type": "Control",
              "scope": "#/properties/material-risks-and-opportunities",
              "label": "Table: Material Risks and Opportunities"
            },
            {
              "type": "Control",
              "scope": "#/properties/resource-allocation",
              "label": "Table: Resource Allocation"
            },
            {
              "type": "Control",
              "scope": "#/properties/human-rights-issues",
              "label": "Table: Human Rights Issues"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is twofold. Firstly, it is to enable an understanding of the actions or initiatives through which the undertaking seeks to prevent, mitigate, and remediate negative material impacts on value chain workers and/or achieve positive material impacts for them. Secondly, it is to enable an understanding of how the undertaking addresses material risks and pursues material opportunities related to workers in the value chain. The undertaking shall provide a summarized description of action plans and resources to manage these material impacts, risks, and opportunities as per ESRS 2 MDR-A Actions and resources in relation to material sustainability matters."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s2-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify all time-bound and outcome-oriented targets set for reducing negative impacts on value chain workers."
        },
        "req2": {
          "type": "boolean",
          "title": "List targets aimed at advancing positive impacts on value chain workers."
        },
        "req3": {
          "type": "boolean",
          "title": "Outline targets for managing material risks and opportunities related to value chain workers."
        },
        "req4": {
          "type": "boolean",
          "title": "Described the process of setting these targets, including stakeholder engagement with value chain workers or their representatives."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain the methodology used to track performance against these targets."
        },
        "req6": {
          "type": "boolean",
          "title": "Share any insights, lessons learned, or improvements identified from monitoring performance."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "performance-tracking-and-insights": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "target": {
            "type": "string"
          },
          "performance-indicator": {
            "type": "string"
          },
          "tracking-frequency": {
            "type": "string"
          },
          "insights-lessons-learned": {
            "type": "string"
          },
          "improvements-and-adjustments-made": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the time-bound and outcome-oriented targets set by your organization related to reducing negative impacts, advancing positive impacts, and managing risks and opportunities for value chain workers. Please provide details on the process for setting these targets, including the involvement of value chain workers or their representatives."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/time-bound-and-outcome-oriented-targets-for-value-chain-workers",
              "label": "Table: Time-bound and Outcome-oriented Targets for Value Chain Workers"
            },
            {
              "type": "Control",
              "scope": "#/properties/stakeholder-engagement-in-target-setting",
              "label": "Table: Stakeholder Engagement in Target Setting"
            },
            {
              "type": "Control",
              "scope": "#/properties/performance-tracking-and-insights",
              "label": "Table: Performance Tracking and Insights"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking is using time-bound and outcome-oriented targets to drive and measure its progress in addressing material negative impacts, advancing positive impacts on value chain workers, and managing material risks and opportunities related to them."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s2-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Detail the processes through which workforce interests, views, and rights are collected and understood."
        },
        "req2": {
          "type": "boolean",
          "title": "Describe how input from the workforce is reflected in strategic business decisions."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain the mechanisms in place to respect and promote human rights within the workforce."
        },
        "req4": {
          "type": "boolean",
          "title": "Identify key changes in the business strategy or model that have occurred as a result of workforce input."
        },
        "req5": {
          "type": "boolean",
          "title": "Discuss how ongoing communication with the workforce is maintained and managed."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "impacts-on-business-strategy": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "strategic-change": {
            "type": "string"
          },
          "description-of-change": {
            "type": "string"
          },
          "workforce-input": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how the interests, views, and rights of your company’s workforce, with respect to their human rights, shape and inform the company’s strategy and business model. This includes detailing the methods used to gather these inputs and their impact on company operations."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/workforce-engagement-process",
              "label": "Table: Workforce Engagement Process"
            },
            {
              "type": "Control",
              "scope": "#/properties/impacts-on-business-strategy",
              "label": "Table: Impacts on Business Strategy"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure that the company acknowledges and integrates the concerns and rights of its workforce as critical stakeholders within its strategy and business model. By doing so, the company demonstrates a commitment to upholding human rights and fostering a more inclusive and responsive business environment. Highlighting this stakeholder group also emphasizes transparency and accountability in business operations, which can lead to better risk management and societal impact."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 sbm-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify and explain each material climate-related risk as either a physical or a transition risk."
        },
        "req2": {
          "type": "boolean",
          "title": "Describe the scope of the resilience analysis conducted on the strategy and business model."
        },
        "req3": {
          "type": "boolean",
          "title": "Elaborate on the methods and timeline of the resilience analysis, including the use of climate scenario analysis."
        },
        "req4": {
          "type": "boolean",
          "title": "Detail the results of the resilience analysis, explicitly outlining the findings from the scenario analysis."
        },
        "req5": {
          "type": "boolean",
          "title": "Ensure that all analysis aligns with ESRS 2 IRO-1 requirements and related application requirement paragraphs."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "scenario-analysis-results": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "scenario-name": {
            "type": "string"
          },
          "projected-impact": {
            "type": "string"
          },
          "mitigation-strategy": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the methodology and outcomes of the resilience analysis conducted for the identified material climate-related risks. Explain the type of risks (physical or transition) and assess how the strategy and business model of the undertaking are fortified against these risks, supported by climate scenario analysis."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/climate-related-risks-identified",
              "label": "Table: Climate-Related Risks Identified"
            },
            {
              "type": "Control",
              "scope": "#/properties/resilience-analysis-overview",
              "label": "Table: Resilience Analysis Overview"
            },
            {
              "type": "Control",
              "scope": "#/properties/scenario-analysis-results",
              "label": "Table: Scenario Analysis Results"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure that the undertaking comprehensively assesses and communicates how climate-related risks could impact their strategic decisions and future business model evolution. By distinguishing between physical and transition risks and conducting a detailed resilience analysis, including scenario planning, undertakings can demonstrate their readiness and adaptability to potential climate shifts."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 sbm-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe policies adopted to manage material impacts on affected communities."
        },
        "req2": {
          "type": "boolean",
          "title": "Identify whether policies are aimed at all or specific communities."
        },
        "req3": {
          "type": "boolean",
          "title": "Disclose any special provisions within policies for preventing impacts on indigenous peoples."
        },
        "req4": {
          "type": "boolean",
          "title": "Outline human rights policy commitments relevant to affected communities."
        },
        "req5": {
          "type": "boolean",
          "title": "Report processes for monitoring compliance with international human rights standards."
        },
        "req6": {
          "type": "boolean",
          "title": "Explain policy alignment with internationally recognized community standards."
        },
        "req7": {
          "type": "boolean",
          "title": "Detail cases of non-compliance related to affected communities within value chains."
        },
        "req8": {
          "type": "boolean",
          "title": "Provide cross-references if policies are included in broader documents."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "reported-non-compliance-cases": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "case-id": {
            "type": "string"
          },
          "description": {
            "type": "string"
          },
          "location": {
            "type": "string"
          },
          "date-reported": {
            "type": "date"
          },
          "remediation-status": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the policies your undertaking has adopted to manage material impacts, risks, and opportunities on affected communities. Discuss whether these policies are comprehensive or aimed at specific communities and include specific policy provisions for indigenous peoples. Illustrate alignment with international standards, such as the UN Guiding Principles on Business and Human Rights, to enhance understanding of your undertaking’s commitments."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/policy-overview-for-affected-communities",
              "label": "Table: Policy Overview for Affected Communities"
            },
            {
              "type": "Control",
              "scope": "#/properties/compliance-monitoring-mechanisms",
              "label": "Table: Compliance Monitoring Mechanisms"
            },
            {
              "type": "Control",
              "scope": "#/properties/reported-non-compliance-cases",
              "label": "Table: Reported Non-Compliance Cases"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management, and/or remediation of material impacts on affected communities specifically, as well as policies that cover material risks or opportunities related to affected communities."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s3-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose whether engagement occurs directly with affected communities, with legitimate representatives, or with credible proxies."
        },
        "req2": {
          "type": "boolean",
          "title": "Indicate the stage(s) at which engagement occurs, the type of engagement, and the frequency."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain the function and the most senior role within the undertaking responsible for engagement."
        },
        "req4": {
          "type": "boolean",
          "title": "Describe how the effectiveness of community engagement is assessed, including any agreements or outcomes."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain the steps taken to gain insight into the perspectives of vulnerable or marginalized communities."
        },
        "req6": {
          "type": "boolean",
          "title": "Clarify how indigenous peoples’ rights are respected in stakeholder engagement, including the right to free, prior, and informed consent."
        },
        "req7": {
          "type": "boolean",
          "title": "If applicable, confirm consultation with indigenous peoples on engagement parameters."
        },
        "req8": {
          "type": "boolean",
          "title": "Disclose if no general process is in place for community engagement and provide a timeframe for adoption."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "effectiveness-assessment": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "metric": {
            "type": "string"
          },
          "description": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s processes for engaging with affected communities and their representatives about actual and potential impacts. Include details on the stages, frequency, senior operational responsibility, and effectiveness of engagement, as well as considerations for vulnerable groups and indigenous peoples."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/engagement-stages",
              "label": "Table: Engagement Stages"
            },
            {
              "type": "Control",
              "scope": "#/properties/operational-responsibility",
              "label": "Table: Operational Responsibility"
            },
            {
              "type": "Control",
              "scope": "#/properties/effectiveness-assessment",
              "label": "Table: Effectiveness Assessment"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of whether and how the undertaking engages, as part of its ongoing due diligence process, with affected communities, their legitimate representatives, or with credible proxies, about material actual and potential positive and/or negative impacts that do or are likely to affect them, and whether and how perspectives of affected communities are taken into account in the decision-making processes of the undertaking."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s3-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the general approach and processes for providing or contributing to remedy where the undertaking has caused or contributed to a material negative impact."
        },
        "req2": {
          "type": "boolean",
          "title": "Detail any specific channels in place for affected communities to raise concerns, including self-established channels or participation in third-party mechanisms."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain processes supporting channel availability through business relationships."
        },
        "req4": {
          "type": "boolean",
          "title": "Outline methods used to track, monitor, and ensure the effectiveness of these channels, including stakeholder involvement."
        },
        "req5": {
          "type": "boolean",
          "title": "Disclose how the undertaking assesses community awareness and trust in these channels."
        },
        "req6": {
          "type": "boolean",
          "title": "Identify policies protecting individuals who utilize these channels against retaliation or refer to disclosure as per ESRS G1-1."
        },
        "req7": {
          "type": "boolean",
          "title": "Clarify if no communication channel or support structure exists, with a timeline for future adoption if applicable."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "effectiveness-and-follow-up-mechanisms": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "issue-type": {
            "type": "string"
          },
          "resolution-timeline": {
            "type": "number"
          },
          "stakeholder-involvement": {
            "type": "string"
          },
          "tracking-mechanism": {
            "type": "string"
          },
          "effectiveness-evaluation-method": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes in place to provide for or cooperate in remediating negative impacts on affected communities associated with the undertaking, and the channels available for these communities to raise concerns and have them adequately addressed."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/channels-for-raising-concerns-and-addressing-negative-impacts",
              "label": "Table: Channels for Raising Concerns and Addressing Negative Impacts"
            },
            {
              "type": "Control",
              "scope": "#/properties/effectiveness-and-follow-up-mechanisms",
              "label": "Table: Effectiveness and Follow-up Mechanisms"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable stakeholders to understand the formal channels available for affected communities to communicate concerns and needs directly to the undertaking. It also aims to describe how the undertaking supports the availability of such channels through its business relationships, how it follows up on issues raised, and evaluates the effectiveness of these channels."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s3-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe actions taken, planned, or underway to prevent or mitigate material negative impacts on affected communities."
        },
        "req2": {
          "type": "boolean",
          "title": "Detail how the undertaking provides or enables remedial action in case of material impacts."
        },
        "req3": {
          "type": "boolean",
          "title": "Enumerate additional actions or initiatives aimed primarily at delivering positive impacts for affected communities."
        },
        "req4": {
          "type": "boolean",
          "title": "Explain the methods for tracking and assessing the effectiveness of these actions and initiatives."
        },
        "req5": {
          "type": "boolean",
          "title": "Outline the processes for identifying necessary actions in response to actual or potential negative impacts on communities."
        },
        "req6": {
          "type": "boolean",
          "title": "Elaborate on the approach to taking action related to specific negative impacts, including any industry-wide or collaborative efforts."
        },
        "req7": {
          "type": "boolean",
          "title": "Assess the availability and effectiveness of remedial processes for material negative impacts."
        },
        "req8": {
          "type": "boolean",
          "title": "Describe actions planned or underway to mitigate material risks arising from impacts and dependencies on affected communities and track effectiveness."
        },
        "req9": {
          "type": "boolean",
          "title": "Identify actions being pursued for material opportunities in relation to affected communities."
        },
        "req10": {
          "type": "boolean",
          "title": "Disclose measures in place to avoid causing or contributing to material negative impacts via planning, acquisition, or use of resources."
        },
        "req11": {
          "type": "boolean",
          "title": "Report on any severe human rights issues linked to affected communities and their disclosure."
        },
        "req12": {
          "type": "boolean",
          "title": "Explain the resource allocation for managing material impacts in relation to affected communities."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "resource-allocation": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "resource-type": {
            "type": "string"
          },
          "amount-allocated": {
            "type": "number"
          },
          "project-initiative-name": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes through which the undertaking identifies, plans, and implements actions to manage its material impacts, risks, and opportunities in relation to affected communities. Detail the effectiveness of these actions and provide evidence of resource allocation for these initiatives."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/material-impact-actions",
              "label": "Table: Material Impact Actions"
            },
            {
              "type": "Control",
              "scope": "#/properties/effectiveness-tracking",
              "label": "Table: Effectiveness Tracking"
            },
            {
              "type": "Control",
              "scope": "#/properties/resource-allocation",
              "label": "Table: Resource Allocation"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is twofold. Firstly, it is to provide an understanding of any actions and initiatives through which the undertaking seeks to: (a) prevent, mitigate and remediate the negative material impacts on affected communities; and/or (b) achieve positive material impacts for affected communities. Secondly, it is to enable an understanding of the ways in which the undertaking is addressing the material risks and pursuing the material opportunities related to affected communities."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s3-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide a summarised description of time-bound and outcome-oriented targets related to affected communities."
        },
        "req2": {
          "type": "boolean",
          "title": "Disclose details about the process of setting these targets, including community engagement and feedback."
        },
        "req3": {
          "type": "boolean",
          "title": "Include information on how the organization’s performance against these targets is tracked."
        },
        "req4": {
          "type": "boolean",
          "title": "Describe any lessons learned or improvements identified during the performance tracking."
        },
        "req5": {
          "type": "boolean",
          "title": "Ensure that the information provided aligns with the information requirements defined in ESRS 2 MDR-T."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "risks-and-opportunities-management": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "description": {
            "type": "string"
          },
          "community-unit-affected": {
            "type": "string"
          },
          "risk-opportunity": {
            "type": "string"
          },
          "management-approach": {
            "type": "string"
          },
          "performance-metrics": {
            "type": "string"
          },
          "outcome-or-status": {
            "type": "string"
          },
          "engagement-details": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the time-bound and outcome-oriented targets your organization has set related to reducing negative impacts, advancing positive impacts, and managing material risks and opportunities concerning affected communities. Include details of the process of setting these targets, including community engagement."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/targets-and-performance-metrics",
              "label": "Table: Targets and Performance Metrics"
            },
            {
              "type": "Control",
              "scope": "#/properties/risks-and-opportunities-management",
              "label": "Table: Risks and Opportunities Management"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking is using time-bound and outcome-oriented targets to drive and measure its progress in addressing material negative impacts, and/or advancing positive impacts on affected communities, and/or in managing material risks and opportunities related to affected communities."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s3-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the methods used to identify and prioritize the interests and views of your workforce."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain how the workforce’s interests and views are taken into account in the development of your business strategy and model."
        },
        "req3": {
          "type": "boolean",
          "title": "Provide examples of changes made to strategies as a result of workforce feedback or rights considerations."
        },
        "req4": {
          "type": "boolean",
          "title": "Disclose the processes in place to ensure the human rights of the workforce are respected and considered."
        },
        "req5": {
          "type": "boolean",
          "title": "State how often these consultations with the workforce are conducted and the engagement methods used."
        },
        "req6": {
          "type": "boolean",
          "title": "Describe any feedback mechanisms in place for workforce members to express their concerns and views."
        },
        "req7": {
          "type": "boolean",
          "title": "Discuss the roles and responsibilities of the personnel or teams tasked with managing stakeholder engagement within the workforce."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "feedback-integration-summary": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "feedback-theme": {
            "type": "string"
          },
          "strategic-adjustment": {
            "type": "string"
          },
          "implementation-date": {
            "type": "date"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how the interests, views, and rights of people in your own workforce, including respect for their human rights, inform your strategy and business model. Include details on processes and methods used to gather workforce feedback and integrate it into strategic decision-making."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/stakeholder-engagement-activities",
              "label": "Table: Stakeholder Engagement Activities"
            },
            {
              "type": "Control",
              "scope": "#/properties/feedback-integration-summary",
              "label": "Table: Feedback Integration Summary"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure that undertakings consider and integrate the interests, views, and human rights of their own workforce in the development and implementation of their strategy and business model. This is essential as it impacts the well-being of the workforce, influences the reputation of the organization, and ensures compliance with human rights standards. Acknowledging the workforce as a key group of affected stakeholders, transparency about how their perspectives shape strategic decisions is necessary for fostering an inclusive and responsible business environment."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 sbm-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify each material climate-related risk impacting the company."
        },
        "req2": {
          "type": "boolean",
          "title": "Classify risks as either physical or transition climate-related risks."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain the company’s strategy to mitigate identified climate-related risks."
        },
        "req4": {
          "type": "boolean",
          "title": "Describe the scope of the resilience analysis conducted."
        },
        "req5": {
          "type": "boolean",
          "title": "Detail the timing of when the resilience analysis was performed."
        },
        "req6": {
          "type": "boolean",
          "title": "Outline the process of conducting a climate scenario analysis."
        },
        "req7": {
          "type": "boolean",
          "title": "Summarize the results of the resilience analysis."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "resilience-analysis": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "scope-of-analysis": {
            "type": "string"
          },
          "timing-of-analysis": {
            "type": "date"
          },
          "scenario-analysis-method": {
            "type": "string"
          },
          "results-summary": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe each material climate-related risk identified by your company, specifying if it is a climate-related physical risk or a transition risk. Furthermore, explain how your company’s strategy and business model are resilient to climate change, including scope, timing, and results of any resilience analysis performed."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/material-climate-related-risks",
              "label": "Table: Material Climate-Related Risks"
            },
            {
              "type": "Control",
              "scope": "#/properties/resilience-analysis",
              "label": "Table: Resilience Analysis"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure that stakeholders can assess how the undertaking identifies and manages material climate-related risks, as well as understand the impact of such risks on the company’s strategy and business model. It also aims to demonstrate the company’s preparedness in adapting to climate change through resilience analysis, providing transparency and fostering trust with stakeholders."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 sbm-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify and describe policies adopted to manage material impacts on consumers and end-users."
        },
        "req2": {
          "type": "boolean",
          "title": "Specify if policies cover specific groups of consumers and end-users or all of them."
        },
        "req3": {
          "type": "boolean",
          "title": "Describe human rights policy commitments relevant to consumers and end-users, including monitoring and compliance mechanisms."
        },
        "req4": {
          "type": "boolean",
          "title": "Explain engagement tactics and measures to provide remediation for human rights impacts concerning consumers and end-users."
        },
        "req5": {
          "type": "boolean",
          "title": "Disclose alignment of policies with internationally recognized instruments (e.g., UN Guiding Principles)."
        },
        "req6": {
          "type": "boolean",
          "title": "Report on cases of non-respect for human rights principles in the downstream value chain."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "reported-cases": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "nature-of-case": {
            "type": "string"
          },
          "resolution-status": {
            "type": "string"
          },
          "value-chain-stage": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the policies your organization has adopted to manage the material impacts of your products and/or services on consumers and end-users, as well as the associated risks and opportunities. Include a detailed account of human rights policy commitments relevant to consumers and/or end-users."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/consumer-and-end-user-impact-policies",
              "label": "Table: Consumer and End-User Impact Policies"
            },
            {
              "type": "Control",
              "scope": "#/properties/human-rights-commitments",
              "label": "Table: Human Rights Commitments"
            },
            {
              "type": "Control",
              "scope": "#/properties/reported-cases",
              "label": "Table: Reported Cases"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management, and/or remediation of material impacts on consumers and/or end-users specifically, as well as policies that cover material risks or opportunities related to consumers and/or end-users. This helps in understanding the comprehensiveness and effectiveness of an organization’s measures and approaches towards consumer and end-user rights and risks."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s4-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose general processes for engaging with consumers and end-users."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain whether engagement occurs directly with affected consumers and/or end-users, or through credible proxies."
        },
        "req3": {
          "type": "boolean",
          "title": "Identify the stage(s) at which engagement occurs."
        },
        "req4": {
          "type": "boolean",
          "title": "Clarify the type and frequency of engagement."
        },
        "req5": {
          "type": "boolean",
          "title": "Specify the function and the most senior role with operational responsibility for engagement."
        },
        "req6": {
          "type": "boolean",
          "title": "Describe the methods used to assess the effectiveness of engagement."
        },
        "req7": {
          "type": "boolean",
          "title": "Explain how consumer and end-user perspectives inform decision-making processes."
        },
        "req8": {
          "type": "boolean",
          "title": "Outline steps to gain insights into perspectives of vulnerable or marginalized groups."
        },
        "req9": {
          "type": "boolean",
          "title": "If no process is adopted, disclose this and provide a timeframe for implementation."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "vulnerable-and-marginalised-groups": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "group": {
            "type": "string"
          },
          "engagement-method": {
            "type": "string"
          },
          "specific-needs-addressed": {
            "type": "string"
          },
          "outcome-or-agreement": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s processes for engaging with consumers and end-users, focusing on how these processes are integrated into the decision-making framework and the effectiveness of these engagement practices in addressing impacts on consumers and end-users."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/engagement-processes",
              "label": "Table: Engagement Processes"
            },
            {
              "type": "Control",
              "scope": "#/properties/vulnerable-and-marginalised-groups",
              "label": "Table: Vulnerable and Marginalised Groups"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of whether and how the undertaking engages, as part of its ongoing due diligence process, with consumers and/or end-users, their legitimate representatives, or with credible proxies, about material actual and potential positive and/or negative impacts that do or are likely to affect them, and whether and how perspectives of consumers and/or end-users are taken into account in the decision-making processes of the undertaking."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s4-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the general approach to remediating negative impacts on consumers and end-users."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain how the organization assesses the effectiveness of these remedies."
        },
        "req3": {
          "type": "boolean",
          "title": "List specific channels available for consumers or end-users to raise concerns."
        },
        "req4": {
          "type": "boolean",
          "title": "Describe whether these channels are internally established or part of third-party mechanisms."
        },
        "req5": {
          "type": "boolean",
          "title": "Outline processes supporting the availability of such channels by business relationships."
        },
        "req6": {
          "type": "boolean",
          "title": "Explain tracking and monitoring methods for issues raised and addressed."
        },
        "req7": {
          "type": "boolean",
          "title": "Provide details on ensuring effectiveness of the channels, including stakeholder involvement."
        },
        "req8": {
          "type": "boolean",
          "title": "Disclose any assessments ensuring consumers are aware of and trust these channels."
        },
        "req9": {
          "type": "boolean",
          "title": "Mention policies protecting individuals from retaliation when using these structures."
        },
        "req10": {
          "type": "boolean",
          "title": "If applicable, disclose the absence of such channels and outline future plans for implementation."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "grievance-tracking": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "issue-raised": {
            "type": "string"
          },
          "date-raised": {
            "type": "date"
          },
          "resolution-date": {
            "type": "date"
          },
          "resolution-outcome": {
            "type": "string"
          },
          "evaluation-score": {
            "type": "number"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes and channels that your organization has in place to manage and remediate negative impacts on consumers or end-users, and how these channels are made available for raising concerns. Ensure to include details on how these processes are maintained, tracked, evaluated for effectiveness, and communicated to stakeholders."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/consumer-and-end-user-channels",
              "label": "Table: Consumer and End-User Channels"
            },
            {
              "type": "Control",
              "scope": "#/properties/remediation-processes",
              "label": "Table: Remediation Processes"
            },
            {
              "type": "Control",
              "scope": "#/properties/grievance-tracking",
              "label": "Table: Grievance Tracking"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the formal means by which consumers and/or end-users can make their concerns and needs known directly to the undertaking, and/or through which the undertaking supports the availability of such channels (for example, grievance mechanisms) by its business relationships, how follow up is performed with these consumers and/or end-users regarding the issues raised, and the effectiveness of these channels."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s4-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe actions taken, planned, or underway to prevent, mitigate, or remediate material negative impacts on consumers and/or end-users."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain how actions provide or enable remedy for actual material impacts on consumers and/or end-users."
        },
        "req3": {
          "type": "boolean",
          "title": "List additional actions or initiatives with the primary purpose of positively contributing to improved social outcomes for consumers and/or end-users."
        },
        "req4": {
          "type": "boolean",
          "title": "Summarize how the effectiveness of these actions and initiatives is tracked and assessed."
        },
        "req5": {
          "type": "boolean",
          "title": "Outline processes for identifying actions needed for actual or potential negative impacts on consumers and/or end-users."
        },
        "req6": {
          "type": "boolean",
          "title": "Detail approaches taken in response to specific material negative impacts, including industry or collaborative actions."
        },
        "req7": {
          "type": "boolean",
          "title": "Describe how remedy processes for material negative impacts are implemented and their effectiveness."
        },
        "req8": {
          "type": "boolean",
          "title": "List actions planned or underway to mitigate material risks and track their effectiveness."
        },
        "req9": {
          "type": "boolean",
          "title": "Describe actions planned or underway to pursue material opportunities involving consumers and/or end-users."
        },
        "req10": {
          "type": "boolean",
          "title": "Disclose actions taken to avoid causing or contributing to material negative impacts through company practices, even amidst business pressures."
        },
        "req11": {
          "type": "boolean",
          "title": "Report any severe human rights issues or incidents connected to consumers and/or end-users."
        },
        "req12": {
          "type": "boolean",
          "title": "Explain resources allocated to manage material impacts on consumers and/or end-users."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "material-risk-and-opportunity-tracking": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "risk-opportunity-description": {
            "type": "string"
          },
          "associated-actions": {
            "type": "string"
          },
          "effectiveness-assessment": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe how your organization takes action to address material impacts on consumers and end-users, manage material risks, pursue material opportunities related to consumers and end-users, and assess the effectiveness of those actions. This includes describing various action plans, processes for identifying necessary actions, and resource allocation."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/action-plans-and-resources",
              "label": "Table: Action Plans and Resources"
            },
            {
              "type": "Control",
              "scope": "#/properties/impact-identification-and-management-processes",
              "label": "Table: Impact Identification and Management Processes"
            },
            {
              "type": "Control",
              "scope": "#/properties/material-risk-and-opportunity-tracking",
              "label": "Table: Material Risk and Opportunity Tracking"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is twofold. Firstly, it is to provide an understanding of any actions and initiatives through which the organization seeks to: (a) prevent, mitigate, and remediate negative material impacts on consumers and/or end-users, and/or (b) achieve positive material impacts for consumers and/or end-users. Secondly, it is to enable an understanding of how the organization is addressing material risks and pursuing material opportunities related to consumers and/or end-users."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s4-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose if the undertaking has set time-bound and outcome-oriented targets for reducing negative impacts on consumers/end-users."
        },
        "req2": {
          "type": "boolean",
          "title": "Disclose if the undertaking has set targets for advancing positive impacts on consumers/end-users."
        },
        "req3": {
          "type": "boolean",
          "title": "Disclose if the undertaking has set targets for managing material risks and opportunities related to consumers/end-users."
        },
        "req4": {
          "type": "boolean",
          "title": "Provide a summarised description of these targets, including details as per ESRS 2 MDR-T."
        },
        "req5": {
          "type": "boolean",
          "title": "Detail the process for setting these targets, including any consumer engagement."
        },
        "req6": {
          "type": "boolean",
          "title": "Describe the process for tracking performance against these targets and any resulting improvements."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "performance-tracking-table": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "target": {
            "type": "string"
          },
          "performance-indicator": {
            "type": "string"
          },
          "current-performance": {
            "type": "number"
          },
          "lessons-learned": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the specific time-bound and outcome-oriented targets your organization has set regarding the reduction of negative impacts, advancement of positive impacts, and management of material risks and opportunities related to consumers and/or end-users. Additionally, outline the processes involved in setting these targets, including any engagements with consumers or their representatives, and tracking the performance against these targets."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/targets-summary-table",
              "label": "Table: Targets Summary Table"
            },
            {
              "type": "Control",
              "scope": "#/properties/engagement-process-table",
              "label": "Table: Engagement Process Table"
            },
            {
              "type": "Control",
              "scope": "#/properties/performance-tracking-table",
              "label": "Table: Performance Tracking Table"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking is using time-bound and outcome-oriented targets to drive and measure progress in addressing material negative impacts, advancing positive impacts on consumers and/or end-users, and managing material risks and opportunities related to consumers and/or end-users."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='s4-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify and describe the specific roles and responsibilities of administrative, management, and supervisory bodies concerning business conduct."
        },
        "req2": {
          "type": "boolean",
          "title": "Provide details on the expertise and experience of the members within these bodies that pertain to business conduct matters."
        },
        "req3": {
          "type": "boolean",
          "title": "Disclose any specific policies or procedures that these bodies follow to ensure robust business conduct."
        },
        "req4": {
          "type": "boolean",
          "title": "Highlight instances where these bodies have actively managed or intervened in business conduct matters."
        },
        "req5": {
          "type": "boolean",
          "title": "Provide examples of training or continuing education related to business conduct for members of these bodies."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "actions-undertaken-by-supervisory-bodies": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "date": {
            "type": "date"
          },
          "action-description": {
            "type": "string"
          },
          "outcome": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the role of the administrative, management, and supervisory bodies related to business conduct and highlight their expertise in business conduct matters as per the guidelines provided in the ESRS 2 GOV-1 disclosure requirement."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/roles-and-expertise-of-administrative-bodies",
              "label": "Table: Roles and Expertise of Administrative Bodies"
            },
            {
              "type": "Control",
              "scope": "#/properties/business-conduct-related-policies-and-procedures",
              "label": "Table: Business Conduct Related Policies and Procedures"
            },
            {
              "type": "Control",
              "scope": "#/properties/actions-undertaken-by-supervisory-bodies",
              "label": "Table: Actions Undertaken by Supervisory Bodies"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure transparency regarding the roles and expertise of the administrative, management, and supervisory bodies in relation to business conduct. This includes understanding how these bodies contribute to, oversee, and ensure the upholding of business ethics, integrity, and responsible business practices. In disclosing this information, the undertaking provides stakeholders with insights into the governance structures that protect and enhance the integrity of business operations and culture."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 gov-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describes the process for identifying pollution-related impacts, risks, and opportunities."
        },
        "req2": {
          "type": "boolean",
          "title": "Confirms if the organization has screened site locations and business activities for pollution-related issues."
        },
        "req3": {
          "type": "boolean",
          "title": "Details methodologies, assumptions, and tools used in pollution screening."
        },
        "req4": {
          "type": "boolean",
          "title": "Explains consultations conducted with affected communities regarding pollution impacts."
        },
        "req5": {
          "type": "boolean",
          "title": "Illustrates how upstream and downstream value chain impacts, risks, and opportunities are assessed."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "consultation-details": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "community-stakeholder": {
            "type": "string"
          },
          "consultation-method": {
            "type": "string"
          },
          "date": {
            "type": "date"
          },
          "feedback-summary": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the processes your organization employs to identify material pollution-related impacts, risks, and opportunities. Include details on the methodologies, assumptions, and tools used in screening site locations and business activities. Additionally, discuss the consultations conducted with affected communities or other stakeholders during this process."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/screening-methodologies",
              "label": "Table: Screening Methodologies"
            },
            {
              "type": "Control",
              "scope": "#/properties/consultation-details",
              "label": "Table: Consultation Details"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to ensure transparency regarding the mechanisms and procedures your organization uses to identify and assess pollution-related impacts, risks, and opportunities. Understanding these processes allows stakeholders to evaluate the proactive measures taken by the undertaking to manage environmental responsibilities and engage effectively with communities affected by potential pollution from its operations."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='related to esrs 2 iro-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Disclose business conduct policies and how they foster corporate culture."
        },
        "req2": {
          "type": "boolean",
          "title": "Identify mechanisms for identifying, reporting, and investigating concerns about unlawful behavior."
        },
        "req3": {
          "type": "boolean",
          "title": "State whether the undertaking accommodates reporting from internal and/or external stakeholders."
        },
        "req4": {
          "type": "boolean",
          "title": "State if there are no policies on anti-corruption or anti-bribery aligned with the United Nations Convention against Corruption and plans for implementation if none exist."
        },
        "req5": {
          "type": "boolean",
          "title": "Describe how the undertaking protects whistleblowers, including internal reporting channels and training."
        },
        "req6": {
          "type": "boolean",
          "title": "Outline measures to protect whistleblowers against retaliation."
        },
        "req7": {
          "type": "boolean",
          "title": "Indicate policies on protection of whistleblowers if none exist, with plans and a timetable for implementation."
        },
        "req8": {
          "type": "boolean",
          "title": "Report on procedures for investigating business conduct incidents independently and objectively."
        },
        "req9": {
          "type": "boolean",
          "title": "State any policies with respect to animal welfare, if applicable."
        },
        "req10": {
          "type": "boolean",
          "title": "Provide information on training programs related to business conduct, including audience, frequency, and depth of coverage."
        },
        "req11": {
          "type": "boolean",
          "title": "Identify the functions most at risk for corruption and bribery within the organization."
        },
        "req12": {
          "type": "boolean",
          "title": "Entities legally required to comply with whistleblower protection laws can state compliance with those laws."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "business-conduct-training-programs": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "target-audience": {
            "type": "string"
          },
          "frequency": {
            "type": "string"
          },
          "depth-of-coverage": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe your organization’s policies regarding business conduct matters and how it fosters its corporate culture. Include a comprehensive overview of the mechanisms in place to identify, report, and manage concerns related to unlawful behavior as well as corruption or bribery. Make sure to provide details on whistleblower protection measures and training programs."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/business-conduct-policies",
              "label": "Table: Business Conduct Policies"
            },
            {
              "type": "Control",
              "scope": "#/properties/whistleblower-protection-measures",
              "label": "Table: Whistleblower Protection Measures"
            },
            {
              "type": "Control",
              "scope": "#/properties/business-conduct-training-programs",
              "label": "Table: Business Conduct Training Programs"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to enable an understanding of the extent to which the undertaking has policies that address the identification, assessment, management, and/or remediation of its material impacts, risks, and opportunities related to business conduct matters. It also aims to provide an understanding of the undertaking’s approach to corporate culture."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='g1-1';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Provide a description of the undertaking’s policy to prevent late payments, specifically to SMEs."
        },
        "req2": {
          "type": "boolean",
          "title": "Explain the undertaking’s approach to managing relationships with its suppliers, including risk assessment related to the supply chain."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail whether and how social and environmental criteria are considered in the supplier selection process."
        },
        "req4": {
          "type": "boolean",
          "title": "Include examples or evidence of fair behavior in procurement processes with suppliers."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "late-payment-prevention-policy": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "policy-name": {
            "type": "string"
          },
          "sme-targeted": {
            "type": "boolean"
          },
          "implementation-date": {
            "type": "date"
          },
          "review-frequency": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s management of its relationships with suppliers, focusing on the approach to procurement processes, risk management related to the supply chain, and prevention of late payments, especially to SMEs."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/supplier-relationship-management",
              "label": "Table: Supplier Relationship Management"
            },
            {
              "type": "Control",
              "scope": "#/properties/late-payment-prevention-policy",
              "label": "Table: Late Payment Prevention Policy"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide an understanding of the undertaking’s management of its procurement process, including fair behavior with suppliers. This involves revealing how the company manages its supply chain relationships, ensuring timely payments, and integrating social and environmental criteria in supplier selection. By disclosing this information, the undertaking aims to enhance accountability and transparency about its supply chain practices, contributing to more sustainable and responsible business operations."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='g1-2';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Describe the procedures in place to prevent, detect, and address allegations or incidents of corruption and bribery."
        },
        "req2": {
          "type": "boolean",
          "title": "Include whether investigators or investigating committees are separate from the chain of management."
        },
        "req3": {
          "type": "boolean",
          "title": "Detail the process to report outcomes to administrative, management, and supervisory bodies."
        },
        "req4": {
          "type": "boolean",
          "title": "State explicitly if no procedures are in place and any plans to develop such procedures."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain how the undertaking communicates its corruption and bribery policies to ensure accessibility and understanding."
        },
        "req6": {
          "type": "boolean",
          "title": "Provide details on the nature, scope, and depth of anti-corruption and anti-bribery training programs."
        },
        "req7": {
          "type": "boolean",
          "title": "Specify the percentage of functions-at-risk covered by training programs."
        },
        "req8": {
          "type": "boolean",
          "title": "Outline the extent of training given to members of administrative, management, and supervisory bodies."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "training-programs": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "training-content-description": {
            "type": "string"
          },
          "functions-at-risk-coverage-": {
            "type": "number"
          },
          "training-scope-for-management": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s system and efforts to prevent, detect, investigate, and respond to allegations or incidents of corruption and bribery. Include any related training programs and communication strategies within the firm and to relevant stakeholders."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/corruption-and-bribery-procedures",
              "label": "Table: Corruption and Bribery Procedures"
            },
            {
              "type": "Control",
              "scope": "#/properties/training-programs",
              "label": "Table: Training Programs"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide transparency on the key procedures of the undertaking to prevent, detect, and address allegations about corruption and bribery. It emphasizes the importance of training for own workers and the provision of relevant information internally or to suppliers, ensuring effective policy communication and accessible understanding of its implications."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='g1-3';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Report the total number of incidents of corruption or bribery."
        },
        "req2": {
          "type": "boolean",
          "title": "Disclose the number of convictions and the amount of fines for violations of anti-corruption and anti-bribery laws."
        },
        "req3": {
          "type": "boolean",
          "title": "Describe the actions taken to address breaches in the procedures and standards of anti-corruption and anti-bribery."
        },
        "req4": {
          "type": "boolean",
          "title": "Optionally disclose the total number and nature of confirmed incidents of corruption or bribery."
        },
        "req5": {
          "type": "boolean",
          "title": "Optionally disclose the number of confirmed incidents where own workers were dismissed or disciplined."
        },
        "req6": {
          "type": "boolean",
          "title": "Optionally disclose the number of confirmed incidents relating to contracts with business partners that were terminated or not renewed due to corruption or bribery violations."
        },
        "req7": {
          "type": "boolean",
          "title": "Provide details of public legal cases regarding corruption or bribery, including outcomes, initiated in previous years but established in the current reporting period."
        },
        "req8": {
          "type": "boolean",
          "title": "Include incidents involving actors in its value chain only where the company or its employees are directly involved."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "corruption-and-bribery-incidents-summary": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "incident-id": {
            "type": "string"
          },
          "nature-of-incident": {
            "type": "string"
          },
          "number-of-convictions": {
            "type": "number"
          },
          "total-fines-imposed": {
            "type": "number"
          },
          "actions-taken": {
            "type": "string"
          },
          "public-legal-case-details": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the incidents of corruption or bribery that occurred during the reporting period. Provide details about the outcomes of these incidents, including any actions taken to address breaches in procedures and standards related to anti-corruption and anti-bribery."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/corruption-and-bribery-incidents-summary",
              "label": "Table: Corruption and Bribery Incidents Summary"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide transparency on the incidents relating to corruption or bribery during the reporting period and the related outcomes. It aims to ensure stakeholders are informed about any potential risks and the measures undertaken by the company to address such incidents."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='g1-4';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Identify representative(s) responsible for overseeing political influence and lobbying activities in the administrative, management, and supervisory bodies."
        },
        "req2": {
          "type": "boolean",
          "title": "Report the total monetary value of financial and in-kind political contributions made by country or geographical area and by type of recipient."
        },
        "req3": {
          "type": "boolean",
          "title": "Explain how the monetary value of in-kind political contributions is estimated if applicable."
        },
        "req4": {
          "type": "boolean",
          "title": "List the main topics of lobbying activities and the undertaking’s main positions on these topics."
        },
        "req5": {
          "type": "boolean",
          "title": "Explain the interaction between lobbying activities and the undertaking’s material impacts, risks, and opportunities."
        },
        "req6": {
          "type": "boolean",
          "title": "State if the undertaking is registered with the EU Transparency Register or any equivalent in a member state, providing the name and identification number of the register."
        },
        "req7": {
          "type": "boolean",
          "title": "Disclose information about the appointment of members of the administrative, management, and supervisory bodies who held comparable positions in public administration within the last 2 years."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "appointments-from-public-administration": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "name": {
            "type": "string"
          },
          "position-before-appointment": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe the undertaking’s political influence exertion and lobbying activities in relation to its material impacts, risks, and opportunities. Specifically, detail any political contributions, attributed responsibilities, engagement with transparency registers, and former public official appointments."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/political-contributions",
              "label": "Table: Political Contributions"
            },
            {
              "type": "Control",
              "scope": "#/properties/lobbying-activities",
              "label": "Table: Lobbying Activities"
            },
            {
              "type": "Control",
              "scope": "#/properties/transparency-register-information",
              "label": "Table: Transparency Register Information"
            },
            {
              "type": "Control",
              "scope": "#/properties/appointments-from-public-administration",
              "label": "Table: Appointments from Public Administration"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide transparency on the undertaking’s activities and commitments related to exerting its political influence with political contributions and lobbying activities. This includes disclosing the monetary and non-monetary support, main lobbying topics, and registration with transparency bodies, as well as oversight accountability and recent employment of public figures."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='g1-5';

UPDATE "public"."category" SET
  "form_schema"='{
  "type": "object",
  "properties": {
    "schema": {
  "type": "object",
  "properties": {
    "requirements": {
      "type": "object",
      "properties": {
        "req1": {
          "type": "boolean",
          "title": "Document the average time taken to pay invoices from the start of contractual/statutory term in number of days."
        },
        "req2": {
          "type": "boolean",
          "title": "Provide a detailed description of standard payment terms in days by main categories of suppliers."
        },
        "req3": {
          "type": "boolean",
          "title": "Include the percentage of payments aligned with the standard terms."
        },
        "req4": {
          "type": "boolean",
          "title": "Report the number of legal proceedings currently outstanding regarding late payments."
        },
        "req5": {
          "type": "boolean",
          "title": "Include complementary context necessary to understand the payment practices fully."
        },
        "req6": {
          "type": "boolean",
          "title": "If representative sampling was used, the methodology should be briefly described."
        }
      }
    },
    "description": {
      "type": "string"
    },
    "legal-proceedings-overview": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "case-id": {
            "type": "string"
          },
          "supplier-name": {
            "type": "string"
          },
          "proceeding-start-date": {
            "type": "date"
          },
          "related-invoice-id": {
            "type": "string"
          },
          "status": {
            "type": "string"
          }
        }
      }
    }
  }
},
  "uischema": {
  "type": "VerticalLayout",
  "elements": [
    {
      "type": "HorizontalLayout",
      "elements": [
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Describe your company’s payment practices, focusing on payment terms, average payment time, compliance with standard terms, legal proceedings regarding late payments, and any other necessary contextual information. If representative sampling was used for calculation, describe the sampling methodology."
            },
            {
              "type": "Control",
              "scope": "#/properties/description",
              "options": {
                "multi": true
              }
            },
            {
              "type": "Control",
              "scope": "#/properties/payment-practices-summary",
              "label": "Table: Payment Practices Summary"
            },
            {
              "type": "Control",
              "scope": "#/properties/invoice-payment-details",
              "label": "Table: Invoice Payment Details"
            },
            {
              "type": "Control",
              "scope": "#/properties/legal-proceedings-overview",
              "label": "Table: Legal Proceedings Overview"
            }
          ]
        },
        {
          "type": "VerticalLayout",
          "elements": [
            {
              "type": "Label",
              "text": "Objective",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "The objective of this Disclosure Requirement is to provide insights on the contractual payment terms and performance with regard to payment, especially in terms of impact on SMEs, and specifically concerning late payments to SMEs."
            },
            {
              "type": "Label",
              "text": "Requirements",
              "options": {
                "styles": {
                  "undefined": {
                    "undefined": "heading"
                  }
                }
              }
            },
            {
              "type": "Label",
              "text": "Make sure you address the following areas:"
            },
            {
              "type": "Control",
              "scope": "#/properties/requirements"
            }
          ]
        }
      ]
    }
  ]
} } }'
WHERE "slug"='g1-6';
