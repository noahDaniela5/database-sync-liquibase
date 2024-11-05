-- liquibase formatted sql

-- changeset system:1730826422250-1
ALTER TABLE "users" ADD CONSTRAINT "unique_email_brand_country_region_key" UNIQUE ("email", "brand", "country", "region");

-- changeset system:1730826422250-2
ALTER TABLE "configurator_stock_push" ADD CONSTRAINT "configurator_stock_push_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-3
ALTER TABLE "deal_export_configurations" ADD CONSTRAINT "deal_export_configuration_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-4
ALTER TABLE "dealers" ADD CONSTRAINT "dealers_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-5
ALTER TABLE "deals" ADD CONSTRAINT "deals_pkey" PRIMARY KEY ("uuid");

-- changeset system:1730826422250-6
ALTER TABLE "disclaimers" ADD CONSTRAINT "disclaimers_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-7
ALTER TABLE "expression_of_interests" ADD CONSTRAINT "expression_of_interests_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-8
ALTER TABLE "extra_feature_categories" ADD CONSTRAINT "extra_feature_categories_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-9
ALTER TABLE "extra_feature_category_translations" ADD CONSTRAINT "extra_feature_category_translations_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-10
ALTER TABLE "extra_feature_media_files" ADD CONSTRAINT "extra_feature_media_files_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-11
ALTER TABLE "extra_feature_prices" ADD CONSTRAINT "extra_feature_prices_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-12
ALTER TABLE "extra_feature_translations" ADD CONSTRAINT "extra_feature_translations_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-13
ALTER TABLE "extra_features" ADD CONSTRAINT "extra_features_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-14
ALTER TABLE "failed_messages" ADD CONSTRAINT "failed_messages_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-15
ALTER TABLE "feature_categories" ADD CONSTRAINT "feature_categories_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-16
ALTER TABLE "feature_category_translations" ADD CONSTRAINT "feature_category_translations_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-17
ALTER TABLE "feature_media_files" ADD CONSTRAINT "feature_media_files_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-18
ALTER TABLE "feature_rule_translations" ADD CONSTRAINT "feature_rule_translations_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-19
ALTER TABLE "feature_rules" ADD CONSTRAINT "feature_rules_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-20
ALTER TABLE "feature_translations" ADD CONSTRAINT "feature_translations_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-21
ALTER TABLE "features" ADD CONSTRAINT "features_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-22
ALTER TABLE "finance_applications" ADD CONSTRAINT "finance_applications_pkey" PRIMARY KEY ("code");

-- changeset system:1730826422250-23
ALTER TABLE "finance_packages" ADD CONSTRAINT "finance_packages_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-24
ALTER TABLE "finance_products" ADD CONSTRAINT "finance_products_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-25
ALTER TABLE "finance_rate_cards" ADD CONSTRAINT "finance_rate_cards_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-26
ALTER TABLE "import_configurations" ADD CONSTRAINT "import_configurations_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-27
ALTER TABLE "insurances" ADD CONSTRAINT "insurances_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-28
ALTER TABLE "isc_sessions" ADD CONSTRAINT "isc_sessions_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-29
ALTER TABLE "locations" ADD CONSTRAINT "locations_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-30
ALTER TABLE "media_files" ADD CONSTRAINT "media_files_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-31
ALTER TABLE "migration_versions_data" ADD CONSTRAINT "migration_versions_data_pkey" PRIMARY KEY ("version");

-- changeset system:1730826422250-32
ALTER TABLE "migration_versions" ADD CONSTRAINT "migration_versions_pkey" PRIMARY KEY ("version");

-- changeset system:1730826422250-33
ALTER TABLE "miscellaneous_options" ADD CONSTRAINT "miscellaneous_options_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-34
ALTER TABLE "oauth2_access_token" ADD CONSTRAINT "oauth2_access_token_pkey" PRIMARY KEY ("identifier");

-- changeset system:1730826422250-35
ALTER TABLE "oauth2_authorization_code" ADD CONSTRAINT "oauth2_authorization_code_pkey" PRIMARY KEY ("identifier");

-- changeset system:1730826422250-36
ALTER TABLE "oauth2_client" ADD CONSTRAINT "oauth2_client_pkey" PRIMARY KEY ("identifier");

-- changeset system:1730826422250-37
ALTER TABLE "oauth2_refresh_token" ADD CONSTRAINT "oauth2_refresh_token_pkey" PRIMARY KEY ("identifier");

-- changeset system:1730826422250-38
ALTER TABLE "payment_tokens" ADD CONSTRAINT "payment_tokens_pkey" PRIMARY KEY ("hash");

-- changeset system:1730826422250-39
ALTER TABLE "payments" ADD CONSTRAINT "payments_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-40
ALTER TABLE "pim_finance_products" ADD CONSTRAINT "pim_finance_products_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-41
ALTER TABLE "pim_stock_cars" ADD CONSTRAINT "pim_stock_cars_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-42
ALTER TABLE "pricing_finance_packages" ADD CONSTRAINT "pricing_finance_packages_pkey" PRIMARY KEY ("uuid");

-- changeset system:1730826422250-43
ALTER TABLE "pricing_finance_products" ADD CONSTRAINT "pricing_finance_products_pkey" PRIMARY KEY ("uuid");

-- changeset system:1730826422250-44
ALTER TABLE "quotes" ADD CONSTRAINT "quotes_pkey" PRIMARY KEY ("uuid", "language");

-- changeset system:1730826422250-45
ALTER TABLE "reset_password_tokens" ADD CONSTRAINT "reset_password_tokens_pkey" PRIMARY KEY ("uuid");

-- changeset system:1730826422250-46
ALTER TABLE "reverse_finance_products" ADD CONSTRAINT "reverse_finance_products_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-47
ALTER TABLE "se_sessions" ADD CONSTRAINT "se_sessions_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-48
ALTER TABLE "sessions" ADD CONSTRAINT "sessions_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-49
ALTER TABLE "specification_groups" ADD CONSTRAINT "specification_groups_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-50
ALTER TABLE "stock_cars" ADD CONSTRAINT "stock_cars_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-51
ALTER TABLE "translations" ADD CONSTRAINT "translations_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-52
ALTER TABLE "users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-53
ALTER TABLE "vehicle_features" ADD CONSTRAINT "vehicle_features_pkey" PRIMARY KEY ("id");

-- changeset system:1730826422250-54
ALTER TABLE "vehicle_specifications" ADD CONSTRAINT "vehicle_specifications_pkey" PRIMARY KEY ("uuid");

-- changeset system:1730826422250-55
ALTER TABLE "locations" ADD CONSTRAINT "fk_17e64aba727aca70" FOREIGN KEY ("parent_id") REFERENCES "locations" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;

-- changeset system:1730826422250-56
ALTER TABLE "feature_categories" ADD CONSTRAINT "fk_2444abc08c89eb3" FOREIGN KEY ("parent_feature_category_id") REFERENCES "feature_categories" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;

-- changeset system:1730826422250-57
ALTER TABLE "vehicle_features" ADD CONSTRAINT "fk_62d2d38760e4b879" FOREIGN KEY ("feature_id") REFERENCES "features" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;

-- changeset system:1730826422250-58
ALTER TABLE "feature_translations" ADD CONSTRAINT "fk_7ed26c1460e4b879" FOREIGN KEY ("feature_id") REFERENCES "features" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;

-- changeset system:1730826422250-59
ALTER TABLE "feature_rule_translations" ADD CONSTRAINT "fk_8cca531445599858" FOREIGN KEY ("feature_rule_id") REFERENCES "feature_rules" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;

-- changeset system:1730826422250-60
ALTER TABLE "extra_feature_prices" ADD CONSTRAINT "fk_921d34f94c221f4" FOREIGN KEY ("extra_feature_id") REFERENCES "extra_features" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;

-- changeset system:1730826422250-61
DROP INDEX "byo_car_codes_idx";

-- changeset system:1730826422250-62
DROP INDEX "car_feature_prices_region_country_brand_index";

-- changeset system:1730826422250-63
DROP INDEX "cars_attributes_idx";

-- changeset system:1730826422250-64
DROP INDEX "cars_display_order_idx";

-- changeset system:1730826422250-65
DROP INDEX "configurator_stock_push_idx";

-- changeset system:1730826422250-66
DROP INDEX "dealers_idx";

-- changeset system:1730826422250-67
DROP INDEX "eoi_idx";

-- changeset system:1730826422250-68
DROP INDEX "extra_feature_category_translations_idx";

-- changeset system:1730826422250-69
DROP INDEX "extra_feature_media_files_idx";

-- changeset system:1730826422250-70
DROP INDEX "extra_feature_prices_idx";

-- changeset system:1730826422250-71
DROP INDEX "extra_feature_translations_idx";

-- changeset system:1730826422250-72
DROP INDEX "extra_features_idx";

-- changeset system:1730826422250-73
DROP INDEX "feature_categories_idx";

-- changeset system:1730826422250-74
DROP INDEX "feature_category_translations_idx";

-- changeset system:1730826422250-75
DROP INDEX "feature_media_files_idx";

-- changeset system:1730826422250-76
DROP INDEX "feature_rule_translations_idx";

-- changeset system:1730826422250-77
DROP INDEX "feature_rules_idx";

-- changeset system:1730826422250-78
DROP INDEX "feature_translations_idx";

-- changeset system:1730826422250-79
DROP INDEX "features_idx";

-- changeset system:1730826422250-80
DROP INDEX "finance_applications_idx";

-- changeset system:1730826422250-81
DROP INDEX "finance_packages_idx";

-- changeset system:1730826422250-82
DROP INDEX "finance_products_unique_idx";

-- changeset system:1730826422250-83
DROP INDEX "finance_rate_cards_idx";

-- changeset system:1730826422250-84
DROP INDEX "idx_17e64aba727aca70";

-- changeset system:1730826422250-85
DROP INDEX "idx_2444abc08c89eb3";

-- changeset system:1730826422250-86
DROP INDEX "idx_454d9673c7440455";

-- changeset system:1730826422250-87
DROP INDEX "idx_4dd90732b6a2dd68";

-- changeset system:1730826422250-88
DROP INDEX "idx_509fef5fc7440455";

-- changeset system:1730826422250-89
DROP INDEX "idx_50a705d760e4b879";

-- changeset system:1730826422250-90
DROP INDEX "idx_5c9fbfa354645a90";

-- changeset system:1730826422250-91
DROP INDEX "idx_62d2d38760e4b879";

-- changeset system:1730826422250-92
DROP INDEX "idx_7ed26c1460e4b879";

-- changeset system:1730826422250-93
DROP INDEX "idx_8cca531445599858";

-- changeset system:1730826422250-94
DROP INDEX "idx_921d34f94c221f4";

-- changeset system:1730826422250-95
DROP INDEX "idx_92744ceae57637e4";

-- changeset system:1730826422250-96
DROP INDEX "idx_9a609d13a76ed395";

-- changeset system:1730826422250-97
DROP INDEX "idx_a4376fdb94c221f4";

-- changeset system:1730826422250-98
DROP INDEX "idx_bfc0dc13ca5501d5";

-- changeset system:1730826422250-99
DROP INDEX "idx_c383880160e4b879";

-- changeset system:1730826422250-100
DROP INDEX "idx_d0f6aa94ca5501d5";

-- changeset system:1730826422250-101
DROP INDEX "idx_db3ad7174fee1ebe";

-- changeset system:1730826422250-102
DROP INDEX "idx_e8bfdcbe16ba31db";

-- changeset system:1730826422250-103
DROP INDEX "idx_e8bfdcbee3bd61ce";

-- changeset system:1730826422250-104
DROP INDEX "idx_e8bfdcbefb7336f0";

-- changeset system:1730826422250-105
DROP INDEX "idx_f11c84404fee1ebe";

-- changeset system:1730826422250-106
DROP INDEX "idx_fa6b18921f14396f";

-- changeset system:1730826422250-107
DROP INDEX "import_configurations_idx";

-- changeset system:1730826422250-108
DROP INDEX "insurance_idx";

-- changeset system:1730826422250-109
DROP INDEX "media_files_idx";

-- changeset system:1730826422250-110
DROP INDEX "miscellaneous_options_idx";

-- changeset system:1730826422250-111
DROP INDEX "owner_id_idx";

-- changeset system:1730826422250-112
DROP INDEX "parent_extra_feature_categories_idx";

-- changeset system:1730826422250-113
DROP INDEX "pim_finance_products_idx";

-- changeset system:1730826422250-114
DROP INDEX "pim_stock_cars_idx";

-- changeset system:1730826422250-115
DROP INDEX "pricing_finance_packages_idx";

-- changeset system:1730826422250-116
DROP INDEX "pricing_finance_products_unique_idx";

-- changeset system:1730826422250-117
DROP INDEX "reverse_finance_products_idx";

-- changeset system:1730826422250-118
DROP INDEX "search_indx";

-- changeset system:1730826422250-119
DROP INDEX "specification_groups_idx";

-- changeset system:1730826422250-120
DROP INDEX "stock_cars_idx";

-- changeset system:1730826422250-121
DROP INDEX "translations_idx";

-- changeset system:1730826422250-122
DROP INDEX "uniq_ef39849b43980f2c";

-- changeset system:1730826422250-123
DROP INDEX "uniq_fb804019e1fd4933";

-- changeset system:1730826422250-124
DROP INDEX "user_id_idx";

-- changeset system:1730826422250-125
DROP INDEX "vehicle_features_idx";

-- changeset system:1730826422250-126
DROP INDEX "vehicle_specifications_idx";

