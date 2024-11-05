-- liquibase formatted sql

-- changeset system:1730826508594-67
ALTER TABLE "locations" DROP CONSTRAINT "fk_17e64aba727aca70";

-- changeset system:1730826508594-68
ALTER TABLE "feature_categories" DROP CONSTRAINT "fk_2444abc08c89eb3";

-- changeset system:1730826508594-69
ALTER TABLE "vehicle_features" DROP CONSTRAINT "fk_62d2d38760e4b879";

-- changeset system:1730826508594-70
ALTER TABLE "feature_translations" DROP CONSTRAINT "fk_7ed26c1460e4b879";

-- changeset system:1730826508594-71
ALTER TABLE "feature_rule_translations" DROP CONSTRAINT "fk_8cca531445599858";

-- changeset system:1730826508594-72
ALTER TABLE "extra_feature_prices" DROP CONSTRAINT "fk_921d34f94c221f4";

-- changeset system:1730826508594-1
CREATE INDEX "byo_car_codes_idx" ON "pim_stock_cars"("byo_car_code");

-- changeset system:1730826508594-2
CREATE UNIQUE INDEX "pim_stock_cars_idx" ON "pim_stock_cars"("vin", "brand", "country", "region");

-- changeset system:1730826508594-3
CREATE INDEX "car_feature_prices_region_country_brand_index" ON "car_feature_prices"("region", "country", "brand");

-- changeset system:1730826508594-4
CREATE INDEX "idx_50a705d760e4b879" ON "car_feature_prices"("feature_id");

-- changeset system:1730826508594-5
CREATE INDEX "cars_attributes_idx" ON "cars"("attributes");

-- changeset system:1730826508594-6
CREATE INDEX "cars_display_order_idx" ON "cars"("display_order");

-- changeset system:1730826508594-7
CREATE UNIQUE INDEX "configurator_stock_push_idx" ON "configurator_stock_push"("external_id");

-- changeset system:1730826508594-8
CREATE UNIQUE INDEX "dealers_idx" ON "dealers"("external_id", "language", "brand", "country", "region");

-- changeset system:1730826508594-9
CREATE UNIQUE INDEX "eoi_idx" ON "expression_of_interests"("code", "language", "brand", "country");

-- changeset system:1730826508594-10
CREATE UNIQUE INDEX "extra_feature_category_translations_idx" ON "extra_feature_category_translations"("language", "extra_feature_category_id", "brand", "country", "region");

-- changeset system:1730826508594-11
CREATE INDEX "idx_db3ad7174fee1ebe" ON "extra_feature_category_translations"("extra_feature_category_id");

-- changeset system:1730826508594-12
CREATE UNIQUE INDEX "extra_feature_media_files_idx" ON "extra_feature_media_files"("media_type", "content_type", "feature_code", "brand", "country", "region");

-- changeset system:1730826508594-13
CREATE UNIQUE INDEX "extra_feature_prices_idx" ON "extra_feature_prices"("currency", "extra_feature_id", "brand", "country", "region");

-- changeset system:1730826508594-14
CREATE INDEX "idx_921d34f94c221f4" ON "extra_feature_prices"("extra_feature_id");

-- changeset system:1730826508594-15
CREATE UNIQUE INDEX "extra_feature_translations_idx" ON "extra_feature_translations"("language", "extra_feature_id", "brand", "country", "region");

-- changeset system:1730826508594-16
CREATE INDEX "idx_a4376fdb94c221f4" ON "extra_feature_translations"("extra_feature_id");

-- changeset system:1730826508594-17
CREATE UNIQUE INDEX "extra_features_idx" ON "extra_features"("code", "brand", "country", "region");

-- changeset system:1730826508594-18
CREATE INDEX "idx_f11c84404fee1ebe" ON "extra_features"("extra_feature_category_id");

-- changeset system:1730826508594-19
CREATE UNIQUE INDEX "feature_categories_idx" ON "feature_categories"("code", "brand", "country", "region");

-- changeset system:1730826508594-20
CREATE INDEX "idx_2444abc08c89eb3" ON "feature_categories"("parent_feature_category_id");

-- changeset system:1730826508594-21
CREATE UNIQUE INDEX "feature_category_translations_idx" ON "feature_category_translations"("language", "feature_category_id", "brand", "country", "region");

-- changeset system:1730826508594-22
CREATE INDEX "idx_d0f6aa94ca5501d5" ON "feature_category_translations"("feature_category_id");

-- changeset system:1730826508594-23
CREATE UNIQUE INDEX "feature_media_files_idx" ON "feature_media_files"("media_type", "feature_code", "car_code", "brand", "country", "region");

-- changeset system:1730826508594-24
CREATE UNIQUE INDEX "feature_rule_translations_idx" ON "feature_rule_translations"("language", "feature_rule_id", "brand", "country", "region");

-- changeset system:1730826508594-25
CREATE INDEX "idx_8cca531445599858" ON "feature_rule_translations"("feature_rule_id");

-- changeset system:1730826508594-26
CREATE UNIQUE INDEX "feature_rules_idx" ON "feature_rules"("code", "brand", "country", "region");

-- changeset system:1730826508594-27
CREATE UNIQUE INDEX "feature_translations_idx" ON "feature_translations"("language", "feature_id", "brand", "country", "region");

-- changeset system:1730826508594-28
CREATE INDEX "idx_7ed26c1460e4b879" ON "feature_translations"("feature_id");

-- changeset system:1730826508594-29
CREATE UNIQUE INDEX "features_idx" ON "features"("code", "brand", "country", "region");

-- changeset system:1730826508594-30
CREATE INDEX "idx_bfc0dc13ca5501d5" ON "features"("feature_category_id");

-- changeset system:1730826508594-31
CREATE UNIQUE INDEX "finance_applications_idx" ON "finance_applications"("code", "submission_id", "brand", "country", "region");

-- changeset system:1730826508594-32
CREATE UNIQUE INDEX "uniq_fb804019e1fd4933" ON "finance_applications"("submission_id");

-- changeset system:1730826508594-33
CREATE UNIQUE INDEX "finance_packages_idx" ON "finance_packages"("code", "finance_product_code", "brand", "country", "region", "locale");

-- changeset system:1730826508594-34
CREATE UNIQUE INDEX "finance_products_unique_idx" ON "finance_products"("code", "brand", "country", "region", "locale");

-- changeset system:1730826508594-35
CREATE UNIQUE INDEX "finance_rate_cards_idx" ON "finance_rate_cards"("identifier", "finance_product_code", "brand", "country", "region", "locale");

-- changeset system:1730826508594-36
CREATE INDEX "idx_17e64aba727aca70" ON "locations"("parent_id");

-- changeset system:1730826508594-37
CREATE INDEX "idx_454d9673c7440455" ON "oauth2_access_token"("client");

-- changeset system:1730826508594-38
CREATE INDEX "idx_4dd90732b6a2dd68" ON "oauth2_refresh_token"("access_token");

-- changeset system:1730826508594-39
CREATE INDEX "idx_509fef5fc7440455" ON "oauth2_authorization_code"("client");

-- changeset system:1730826508594-40
CREATE INDEX "idx_5c9fbfa354645a90" ON "car_trim_level_configurations"("car_trim_id");

-- changeset system:1730826508594-41
CREATE INDEX "idx_62d2d38760e4b879" ON "vehicle_features"("feature_id");

-- changeset system:1730826508594-42
CREATE UNIQUE INDEX "vehicle_features_idx" ON "vehicle_features"("code", "brand", "country", "region");

-- changeset system:1730826508594-43
CREATE INDEX "idx_92744ceae57637e4" ON "cars_optional_features"("vehicle_feature_id");

-- changeset system:1730826508594-44
CREATE INDEX "idx_9a609d13a76ed395" ON "sessions"("user_id");

-- changeset system:1730826508594-45
CREATE INDEX "idx_c383880160e4b879" ON "cars_features"("feature_id");

-- changeset system:1730826508594-46
CREATE INDEX "idx_e8bfdcbe16ba31db" ON "failed_messages"("delivered_at");

-- changeset system:1730826508594-47
CREATE INDEX "idx_e8bfdcbee3bd61ce" ON "failed_messages"("available_at");

-- changeset system:1730826508594-48
CREATE INDEX "idx_e8bfdcbefb7336f0" ON "failed_messages"("queue_name");

-- changeset system:1730826508594-49
CREATE INDEX "idx_fa6b18921f14396f" ON "extra_feature_categories"("parent_extra_feature_category_id");

-- changeset system:1730826508594-50
CREATE UNIQUE INDEX "parent_extra_feature_categories_idx" ON "extra_feature_categories"("code", "brand", "country", "region");

-- changeset system:1730826508594-51
CREATE UNIQUE INDEX "import_configurations_idx" ON "import_configurations"("brand", "country", "region", "source");

-- changeset system:1730826508594-52
CREATE UNIQUE INDEX "insurance_idx" ON "insurances"("identifier", "brand", "country", "region", "language", "estimation_policy", "vehicle_name");

-- changeset system:1730826508594-53
CREATE UNIQUE INDEX "media_files_idx" ON "media_files"("media_type", "referenced_code", "referenced_entity_type", "referenced_type", "brand", "country", "region");

-- changeset system:1730826508594-54
CREATE UNIQUE INDEX "miscellaneous_options_idx" ON "miscellaneous_options"("code", "language", "brand", "country", "region");

-- changeset system:1730826508594-55
CREATE INDEX "owner_id_idx" ON "se_sessions"("owner_id");

-- changeset system:1730826508594-56
CREATE UNIQUE INDEX "pim_finance_products_idx" ON "pim_finance_products"("product_identifier", "brand", "country", "region");

-- changeset system:1730826508594-57
CREATE UNIQUE INDEX "pricing_finance_packages_idx" ON "pricing_finance_packages"("code", "brand", "country", "region", "language");

-- changeset system:1730826508594-58
CREATE UNIQUE INDEX "pricing_finance_products_unique_idx" ON "pricing_finance_products"("code", "brand", "country", "region", "language");

-- changeset system:1730826508594-59
CREATE UNIQUE INDEX "reverse_finance_products_idx" ON "reverse_finance_products"("code", "brand", "country", "region", "language");

-- changeset system:1730826508594-60
CREATE INDEX "search_indx" ON "reset_password_tokens"("email", "expires_at", "region", "brand", "country");

-- changeset system:1730826508594-61
CREATE UNIQUE INDEX "specification_groups_idx" ON "specification_groups"("code", "language", "brand", "country", "region");

-- changeset system:1730826508594-62
CREATE UNIQUE INDEX "stock_cars_idx" ON "stock_cars"("brand", "country", "region", "order_number");

-- changeset system:1730826508594-63
CREATE UNIQUE INDEX "translations_idx" ON "translations"("code", "language", "brand", "country");

-- changeset system:1730826508594-64
CREATE UNIQUE INDEX "uniq_ef39849b43980f2c" ON "deals"("quote_uuid");

-- changeset system:1730826508594-65
CREATE INDEX "user_id_idx" ON "deals"("user_id");

-- changeset system:1730826508594-66
CREATE UNIQUE INDEX "vehicle_specifications_idx" ON "vehicle_specifications"("code", "language", "brand", "country", "region");

-- changeset system:1730826508594-73
ALTER TABLE "users" DROP CONSTRAINT "unique_email_brand_country_region_key";

-- changeset system:1730826508594-74
ALTER TABLE "configurator_stock_push" DROP CONSTRAINT "configurator_stock_push_pkey";

-- changeset system:1730826508594-75
ALTER TABLE "deal_export_configurations" DROP CONSTRAINT "deal_export_configuration_pkey";

-- changeset system:1730826508594-76
ALTER TABLE "dealers" DROP CONSTRAINT "dealers_pkey";

-- changeset system:1730826508594-77
ALTER TABLE "deals" DROP CONSTRAINT "deals_pkey";

-- changeset system:1730826508594-78
ALTER TABLE "disclaimers" DROP CONSTRAINT "disclaimers_pkey";

-- changeset system:1730826508594-79
ALTER TABLE "expression_of_interests" DROP CONSTRAINT "expression_of_interests_pkey";

-- changeset system:1730826508594-80
ALTER TABLE "extra_feature_categories" DROP CONSTRAINT "extra_feature_categories_pkey";

-- changeset system:1730826508594-81
ALTER TABLE "extra_feature_category_translations" DROP CONSTRAINT "extra_feature_category_translations_pkey";

-- changeset system:1730826508594-82
ALTER TABLE "extra_feature_media_files" DROP CONSTRAINT "extra_feature_media_files_pkey";

-- changeset system:1730826508594-83
ALTER TABLE "extra_feature_prices" DROP CONSTRAINT "extra_feature_prices_pkey";

-- changeset system:1730826508594-84
ALTER TABLE "extra_feature_translations" DROP CONSTRAINT "extra_feature_translations_pkey";

-- changeset system:1730826508594-85
ALTER TABLE "extra_features" DROP CONSTRAINT "extra_features_pkey";

-- changeset system:1730826508594-86
ALTER TABLE "failed_messages" DROP CONSTRAINT "failed_messages_pkey";

-- changeset system:1730826508594-87
ALTER TABLE "feature_categories" DROP CONSTRAINT "feature_categories_pkey";

-- changeset system:1730826508594-88
ALTER TABLE "feature_category_translations" DROP CONSTRAINT "feature_category_translations_pkey";

-- changeset system:1730826508594-89
ALTER TABLE "feature_media_files" DROP CONSTRAINT "feature_media_files_pkey";

-- changeset system:1730826508594-90
ALTER TABLE "feature_rule_translations" DROP CONSTRAINT "feature_rule_translations_pkey";

-- changeset system:1730826508594-91
ALTER TABLE "feature_rules" DROP CONSTRAINT "feature_rules_pkey";

-- changeset system:1730826508594-92
ALTER TABLE "feature_translations" DROP CONSTRAINT "feature_translations_pkey";

-- changeset system:1730826508594-93
ALTER TABLE "features" DROP CONSTRAINT "features_pkey";

-- changeset system:1730826508594-94
ALTER TABLE "finance_applications" DROP CONSTRAINT "finance_applications_pkey";

-- changeset system:1730826508594-95
ALTER TABLE "finance_packages" DROP CONSTRAINT "finance_packages_pkey";

-- changeset system:1730826508594-96
ALTER TABLE "finance_products" DROP CONSTRAINT "finance_products_pkey";

-- changeset system:1730826508594-97
ALTER TABLE "finance_rate_cards" DROP CONSTRAINT "finance_rate_cards_pkey";

-- changeset system:1730826508594-98
ALTER TABLE "import_configurations" DROP CONSTRAINT "import_configurations_pkey";

-- changeset system:1730826508594-99
ALTER TABLE "insurances" DROP CONSTRAINT "insurances_pkey";

-- changeset system:1730826508594-100
ALTER TABLE "isc_sessions" DROP CONSTRAINT "isc_sessions_pkey";

-- changeset system:1730826508594-101
ALTER TABLE "locations" DROP CONSTRAINT "locations_pkey";

-- changeset system:1730826508594-102
ALTER TABLE "media_files" DROP CONSTRAINT "media_files_pkey";

-- changeset system:1730826508594-103
ALTER TABLE "migration_versions_data" DROP CONSTRAINT "migration_versions_data_pkey";

-- changeset system:1730826508594-104
ALTER TABLE "migration_versions" DROP CONSTRAINT "migration_versions_pkey";

-- changeset system:1730826508594-105
ALTER TABLE "miscellaneous_options" DROP CONSTRAINT "miscellaneous_options_pkey";

-- changeset system:1730826508594-106
ALTER TABLE "oauth2_access_token" DROP CONSTRAINT "oauth2_access_token_pkey";

-- changeset system:1730826508594-107
ALTER TABLE "oauth2_authorization_code" DROP CONSTRAINT "oauth2_authorization_code_pkey";

-- changeset system:1730826508594-108
ALTER TABLE "oauth2_client" DROP CONSTRAINT "oauth2_client_pkey";

-- changeset system:1730826508594-109
ALTER TABLE "oauth2_refresh_token" DROP CONSTRAINT "oauth2_refresh_token_pkey";

-- changeset system:1730826508594-110
ALTER TABLE "payment_tokens" DROP CONSTRAINT "payment_tokens_pkey";

-- changeset system:1730826508594-111
ALTER TABLE "payments" DROP CONSTRAINT "payments_pkey";

-- changeset system:1730826508594-112
ALTER TABLE "pim_finance_products" DROP CONSTRAINT "pim_finance_products_pkey";

-- changeset system:1730826508594-113
ALTER TABLE "pim_stock_cars" DROP CONSTRAINT "pim_stock_cars_pkey";

-- changeset system:1730826508594-114
ALTER TABLE "pricing_finance_packages" DROP CONSTRAINT "pricing_finance_packages_pkey";

-- changeset system:1730826508594-115
ALTER TABLE "pricing_finance_products" DROP CONSTRAINT "pricing_finance_products_pkey";

-- changeset system:1730826508594-116
ALTER TABLE "quotes" DROP CONSTRAINT "quotes_pkey";

-- changeset system:1730826508594-117
ALTER TABLE "reset_password_tokens" DROP CONSTRAINT "reset_password_tokens_pkey";

-- changeset system:1730826508594-118
ALTER TABLE "reverse_finance_products" DROP CONSTRAINT "reverse_finance_products_pkey";

-- changeset system:1730826508594-119
ALTER TABLE "se_sessions" DROP CONSTRAINT "se_sessions_pkey";

-- changeset system:1730826508594-120
ALTER TABLE "sessions" DROP CONSTRAINT "sessions_pkey";

-- changeset system:1730826508594-121
ALTER TABLE "specification_groups" DROP CONSTRAINT "specification_groups_pkey";

-- changeset system:1730826508594-122
ALTER TABLE "stock_cars" DROP CONSTRAINT "stock_cars_pkey";

-- changeset system:1730826508594-123
ALTER TABLE "translations" DROP CONSTRAINT "translations_pkey";

-- changeset system:1730826508594-124
ALTER TABLE "users" DROP CONSTRAINT "users_pkey";

-- changeset system:1730826508594-125
ALTER TABLE "vehicle_features" DROP CONSTRAINT "vehicle_features_pkey";

-- changeset system:1730826508594-126
ALTER TABLE "vehicle_specifications" DROP CONSTRAINT "vehicle_specifications_pkey";

