# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1/document_processor_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/documentai/v1/document_pb'
require 'google/cloud/documentai/v1/document_io_pb'
require 'google/cloud/documentai/v1/document_schema_pb'
require 'google/cloud/documentai/v1/evaluation_pb'
require 'google/cloud/documentai/v1/operation_metadata_pb'
require 'google/cloud/documentai/v1/processor_pb'
require 'google/cloud/documentai/v1/processor_type_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n;google/cloud/documentai/v1/document_processor_service.proto\x12\x1agoogle.cloud.documentai.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a)google/cloud/documentai/v1/document.proto\x1a,google/cloud/documentai/v1/document_io.proto\x1a\x30google/cloud/documentai/v1/document_schema.proto\x1a+google/cloud/documentai/v1/evaluation.proto\x1a\x33google/cloud/documentai/v1/operation_metadata.proto\x1a*google/cloud/documentai/v1/processor.proto\x1a/google/cloud/documentai/v1/processor_type.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\x81\x05\n\x0eProcessOptions\x12\x65\n\x18individual_page_selector\x18\x05 \x01(\x0b\x32\x41.google.cloud.documentai.v1.ProcessOptions.IndividualPageSelectorH\x00\x12\x14\n\nfrom_start\x18\x06 \x01(\x05H\x00\x12\x12\n\x08\x66rom_end\x18\x07 \x01(\x05H\x00\x12\x39\n\nocr_config\x18\x01 \x01(\x0b\x32%.google.cloud.documentai.v1.OcrConfig\x12S\n\rlayout_config\x18\t \x01(\x0b\x32\x37.google.cloud.documentai.v1.ProcessOptions.LayoutConfigB\x03\xe0\x41\x01\x12H\n\x0fschema_override\x18\x08 \x01(\x0b\x32*.google.cloud.documentai.v1.DocumentSchemaB\x03\xe0\x41\x01\x1a\xc7\x01\n\x0cLayoutConfig\x12\x64\n\x0f\x63hunking_config\x18\x01 \x01(\x0b\x32\x46.google.cloud.documentai.v1.ProcessOptions.LayoutConfig.ChunkingConfigB\x03\xe0\x41\x01\x1aQ\n\x0e\x43hunkingConfig\x12\x17\n\nchunk_size\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12&\n\x19include_ancestor_headings\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x1a,\n\x16IndividualPageSelector\x12\x12\n\x05pages\x18\x01 \x03(\x05\x42\x03\xe0\x41\x01\x42\x0c\n\npage_range\"\x82\x04\n\x0eProcessRequest\x12?\n\x0finline_document\x18\x04 \x01(\x0b\x32$.google.cloud.documentai.v1.DocumentH\x00\x12?\n\x0craw_document\x18\x05 \x01(\x0b\x32\'.google.cloud.documentai.v1.RawDocumentH\x00\x12?\n\x0cgcs_document\x18\x08 \x01(\x0b\x32\'.google.cloud.documentai.v1.GcsDocumentH\x00\x12\x17\n\x04name\x18\x01 \x01(\tB\t\xe0\x41\x02\xfa\x41\x03\n\x01*\x12\x19\n\x11skip_human_review\x18\x03 \x01(\x08\x12.\n\nfield_mask\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x43\n\x0fprocess_options\x18\x07 \x01(\x0b\x32*.google.cloud.documentai.v1.ProcessOptions\x12K\n\x06labels\x18\n \x03(\x0b\x32\x36.google.cloud.documentai.v1.ProcessRequest.LabelsEntryB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\x08\n\x06source\"\xee\x01\n\x11HumanReviewStatus\x12\x42\n\x05state\x18\x01 \x01(\x0e\x32\x33.google.cloud.documentai.v1.HumanReviewStatus.State\x12\x15\n\rstate_message\x18\x02 \x01(\t\x12\x1e\n\x16human_review_operation\x18\x03 \x01(\t\"^\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07SKIPPED\x10\x01\x12\x15\n\x11VALIDATION_PASSED\x10\x02\x12\x0f\n\x0bIN_PROGRESS\x10\x03\x12\t\n\x05\x45RROR\x10\x04\"\x95\x01\n\x0fProcessResponse\x12\x36\n\x08\x64ocument\x18\x01 \x01(\x0b\x32$.google.cloud.documentai.v1.Document\x12J\n\x13human_review_status\x18\x03 \x01(\x0b\x32-.google.cloud.documentai.v1.HumanReviewStatus\"\xb1\x03\n\x13\x42\x61tchProcessRequest\x12\x17\n\x04name\x18\x01 \x01(\tB\t\xe0\x41\x02\xfa\x41\x03\n\x01*\x12N\n\x0finput_documents\x18\x05 \x01(\x0b\x32\x35.google.cloud.documentai.v1.BatchDocumentsInputConfig\x12P\n\x16\x64ocument_output_config\x18\x06 \x01(\x0b\x32\x30.google.cloud.documentai.v1.DocumentOutputConfig\x12\x19\n\x11skip_human_review\x18\x04 \x01(\x08\x12\x43\n\x0fprocess_options\x18\x07 \x01(\x0b\x32*.google.cloud.documentai.v1.ProcessOptions\x12P\n\x06labels\x18\t \x03(\x0b\x32;.google.cloud.documentai.v1.BatchProcessRequest.LabelsEntryB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x16\n\x14\x42\x61tchProcessResponse\"\xff\x04\n\x14\x42\x61tchProcessMetadata\x12\x45\n\x05state\x18\x01 \x01(\x0e\x32\x36.google.cloud.documentai.v1.BatchProcessMetadata.State\x12\x15\n\rstate_message\x18\x02 \x01(\t\x12/\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12m\n\x1bindividual_process_statuses\x18\x05 \x03(\x0b\x32H.google.cloud.documentai.v1.BatchProcessMetadata.IndividualProcessStatus\x1a\xc3\x01\n\x17IndividualProcessStatus\x12\x18\n\x10input_gcs_source\x18\x01 \x01(\t\x12\"\n\x06status\x18\x02 \x01(\x0b\x32\x12.google.rpc.Status\x12\x1e\n\x16output_gcs_destination\x18\x03 \x01(\t\x12J\n\x13human_review_status\x18\x05 \x01(\x0b\x32-.google.cloud.documentai.v1.HumanReviewStatus\"r\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07WAITING\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x12\x0e\n\nCANCELLING\x10\x04\x12\r\n\tCANCELLED\x10\x05\x12\n\n\x06\x46\x41ILED\x10\x06\"]\n\x1a\x46\x65tchProcessorTypesRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'documentai.googleapis.com/ProcessorType\"a\n\x1b\x46\x65tchProcessorTypesResponse\x12\x42\n\x0fprocessor_types\x18\x01 \x03(\x0b\x32).google.cloud.documentai.v1.ProcessorType\"\x83\x01\n\x19ListProcessorTypesRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'documentai.googleapis.com/ProcessorType\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"y\n\x1aListProcessorTypesResponse\x12\x42\n\x0fprocessor_types\x18\x01 \x03(\x0b\x32).google.cloud.documentai.v1.ProcessorType\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"{\n\x15ListProcessorsRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#documentai.googleapis.com/Processor\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"l\n\x16ListProcessorsResponse\x12\x39\n\nprocessors\x18\x01 \x03(\x0b\x32%.google.cloud.documentai.v1.Processor\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"X\n\x17GetProcessorTypeRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'documentai.googleapis.com/ProcessorType\"P\n\x13GetProcessorRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#documentai.googleapis.com/Processor\"^\n\x1aGetProcessorVersionRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*documentai.googleapis.com/ProcessorVersion\"\x89\x01\n\x1cListProcessorVersionsRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*documentai.googleapis.com/ProcessorVersion\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x82\x01\n\x1dListProcessorVersionsResponse\x12H\n\x12processor_versions\x18\x01 \x03(\x0b\x32,.google.cloud.documentai.v1.ProcessorVersion\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"a\n\x1d\x44\x65leteProcessorVersionRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*documentai.googleapis.com/ProcessorVersion\"n\n\x1e\x44\x65leteProcessorVersionMetadata\x12L\n\x0f\x63ommon_metadata\x18\x01 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\"a\n\x1d\x44\x65ployProcessorVersionRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*documentai.googleapis.com/ProcessorVersion\" \n\x1e\x44\x65ployProcessorVersionResponse\"n\n\x1e\x44\x65ployProcessorVersionMetadata\x12L\n\x0f\x63ommon_metadata\x18\x01 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\"c\n\x1fUndeployProcessorVersionRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*documentai.googleapis.com/ProcessorVersion\"\"\n UndeployProcessorVersionResponse\"p\n UndeployProcessorVersionMetadata\x12L\n\x0f\x63ommon_metadata\x18\x01 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\"\x94\x01\n\x16\x43reateProcessorRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#documentai.googleapis.com/Processor\x12=\n\tprocessor\x18\x02 \x01(\x0b\x32%.google.cloud.documentai.v1.ProcessorB\x03\xe0\x41\x02\"S\n\x16\x44\x65leteProcessorRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#documentai.googleapis.com/Processor\"g\n\x17\x44\x65leteProcessorMetadata\x12L\n\x0f\x63ommon_metadata\x18\x05 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\"S\n\x16\x45nableProcessorRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#documentai.googleapis.com/Processor\"\x19\n\x17\x45nableProcessorResponse\"g\n\x17\x45nableProcessorMetadata\x12L\n\x0f\x63ommon_metadata\x18\x05 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\"T\n\x17\x44isableProcessorRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#documentai.googleapis.com/Processor\"\x1a\n\x18\x44isableProcessorResponse\"h\n\x18\x44isableProcessorMetadata\x12L\n\x0f\x63ommon_metadata\x18\x05 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\"\xba\x01\n!SetDefaultProcessorVersionRequest\x12>\n\tprocessor\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#documentai.googleapis.com/Processor\x12U\n\x19\x64\x65\x66\x61ult_processor_version\x18\x02 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*documentai.googleapis.com/ProcessorVersion\"$\n\"SetDefaultProcessorVersionResponse\"r\n\"SetDefaultProcessorVersionMetadata\x12L\n\x0f\x63ommon_metadata\x18\x01 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\"\xa4\t\n\x1cTrainProcessorVersionRequest\x12\x86\x01\n\"custom_document_extraction_options\x18\x05 \x01(\x0b\x32X.google.cloud.documentai.v1.TrainProcessorVersionRequest.CustomDocumentExtractionOptionsH\x00\x12\x80\x01\n\x1f\x66oundation_model_tuning_options\x18\x0c \x01(\x0b\x32U.google.cloud.documentai.v1.TrainProcessorVersionRequest.FoundationModelTuningOptionsH\x00\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#documentai.googleapis.com/Processor\x12L\n\x11processor_version\x18\x02 \x01(\x0b\x32,.google.cloud.documentai.v1.ProcessorVersionB\x03\xe0\x41\x02\x12H\n\x0f\x64ocument_schema\x18\n \x01(\x0b\x32*.google.cloud.documentai.v1.DocumentSchemaB\x03\xe0\x41\x01\x12[\n\ninput_data\x18\x04 \x01(\x0b\x32\x42.google.cloud.documentai.v1.TrainProcessorVersionRequest.InputDataB\x03\xe0\x41\x01\x12#\n\x16\x62\x61se_processor_version\x18\x08 \x01(\tB\x03\xe0\x41\x01\x1a\xad\x01\n\tInputData\x12Q\n\x12training_documents\x18\x03 \x01(\x0b\x32\x35.google.cloud.documentai.v1.BatchDocumentsInputConfig\x12M\n\x0etest_documents\x18\x04 \x01(\x0b\x32\x35.google.cloud.documentai.v1.BatchDocumentsInputConfig\x1a\xfc\x01\n\x1f\x43ustomDocumentExtractionOptions\x12\x80\x01\n\x0ftraining_method\x18\x03 \x01(\x0e\x32g.google.cloud.documentai.v1.TrainProcessorVersionRequest.CustomDocumentExtractionOptions.TrainingMethod\"V\n\x0eTrainingMethod\x12\x1f\n\x1bTRAINING_METHOD_UNSPECIFIED\x10\x00\x12\x0f\n\x0bMODEL_BASED\x10\x01\x12\x12\n\x0eTEMPLATE_BASED\x10\x02\x1a_\n\x1c\x46oundationModelTuningOptions\x12\x18\n\x0btrain_steps\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12%\n\x18learning_rate_multiplier\x18\x03 \x01(\x02\x42\x03\xe0\x41\x01\x42\x11\n\x0fprocessor_flags\":\n\x1dTrainProcessorVersionResponse\x12\x19\n\x11processor_version\x18\x01 \x01(\t\"\xf7\x03\n\x1dTrainProcessorVersionMetadata\x12L\n\x0f\x63ommon_metadata\x18\x01 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\x12p\n\x1btraining_dataset_validation\x18\x02 \x01(\x0b\x32K.google.cloud.documentai.v1.TrainProcessorVersionMetadata.DatasetValidation\x12l\n\x17test_dataset_validation\x18\x03 \x01(\x0b\x32K.google.cloud.documentai.v1.TrainProcessorVersionMetadata.DatasetValidation\x1a\xa7\x01\n\x11\x44\x61tasetValidation\x12\x1c\n\x14\x64ocument_error_count\x18\x03 \x01(\x05\x12\x1b\n\x13\x64\x61taset_error_count\x18\x04 \x01(\x05\x12+\n\x0f\x64ocument_errors\x18\x01 \x03(\x0b\x32\x12.google.rpc.Status\x12*\n\x0e\x64\x61taset_errors\x18\x02 \x03(\x0b\x32\x12.google.rpc.Status\"\x8e\x03\n\x15ReviewDocumentRequest\x12?\n\x0finline_document\x18\x04 \x01(\x0b\x32$.google.cloud.documentai.v1.DocumentH\x00\x12P\n\x13human_review_config\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+documentai.googleapis.com/HumanReviewConfig\x12 \n\x18\x65nable_schema_validation\x18\x03 \x01(\x08\x12L\n\x08priority\x18\x05 \x01(\x0e\x32:.google.cloud.documentai.v1.ReviewDocumentRequest.Priority\x12\x43\n\x0f\x64ocument_schema\x18\x06 \x01(\x0b\x32*.google.cloud.documentai.v1.DocumentSchema\"#\n\x08Priority\x12\x0b\n\x07\x44\x45\x46\x41ULT\x10\x00\x12\n\n\x06URGENT\x10\x01\x42\x08\n\x06source\"\xd1\x01\n\x16ReviewDocumentResponse\x12\x17\n\x0fgcs_destination\x18\x01 \x01(\t\x12G\n\x05state\x18\x02 \x01(\x0e\x32\x38.google.cloud.documentai.v1.ReviewDocumentResponse.State\x12\x18\n\x10rejection_reason\x18\x03 \x01(\t\";\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08REJECTED\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\"\x84\x01\n\x1fReviewDocumentOperationMetadata\x12L\n\x0f\x63ommon_metadata\x18\x05 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\x12\x13\n\x0bquestion_id\x18\x06 \x01(\t\"\xca\x01\n\x1f\x45valuateProcessorVersionRequest\x12M\n\x11processor_version\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*documentai.googleapis.com/ProcessorVersion\x12X\n\x14\x65valuation_documents\x18\x03 \x01(\x0b\x32\x35.google.cloud.documentai.v1.BatchDocumentsInputConfigB\x03\xe0\x41\x01\"p\n EvaluateProcessorVersionMetadata\x12L\n\x0f\x63ommon_metadata\x18\x01 \x01(\x0b\x32\x33.google.cloud.documentai.v1.CommonOperationMetadata\"6\n EvaluateProcessorVersionResponse\x12\x12\n\nevaluation\x18\x02 \x01(\t\"R\n\x14GetEvaluationRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$documentai.googleapis.com/Evaluation\"\x83\x01\n\x16ListEvaluationsRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*documentai.googleapis.com/ProcessorVersion\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"o\n\x17ListEvaluationsResponse\x12;\n\x0b\x65valuations\x18\x01 \x03(\x0b\x32&.google.cloud.documentai.v1.Evaluation\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\x9c*\n\x18\x44ocumentProcessorService\x12\x87\x02\n\x0fProcessDocument\x12*.google.cloud.documentai.v1.ProcessRequest\x1a+.google.cloud.documentai.v1.ProcessResponse\"\x9a\x01\xda\x41\x04name\x82\xd3\xe4\x93\x02\x8c\x01\"6/v1/{name=projects/*/locations/*/processors/*}:process:\x01*ZO\"J/v1/{name=projects/*/locations/*/processors/*/processorVersions/*}:process:\x01*\x12\xbd\x02\n\x15\x42\x61tchProcessDocuments\x12/.google.cloud.documentai.v1.BatchProcessRequest\x1a\x1d.google.longrunning.Operation\"\xd3\x01\xca\x41,\n\x14\x42\x61tchProcessResponse\x12\x14\x42\x61tchProcessMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x96\x01\";/v1/{name=projects/*/locations/*/processors/*}:batchProcess:\x01*ZT\"O/v1/{name=projects/*/locations/*/processors/*/processorVersions/*}:batchProcess:\x01*\x12\xd0\x01\n\x13\x46\x65tchProcessorTypes\x12\x36.google.cloud.documentai.v1.FetchProcessorTypesRequest\x1a\x37.google.cloud.documentai.v1.FetchProcessorTypesResponse\"H\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x39\x12\x37/v1/{parent=projects/*/locations/*}:fetchProcessorTypes\x12\xc8\x01\n\x12ListProcessorTypes\x12\x35.google.cloud.documentai.v1.ListProcessorTypesRequest\x1a\x36.google.cloud.documentai.v1.ListProcessorTypesResponse\"C\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{parent=projects/*/locations/*}/processorTypes\x12\xb5\x01\n\x10GetProcessorType\x12\x33.google.cloud.documentai.v1.GetProcessorTypeRequest\x1a).google.cloud.documentai.v1.ProcessorType\"A\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{name=projects/*/locations/*/processorTypes/*}\x12\xb8\x01\n\x0eListProcessors\x12\x31.google.cloud.documentai.v1.ListProcessorsRequest\x1a\x32.google.cloud.documentai.v1.ListProcessorsResponse\"?\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x30\x12./v1/{parent=projects/*/locations/*}/processors\x12\xa5\x01\n\x0cGetProcessor\x12/.google.cloud.documentai.v1.GetProcessorRequest\x1a%.google.cloud.documentai.v1.Processor\"=\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30\x12./v1/{name=projects/*/locations/*/processors/*}\x12\xa2\x02\n\x15TrainProcessorVersion\x12\x38.google.cloud.documentai.v1.TrainProcessorVersionRequest\x1a\x1d.google.longrunning.Operation\"\xaf\x01\xca\x41>\n\x1dTrainProcessorVersionResponse\x12\x1dTrainProcessorVersionMetadata\xda\x41\x18parent,processor_version\x82\xd3\xe4\x93\x02M\"H/v1/{parent=projects/*/locations/*/processors/*}/processorVersions:train:\x01*\x12\xce\x01\n\x13GetProcessorVersion\x12\x36.google.cloud.documentai.v1.GetProcessorVersionRequest\x1a,.google.cloud.documentai.v1.ProcessorVersion\"Q\xda\x41\x04name\x82\xd3\xe4\x93\x02\x44\x12\x42/v1/{name=projects/*/locations/*/processors/*/processorVersions/*}\x12\xe1\x01\n\x15ListProcessorVersions\x12\x38.google.cloud.documentai.v1.ListProcessorVersionsRequest\x1a\x39.google.cloud.documentai.v1.ListProcessorVersionsResponse\"S\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x44\x12\x42/v1/{parent=projects/*/locations/*/processors/*}/processorVersions\x12\x80\x02\n\x16\x44\x65leteProcessorVersion\x12\x39.google.cloud.documentai.v1.DeleteProcessorVersionRequest\x1a\x1d.google.longrunning.Operation\"\x8b\x01\xca\x41\x37\n\x15google.protobuf.Empty\x12\x1e\x44\x65leteProcessorVersionMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x44*B/v1/{name=projects/*/locations/*/processors/*/processorVersions/*}\x12\x93\x02\n\x16\x44\x65ployProcessorVersion\x12\x39.google.cloud.documentai.v1.DeployProcessorVersionRequest\x1a\x1d.google.longrunning.Operation\"\x9e\x01\xca\x41@\n\x1e\x44\x65ployProcessorVersionResponse\x12\x1e\x44\x65ployProcessorVersionMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02N\"I/v1/{name=projects/*/locations/*/processors/*/processorVersions/*}:deploy:\x01*\x12\x9d\x02\n\x18UndeployProcessorVersion\x12;.google.cloud.documentai.v1.UndeployProcessorVersionRequest\x1a\x1d.google.longrunning.Operation\"\xa4\x01\xca\x41\x44\n UndeployProcessorVersionResponse\x12 UndeployProcessorVersionMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02P\"K/v1/{name=projects/*/locations/*/processors/*/processorVersions/*}:undeploy:\x01*\x12\xc2\x01\n\x0f\x43reateProcessor\x12\x32.google.cloud.documentai.v1.CreateProcessorRequest\x1a%.google.cloud.documentai.v1.Processor\"T\xda\x41\x10parent,processor\x82\xd3\xe4\x93\x02;\"./v1/{parent=projects/*/locations/*}/processors:\tprocessor\x12\xd6\x01\n\x0f\x44\x65leteProcessor\x12\x32.google.cloud.documentai.v1.DeleteProcessorRequest\x1a\x1d.google.longrunning.Operation\"p\xca\x41\x30\n\x15google.protobuf.Empty\x12\x17\x44\x65leteProcessorMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30*./v1/{name=projects/*/locations/*/processors/*}\x12\xdb\x01\n\x0f\x45nableProcessor\x12\x32.google.cloud.documentai.v1.EnableProcessorRequest\x1a\x1d.google.longrunning.Operation\"u\xca\x41\x32\n\x17\x45nableProcessorResponse\x12\x17\x45nableProcessorMetadata\x82\xd3\xe4\x93\x02:\"5/v1/{name=projects/*/locations/*/processors/*}:enable:\x01*\x12\xe0\x01\n\x10\x44isableProcessor\x12\x33.google.cloud.documentai.v1.DisableProcessorRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\x34\n\x18\x44isableProcessorResponse\x12\x18\x44isableProcessorMetadata\x82\xd3\xe4\x93\x02;\"6/v1/{name=projects/*/locations/*/processors/*}:disable:\x01*\x12\xa1\x02\n\x1aSetDefaultProcessorVersion\x12=.google.cloud.documentai.v1.SetDefaultProcessorVersionRequest\x1a\x1d.google.longrunning.Operation\"\xa4\x01\xca\x41H\n\"SetDefaultProcessorVersionResponse\x12\"SetDefaultProcessorVersionMetadata\x82\xd3\xe4\x93\x02S\"N/v1/{processor=projects/*/locations/*/processors/*}:setDefaultProcessorVersion:\x01*\x12\xa0\x02\n\x0eReviewDocument\x12\x31.google.cloud.documentai.v1.ReviewDocumentRequest\x1a\x1d.google.longrunning.Operation\"\xbb\x01\xca\x41\x39\n\x16ReviewDocumentResponse\x12\x1fReviewDocumentOperationMetadata\xda\x41\x13human_review_config\x82\xd3\xe4\x93\x02\x63\"^/v1/{human_review_config=projects/*/locations/*/processors/*/humanReviewConfig}:reviewDocument:\x01*\x12\xc7\x02\n\x18\x45valuateProcessorVersion\x12;.google.cloud.documentai.v1.EvaluateProcessorVersionRequest\x1a\x1d.google.longrunning.Operation\"\xce\x01\xca\x41\x44\n EvaluateProcessorVersionResponse\x12 EvaluateProcessorVersionMetadata\xda\x41\x11processor_version\x82\xd3\xe4\x93\x02m\"h/v1/{processor_version=projects/*/locations/*/processors/*/processorVersions/*}:evaluateProcessorVersion:\x01*\x12\xca\x01\n\rGetEvaluation\x12\x30.google.cloud.documentai.v1.GetEvaluationRequest\x1a&.google.cloud.documentai.v1.Evaluation\"_\xda\x41\x04name\x82\xd3\xe4\x93\x02R\x12P/v1/{name=projects/*/locations/*/processors/*/processorVersions/*/evaluations/*}\x12\xdd\x01\n\x0fListEvaluations\x12\x32.google.cloud.documentai.v1.ListEvaluationsRequest\x1a\x33.google.cloud.documentai.v1.ListEvaluationsResponse\"a\xda\x41\x06parent\x82\xd3\xe4\x93\x02R\x12P/v1/{parent=projects/*/locations/*/processors/*/processorVersions/*}/evaluations\x1aM\xca\x41\x19\x64ocumentai.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xaa\x03\n\x1e\x63om.google.cloud.documentai.v1B\x1a\x44ocumentAiProcessorServiceP\x01Z>cloud.google.com/go/documentai/apiv1/documentaipb;documentaipb\xaa\x02\x1aGoogle.Cloud.DocumentAI.V1\xca\x02\x1aGoogle\\Cloud\\DocumentAI\\V1\xea\x02\x1dGoogle::Cloud::DocumentAI::V1\xea\x41\x7f\n+documentai.googleapis.com/HumanReviewConfig\x12Pprojects/{project}/locations/{location}/processors/{processor}/humanReviewConfig\xea\x41M\n\"documentai.googleapis.com/Location\x12\'projects/{project}/locations/{location}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.documentai.v1.OcrConfig", "google/cloud/documentai/v1/document_io.proto"],
    ["google.cloud.documentai.v1.DocumentSchema", "google/cloud/documentai/v1/document_schema.proto"],
    ["google.cloud.documentai.v1.Document", "google/cloud/documentai/v1/document.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.cloud.documentai.v1.ProcessorType", "google/cloud/documentai/v1/processor_type.proto"],
    ["google.cloud.documentai.v1.Processor", "google/cloud/documentai/v1/processor.proto"],
    ["google.cloud.documentai.v1.CommonOperationMetadata", "google/cloud/documentai/v1/operation_metadata.proto"],
    ["google.cloud.documentai.v1.Evaluation", "google/cloud/documentai/v1/evaluation.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module DocumentAI
      module V1
        ProcessOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessOptions").msgclass
        ProcessOptions::LayoutConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessOptions.LayoutConfig").msgclass
        ProcessOptions::LayoutConfig::ChunkingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessOptions.LayoutConfig.ChunkingConfig").msgclass
        ProcessOptions::IndividualPageSelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessOptions.IndividualPageSelector").msgclass
        ProcessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessRequest").msgclass
        HumanReviewStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.HumanReviewStatus").msgclass
        HumanReviewStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.HumanReviewStatus.State").enummodule
        ProcessResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessResponse").msgclass
        BatchProcessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessRequest").msgclass
        BatchProcessResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessResponse").msgclass
        BatchProcessMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessMetadata").msgclass
        BatchProcessMetadata::IndividualProcessStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessMetadata.IndividualProcessStatus").msgclass
        BatchProcessMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessMetadata.State").enummodule
        FetchProcessorTypesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.FetchProcessorTypesRequest").msgclass
        FetchProcessorTypesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.FetchProcessorTypesResponse").msgclass
        ListProcessorTypesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ListProcessorTypesRequest").msgclass
        ListProcessorTypesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ListProcessorTypesResponse").msgclass
        ListProcessorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ListProcessorsRequest").msgclass
        ListProcessorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ListProcessorsResponse").msgclass
        GetProcessorTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.GetProcessorTypeRequest").msgclass
        GetProcessorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.GetProcessorRequest").msgclass
        GetProcessorVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.GetProcessorVersionRequest").msgclass
        ListProcessorVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ListProcessorVersionsRequest").msgclass
        ListProcessorVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ListProcessorVersionsResponse").msgclass
        DeleteProcessorVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DeleteProcessorVersionRequest").msgclass
        DeleteProcessorVersionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DeleteProcessorVersionMetadata").msgclass
        DeployProcessorVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DeployProcessorVersionRequest").msgclass
        DeployProcessorVersionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DeployProcessorVersionResponse").msgclass
        DeployProcessorVersionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DeployProcessorVersionMetadata").msgclass
        UndeployProcessorVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.UndeployProcessorVersionRequest").msgclass
        UndeployProcessorVersionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.UndeployProcessorVersionResponse").msgclass
        UndeployProcessorVersionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.UndeployProcessorVersionMetadata").msgclass
        CreateProcessorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.CreateProcessorRequest").msgclass
        DeleteProcessorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DeleteProcessorRequest").msgclass
        DeleteProcessorMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DeleteProcessorMetadata").msgclass
        EnableProcessorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.EnableProcessorRequest").msgclass
        EnableProcessorResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.EnableProcessorResponse").msgclass
        EnableProcessorMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.EnableProcessorMetadata").msgclass
        DisableProcessorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DisableProcessorRequest").msgclass
        DisableProcessorResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DisableProcessorResponse").msgclass
        DisableProcessorMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.DisableProcessorMetadata").msgclass
        SetDefaultProcessorVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.SetDefaultProcessorVersionRequest").msgclass
        SetDefaultProcessorVersionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.SetDefaultProcessorVersionResponse").msgclass
        SetDefaultProcessorVersionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.SetDefaultProcessorVersionMetadata").msgclass
        TrainProcessorVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.TrainProcessorVersionRequest").msgclass
        TrainProcessorVersionRequest::InputData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.TrainProcessorVersionRequest.InputData").msgclass
        TrainProcessorVersionRequest::CustomDocumentExtractionOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.TrainProcessorVersionRequest.CustomDocumentExtractionOptions").msgclass
        TrainProcessorVersionRequest::CustomDocumentExtractionOptions::TrainingMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.TrainProcessorVersionRequest.CustomDocumentExtractionOptions.TrainingMethod").enummodule
        TrainProcessorVersionRequest::FoundationModelTuningOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.TrainProcessorVersionRequest.FoundationModelTuningOptions").msgclass
        TrainProcessorVersionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.TrainProcessorVersionResponse").msgclass
        TrainProcessorVersionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.TrainProcessorVersionMetadata").msgclass
        TrainProcessorVersionMetadata::DatasetValidation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.TrainProcessorVersionMetadata.DatasetValidation").msgclass
        ReviewDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ReviewDocumentRequest").msgclass
        ReviewDocumentRequest::Priority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ReviewDocumentRequest.Priority").enummodule
        ReviewDocumentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ReviewDocumentResponse").msgclass
        ReviewDocumentResponse::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ReviewDocumentResponse.State").enummodule
        ReviewDocumentOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ReviewDocumentOperationMetadata").msgclass
        EvaluateProcessorVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.EvaluateProcessorVersionRequest").msgclass
        EvaluateProcessorVersionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.EvaluateProcessorVersionMetadata").msgclass
        EvaluateProcessorVersionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.EvaluateProcessorVersionResponse").msgclass
        GetEvaluationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.GetEvaluationRequest").msgclass
        ListEvaluationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ListEvaluationsRequest").msgclass
        ListEvaluationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ListEvaluationsResponse").msgclass
      end
    end
  end
end
