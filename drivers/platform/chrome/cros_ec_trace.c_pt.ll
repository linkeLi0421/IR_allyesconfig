; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_trace.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cros_ec_request_start = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_cros_ec_request_done = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cros_ec_sensorhub_timestamp = type { %struct.trace_entry, i32, i32, i64, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_cros_ec_sensorhub_data = type { %struct.trace_entry, i32, i32, i64, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_cros_ec_sensorhub_filter = type { %struct.trace_entry, i64, i64, i64, i64, i64, i64, i64, [0 x i8] }
%struct.cros_ec_sensors_ts_filter_state = type { i64, i64, [64 x i64], [64 x i64], [64 x i64], i32, [64 x i64], i64, i64 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cros_ec_request_start = internal constant [22 x i8] c"cros_ec_request_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_request_start = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_request_start }, align 4
@__tracepoint_cros_ec_request_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cros_ec_request_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cros_ec_request_start, ptr null, ptr @__traceiter_cros_ec_request_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_request_start = internal constant ptr @__tracepoint_cros_ec_request_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_cros_ec_request_done = internal constant [21 x i8] c"cros_ec_request_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_request_done = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_request_done }, align 4
@__tracepoint_cros_ec_request_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cros_ec_request_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cros_ec_request_done, ptr null, ptr @__traceiter_cros_ec_request_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_request_done = internal constant ptr @__tracepoint_cros_ec_request_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_cros_ec_sensorhub_timestamp = internal constant [28 x i8] c"cros_ec_sensorhub_timestamp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_sensorhub_timestamp = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_sensorhub_timestamp }, align 4
@__tracepoint_cros_ec_sensorhub_timestamp = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cros_ec_sensorhub_timestamp, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cros_ec_sensorhub_timestamp, ptr null, ptr @__traceiter_cros_ec_sensorhub_timestamp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_sensorhub_timestamp = internal constant ptr @__tracepoint_cros_ec_sensorhub_timestamp, section "__tracepoints_ptrs", align 4
@__tpstrtab_cros_ec_sensorhub_data = internal constant [23 x i8] c"cros_ec_sensorhub_data\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_sensorhub_data = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_sensorhub_data }, align 4
@__tracepoint_cros_ec_sensorhub_data = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cros_ec_sensorhub_data, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cros_ec_sensorhub_data, ptr null, ptr @__traceiter_cros_ec_sensorhub_data, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_sensorhub_data = internal constant ptr @__tracepoint_cros_ec_sensorhub_data, section "__tracepoints_ptrs", align 4
@__tpstrtab_cros_ec_sensorhub_filter = internal constant [25 x i8] c"cros_ec_sensorhub_filter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cros_ec_sensorhub_filter = dso_local global %struct.static_call_key { ptr @__traceiter_cros_ec_sensorhub_filter }, align 4
@__tracepoint_cros_ec_sensorhub_filter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cros_ec_sensorhub_filter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cros_ec_sensorhub_filter, ptr null, ptr @__traceiter_cros_ec_sensorhub_filter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cros_ec_sensorhub_filter = internal constant ptr @__tracepoint_cros_ec_sensorhub_filter, section "__tracepoints_ptrs", align 4
@str__cros_ec__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cros_ec\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_cros_ec_request_start = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cros_ec_request_start = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_request_start, ptr @perf_trace_cros_ec_request_start, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_request_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_request_start, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_request_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_request_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_request_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cros_ec_request_start = internal global { [6451 x i8], [1613 x i8] } { [6451 x i8] c"\22version: %u, offset: %d, command: %s, outsize: %u, insize: %u\22, REC->version, REC->offset, __print_symbolic(REC->command, {0x0080, \22EC_CMD_ACPI_READ\22}, {0x0081, \22EC_CMD_ACPI_WRITE\22}, {0x0082, \22EC_CMD_ACPI_BURST_ENABLE\22}, {0x0083, \22EC_CMD_ACPI_BURST_DISABLE\22}, {0x0084, \22EC_CMD_ACPI_QUERY_EVENT\22}, {0x0000, \22EC_CMD_PROTO_VERSION\22}, {0x0001, \22EC_CMD_HELLO\22}, {0x0002, \22EC_CMD_GET_VERSION\22}, {0x0003, \22EC_CMD_READ_TEST\22}, {0x0004, \22EC_CMD_GET_BUILD_INFO\22}, {0x0005, \22EC_CMD_GET_CHIP_INFO\22}, {0x0006, \22EC_CMD_GET_BOARD_VERSION\22}, {0x0007, \22EC_CMD_READ_MEMMAP\22}, {0x0008, \22EC_CMD_GET_CMD_VERSIONS\22}, {0x0009, \22EC_CMD_GET_COMMS_STATUS\22}, {0x000A, \22EC_CMD_TEST_PROTOCOL\22}, {0x000B, \22EC_CMD_GET_PROTOCOL_INFO\22}, {0x000C, \22EC_CMD_GSV_PAUSE_IN_S5\22}, {0x000D, \22EC_CMD_GET_FEATURES\22}, {0x000E, \22EC_CMD_GET_SKU_ID\22}, {0x000F, \22EC_CMD_SET_SKU_ID\22}, {0x0010, \22EC_CMD_FLASH_INFO\22}, {0x0011, \22EC_CMD_FLASH_READ\22}, {0x0012, \22EC_CMD_FLASH_WRITE\22}, {0x0013, \22EC_CMD_FLASH_ERASE\22}, {0x0015, \22EC_CMD_FLASH_PROTECT\22}, {0x0016, \22EC_CMD_FLASH_REGION_INFO\22}, {0x0017, \22EC_CMD_VBNV_CONTEXT\22}, {0x0018, \22EC_CMD_FLASH_SPI_INFO\22}, {0x0019, \22EC_CMD_FLASH_SELECT\22}, {0x0020, \22EC_CMD_PWM_GET_FAN_TARGET_RPM\22}, {0x0021, \22EC_CMD_PWM_SET_FAN_TARGET_RPM\22}, {0x0022, \22EC_CMD_PWM_GET_KEYBOARD_BACKLIGHT\22}, {0x0023, \22EC_CMD_PWM_SET_KEYBOARD_BACKLIGHT\22}, {0x0024, \22EC_CMD_PWM_SET_FAN_DUTY\22}, {0x0025, \22EC_CMD_PWM_SET_DUTY\22}, {0x0026, \22EC_CMD_PWM_GET_DUTY\22}, {0x0028, \22EC_CMD_LIGHTBAR_CMD\22}, {0x0029, \22EC_CMD_LED_CONTROL\22}, {0x002A, \22EC_CMD_VBOOT_HASH\22}, {0x002B, \22EC_CMD_MOTION_SENSE_CMD\22}, {0x002C, \22EC_CMD_FORCE_LID_OPEN\22}, {0x002D, \22EC_CMD_CONFIG_POWER_BUTTON\22}, {0x0030, \22EC_CMD_USB_CHARGE_SET_MODE\22}, {0x0040, \22EC_CMD_PSTORE_INFO\22}, {0x0041, \22EC_CMD_PSTORE_READ\22}, {0x0042, \22EC_CMD_PSTORE_WRITE\22}, {0x0044, \22EC_CMD_RTC_GET_VALUE\22}, {0x0045, \22EC_CMD_RTC_GET_ALARM\22}, {0x0046, \22EC_CMD_RTC_SET_VALUE\22}, {0x0047, \22EC_CMD_RTC_SET_ALARM\22}, {0x0048, \22EC_CMD_PORT80_LAST_BOOT\22}, {0x0048, \22EC_CMD_PORT80_READ\22}, {0x0049, \22EC_CMD_VSTORE_INFO\22}, {0x004A, \22EC_CMD_VSTORE_READ\22}, {0x004B, \22EC_CMD_VSTORE_WRITE\22}, {0x0050, \22EC_CMD_THERMAL_SET_THRESHOLD\22}, {0x0051, \22EC_CMD_THERMAL_GET_THRESHOLD\22}, {0x0052, \22EC_CMD_THERMAL_AUTO_FAN_CTRL\22}, {0x0053, \22EC_CMD_TMP006_GET_CALIBRATION\22}, {0x0054, \22EC_CMD_TMP006_SET_CALIBRATION\22}, {0x0055, \22EC_CMD_TMP006_GET_RAW\22}, {0x0060, \22EC_CMD_MKBP_STATE\22}, {0x0061, \22EC_CMD_MKBP_INFO\22}, {0x0062, \22EC_CMD_MKBP_SIMULATE_KEY\22}, {0x0063, \22EC_CMD_GET_KEYBOARD_ID\22}, {0x0064, \22EC_CMD_MKBP_SET_CONFIG\22}, {0x0065, \22EC_CMD_MKBP_GET_CONFIG\22}, {0x0066, \22EC_CMD_KEYSCAN_SEQ_CTRL\22}, {0x0067, \22EC_CMD_GET_NEXT_EVENT\22}, {0x0068, \22EC_CMD_KEYBOARD_FACTORY_TEST\22}, {0x0070, \22EC_CMD_TEMP_SENSOR_GET_INFO\22}, {0x0087, \22EC_CMD_HOST_EVENT_GET_B\22}, {0x0088, \22EC_CMD_HOST_EVENT_GET_SMI_MASK\22}, {0x0089, \22EC_CMD_HOST_EVENT_GET_SCI_MASK\22}, {0x008D, \22EC_CMD_HOST_EVENT_GET_WAKE_MASK\22}, {0x008A, \22EC_CMD_HOST_EVENT_SET_SMI_MASK\22}, {0x008B, \22EC_CMD_HOST_EVENT_SET_SCI_MASK\22}, {0x008C, \22EC_CMD_HOST_EVENT_CLEAR\22}, {0x008E, \22EC_CMD_HOST_EVENT_SET_WAKE_MASK\22}, {0x008F, \22EC_CMD_HOST_EVENT_CLEAR_B\22}, {0x00A4, \22EC_CMD_HOST_EVENT\22}, {0x0090, \22EC_CMD_SWITCH_ENABLE_BKLIGHT\22}, {0x0091, \22EC_CMD_SWITCH_ENABLE_WIRELESS\22}, {0x0092, \22EC_CMD_GPIO_SET\22}, {0x0093, \22EC_CMD_GPIO_GET\22}, {0x0094, \22EC_CMD_I2C_READ\22}, {0x0095, \22EC_CMD_I2C_WRITE\22}, {0x0096, \22EC_CMD_CHARGE_CONTROL\22}, {0x0097, \22EC_CMD_CONSOLE_SNAPSHOT\22}, {0x0098, \22EC_CMD_CONSOLE_READ\22}, {0x0099, \22EC_CMD_BATTERY_CUT_OFF\22}, {0x009A, \22EC_CMD_USB_MUX\22}, {0x009B, \22EC_CMD_LDO_SET\22}, {0x009C, \22EC_CMD_LDO_GET\22}, {0x009D, \22EC_CMD_POWER_INFO\22}, {0x009E, \22EC_CMD_I2C_PASSTHRU\22}, {0x009F, \22EC_CMD_HANG_DETECT\22}, {0x00A0, \22EC_CMD_CHARGE_STATE\22}, {0x00A1, \22EC_CMD_CHARGE_CURRENT_LIMIT\22}, {0x00A2, \22EC_CMD_EXTERNAL_POWER_LIMIT\22}, {0x00A3, \22EC_CMD_OVERRIDE_DEDICATED_CHARGER_LIMIT\22}, {0x00A8, \22EC_CMD_HIBERNATION_DELAY\22}, {0x00A9, \22EC_CMD_HOST_SLEEP_EVENT\22}, {0x00AA, \22EC_CMD_DEVICE_EVENT\22}, {0x00B0, \22EC_CMD_SB_READ_WORD\22}, {0x00B1, \22EC_CMD_SB_WRITE_WORD\22}, {0x00B2, \22EC_CMD_SB_READ_BLOCK\22}, {0x00B3, \22EC_CMD_SB_WRITE_BLOCK\22}, {0x00B4, \22EC_CMD_BATTERY_VENDOR_PARAM\22}, {0x00B5, \22EC_CMD_SB_FW_UPDATE\22}, {0x00B6, \22EC_CMD_ENTERING_MODE\22}, {0x00B7, \22EC_CMD_I2C_PASSTHRU_PROTECT\22}, {0x00B8, \22EC_CMD_CEC_WRITE_MSG\22}, {0x00BA, \22EC_CMD_CEC_SET\22}, {0x00BB, \22EC_CMD_CEC_GET\22}, {0x00BC, \22EC_CMD_EC_CODEC\22}, {0x00BD, \22EC_CMD_EC_CODEC_DMIC\22}, {0x00BE, \22EC_CMD_EC_CODEC_I2S_RX\22}, {0x00BF, \22EC_CMD_EC_CODEC_WOV\22}, {0x00D2, \22EC_CMD_REBOOT_EC\22}, {0x00D3, \22EC_CMD_GET_PANIC_INFO\22}, {0x00D1, \22EC_CMD_REBOOT\22}, {0x00DB, \22EC_CMD_RESEND_RESPONSE\22}, {0x00DC, \22EC_CMD_VERSION0\22}, {0x0100, \22EC_CMD_PD_EXCHANGE_STATUS\22}, {0x0104, \22EC_CMD_PD_HOST_EVENT_STATUS\22}, {0x0101, \22EC_CMD_USB_PD_CONTROL\22}, {0x0102, \22EC_CMD_USB_PD_PORTS\22}, {0x0103, \22EC_CMD_USB_PD_POWER_INFO\22}, {0x0105, \22EC_CMD_CHARGE_PORT_COUNT\22}, {0x0110, \22EC_CMD_USB_PD_FW_UPDATE\22}, {0x0111, \22EC_CMD_USB_PD_RW_HASH_ENTRY\22}, {0x0112, \22EC_CMD_USB_PD_DEV_INFO\22}, {0x0113, \22EC_CMD_USB_PD_DISCOVERY\22}, {0x0114, \22EC_CMD_PD_CHARGE_PORT_OVERRIDE\22}, {0x0115, \22EC_CMD_PD_GET_LOG_ENTRY\22}, {0x0116, \22EC_CMD_USB_PD_GET_AMODE\22}, {0x0117, \22EC_CMD_USB_PD_SET_AMODE\22}, {0x0118, \22EC_CMD_PD_WRITE_LOG_ENTRY\22}, {0x0119, \22EC_CMD_PD_CONTROL\22}, {0x011A, \22EC_CMD_USB_PD_MUX_INFO\22}, {0x011B, \22EC_CMD_PD_CHIP_INFO\22}, {0x011C, \22EC_CMD_RWSIG_CHECK_STATUS\22}, {0x011D, \22EC_CMD_RWSIG_ACTION\22}, {0x011E, \22EC_CMD_EFS_VERIFY\22}, {0x011F, \22EC_CMD_GET_CROS_BOARD_INFO\22}, {0x0120, \22EC_CMD_SET_CROS_BOARD_INFO\22}, {0x0121, \22EC_CMD_GET_UPTIME_INFO\22}, {0x0122, \22EC_CMD_ADD_ENTROPY\22}, {0x0123, \22EC_CMD_ADC_READ\22}, {0x0124, \22EC_CMD_ROLLBACK_INFO\22}, {0x0125, \22EC_CMD_AP_RESET\22}, {0x012C, \22EC_CMD_REGULATOR_GET_INFO\22}, {0x012D, \22EC_CMD_REGULATOR_ENABLE\22}, {0x012E, \22EC_CMD_REGULATOR_IS_ENABLED\22}, {0x012F, \22EC_CMD_REGULATOR_SET_VOLTAGE\22}, {0x0130, \22EC_CMD_REGULATOR_GET_VOLTAGE\22}, {0x0300, \22EC_CMD_CR51_BASE\22}, {0x03FF, \22EC_CMD_CR51_LAST\22}, {0x0400, \22EC_CMD_FP_PASSTHRU\22}, {0x0402, \22EC_CMD_FP_MODE\22}, {0x0403, \22EC_CMD_FP_INFO\22}, {0x0404, \22EC_CMD_FP_FRAME\22}, {0x0405, \22EC_CMD_FP_TEMPLATE\22}, {0x0406, \22EC_CMD_FP_CONTEXT\22}, {0x0407, \22EC_CMD_FP_STATS\22}, {0x0408, \22EC_CMD_FP_SEED\22}, {0x0409, \22EC_CMD_FP_ENC_STATUS\22}, {0x0500, \22EC_CMD_TP_SELF_TEST\22}, {0x0501, \22EC_CMD_TP_FRAME_INFO\22}, {0x0502, \22EC_CMD_TP_FRAME_SNAPSHOT\22}, {0x0503, \22EC_CMD_TP_FRAME_GET\22}, {0x0600, \22EC_CMD_BATTERY_GET_STATIC\22}, {0x0601, \22EC_CMD_BATTERY_GET_DYNAMIC\22}, {0x0602, \22EC_CMD_CHARGER_CONTROL\22}, {0x3E00, \22EC_CMD_BOARD_SPECIFIC_BASE\22}, {0x3FFF, \22EC_CMD_BOARD_SPECIFIC_LAST\22}), REC->outsize, REC->insize\00", [1613 x i8] zeroinitializer }, align 32
@event_cros_ec_request_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_request_start, %union.anon.1 { ptr @__tracepoint_cros_ec_request_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_request_start }, ptr @print_fmt_cros_ec_request_start, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cros_ec_request_start = internal global ptr @event_cros_ec_request_start, section "_ftrace_events", align 4
@trace_event_fields_cros_ec_request_done = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.185, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.186, %union.anon.0 { %struct.anon { ptr @.str.187, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cros_ec_request_done = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_request_done, ptr @perf_trace_cros_ec_request_done, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_request_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_request_done, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_request_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_request_done = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_request_done, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cros_ec_request_done = internal global { [7520 x i8], [1856 x i8] } { [7520 x i8] c"\22version: %u, offset: %d, command: %s, outsize: %u, insize: %u, ec result: %s, retval: %u\22, REC->version, REC->offset, __print_symbolic(REC->command, {0x0080, \22EC_CMD_ACPI_READ\22}, {0x0081, \22EC_CMD_ACPI_WRITE\22}, {0x0082, \22EC_CMD_ACPI_BURST_ENABLE\22}, {0x0083, \22EC_CMD_ACPI_BURST_DISABLE\22}, {0x0084, \22EC_CMD_ACPI_QUERY_EVENT\22}, {0x0000, \22EC_CMD_PROTO_VERSION\22}, {0x0001, \22EC_CMD_HELLO\22}, {0x0002, \22EC_CMD_GET_VERSION\22}, {0x0003, \22EC_CMD_READ_TEST\22}, {0x0004, \22EC_CMD_GET_BUILD_INFO\22}, {0x0005, \22EC_CMD_GET_CHIP_INFO\22}, {0x0006, \22EC_CMD_GET_BOARD_VERSION\22}, {0x0007, \22EC_CMD_READ_MEMMAP\22}, {0x0008, \22EC_CMD_GET_CMD_VERSIONS\22}, {0x0009, \22EC_CMD_GET_COMMS_STATUS\22}, {0x000A, \22EC_CMD_TEST_PROTOCOL\22}, {0x000B, \22EC_CMD_GET_PROTOCOL_INFO\22}, {0x000C, \22EC_CMD_GSV_PAUSE_IN_S5\22}, {0x000D, \22EC_CMD_GET_FEATURES\22}, {0x000E, \22EC_CMD_GET_SKU_ID\22}, {0x000F, \22EC_CMD_SET_SKU_ID\22}, {0x0010, \22EC_CMD_FLASH_INFO\22}, {0x0011, \22EC_CMD_FLASH_READ\22}, {0x0012, \22EC_CMD_FLASH_WRITE\22}, {0x0013, \22EC_CMD_FLASH_ERASE\22}, {0x0015, \22EC_CMD_FLASH_PROTECT\22}, {0x0016, \22EC_CMD_FLASH_REGION_INFO\22}, {0x0017, \22EC_CMD_VBNV_CONTEXT\22}, {0x0018, \22EC_CMD_FLASH_SPI_INFO\22}, {0x0019, \22EC_CMD_FLASH_SELECT\22}, {0x0020, \22EC_CMD_PWM_GET_FAN_TARGET_RPM\22}, {0x0021, \22EC_CMD_PWM_SET_FAN_TARGET_RPM\22}, {0x0022, \22EC_CMD_PWM_GET_KEYBOARD_BACKLIGHT\22}, {0x0023, \22EC_CMD_PWM_SET_KEYBOARD_BACKLIGHT\22}, {0x0024, \22EC_CMD_PWM_SET_FAN_DUTY\22}, {0x0025, \22EC_CMD_PWM_SET_DUTY\22}, {0x0026, \22EC_CMD_PWM_GET_DUTY\22}, {0x0028, \22EC_CMD_LIGHTBAR_CMD\22}, {0x0029, \22EC_CMD_LED_CONTROL\22}, {0x002A, \22EC_CMD_VBOOT_HASH\22}, {0x002B, \22EC_CMD_MOTION_SENSE_CMD\22}, {0x002C, \22EC_CMD_FORCE_LID_OPEN\22}, {0x002D, \22EC_CMD_CONFIG_POWER_BUTTON\22}, {0x0030, \22EC_CMD_USB_CHARGE_SET_MODE\22}, {0x0040, \22EC_CMD_PSTORE_INFO\22}, {0x0041, \22EC_CMD_PSTORE_READ\22}, {0x0042, \22EC_CMD_PSTORE_WRITE\22}, {0x0044, \22EC_CMD_RTC_GET_VALUE\22}, {0x0045, \22EC_CMD_RTC_GET_ALARM\22}, {0x0046, \22EC_CMD_RTC_SET_VALUE\22}, {0x0047, \22EC_CMD_RTC_SET_ALARM\22}, {0x0048, \22EC_CMD_PORT80_LAST_BOOT\22}, {0x0048, \22EC_CMD_PORT80_READ\22}, {0x0049, \22EC_CMD_VSTORE_INFO\22}, {0x004A, \22EC_CMD_VSTORE_READ\22}, {0x004B, \22EC_CMD_VSTORE_WRITE\22}, {0x0050, \22EC_CMD_THERMAL_SET_THRESHOLD\22}, {0x0051, \22EC_CMD_THERMAL_GET_THRESHOLD\22}, {0x0052, \22EC_CMD_THERMAL_AUTO_FAN_CTRL\22}, {0x0053, \22EC_CMD_TMP006_GET_CALIBRATION\22}, {0x0054, \22EC_CMD_TMP006_SET_CALIBRATION\22}, {0x0055, \22EC_CMD_TMP006_GET_RAW\22}, {0x0060, \22EC_CMD_MKBP_STATE\22}, {0x0061, \22EC_CMD_MKBP_INFO\22}, {0x0062, \22EC_CMD_MKBP_SIMULATE_KEY\22}, {0x0063, \22EC_CMD_GET_KEYBOARD_ID\22}, {0x0064, \22EC_CMD_MKBP_SET_CONFIG\22}, {0x0065, \22EC_CMD_MKBP_GET_CONFIG\22}, {0x0066, \22EC_CMD_KEYSCAN_SEQ_CTRL\22}, {0x0067, \22EC_CMD_GET_NEXT_EVENT\22}, {0x0068, \22EC_CMD_KEYBOARD_FACTORY_TEST\22}, {0x0070, \22EC_CMD_TEMP_SENSOR_GET_INFO\22}, {0x0087, \22EC_CMD_HOST_EVENT_GET_B\22}, {0x0088, \22EC_CMD_HOST_EVENT_GET_SMI_MASK\22}, {0x0089, \22EC_CMD_HOST_EVENT_GET_SCI_MASK\22}, {0x008D, \22EC_CMD_HOST_EVENT_GET_WAKE_MASK\22}, {0x008A, \22EC_CMD_HOST_EVENT_SET_SMI_MASK\22}, {0x008B, \22EC_CMD_HOST_EVENT_SET_SCI_MASK\22}, {0x008C, \22EC_CMD_HOST_EVENT_CLEAR\22}, {0x008E, \22EC_CMD_HOST_EVENT_SET_WAKE_MASK\22}, {0x008F, \22EC_CMD_HOST_EVENT_CLEAR_B\22}, {0x00A4, \22EC_CMD_HOST_EVENT\22}, {0x0090, \22EC_CMD_SWITCH_ENABLE_BKLIGHT\22}, {0x0091, \22EC_CMD_SWITCH_ENABLE_WIRELESS\22}, {0x0092, \22EC_CMD_GPIO_SET\22}, {0x0093, \22EC_CMD_GPIO_GET\22}, {0x0094, \22EC_CMD_I2C_READ\22}, {0x0095, \22EC_CMD_I2C_WRITE\22}, {0x0096, \22EC_CMD_CHARGE_CONTROL\22}, {0x0097, \22EC_CMD_CONSOLE_SNAPSHOT\22}, {0x0098, \22EC_CMD_CONSOLE_READ\22}, {0x0099, \22EC_CMD_BATTERY_CUT_OFF\22}, {0x009A, \22EC_CMD_USB_MUX\22}, {0x009B, \22EC_CMD_LDO_SET\22}, {0x009C, \22EC_CMD_LDO_GET\22}, {0x009D, \22EC_CMD_POWER_INFO\22}, {0x009E, \22EC_CMD_I2C_PASSTHRU\22}, {0x009F, \22EC_CMD_HANG_DETECT\22}, {0x00A0, \22EC_CMD_CHARGE_STATE\22}, {0x00A1, \22EC_CMD_CHARGE_CURRENT_LIMIT\22}, {0x00A2, \22EC_CMD_EXTERNAL_POWER_LIMIT\22}, {0x00A3, \22EC_CMD_OVERRIDE_DEDICATED_CHARGER_LIMIT\22}, {0x00A8, \22EC_CMD_HIBERNATION_DELAY\22}, {0x00A9, \22EC_CMD_HOST_SLEEP_EVENT\22}, {0x00AA, \22EC_CMD_DEVICE_EVENT\22}, {0x00B0, \22EC_CMD_SB_READ_WORD\22}, {0x00B1, \22EC_CMD_SB_WRITE_WORD\22}, {0x00B2, \22EC_CMD_SB_READ_BLOCK\22}, {0x00B3, \22EC_CMD_SB_WRITE_BLOCK\22}, {0x00B4, \22EC_CMD_BATTERY_VENDOR_PARAM\22}, {0x00B5, \22EC_CMD_SB_FW_UPDATE\22}, {0x00B6, \22EC_CMD_ENTERING_MODE\22}, {0x00B7, \22EC_CMD_I2C_PASSTHRU_PROTECT\22}, {0x00B8, \22EC_CMD_CEC_WRITE_MSG\22}, {0x00BA, \22EC_CMD_CEC_SET\22}, {0x00BB, \22EC_CMD_CEC_GET\22}, {0x00BC, \22EC_CMD_EC_CODEC\22}, {0x00BD, \22EC_CMD_EC_CODEC_DMIC\22}, {0x00BE, \22EC_CMD_EC_CODEC_I2S_RX\22}, {0x00BF, \22EC_CMD_EC_CODEC_WOV\22}, {0x00D2, \22EC_CMD_REBOOT_EC\22}, {0x00D3, \22EC_CMD_GET_PANIC_INFO\22}, {0x00D1, \22EC_CMD_REBOOT\22}, {0x00DB, \22EC_CMD_RESEND_RESPONSE\22}, {0x00DC, \22EC_CMD_VERSION0\22}, {0x0100, \22EC_CMD_PD_EXCHANGE_STATUS\22}, {0x0104, \22EC_CMD_PD_HOST_EVENT_STATUS\22}, {0x0101, \22EC_CMD_USB_PD_CONTROL\22}, {0x0102, \22EC_CMD_USB_PD_PORTS\22}, {0x0103, \22EC_CMD_USB_PD_POWER_INFO\22}, {0x0105, \22EC_CMD_CHARGE_PORT_COUNT\22}, {0x0110, \22EC_CMD_USB_PD_FW_UPDATE\22}, {0x0111, \22EC_CMD_USB_PD_RW_HASH_ENTRY\22}, {0x0112, \22EC_CMD_USB_PD_DEV_INFO\22}, {0x0113, \22EC_CMD_USB_PD_DISCOVERY\22}, {0x0114, \22EC_CMD_PD_CHARGE_PORT_OVERRIDE\22}, {0x0115, \22EC_CMD_PD_GET_LOG_ENTRY\22}, {0x0116, \22EC_CMD_USB_PD_GET_AMODE\22}, {0x0117, \22EC_CMD_USB_PD_SET_AMODE\22}, {0x0118, \22EC_CMD_PD_WRITE_LOG_ENTRY\22}, {0x0119, \22EC_CMD_PD_CONTROL\22}, {0x011A, \22EC_CMD_USB_PD_MUX_INFO\22}, {0x011B, \22EC_CMD_PD_CHIP_INFO\22}, {0x011C, \22EC_CMD_RWSIG_CHECK_STATUS\22}, {0x011D, \22EC_CMD_RWSIG_ACTION\22}, {0x011E, \22EC_CMD_EFS_VERIFY\22}, {0x011F, \22EC_CMD_GET_CROS_BOARD_INFO\22}, {0x0120, \22EC_CMD_SET_CROS_BOARD_INFO\22}, {0x0121, \22EC_CMD_GET_UPTIME_INFO\22}, {0x0122, \22EC_CMD_ADD_ENTROPY\22}, {0x0123, \22EC_CMD_ADC_READ\22}, {0x0124, \22EC_CMD_ROLLBACK_INFO\22}, {0x0125, \22EC_CMD_AP_RESET\22}, {0x012C, \22EC_CMD_REGULATOR_GET_INFO\22}, {0x012D, \22EC_CMD_REGULATOR_ENABLE\22}, {0x012E, \22EC_CMD_REGULATOR_IS_ENABLED\22}, {0x012F, \22EC_CMD_REGULATOR_SET_VOLTAGE\22}, {0x0130, \22EC_CMD_REGULATOR_GET_VOLTAGE\22}, {0x0300, \22EC_CMD_CR51_BASE\22}, {0x03FF, \22EC_CMD_CR51_LAST\22}, {0x0400, \22EC_CMD_FP_PASSTHRU\22}, {0x0402, \22EC_CMD_FP_MODE\22}, {0x0403, \22EC_CMD_FP_INFO\22}, {0x0404, \22EC_CMD_FP_FRAME\22}, {0x0405, \22EC_CMD_FP_TEMPLATE\22}, {0x0406, \22EC_CMD_FP_CONTEXT\22}, {0x0407, \22EC_CMD_FP_STATS\22}, {0x0408, \22EC_CMD_FP_SEED\22}, {0x0409, \22EC_CMD_FP_ENC_STATUS\22}, {0x0500, \22EC_CMD_TP_SELF_TEST\22}, {0x0501, \22EC_CMD_TP_FRAME_INFO\22}, {0x0502, \22EC_CMD_TP_FRAME_SNAPSHOT\22}, {0x0503, \22EC_CMD_TP_FRAME_GET\22}, {0x0600, \22EC_CMD_BATTERY_GET_STATIC\22}, {0x0601, \22EC_CMD_BATTERY_GET_DYNAMIC\22}, {0x0602, \22EC_CMD_CHARGER_CONTROL\22}, {0x3E00, \22EC_CMD_BOARD_SPECIFIC_BASE\22}, {0x3FFF, \22EC_CMD_BOARD_SPECIFIC_LAST\22}), REC->outsize, REC->insize, __print_symbolic(REC->result, {EC_RES_SUCCESS, \22EC_RES_SUCCESS\22}, {EC_RES_INVALID_COMMAND, \22EC_RES_INVALID_COMMAND\22}, {EC_RES_ERROR, \22EC_RES_ERROR\22}, {EC_RES_INVALID_PARAM, \22EC_RES_INVALID_PARAM\22}, {EC_RES_ACCESS_DENIED, \22EC_RES_ACCESS_DENIED\22}, {EC_RES_INVALID_RESPONSE, \22EC_RES_INVALID_RESPONSE\22}, {EC_RES_INVALID_VERSION, \22EC_RES_INVALID_VERSION\22}, {EC_RES_INVALID_CHECKSUM, \22EC_RES_INVALID_CHECKSUM\22}, {EC_RES_IN_PROGRESS, \22EC_RES_IN_PROGRESS\22}, {EC_RES_UNAVAILABLE, \22EC_RES_UNAVAILABLE\22}, {EC_RES_TIMEOUT, \22EC_RES_TIMEOUT\22}, {EC_RES_OVERFLOW, \22EC_RES_OVERFLOW\22}, {EC_RES_INVALID_HEADER, \22EC_RES_INVALID_HEADER\22}, {EC_RES_REQUEST_TRUNCATED, \22EC_RES_REQUEST_TRUNCATED\22}, {EC_RES_RESPONSE_TOO_BIG, \22EC_RES_RESPONSE_TOO_BIG\22}, {EC_RES_BUS_ERROR, \22EC_RES_BUS_ERROR\22}, {EC_RES_BUSY, \22EC_RES_BUSY\22}, {EC_RES_INVALID_HEADER_VERSION, \22EC_RES_INVALID_HEADER_VERSION\22}, {EC_RES_INVALID_HEADER_CRC, \22EC_RES_INVALID_HEADER_CRC\22}, {EC_RES_INVALID_DATA_CRC, \22EC_RES_INVALID_DATA_CRC\22}, {EC_RES_DUP_UNAVAILABLE, \22EC_RES_DUP_UNAVAILABLE\22}), REC->retval\00", [1856 x i8] zeroinitializer }, align 32
@event_cros_ec_request_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_request_done, %union.anon.1 { ptr @__tracepoint_cros_ec_request_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_request_done }, ptr @print_fmt_cros_ec_request_done, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cros_ec_request_done = internal global ptr @event_cros_ec_request_done, section "_ftrace_events", align 4
@trace_event_fields_cros_ec_sensorhub_timestamp = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.211, %union.anon.0 { %struct.anon { ptr @.str.212, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.211, %union.anon.0 { %struct.anon { ptr @.str.213, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.215, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.216, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.217, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.218, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cros_ec_sensorhub_timestamp = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_sensorhub_timestamp, ptr @perf_trace_cros_ec_sensorhub_timestamp, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_sensorhub_timestamp, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_timestamp, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_timestamp, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_sensorhub_timestamp = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_sensorhub_timestamp, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cros_ec_sensorhub_timestamp = internal global { [223 x i8], [33 x i8] } { [223 x i8] c"\22ec_ts: %9u, ec_fifo_ts: %9u, fifo_ts: %12lld, curr_ts: %12lld, curr_time: %12lld, delta %12lld\22, REC->ec_sample_timestamp, REC->ec_fifo_timestamp, REC->fifo_timestamp, REC->current_timestamp, REC->current_time, REC->delta\00", [33 x i8] zeroinitializer }, align 32
@event_cros_ec_sensorhub_timestamp = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_sensorhub_timestamp, %union.anon.1 { ptr @__tracepoint_cros_ec_sensorhub_timestamp }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_sensorhub_timestamp }, ptr @print_fmt_cros_ec_sensorhub_timestamp, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cros_ec_sensorhub_timestamp = internal global ptr @event_cros_ec_sensorhub_timestamp, section "_ftrace_events", align 4
@trace_event_fields_cros_ec_sensorhub_data = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.211, %union.anon.0 { %struct.anon { ptr @.str.220, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.211, %union.anon.0 { %struct.anon { ptr @.str.213, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.215, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.216, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.217, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.218, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cros_ec_sensorhub_data = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_sensorhub_data, ptr @perf_trace_cros_ec_sensorhub_data, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_sensorhub_data, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_data, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_data, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_sensorhub_data = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_sensorhub_data, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cros_ec_sensorhub_data = internal global { [218 x i8], [38 x i8] } { [218 x i8] c"\22ec_num: %4u, ec_fifo_ts: %9u, fifo_ts: %12lld, curr_ts: %12lld, curr_time: %12lld, delta %12lld\22, REC->ec_sensor_num, REC->ec_fifo_timestamp, REC->fifo_timestamp, REC->current_timestamp, REC->current_time, REC->delta\00", [38 x i8] zeroinitializer }, align 32
@event_cros_ec_sensorhub_data = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_sensorhub_data, %union.anon.1 { ptr @__tracepoint_cros_ec_sensorhub_data }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_sensorhub_data }, ptr @print_fmt_cros_ec_sensorhub_data, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cros_ec_sensorhub_data = internal global ptr @event_cros_ec_sensorhub_data, section "_ftrace_events", align 4
@trace_event_fields_cros_ec_sensorhub_filter = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.222, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.223, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.224, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.225, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.226, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.227, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.214, %union.anon.0 { %struct.anon { ptr @.str.228, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cros_ec_sensorhub_filter = internal global %struct.trace_event_class { ptr @str__cros_ec__trace_system_name, ptr @trace_event_raw_event_cros_ec_sensorhub_filter, ptr @perf_trace_cros_ec_sensorhub_filter, ptr @trace_event_reg, ptr @trace_event_fields_cros_ec_sensorhub_filter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_filter, i64 24), ptr getelementptr (i8, ptr @event_class_cros_ec_sensorhub_filter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cros_ec_sensorhub_filter = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cros_ec_sensorhub_filter, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cros_ec_sensorhub_filter = internal global { [179 x i8], [45 x i8] } { [179 x i8] c"\22dx: %12lld. dy: %12lld median_m: %12lld median_error: %12lld len: %lld x: %12lld y: %12lld\22, REC->dx, REC->dy, REC->median_m, REC->median_error, REC->history_len, REC->x, REC->y\00", [45 x i8] zeroinitializer }, align 32
@event_cros_ec_sensorhub_filter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cros_ec_sensorhub_filter, %union.anon.1 { ptr @__tracepoint_cros_ec_sensorhub_filter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cros_ec_sensorhub_filter }, ptr @print_fmt_cros_ec_sensorhub_filter, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cros_ec_sensorhub_filter = internal global ptr @event_cros_ec_sensorhub_filter, section "_ftrace_events", align 4
@__bpf_trace_tp_map_cros_ec_request_start = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_cros_ec_request_start, ptr @__bpf_trace_cros_ec_request_start, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cros_ec_request_done = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_cros_ec_request_done, ptr @__bpf_trace_cros_ec_request_done, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cros_ec_sensorhub_timestamp = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_cros_ec_sensorhub_timestamp, ptr @__bpf_trace_cros_ec_sensorhub_timestamp, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cros_ec_sensorhub_data = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_cros_ec_sensorhub_data, ptr @__bpf_trace_cros_ec_sensorhub_data, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cros_ec_sensorhub_filter = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_cros_ec_sensorhub_filter, ptr @__bpf_trace_cros_ec_sensorhub_filter, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint32_t\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"command\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"outsize\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"insize\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"version: %u, offset: %d, command: %s, outsize: %u, insize: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@trace_raw_output_cros_ec_request_start.symbols = internal constant { [179 x %struct.trace_print_flags], [360 x i8] } { [179 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 128, ptr @.str.7 }, %struct.trace_print_flags { i32 129, ptr @.str.8 }, %struct.trace_print_flags { i32 130, ptr @.str.9 }, %struct.trace_print_flags { i32 131, ptr @.str.10 }, %struct.trace_print_flags { i32 132, ptr @.str.11 }, %struct.trace_print_flags { i32 0, ptr @.str.12 }, %struct.trace_print_flags { i32 1, ptr @.str.13 }, %struct.trace_print_flags { i32 2, ptr @.str.14 }, %struct.trace_print_flags { i32 3, ptr @.str.15 }, %struct.trace_print_flags { i32 4, ptr @.str.16 }, %struct.trace_print_flags { i32 5, ptr @.str.17 }, %struct.trace_print_flags { i32 6, ptr @.str.18 }, %struct.trace_print_flags { i32 7, ptr @.str.19 }, %struct.trace_print_flags { i32 8, ptr @.str.20 }, %struct.trace_print_flags { i32 9, ptr @.str.21 }, %struct.trace_print_flags { i32 10, ptr @.str.22 }, %struct.trace_print_flags { i32 11, ptr @.str.23 }, %struct.trace_print_flags { i32 12, ptr @.str.24 }, %struct.trace_print_flags { i32 13, ptr @.str.25 }, %struct.trace_print_flags { i32 14, ptr @.str.26 }, %struct.trace_print_flags { i32 15, ptr @.str.27 }, %struct.trace_print_flags { i32 16, ptr @.str.28 }, %struct.trace_print_flags { i32 17, ptr @.str.29 }, %struct.trace_print_flags { i32 18, ptr @.str.30 }, %struct.trace_print_flags { i32 19, ptr @.str.31 }, %struct.trace_print_flags { i32 21, ptr @.str.32 }, %struct.trace_print_flags { i32 22, ptr @.str.33 }, %struct.trace_print_flags { i32 23, ptr @.str.34 }, %struct.trace_print_flags { i32 24, ptr @.str.35 }, %struct.trace_print_flags { i32 25, ptr @.str.36 }, %struct.trace_print_flags { i32 32, ptr @.str.37 }, %struct.trace_print_flags { i32 33, ptr @.str.38 }, %struct.trace_print_flags { i32 34, ptr @.str.39 }, %struct.trace_print_flags { i32 35, ptr @.str.40 }, %struct.trace_print_flags { i32 36, ptr @.str.41 }, %struct.trace_print_flags { i32 37, ptr @.str.42 }, %struct.trace_print_flags { i32 38, ptr @.str.43 }, %struct.trace_print_flags { i32 40, ptr @.str.44 }, %struct.trace_print_flags { i32 41, ptr @.str.45 }, %struct.trace_print_flags { i32 42, ptr @.str.46 }, %struct.trace_print_flags { i32 43, ptr @.str.47 }, %struct.trace_print_flags { i32 44, ptr @.str.48 }, %struct.trace_print_flags { i32 45, ptr @.str.49 }, %struct.trace_print_flags { i32 48, ptr @.str.50 }, %struct.trace_print_flags { i32 64, ptr @.str.51 }, %struct.trace_print_flags { i32 65, ptr @.str.52 }, %struct.trace_print_flags { i32 66, ptr @.str.53 }, %struct.trace_print_flags { i32 68, ptr @.str.54 }, %struct.trace_print_flags { i32 69, ptr @.str.55 }, %struct.trace_print_flags { i32 70, ptr @.str.56 }, %struct.trace_print_flags { i32 71, ptr @.str.57 }, %struct.trace_print_flags { i32 72, ptr @.str.58 }, %struct.trace_print_flags { i32 72, ptr @.str.59 }, %struct.trace_print_flags { i32 73, ptr @.str.60 }, %struct.trace_print_flags { i32 74, ptr @.str.61 }, %struct.trace_print_flags { i32 75, ptr @.str.62 }, %struct.trace_print_flags { i32 80, ptr @.str.63 }, %struct.trace_print_flags { i32 81, ptr @.str.64 }, %struct.trace_print_flags { i32 82, ptr @.str.65 }, %struct.trace_print_flags { i32 83, ptr @.str.66 }, %struct.trace_print_flags { i32 84, ptr @.str.67 }, %struct.trace_print_flags { i32 85, ptr @.str.68 }, %struct.trace_print_flags { i32 96, ptr @.str.69 }, %struct.trace_print_flags { i32 97, ptr @.str.70 }, %struct.trace_print_flags { i32 98, ptr @.str.71 }, %struct.trace_print_flags { i32 99, ptr @.str.72 }, %struct.trace_print_flags { i32 100, ptr @.str.73 }, %struct.trace_print_flags { i32 101, ptr @.str.74 }, %struct.trace_print_flags { i32 102, ptr @.str.75 }, %struct.trace_print_flags { i32 103, ptr @.str.76 }, %struct.trace_print_flags { i32 104, ptr @.str.77 }, %struct.trace_print_flags { i32 112, ptr @.str.78 }, %struct.trace_print_flags { i32 135, ptr @.str.79 }, %struct.trace_print_flags { i32 136, ptr @.str.80 }, %struct.trace_print_flags { i32 137, ptr @.str.81 }, %struct.trace_print_flags { i32 141, ptr @.str.82 }, %struct.trace_print_flags { i32 138, ptr @.str.83 }, %struct.trace_print_flags { i32 139, ptr @.str.84 }, %struct.trace_print_flags { i32 140, ptr @.str.85 }, %struct.trace_print_flags { i32 142, ptr @.str.86 }, %struct.trace_print_flags { i32 143, ptr @.str.87 }, %struct.trace_print_flags { i32 164, ptr @.str.88 }, %struct.trace_print_flags { i32 144, ptr @.str.89 }, %struct.trace_print_flags { i32 145, ptr @.str.90 }, %struct.trace_print_flags { i32 146, ptr @.str.91 }, %struct.trace_print_flags { i32 147, ptr @.str.92 }, %struct.trace_print_flags { i32 148, ptr @.str.93 }, %struct.trace_print_flags { i32 149, ptr @.str.94 }, %struct.trace_print_flags { i32 150, ptr @.str.95 }, %struct.trace_print_flags { i32 151, ptr @.str.96 }, %struct.trace_print_flags { i32 152, ptr @.str.97 }, %struct.trace_print_flags { i32 153, ptr @.str.98 }, %struct.trace_print_flags { i32 154, ptr @.str.99 }, %struct.trace_print_flags { i32 155, ptr @.str.100 }, %struct.trace_print_flags { i32 156, ptr @.str.101 }, %struct.trace_print_flags { i32 157, ptr @.str.102 }, %struct.trace_print_flags { i32 158, ptr @.str.103 }, %struct.trace_print_flags { i32 159, ptr @.str.104 }, %struct.trace_print_flags { i32 160, ptr @.str.105 }, %struct.trace_print_flags { i32 161, ptr @.str.106 }, %struct.trace_print_flags { i32 162, ptr @.str.107 }, %struct.trace_print_flags { i32 163, ptr @.str.108 }, %struct.trace_print_flags { i32 168, ptr @.str.109 }, %struct.trace_print_flags { i32 169, ptr @.str.110 }, %struct.trace_print_flags { i32 170, ptr @.str.111 }, %struct.trace_print_flags { i32 176, ptr @.str.112 }, %struct.trace_print_flags { i32 177, ptr @.str.113 }, %struct.trace_print_flags { i32 178, ptr @.str.114 }, %struct.trace_print_flags { i32 179, ptr @.str.115 }, %struct.trace_print_flags { i32 180, ptr @.str.116 }, %struct.trace_print_flags { i32 181, ptr @.str.117 }, %struct.trace_print_flags { i32 182, ptr @.str.118 }, %struct.trace_print_flags { i32 183, ptr @.str.119 }, %struct.trace_print_flags { i32 184, ptr @.str.120 }, %struct.trace_print_flags { i32 186, ptr @.str.121 }, %struct.trace_print_flags { i32 187, ptr @.str.122 }, %struct.trace_print_flags { i32 188, ptr @.str.123 }, %struct.trace_print_flags { i32 189, ptr @.str.124 }, %struct.trace_print_flags { i32 190, ptr @.str.125 }, %struct.trace_print_flags { i32 191, ptr @.str.126 }, %struct.trace_print_flags { i32 210, ptr @.str.127 }, %struct.trace_print_flags { i32 211, ptr @.str.128 }, %struct.trace_print_flags { i32 209, ptr @.str.129 }, %struct.trace_print_flags { i32 219, ptr @.str.130 }, %struct.trace_print_flags { i32 220, ptr @.str.131 }, %struct.trace_print_flags { i32 256, ptr @.str.132 }, %struct.trace_print_flags { i32 260, ptr @.str.133 }, %struct.trace_print_flags { i32 257, ptr @.str.134 }, %struct.trace_print_flags { i32 258, ptr @.str.135 }, %struct.trace_print_flags { i32 259, ptr @.str.136 }, %struct.trace_print_flags { i32 261, ptr @.str.137 }, %struct.trace_print_flags { i32 272, ptr @.str.138 }, %struct.trace_print_flags { i32 273, ptr @.str.139 }, %struct.trace_print_flags { i32 274, ptr @.str.140 }, %struct.trace_print_flags { i32 275, ptr @.str.141 }, %struct.trace_print_flags { i32 276, ptr @.str.142 }, %struct.trace_print_flags { i32 277, ptr @.str.143 }, %struct.trace_print_flags { i32 278, ptr @.str.144 }, %struct.trace_print_flags { i32 279, ptr @.str.145 }, %struct.trace_print_flags { i32 280, ptr @.str.146 }, %struct.trace_print_flags { i32 281, ptr @.str.147 }, %struct.trace_print_flags { i32 282, ptr @.str.148 }, %struct.trace_print_flags { i32 283, ptr @.str.149 }, %struct.trace_print_flags { i32 284, ptr @.str.150 }, %struct.trace_print_flags { i32 285, ptr @.str.151 }, %struct.trace_print_flags { i32 286, ptr @.str.152 }, %struct.trace_print_flags { i32 287, ptr @.str.153 }, %struct.trace_print_flags { i32 288, ptr @.str.154 }, %struct.trace_print_flags { i32 289, ptr @.str.155 }, %struct.trace_print_flags { i32 290, ptr @.str.156 }, %struct.trace_print_flags { i32 291, ptr @.str.157 }, %struct.trace_print_flags { i32 292, ptr @.str.158 }, %struct.trace_print_flags { i32 293, ptr @.str.159 }, %struct.trace_print_flags { i32 300, ptr @.str.160 }, %struct.trace_print_flags { i32 301, ptr @.str.161 }, %struct.trace_print_flags { i32 302, ptr @.str.162 }, %struct.trace_print_flags { i32 303, ptr @.str.163 }, %struct.trace_print_flags { i32 304, ptr @.str.164 }, %struct.trace_print_flags { i32 768, ptr @.str.165 }, %struct.trace_print_flags { i32 1023, ptr @.str.166 }, %struct.trace_print_flags { i32 1024, ptr @.str.167 }, %struct.trace_print_flags { i32 1026, ptr @.str.168 }, %struct.trace_print_flags { i32 1027, ptr @.str.169 }, %struct.trace_print_flags { i32 1028, ptr @.str.170 }, %struct.trace_print_flags { i32 1029, ptr @.str.171 }, %struct.trace_print_flags { i32 1030, ptr @.str.172 }, %struct.trace_print_flags { i32 1031, ptr @.str.173 }, %struct.trace_print_flags { i32 1032, ptr @.str.174 }, %struct.trace_print_flags { i32 1033, ptr @.str.175 }, %struct.trace_print_flags { i32 1280, ptr @.str.176 }, %struct.trace_print_flags { i32 1281, ptr @.str.177 }, %struct.trace_print_flags { i32 1282, ptr @.str.178 }, %struct.trace_print_flags { i32 1283, ptr @.str.179 }, %struct.trace_print_flags { i32 1536, ptr @.str.180 }, %struct.trace_print_flags { i32 1537, ptr @.str.181 }, %struct.trace_print_flags { i32 1538, ptr @.str.182 }, %struct.trace_print_flags { i32 15872, ptr @.str.183 }, %struct.trace_print_flags { i32 16383, ptr @.str.184 }, %struct.trace_print_flags { i32 -1, ptr null }], [360 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EC_CMD_ACPI_READ\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_ACPI_WRITE\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_CMD_ACPI_BURST_ENABLE\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EC_CMD_ACPI_BURST_DISABLE\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_ACPI_QUERY_EVENT\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_PROTO_VERSION\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EC_CMD_HELLO\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_GET_VERSION\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EC_CMD_READ_TEST\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_CMD_GET_BUILD_INFO\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_GET_CHIP_INFO\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_CMD_GET_BOARD_VERSION\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_READ_MEMMAP\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_GET_CMD_VERSIONS\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_GET_COMMS_STATUS\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_TEST_PROTOCOL\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_CMD_GET_PROTOCOL_INFO\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_GSV_PAUSE_IN_S5\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_GET_FEATURES\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_GET_SKU_ID\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_SET_SKU_ID\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_FLASH_INFO\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_FLASH_READ\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_FLASH_WRITE\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_FLASH_ERASE\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_FLASH_PROTECT\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_CMD_FLASH_REGION_INFO\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_VBNV_CONTEXT\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_CMD_FLASH_SPI_INFO\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_FLASH_SELECT\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EC_CMD_PWM_GET_FAN_TARGET_RPM\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EC_CMD_PWM_SET_FAN_TARGET_RPM\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"EC_CMD_PWM_GET_KEYBOARD_BACKLIGHT\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"EC_CMD_PWM_SET_KEYBOARD_BACKLIGHT\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_PWM_SET_FAN_DUTY\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_PWM_SET_DUTY\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_PWM_GET_DUTY\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_LIGHTBAR_CMD\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_LED_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_VBOOT_HASH\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_MOTION_SENSE_CMD\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_CMD_FORCE_LID_OPEN\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EC_CMD_CONFIG_POWER_BUTTON\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EC_CMD_USB_CHARGE_SET_MODE\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_PSTORE_INFO\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_PSTORE_READ\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_PSTORE_WRITE\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_RTC_GET_VALUE\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_RTC_GET_ALARM\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_RTC_SET_VALUE\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_RTC_SET_ALARM\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_PORT80_LAST_BOOT\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_PORT80_READ\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_VSTORE_INFO\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_VSTORE_READ\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_VSTORE_WRITE\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EC_CMD_THERMAL_SET_THRESHOLD\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EC_CMD_THERMAL_GET_THRESHOLD\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EC_CMD_THERMAL_AUTO_FAN_CTRL\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EC_CMD_TMP006_GET_CALIBRATION\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EC_CMD_TMP006_SET_CALIBRATION\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_CMD_TMP006_GET_RAW\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_MKBP_STATE\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EC_CMD_MKBP_INFO\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_CMD_MKBP_SIMULATE_KEY\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_GET_KEYBOARD_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_MKBP_SET_CONFIG\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_MKBP_GET_CONFIG\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_KEYSCAN_SEQ_CTRL\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_CMD_GET_NEXT_EVENT\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EC_CMD_KEYBOARD_FACTORY_TEST\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EC_CMD_TEMP_SENSOR_GET_INFO\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_HOST_EVENT_GET_B\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EC_CMD_HOST_EVENT_GET_SMI_MASK\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EC_CMD_HOST_EVENT_GET_SCI_MASK\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EC_CMD_HOST_EVENT_GET_WAKE_MASK\00", [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EC_CMD_HOST_EVENT_SET_SMI_MASK\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EC_CMD_HOST_EVENT_SET_SCI_MASK\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_HOST_EVENT_CLEAR\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EC_CMD_HOST_EVENT_SET_WAKE_MASK\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EC_CMD_HOST_EVENT_CLEAR_B\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_HOST_EVENT\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EC_CMD_SWITCH_ENABLE_BKLIGHT\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EC_CMD_SWITCH_ENABLE_WIRELESS\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_CMD_GPIO_SET\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_CMD_GPIO_GET\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_CMD_I2C_READ\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EC_CMD_I2C_WRITE\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_CMD_CHARGE_CONTROL\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_CONSOLE_SNAPSHOT\00", [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_CONSOLE_READ\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_BATTERY_CUT_OFF\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_CMD_USB_MUX\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_CMD_LDO_SET\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_CMD_LDO_GET\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_POWER_INFO\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_I2C_PASSTHRU\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_HANG_DETECT\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_CHARGE_STATE\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EC_CMD_CHARGE_CURRENT_LIMIT\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EC_CMD_EXTERNAL_POWER_LIMIT\00", [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"EC_CMD_OVERRIDE_DEDICATED_CHARGER_LIMIT\00", [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_CMD_HIBERNATION_DELAY\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_HOST_SLEEP_EVENT\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_DEVICE_EVENT\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_SB_READ_WORD\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_SB_WRITE_WORD\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_SB_READ_BLOCK\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_CMD_SB_WRITE_BLOCK\00", [42 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EC_CMD_BATTERY_VENDOR_PARAM\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_SB_FW_UPDATE\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_ENTERING_MODE\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EC_CMD_I2C_PASSTHRU_PROTECT\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_CEC_WRITE_MSG\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_CMD_CEC_SET\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_CMD_CEC_GET\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_CMD_EC_CODEC\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_EC_CODEC_DMIC\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_EC_CODEC_I2S_RX\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_EC_CODEC_WOV\00", [44 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EC_CMD_REBOOT_EC\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_CMD_GET_PANIC_INFO\00", [42 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EC_CMD_REBOOT\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_RESEND_RESPONSE\00", [41 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_CMD_VERSION0\00", [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EC_CMD_PD_EXCHANGE_STATUS\00", [38 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EC_CMD_PD_HOST_EVENT_STATUS\00", [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_CMD_USB_PD_CONTROL\00", [42 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_USB_PD_PORTS\00", [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_CMD_USB_PD_POWER_INFO\00", [39 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_CMD_CHARGE_PORT_COUNT\00", [39 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_USB_PD_FW_UPDATE\00", [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EC_CMD_USB_PD_RW_HASH_ENTRY\00", [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_USB_PD_DEV_INFO\00", [41 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_USB_PD_DISCOVERY\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EC_CMD_PD_CHARGE_PORT_OVERRIDE\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_PD_GET_LOG_ENTRY\00", [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_USB_PD_GET_AMODE\00", [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_USB_PD_SET_AMODE\00", [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EC_CMD_PD_WRITE_LOG_ENTRY\00", [38 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_PD_CONTROL\00", [46 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_USB_PD_MUX_INFO\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_PD_CHIP_INFO\00", [44 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EC_CMD_RWSIG_CHECK_STATUS\00", [38 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_RWSIG_ACTION\00", [44 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_EFS_VERIFY\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EC_CMD_GET_CROS_BOARD_INFO\00", [37 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EC_CMD_SET_CROS_BOARD_INFO\00", [37 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_GET_UPTIME_INFO\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_ADD_ENTROPY\00", [45 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_CMD_ADC_READ\00", [16 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_ROLLBACK_INFO\00", [43 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_CMD_AP_RESET\00", [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EC_CMD_REGULATOR_GET_INFO\00", [38 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_CMD_REGULATOR_ENABLE\00", [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EC_CMD_REGULATOR_IS_ENABLED\00", [36 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EC_CMD_REGULATOR_SET_VOLTAGE\00", [35 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EC_CMD_REGULATOR_GET_VOLTAGE\00", [35 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EC_CMD_CR51_BASE\00", [47 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EC_CMD_CR51_LAST\00", [47 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_FP_PASSTHRU\00", [45 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_CMD_FP_MODE\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_CMD_FP_INFO\00", [17 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_CMD_FP_FRAME\00", [16 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_CMD_FP_TEMPLATE\00", [45 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EC_CMD_FP_CONTEXT\00", [46 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_CMD_FP_STATS\00", [16 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_CMD_FP_SEED\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_FP_ENC_STATUS\00", [43 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_TP_SELF_TEST\00", [44 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_CMD_TP_FRAME_INFO\00", [43 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_CMD_TP_FRAME_SNAPSHOT\00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EC_CMD_TP_FRAME_GET\00", [44 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EC_CMD_BATTERY_GET_STATIC\00", [38 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EC_CMD_BATTERY_GET_DYNAMIC\00", [37 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_CMD_CHARGER_CONTROL\00", [41 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EC_CMD_BOARD_SPECIFIC_BASE\00", [37 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EC_CMD_BOARD_SPECIFIC_LAST\00", [37 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"retval\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"version: %u, offset: %d, command: %s, outsize: %u, insize: %u, ec result: %s, retval: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@trace_raw_output_cros_ec_request_done.symbols = internal constant { [179 x %struct.trace_print_flags], [360 x i8] } { [179 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 128, ptr @.str.7 }, %struct.trace_print_flags { i32 129, ptr @.str.8 }, %struct.trace_print_flags { i32 130, ptr @.str.9 }, %struct.trace_print_flags { i32 131, ptr @.str.10 }, %struct.trace_print_flags { i32 132, ptr @.str.11 }, %struct.trace_print_flags { i32 0, ptr @.str.12 }, %struct.trace_print_flags { i32 1, ptr @.str.13 }, %struct.trace_print_flags { i32 2, ptr @.str.14 }, %struct.trace_print_flags { i32 3, ptr @.str.15 }, %struct.trace_print_flags { i32 4, ptr @.str.16 }, %struct.trace_print_flags { i32 5, ptr @.str.17 }, %struct.trace_print_flags { i32 6, ptr @.str.18 }, %struct.trace_print_flags { i32 7, ptr @.str.19 }, %struct.trace_print_flags { i32 8, ptr @.str.20 }, %struct.trace_print_flags { i32 9, ptr @.str.21 }, %struct.trace_print_flags { i32 10, ptr @.str.22 }, %struct.trace_print_flags { i32 11, ptr @.str.23 }, %struct.trace_print_flags { i32 12, ptr @.str.24 }, %struct.trace_print_flags { i32 13, ptr @.str.25 }, %struct.trace_print_flags { i32 14, ptr @.str.26 }, %struct.trace_print_flags { i32 15, ptr @.str.27 }, %struct.trace_print_flags { i32 16, ptr @.str.28 }, %struct.trace_print_flags { i32 17, ptr @.str.29 }, %struct.trace_print_flags { i32 18, ptr @.str.30 }, %struct.trace_print_flags { i32 19, ptr @.str.31 }, %struct.trace_print_flags { i32 21, ptr @.str.32 }, %struct.trace_print_flags { i32 22, ptr @.str.33 }, %struct.trace_print_flags { i32 23, ptr @.str.34 }, %struct.trace_print_flags { i32 24, ptr @.str.35 }, %struct.trace_print_flags { i32 25, ptr @.str.36 }, %struct.trace_print_flags { i32 32, ptr @.str.37 }, %struct.trace_print_flags { i32 33, ptr @.str.38 }, %struct.trace_print_flags { i32 34, ptr @.str.39 }, %struct.trace_print_flags { i32 35, ptr @.str.40 }, %struct.trace_print_flags { i32 36, ptr @.str.41 }, %struct.trace_print_flags { i32 37, ptr @.str.42 }, %struct.trace_print_flags { i32 38, ptr @.str.43 }, %struct.trace_print_flags { i32 40, ptr @.str.44 }, %struct.trace_print_flags { i32 41, ptr @.str.45 }, %struct.trace_print_flags { i32 42, ptr @.str.46 }, %struct.trace_print_flags { i32 43, ptr @.str.47 }, %struct.trace_print_flags { i32 44, ptr @.str.48 }, %struct.trace_print_flags { i32 45, ptr @.str.49 }, %struct.trace_print_flags { i32 48, ptr @.str.50 }, %struct.trace_print_flags { i32 64, ptr @.str.51 }, %struct.trace_print_flags { i32 65, ptr @.str.52 }, %struct.trace_print_flags { i32 66, ptr @.str.53 }, %struct.trace_print_flags { i32 68, ptr @.str.54 }, %struct.trace_print_flags { i32 69, ptr @.str.55 }, %struct.trace_print_flags { i32 70, ptr @.str.56 }, %struct.trace_print_flags { i32 71, ptr @.str.57 }, %struct.trace_print_flags { i32 72, ptr @.str.58 }, %struct.trace_print_flags { i32 72, ptr @.str.59 }, %struct.trace_print_flags { i32 73, ptr @.str.60 }, %struct.trace_print_flags { i32 74, ptr @.str.61 }, %struct.trace_print_flags { i32 75, ptr @.str.62 }, %struct.trace_print_flags { i32 80, ptr @.str.63 }, %struct.trace_print_flags { i32 81, ptr @.str.64 }, %struct.trace_print_flags { i32 82, ptr @.str.65 }, %struct.trace_print_flags { i32 83, ptr @.str.66 }, %struct.trace_print_flags { i32 84, ptr @.str.67 }, %struct.trace_print_flags { i32 85, ptr @.str.68 }, %struct.trace_print_flags { i32 96, ptr @.str.69 }, %struct.trace_print_flags { i32 97, ptr @.str.70 }, %struct.trace_print_flags { i32 98, ptr @.str.71 }, %struct.trace_print_flags { i32 99, ptr @.str.72 }, %struct.trace_print_flags { i32 100, ptr @.str.73 }, %struct.trace_print_flags { i32 101, ptr @.str.74 }, %struct.trace_print_flags { i32 102, ptr @.str.75 }, %struct.trace_print_flags { i32 103, ptr @.str.76 }, %struct.trace_print_flags { i32 104, ptr @.str.77 }, %struct.trace_print_flags { i32 112, ptr @.str.78 }, %struct.trace_print_flags { i32 135, ptr @.str.79 }, %struct.trace_print_flags { i32 136, ptr @.str.80 }, %struct.trace_print_flags { i32 137, ptr @.str.81 }, %struct.trace_print_flags { i32 141, ptr @.str.82 }, %struct.trace_print_flags { i32 138, ptr @.str.83 }, %struct.trace_print_flags { i32 139, ptr @.str.84 }, %struct.trace_print_flags { i32 140, ptr @.str.85 }, %struct.trace_print_flags { i32 142, ptr @.str.86 }, %struct.trace_print_flags { i32 143, ptr @.str.87 }, %struct.trace_print_flags { i32 164, ptr @.str.88 }, %struct.trace_print_flags { i32 144, ptr @.str.89 }, %struct.trace_print_flags { i32 145, ptr @.str.90 }, %struct.trace_print_flags { i32 146, ptr @.str.91 }, %struct.trace_print_flags { i32 147, ptr @.str.92 }, %struct.trace_print_flags { i32 148, ptr @.str.93 }, %struct.trace_print_flags { i32 149, ptr @.str.94 }, %struct.trace_print_flags { i32 150, ptr @.str.95 }, %struct.trace_print_flags { i32 151, ptr @.str.96 }, %struct.trace_print_flags { i32 152, ptr @.str.97 }, %struct.trace_print_flags { i32 153, ptr @.str.98 }, %struct.trace_print_flags { i32 154, ptr @.str.99 }, %struct.trace_print_flags { i32 155, ptr @.str.100 }, %struct.trace_print_flags { i32 156, ptr @.str.101 }, %struct.trace_print_flags { i32 157, ptr @.str.102 }, %struct.trace_print_flags { i32 158, ptr @.str.103 }, %struct.trace_print_flags { i32 159, ptr @.str.104 }, %struct.trace_print_flags { i32 160, ptr @.str.105 }, %struct.trace_print_flags { i32 161, ptr @.str.106 }, %struct.trace_print_flags { i32 162, ptr @.str.107 }, %struct.trace_print_flags { i32 163, ptr @.str.108 }, %struct.trace_print_flags { i32 168, ptr @.str.109 }, %struct.trace_print_flags { i32 169, ptr @.str.110 }, %struct.trace_print_flags { i32 170, ptr @.str.111 }, %struct.trace_print_flags { i32 176, ptr @.str.112 }, %struct.trace_print_flags { i32 177, ptr @.str.113 }, %struct.trace_print_flags { i32 178, ptr @.str.114 }, %struct.trace_print_flags { i32 179, ptr @.str.115 }, %struct.trace_print_flags { i32 180, ptr @.str.116 }, %struct.trace_print_flags { i32 181, ptr @.str.117 }, %struct.trace_print_flags { i32 182, ptr @.str.118 }, %struct.trace_print_flags { i32 183, ptr @.str.119 }, %struct.trace_print_flags { i32 184, ptr @.str.120 }, %struct.trace_print_flags { i32 186, ptr @.str.121 }, %struct.trace_print_flags { i32 187, ptr @.str.122 }, %struct.trace_print_flags { i32 188, ptr @.str.123 }, %struct.trace_print_flags { i32 189, ptr @.str.124 }, %struct.trace_print_flags { i32 190, ptr @.str.125 }, %struct.trace_print_flags { i32 191, ptr @.str.126 }, %struct.trace_print_flags { i32 210, ptr @.str.127 }, %struct.trace_print_flags { i32 211, ptr @.str.128 }, %struct.trace_print_flags { i32 209, ptr @.str.129 }, %struct.trace_print_flags { i32 219, ptr @.str.130 }, %struct.trace_print_flags { i32 220, ptr @.str.131 }, %struct.trace_print_flags { i32 256, ptr @.str.132 }, %struct.trace_print_flags { i32 260, ptr @.str.133 }, %struct.trace_print_flags { i32 257, ptr @.str.134 }, %struct.trace_print_flags { i32 258, ptr @.str.135 }, %struct.trace_print_flags { i32 259, ptr @.str.136 }, %struct.trace_print_flags { i32 261, ptr @.str.137 }, %struct.trace_print_flags { i32 272, ptr @.str.138 }, %struct.trace_print_flags { i32 273, ptr @.str.139 }, %struct.trace_print_flags { i32 274, ptr @.str.140 }, %struct.trace_print_flags { i32 275, ptr @.str.141 }, %struct.trace_print_flags { i32 276, ptr @.str.142 }, %struct.trace_print_flags { i32 277, ptr @.str.143 }, %struct.trace_print_flags { i32 278, ptr @.str.144 }, %struct.trace_print_flags { i32 279, ptr @.str.145 }, %struct.trace_print_flags { i32 280, ptr @.str.146 }, %struct.trace_print_flags { i32 281, ptr @.str.147 }, %struct.trace_print_flags { i32 282, ptr @.str.148 }, %struct.trace_print_flags { i32 283, ptr @.str.149 }, %struct.trace_print_flags { i32 284, ptr @.str.150 }, %struct.trace_print_flags { i32 285, ptr @.str.151 }, %struct.trace_print_flags { i32 286, ptr @.str.152 }, %struct.trace_print_flags { i32 287, ptr @.str.153 }, %struct.trace_print_flags { i32 288, ptr @.str.154 }, %struct.trace_print_flags { i32 289, ptr @.str.155 }, %struct.trace_print_flags { i32 290, ptr @.str.156 }, %struct.trace_print_flags { i32 291, ptr @.str.157 }, %struct.trace_print_flags { i32 292, ptr @.str.158 }, %struct.trace_print_flags { i32 293, ptr @.str.159 }, %struct.trace_print_flags { i32 300, ptr @.str.160 }, %struct.trace_print_flags { i32 301, ptr @.str.161 }, %struct.trace_print_flags { i32 302, ptr @.str.162 }, %struct.trace_print_flags { i32 303, ptr @.str.163 }, %struct.trace_print_flags { i32 304, ptr @.str.164 }, %struct.trace_print_flags { i32 768, ptr @.str.165 }, %struct.trace_print_flags { i32 1023, ptr @.str.166 }, %struct.trace_print_flags { i32 1024, ptr @.str.167 }, %struct.trace_print_flags { i32 1026, ptr @.str.168 }, %struct.trace_print_flags { i32 1027, ptr @.str.169 }, %struct.trace_print_flags { i32 1028, ptr @.str.170 }, %struct.trace_print_flags { i32 1029, ptr @.str.171 }, %struct.trace_print_flags { i32 1030, ptr @.str.172 }, %struct.trace_print_flags { i32 1031, ptr @.str.173 }, %struct.trace_print_flags { i32 1032, ptr @.str.174 }, %struct.trace_print_flags { i32 1033, ptr @.str.175 }, %struct.trace_print_flags { i32 1280, ptr @.str.176 }, %struct.trace_print_flags { i32 1281, ptr @.str.177 }, %struct.trace_print_flags { i32 1282, ptr @.str.178 }, %struct.trace_print_flags { i32 1283, ptr @.str.179 }, %struct.trace_print_flags { i32 1536, ptr @.str.180 }, %struct.trace_print_flags { i32 1537, ptr @.str.181 }, %struct.trace_print_flags { i32 1538, ptr @.str.182 }, %struct.trace_print_flags { i32 15872, ptr @.str.183 }, %struct.trace_print_flags { i32 16383, ptr @.str.184 }, %struct.trace_print_flags { i32 -1, ptr null }], [360 x i8] zeroinitializer }, align 32
@trace_raw_output_cros_ec_request_done.symbols.189 = internal constant { [22 x %struct.trace_print_flags], [48 x i8] } { [22 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.190 }, %struct.trace_print_flags { i32 1, ptr @.str.191 }, %struct.trace_print_flags { i32 2, ptr @.str.192 }, %struct.trace_print_flags { i32 3, ptr @.str.193 }, %struct.trace_print_flags { i32 4, ptr @.str.194 }, %struct.trace_print_flags { i32 5, ptr @.str.195 }, %struct.trace_print_flags { i32 6, ptr @.str.196 }, %struct.trace_print_flags { i32 7, ptr @.str.197 }, %struct.trace_print_flags { i32 8, ptr @.str.198 }, %struct.trace_print_flags { i32 9, ptr @.str.199 }, %struct.trace_print_flags { i32 10, ptr @.str.200 }, %struct.trace_print_flags { i32 11, ptr @.str.201 }, %struct.trace_print_flags { i32 12, ptr @.str.202 }, %struct.trace_print_flags { i32 13, ptr @.str.203 }, %struct.trace_print_flags { i32 14, ptr @.str.204 }, %struct.trace_print_flags { i32 15, ptr @.str.205 }, %struct.trace_print_flags { i32 16, ptr @.str.206 }, %struct.trace_print_flags { i32 17, ptr @.str.207 }, %struct.trace_print_flags { i32 18, ptr @.str.208 }, %struct.trace_print_flags { i32 19, ptr @.str.209 }, %struct.trace_print_flags { i32 20, ptr @.str.210 }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_RES_SUCCESS\00", [17 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_RES_INVALID_COMMAND\00", [41 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EC_RES_ERROR\00", [19 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_RES_INVALID_PARAM\00", [43 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EC_RES_ACCESS_DENIED\00", [43 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_RES_INVALID_RESPONSE\00", [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_RES_INVALID_VERSION\00", [41 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_RES_INVALID_CHECKSUM\00", [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_RES_IN_PROGRESS\00", [45 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EC_RES_UNAVAILABLE\00", [45 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EC_RES_TIMEOUT\00", [17 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC_RES_OVERFLOW\00", [16 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EC_RES_INVALID_HEADER\00", [42 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EC_RES_REQUEST_TRUNCATED\00", [39 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_RES_RESPONSE_TOO_BIG\00", [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EC_RES_BUS_ERROR\00", [47 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EC_RES_BUSY\00", [20 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EC_RES_INVALID_HEADER_VERSION\00", [34 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EC_RES_INVALID_HEADER_CRC\00", [38 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EC_RES_INVALID_DATA_CRC\00", [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EC_RES_DUP_UNAVAILABLE\00", [41 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ec_sample_timestamp\00", [44 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ec_fifo_timestamp\00", [46 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s64\00", [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fifo_timestamp\00", [17 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"current_timestamp\00", [46 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"current_time\00", [19 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"delta\00", [26 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"ec_ts: %9u, ec_fifo_ts: %9u, fifo_ts: %12lld, curr_ts: %12lld, curr_time: %12lld, delta %12lld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ec_sensor_num\00", [18 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"ec_num: %4u, ec_fifo_ts: %9u, fifo_ts: %12lld, curr_ts: %12lld, curr_time: %12lld, delta %12lld\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dx\00", [29 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dy\00", [29 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"median_m\00", [23 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"median_error\00", [19 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"history_len\00", [20 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"dx: %12lld. dy: %12lld median_m: %12lld median_error: %12lld len: %lld x: %12lld y: %12lld\0A\00", [36 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [43 x i8] c"../drivers/platform/chrome/cros_ec_trace.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [32 x i8] c"str__cros_ec__trace_system_name\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 36, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant [41 x i8] c"trace_event_fields_cros_ec_request_start\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_cros_ec_request_start\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [32 x i8] c"print_fmt_cros_ec_request_start\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [28 x i8] c"event_cros_ec_request_start\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [40 x i8] c"trace_event_fields_cros_ec_request_done\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_cros_ec_request_done\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [31 x i8] c"print_fmt_cros_ec_request_done\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [27 x i8] c"event_cros_ec_request_done\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [47 x i8] c"trace_event_fields_cros_ec_sensorhub_timestamp\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_cros_ec_sensorhub_timestamp\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [38 x i8] c"print_fmt_cros_ec_sensorhub_timestamp\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [34 x i8] c"event_cros_ec_sensorhub_timestamp\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [42 x i8] c"trace_event_fields_cros_ec_sensorhub_data\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_cros_ec_sensorhub_data\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [33 x i8] c"print_fmt_cros_ec_sensorhub_data\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [29 x i8] c"event_cros_ec_sensorhub_data\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [44 x i8] c"trace_event_fields_cros_ec_sensorhub_filter\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_cros_ec_sensorhub_filter\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [35 x i8] c"print_fmt_cros_ec_sensorhub_filter\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [31 x i8] c"event_cros_ec_sensorhub_filter\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 22, i32 1 }
@___asan_gen_.866 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 45, i32 1 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 74, i32 1 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 105, i32 1 }
@___asan_gen_.986 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.987 = private unnamed_addr constant [45 x i8] c"../drivers/platform/chrome/./cros_ec_trace.h\00", align 1
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 135, i32 1 }
@llvm.compiler.used = appending global [278 x ptr] [ptr @__bpf_trace_tp_map_cros_ec_request_done, ptr @__bpf_trace_tp_map_cros_ec_request_start, ptr @__bpf_trace_tp_map_cros_ec_sensorhub_data, ptr @__bpf_trace_tp_map_cros_ec_sensorhub_filter, ptr @__bpf_trace_tp_map_cros_ec_sensorhub_timestamp, ptr @__event_cros_ec_request_done, ptr @__event_cros_ec_request_start, ptr @__event_cros_ec_sensorhub_data, ptr @__event_cros_ec_sensorhub_filter, ptr @__event_cros_ec_sensorhub_timestamp, ptr @__tracepoint_cros_ec_request_done, ptr @__tracepoint_cros_ec_request_start, ptr @__tracepoint_cros_ec_sensorhub_data, ptr @__tracepoint_cros_ec_sensorhub_filter, ptr @__tracepoint_cros_ec_sensorhub_timestamp, ptr @__tracepoint_ptr_cros_ec_request_done, ptr @__tracepoint_ptr_cros_ec_request_start, ptr @__tracepoint_ptr_cros_ec_sensorhub_data, ptr @__tracepoint_ptr_cros_ec_sensorhub_filter, ptr @__tracepoint_ptr_cros_ec_sensorhub_timestamp, ptr @event_class_cros_ec_request_done, ptr @event_class_cros_ec_request_start, ptr @event_class_cros_ec_sensorhub_data, ptr @event_class_cros_ec_sensorhub_filter, ptr @event_class_cros_ec_sensorhub_timestamp, ptr @event_cros_ec_request_done, ptr @event_cros_ec_request_start, ptr @event_cros_ec_sensorhub_data, ptr @event_cros_ec_sensorhub_filter, ptr @event_cros_ec_sensorhub_timestamp, ptr @str__cros_ec__trace_system_name, ptr @trace_event_fields_cros_ec_request_start, ptr @trace_event_type_funcs_cros_ec_request_start, ptr @print_fmt_cros_ec_request_start, ptr @trace_event_fields_cros_ec_request_done, ptr @trace_event_type_funcs_cros_ec_request_done, ptr @print_fmt_cros_ec_request_done, ptr @trace_event_fields_cros_ec_sensorhub_timestamp, ptr @trace_event_type_funcs_cros_ec_sensorhub_timestamp, ptr @print_fmt_cros_ec_sensorhub_timestamp, ptr @trace_event_fields_cros_ec_sensorhub_data, ptr @trace_event_type_funcs_cros_ec_sensorhub_data, ptr @print_fmt_cros_ec_sensorhub_data, ptr @trace_event_fields_cros_ec_sensorhub_filter, ptr @trace_event_type_funcs_cros_ec_sensorhub_filter, ptr @print_fmt_cros_ec_sensorhub_filter, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @trace_raw_output_cros_ec_request_start.symbols, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @trace_raw_output_cros_ec_request_done.symbols, ptr @trace_raw_output_cros_ec_request_done.symbols.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229], section "llvm.metadata"
@0 = internal global [253 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__cros_ec__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cros_ec_request_start to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cros_ec_request_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cros_ec_request_start to i32), i32 6451, i32 8064, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cros_ec_request_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cros_ec_request_done to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cros_ec_request_done to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cros_ec_request_done to i32), i32 7520, i32 9376, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cros_ec_request_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cros_ec_sensorhub_timestamp to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cros_ec_sensorhub_timestamp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cros_ec_sensorhub_timestamp to i32), i32 223, i32 256, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cros_ec_sensorhub_timestamp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cros_ec_sensorhub_data to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cros_ec_sensorhub_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cros_ec_sensorhub_data to i32), i32 218, i32 256, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cros_ec_sensorhub_data to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cros_ec_sensorhub_filter to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cros_ec_sensorhub_filter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cros_ec_sensorhub_filter to i32), i32 179, i32 224, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cros_ec_sensorhub_filter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cros_ec_request_start.symbols to i32), i32 1432, i32 1792, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cros_ec_request_done.symbols to i32), i32 1432, i32 1792, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cros_ec_request_done.symbols.189 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_request_start(ptr nocapture readnone %__data, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cros_ec_request_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %cmd) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_request_done(ptr nocapture readnone %__data, ptr noundef %cmd, i32 noundef %retval1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cros_ec_request_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body3.do.body3_crit_edge ], [ %0, %entry.do.body3_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %cmd, i32 noundef %retval1) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body3.if.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body3.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_sensorhub_timestamp(ptr nocapture readnone %__data, i32 noundef %ec_sample_timestamp, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cros_ec_sensorhub_timestamp, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %ec_sample_timestamp, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_sensorhub_data(ptr nocapture readnone %__data, i32 noundef %ec_sensor_num, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cros_ec_sensorhub_data, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %ec_sensor_num, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cros_ec_sensorhub_filter(ptr nocapture readnone %__data, ptr noundef %state, i64 noundef %dx, i64 noundef %dy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cros_ec_sensorhub_filter, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %state, i64 noundef %dx, i64 noundef %dy) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_request_start(ptr noundef %__data, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !304

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !305

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 4
  %version6 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %version6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %version6, align 4
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %command, align 4
  %div26 = lshr i32 %7, 14
  %offset = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div26, ptr %offset, align 4
  %9 = load i32, ptr %command, align 4
  %rem = and i32 %9, 16383
  %command8 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %command8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %command8, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outsize, align 4
  %outsize9 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %outsize9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %outsize9, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %insize, align 4
  %insize10 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %insize10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %insize10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_request_start(ptr noundef %__data, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !306
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !294) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !294) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd, align 4
  %version17 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %version17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %version17, align 4
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 1
  %30 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %command, align 4
  %div49 = lshr i32 %31, 14
  %offset = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div49, ptr %offset, align 4
  %33 = load i32, ptr %command, align 4
  %rem = and i32 %33, 16383
  %command19 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %command19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %rem, ptr %command19, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 2
  %35 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %outsize, align 4
  %outsize20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %outsize20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %outsize20, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 3
  %38 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %insize, align 4
  %insize21 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %insize21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %insize21, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_request_done(ptr noundef %__data, ptr nocapture noundef readonly %cmd, i32 noundef %retval) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !304

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !305

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 4
  %version6 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %version6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %version6, align 4
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %command, align 4
  %div32 = lshr i32 %7, 14
  %offset = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div32, ptr %offset, align 4
  %9 = load i32, ptr %command, align 4
  %rem = and i32 %9, 16383
  %command8 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %command8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %command8, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outsize, align 4
  %outsize9 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %outsize9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %outsize9, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %insize, align 4
  %insize10 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %insize10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %insize10, align 4
  %result = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 4
  %17 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %result, align 4
  %result11 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call3, i32 0, i32 6
  %19 = ptrtoint ptr %result11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %result11, align 4
  %retval12 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call3, i32 0, i32 7
  %20 = ptrtoint ptr %retval12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval, ptr %retval12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_request_done(ptr noundef %__data, ptr nocapture noundef readonly %cmd, i32 noundef %retval) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !306
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !294) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !294) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd, align 4
  %version17 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %version17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %version17, align 4
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 1
  %30 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %command, align 4
  %div55 = lshr i32 %31, 14
  %offset = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div55, ptr %offset, align 4
  %33 = load i32, ptr %command, align 4
  %rem = and i32 %33, 16383
  %command19 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %command19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %rem, ptr %command19, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 2
  %35 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %outsize, align 4
  %outsize20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %outsize20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %outsize20, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 3
  %38 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %insize, align 4
  %insize21 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %insize21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %insize21, align 4
  %result = getelementptr inbounds %struct.cros_ec_command, ptr %cmd, i32 0, i32 4
  %41 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %result, align 4
  %result22 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call13, i32 0, i32 6
  %43 = ptrtoint ptr %result22 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %result22, align 4
  %retval23 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %call13, i32 0, i32 7
  %44 = ptrtoint ptr %retval23 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval, ptr %retval23, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_sensorhub_timestamp(ptr noundef %__data, i32 noundef %ec_sample_timestamp, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !304

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !305

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ec_sample_timestamp6 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %ec_sample_timestamp6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ec_sample_timestamp, ptr %ec_sample_timestamp6, align 8
  %ec_fifo_timestamp7 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ec_fifo_timestamp7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ec_fifo_timestamp, ptr %ec_fifo_timestamp7, align 4
  %fifo_timestamp8 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %fifo_timestamp8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %fifo_timestamp, ptr %fifo_timestamp8, align 8
  %current_timestamp9 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %current_timestamp9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %current_timestamp, ptr %current_timestamp9, align 8
  %current_time10 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %current_time10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %current_time, ptr %current_time10, align 8
  %sub = sub i64 %current_timestamp, %current_time
  %delta = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %delta to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %sub, ptr %delta, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_sensorhub_timestamp(ptr noundef %__data, i32 noundef %ec_sample_timestamp, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !306
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !294) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !294) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ec_sample_timestamp17 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %ec_sample_timestamp17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ec_sample_timestamp, ptr %ec_sample_timestamp17, align 8
  %ec_fifo_timestamp18 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ec_fifo_timestamp18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ec_fifo_timestamp, ptr %ec_fifo_timestamp18, align 4
  %fifo_timestamp19 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %fifo_timestamp19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %fifo_timestamp, ptr %fifo_timestamp19, align 8
  %current_timestamp20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %current_timestamp20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %current_timestamp, ptr %current_timestamp20, align 8
  %current_time21 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %current_time21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %current_time, ptr %current_time21, align 8
  %sub22 = sub i64 %current_timestamp, %current_time
  %delta = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %delta to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %sub22, ptr %delta, align 8
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_sensorhub_data(ptr noundef %__data, i32 noundef %ec_sensor_num, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !304

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !305

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ec_sensor_num6 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %ec_sensor_num6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ec_sensor_num, ptr %ec_sensor_num6, align 8
  %ec_fifo_timestamp7 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ec_fifo_timestamp7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ec_fifo_timestamp, ptr %ec_fifo_timestamp7, align 4
  %fifo_timestamp8 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %fifo_timestamp8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %fifo_timestamp, ptr %fifo_timestamp8, align 8
  %current_timestamp9 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %current_timestamp9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %current_timestamp, ptr %current_timestamp9, align 8
  %current_time10 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %current_time10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %current_time, ptr %current_time10, align 8
  %sub = sub i64 %current_timestamp, %current_time
  %delta = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %delta to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %sub, ptr %delta, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_sensorhub_data(ptr noundef %__data, i32 noundef %ec_sensor_num, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !306
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !294) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !294) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ec_sensor_num17 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %ec_sensor_num17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ec_sensor_num, ptr %ec_sensor_num17, align 8
  %ec_fifo_timestamp18 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ec_fifo_timestamp18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ec_fifo_timestamp, ptr %ec_fifo_timestamp18, align 4
  %fifo_timestamp19 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %fifo_timestamp19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %fifo_timestamp, ptr %fifo_timestamp19, align 8
  %current_timestamp20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %current_timestamp20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %current_timestamp, ptr %current_timestamp20, align 8
  %current_time21 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %current_time21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %current_time, ptr %current_time21, align 8
  %sub22 = sub i64 %current_timestamp, %current_time
  %delta = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %delta to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %sub22, ptr %delta, align 8
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cros_ec_sensorhub_filter(ptr noundef %__data, ptr nocapture noundef readonly %state, i64 noundef %dx, i64 noundef %dy) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !304

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !305

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 64) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dx6 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dx6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %dx, ptr %dx6, align 8
  %dy7 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %dy7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %dy, ptr %dy7, align 8
  %median_m = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %state, i32 0, i32 7
  %5 = ptrtoint ptr %median_m to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %median_m, align 8
  %median_m8 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %median_m8 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %median_m8, align 8
  %median_error = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %state, i32 0, i32 8
  %8 = ptrtoint ptr %median_error to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %median_error, align 8
  %median_error9 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %median_error9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %median_error9, align 8
  %history_len = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %history_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %history_len, align 8
  %conv = sext i32 %12 to i64
  %history_len10 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %history_len10 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %history_len10, align 8
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %state, align 8
  %x = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call3, i32 0, i32 6
  %16 = ptrtoint ptr %x to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %x, align 8
  %y_offset = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %state, i32 0, i32 1
  %17 = ptrtoint ptr %y_offset to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %y_offset, align 8
  %y = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call3, i32 0, i32 7
  %19 = ptrtoint ptr %y to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %y, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cros_ec_sensorhub_filter(ptr noundef %__data, ptr nocapture noundef readonly %state, i64 noundef %dx, i64 noundef %dy) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !306
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !294) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !294) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dx17 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dx17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %dx, ptr %dx17, align 8
  %dy18 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %dy18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %dy, ptr %dy18, align 8
  %median_m = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %state, i32 0, i32 7
  %29 = ptrtoint ptr %median_m to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %median_m, align 8
  %median_m19 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %median_m19 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %median_m19, align 8
  %median_error = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %state, i32 0, i32 8
  %32 = ptrtoint ptr %median_error to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %median_error, align 8
  %median_error20 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %median_error20 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %median_error20, align 8
  %history_len = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %state, i32 0, i32 5
  %35 = ptrtoint ptr %history_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %history_len, align 8
  %conv = sext i32 %36 to i64
  %history_len21 = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %history_len21 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv, ptr %history_len21, align 8
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %state, align 8
  %x = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call13, i32 0, i32 6
  %40 = ptrtoint ptr %x to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %x, align 8
  %y_offset = getelementptr inbounds %struct.cros_ec_sensors_ts_filter_state, ptr %state, i32 0, i32 1
  %41 = ptrtoint ptr %y_offset to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %y_offset, align 8
  %y = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %call13, i32 0, i32 7
  %43 = ptrtoint ptr %y to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %y, align 8
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 68, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cros_ec_request_start(ptr noundef %__data, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %cmd to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cros_ec_request_done(ptr noundef %__data, ptr noundef %cmd, i32 noundef %retval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %cmd to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %retval to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cros_ec_sensorhub_timestamp(ptr noundef %__data, i32 noundef %ec_sample_timestamp, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %ec_sample_timestamp to i64
  %conv4 = zext i32 %ec_fifo_timestamp to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cros_ec_sensorhub_data(ptr noundef %__data, i32 noundef %ec_sensor_num, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %ec_sensor_num to i64
  %conv4 = zext i32 %ec_fifo_timestamp to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cros_ec_sensorhub_filter(ptr noundef %__data, ptr noundef %state, i64 noundef %dx, i64 noundef %dy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %state to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %dx, i64 noundef %dy) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_request_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %version = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %command = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %command, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cros_ec_request_start.symbols) #5
  %outsize = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outsize, align 4
  %insize = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_start, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %insize, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %9, i32 noundef %11) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_request_done(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %version = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %command = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %command, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cros_ec_request_done.symbols) #5
  %outsize = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outsize, align 4
  %insize = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %insize, align 4
  %result = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %result, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %13, ptr noundef nonnull @trace_raw_output_cros_ec_request_done.symbols.189) #5
  %retval4 = getelementptr inbounds %struct.trace_event_raw_cros_ec_request_done, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %retval4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retval4, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.188, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %9, i32 noundef %11, ptr noundef %call3, i32 noundef %15) #5
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_sensorhub_timestamp(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ec_sample_timestamp = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ec_sample_timestamp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ec_sample_timestamp, align 8
  %ec_fifo_timestamp = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ec_fifo_timestamp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ec_fifo_timestamp, align 4
  %fifo_timestamp = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fifo_timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fifo_timestamp, align 8
  %current_timestamp = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %current_timestamp to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %current_timestamp, align 8
  %current_time = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %current_time to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %current_time, align 8
  %delta = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_timestamp, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %delta to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %delta, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.219, i32 noundef %3, i32 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_sensorhub_data(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ec_sensor_num = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ec_sensor_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ec_sensor_num, align 8
  %ec_fifo_timestamp = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ec_fifo_timestamp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ec_fifo_timestamp, align 4
  %fifo_timestamp = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fifo_timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fifo_timestamp, align 8
  %current_timestamp = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %current_timestamp to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %current_timestamp, align 8
  %current_time = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %current_time to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %current_time, align 8
  %delta = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %delta to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %delta, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.221, i32 noundef %3, i32 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cros_ec_sensorhub_filter(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dx = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dx, align 8
  %dy = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dy to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dy, align 8
  %median_m = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %median_m to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %median_m, align 8
  %median_error = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %median_error to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %median_error, align 8
  %history_len = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %history_len to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %history_len, align 8
  %x = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %x to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %x, align 8
  %y = getelementptr inbounds %struct.trace_event_raw_cros_ec_sensorhub_filter, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %y to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %y, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.229, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!llvm.named.register.sp = !{!294}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !{ptr @__tracepoint_cros_ec_request_start, !1, !"__tracepoint_cros_ec_request_start", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/./cros_ec_trace.h", i32 22, i32 1}
!2 = !{ptr @__tracepoint_ptr_cros_ec_request_start, !1, !"__tracepoint_ptr_cros_ec_request_start", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_cros_ec_request_start, !1, !"__SCK__tp_func_cros_ec_request_start", i1 false, i1 false}
!4 = !{ptr @__tracepoint_cros_ec_request_done, !5, !"__tracepoint_cros_ec_request_done", i1 false, i1 false}
!5 = !{!"../drivers/platform/chrome/./cros_ec_trace.h", i32 45, i32 1}
!6 = !{ptr @__tracepoint_ptr_cros_ec_request_done, !5, !"__tracepoint_ptr_cros_ec_request_done", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_cros_ec_request_done, !5, !"__SCK__tp_func_cros_ec_request_done", i1 false, i1 false}
!8 = !{ptr @__tracepoint_cros_ec_sensorhub_timestamp, !9, !"__tracepoint_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/./cros_ec_trace.h", i32 74, i32 1}
!10 = !{ptr @__tracepoint_ptr_cros_ec_sensorhub_timestamp, !9, !"__tracepoint_ptr_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_cros_ec_sensorhub_timestamp, !9, !"__SCK__tp_func_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!12 = !{ptr @__tracepoint_cros_ec_sensorhub_data, !13, !"__tracepoint_cros_ec_sensorhub_data", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/./cros_ec_trace.h", i32 105, i32 1}
!14 = !{ptr @__tracepoint_ptr_cros_ec_sensorhub_data, !13, !"__tracepoint_ptr_cros_ec_sensorhub_data", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_cros_ec_sensorhub_data, !13, !"__SCK__tp_func_cros_ec_sensorhub_data", i1 false, i1 false}
!16 = !{ptr @__tracepoint_cros_ec_sensorhub_filter, !17, !"__tracepoint_cros_ec_sensorhub_filter", i1 false, i1 false}
!17 = !{!"../drivers/platform/chrome/./cros_ec_trace.h", i32 135, i32 1}
!18 = !{ptr @__tracepoint_ptr_cros_ec_sensorhub_filter, !17, !"__tracepoint_ptr_cros_ec_sensorhub_filter", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_cros_ec_sensorhub_filter, !17, !"__SCK__tp_func_cros_ec_sensorhub_filter", i1 false, i1 false}
!20 = !{ptr @event_class_cros_ec_request_start, !1, !"event_class_cros_ec_request_start", i1 false, i1 false}
!21 = !{ptr @event_cros_ec_request_start, !1, !"event_cros_ec_request_start", i1 false, i1 false}
!22 = !{ptr @__event_cros_ec_request_start, !1, !"__event_cros_ec_request_start", i1 false, i1 false}
!23 = !{ptr @event_class_cros_ec_request_done, !5, !"event_class_cros_ec_request_done", i1 false, i1 false}
!24 = !{ptr @event_cros_ec_request_done, !5, !"event_cros_ec_request_done", i1 false, i1 false}
!25 = !{ptr @__event_cros_ec_request_done, !5, !"__event_cros_ec_request_done", i1 false, i1 false}
!26 = !{ptr @event_class_cros_ec_sensorhub_timestamp, !9, !"event_class_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!27 = !{ptr @event_cros_ec_sensorhub_timestamp, !9, !"event_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!28 = !{ptr @__event_cros_ec_sensorhub_timestamp, !9, !"__event_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!29 = !{ptr @event_class_cros_ec_sensorhub_data, !13, !"event_class_cros_ec_sensorhub_data", i1 false, i1 false}
!30 = !{ptr @event_cros_ec_sensorhub_data, !13, !"event_cros_ec_sensorhub_data", i1 false, i1 false}
!31 = !{ptr @__event_cros_ec_sensorhub_data, !13, !"__event_cros_ec_sensorhub_data", i1 false, i1 false}
!32 = !{ptr @event_class_cros_ec_sensorhub_filter, !17, !"event_class_cros_ec_sensorhub_filter", i1 false, i1 false}
!33 = !{ptr @event_cros_ec_sensorhub_filter, !17, !"event_cros_ec_sensorhub_filter", i1 false, i1 false}
!34 = !{ptr @__event_cros_ec_sensorhub_filter, !17, !"__event_cros_ec_sensorhub_filter", i1 false, i1 false}
!35 = !{ptr @__bpf_trace_tp_map_cros_ec_request_start, !1, !"__bpf_trace_tp_map_cros_ec_request_start", i1 false, i1 false}
!36 = !{ptr @__bpf_trace_tp_map_cros_ec_request_done, !5, !"__bpf_trace_tp_map_cros_ec_request_done", i1 false, i1 false}
!37 = !{ptr @__bpf_trace_tp_map_cros_ec_sensorhub_timestamp, !9, !"__bpf_trace_tp_map_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!38 = !{ptr @__bpf_trace_tp_map_cros_ec_sensorhub_data, !13, !"__bpf_trace_tp_map_cros_ec_sensorhub_data", i1 false, i1 false}
!39 = !{ptr @__bpf_trace_tp_map_cros_ec_sensorhub_filter, !17, !"__bpf_trace_tp_map_cros_ec_sensorhub_filter", i1 false, i1 false}
!40 = !{ptr @__tpstrtab_cros_ec_request_start, !1, !"__tpstrtab_cros_ec_request_start", i1 false, i1 false}
!41 = !{ptr @__tpstrtab_cros_ec_request_done, !5, !"__tpstrtab_cros_ec_request_done", i1 false, i1 false}
!42 = !{ptr @__tpstrtab_cros_ec_sensorhub_timestamp, !9, !"__tpstrtab_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!43 = !{ptr @__tpstrtab_cros_ec_sensorhub_data, !13, !"__tpstrtab_cros_ec_sensorhub_data", i1 false, i1 false}
!44 = !{ptr @__tpstrtab_cros_ec_sensorhub_filter, !17, !"__tpstrtab_cros_ec_sensorhub_filter", i1 false, i1 false}
!45 = !{ptr @str__cros_ec__trace_system_name, !46, !"str__cros_ec__trace_system_name", i1 false, i1 false}
!46 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!47 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @trace_event_fields_cros_ec_request_start, !1, !"trace_event_fields_cros_ec_request_start", i1 false, i1 false}
!54 = !{ptr @trace_event_type_funcs_cros_ec_request_start, !1, !"trace_event_type_funcs_cros_ec_request_start", i1 false, i1 false}
!55 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.30, !1, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !1, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !1, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.39, !1, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.40, !1, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.41, !1, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.42, !1, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.43, !1, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.44, !1, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.45, !1, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.47, !1, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.48, !1, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.49, !1, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.50, !1, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.51, !1, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.52, !1, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.53, !1, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.54, !1, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.55, !1, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.56, !1, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.57, !1, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.58, !1, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.59, !1, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.60, !1, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.61, !1, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.62, !1, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.63, !1, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.64, !1, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.65, !1, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.66, !1, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.67, !1, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.68, !1, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.69, !1, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.70, !1, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.71, !1, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.72, !1, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.73, !1, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.74, !1, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.75, !1, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.76, !1, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.77, !1, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.78, !1, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.79, !1, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.80, !1, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.81, !1, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.82, !1, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.83, !1, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.84, !1, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.85, !1, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.86, !1, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.87, !1, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.88, !1, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.89, !1, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.90, !1, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.91, !1, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.92, !1, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.93, !1, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.94, !1, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.95, !1, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.96, !1, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.97, !1, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.98, !1, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.99, !1, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.100, !1, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.101, !1, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.102, !1, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.103, !1, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.104, !1, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.105, !1, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.106, !1, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.107, !1, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.108, !1, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.109, !1, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.110, !1, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.111, !1, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.112, !1, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.113, !1, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.114, !1, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.115, !1, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.116, !1, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.117, !1, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.118, !1, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.119, !1, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.120, !1, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.121, !1, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.122, !1, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.123, !1, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.124, !1, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.125, !1, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.126, !1, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.127, !1, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.128, !1, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.129, !1, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.130, !1, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.131, !1, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.132, !1, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.133, !1, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.134, !1, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.135, !1, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.136, !1, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.137, !1, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.138, !1, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.139, !1, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.140, !1, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.141, !1, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.142, !1, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.143, !1, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.144, !1, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.145, !1, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.146, !1, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.147, !1, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.148, !1, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.149, !1, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.150, !1, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.151, !1, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.152, !1, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.153, !1, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.154, !1, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.155, !1, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.156, !1, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.157, !1, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.158, !1, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.159, !1, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.160, !1, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.161, !1, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.162, !1, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.163, !1, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.164, !1, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.165, !1, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.166, !1, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.167, !1, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.168, !1, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.169, !1, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.170, !1, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.171, !1, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.172, !1, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.173, !1, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.174, !1, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.175, !1, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.176, !1, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.177, !1, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.178, !1, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.179, !1, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.180, !1, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.181, !1, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.182, !1, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.183, !1, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.184, !1, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @trace_raw_output_cros_ec_request_start.symbols, !1, !"symbols", i1 false, i1 false}
!235 = !{ptr @print_fmt_cros_ec_request_start, !1, !"print_fmt_cros_ec_request_start", i1 false, i1 false}
!236 = !{ptr @.str.185, !5, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.186, !5, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.187, !5, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @trace_event_fields_cros_ec_request_done, !5, !"trace_event_fields_cros_ec_request_done", i1 false, i1 false}
!240 = !{ptr @trace_event_type_funcs_cros_ec_request_done, !5, !"trace_event_type_funcs_cros_ec_request_done", i1 false, i1 false}
!241 = !{ptr @.str.188, !5, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @trace_raw_output_cros_ec_request_done.symbols, !5, !"symbols", i1 false, i1 false}
!243 = !{ptr @.str.190, !5, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.191, !5, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.192, !5, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.193, !5, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.194, !5, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.195, !5, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.196, !5, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.197, !5, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.198, !5, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.199, !5, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.200, !5, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.201, !5, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.202, !5, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.203, !5, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.204, !5, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.205, !5, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.206, !5, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.207, !5, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.208, !5, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.209, !5, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.210, !5, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @trace_raw_output_cros_ec_request_done.symbols.189, !5, !"symbols", i1 false, i1 false}
!265 = !{ptr @print_fmt_cros_ec_request_done, !5, !"print_fmt_cros_ec_request_done", i1 false, i1 false}
!266 = !{ptr @.str.211, !9, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.212, !9, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.213, !9, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.214, !9, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.215, !9, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.216, !9, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.217, !9, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.218, !9, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @trace_event_fields_cros_ec_sensorhub_timestamp, !9, !"trace_event_fields_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!275 = !{ptr @trace_event_type_funcs_cros_ec_sensorhub_timestamp, !9, !"trace_event_type_funcs_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!276 = !{ptr @.str.219, !9, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @print_fmt_cros_ec_sensorhub_timestamp, !9, !"print_fmt_cros_ec_sensorhub_timestamp", i1 false, i1 false}
!278 = !{ptr @.str.220, !13, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @trace_event_fields_cros_ec_sensorhub_data, !13, !"trace_event_fields_cros_ec_sensorhub_data", i1 false, i1 false}
!280 = !{ptr @trace_event_type_funcs_cros_ec_sensorhub_data, !13, !"trace_event_type_funcs_cros_ec_sensorhub_data", i1 false, i1 false}
!281 = !{ptr @.str.221, !13, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @print_fmt_cros_ec_sensorhub_data, !13, !"print_fmt_cros_ec_sensorhub_data", i1 false, i1 false}
!283 = !{ptr @.str.222, !17, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.223, !17, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.224, !17, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.225, !17, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.226, !17, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.227, !17, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.228, !17, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @trace_event_fields_cros_ec_sensorhub_filter, !17, !"trace_event_fields_cros_ec_sensorhub_filter", i1 false, i1 false}
!291 = !{ptr @trace_event_type_funcs_cros_ec_sensorhub_filter, !17, !"trace_event_type_funcs_cros_ec_sensorhub_filter", i1 false, i1 false}
!292 = !{ptr @.str.229, !17, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @print_fmt_cros_ec_sensorhub_filter, !17, !"print_fmt_cros_ec_sensorhub_filter", i1 false, i1 false}
!294 = !{!"sp"}
!295 = !{i32 1, !"wchar_size", i32 2}
!296 = !{i32 1, !"min_enum_size", i32 4}
!297 = !{i32 8, !"branch-target-enforcement", i32 0}
!298 = !{i32 8, !"sign-return-address", i32 0}
!299 = !{i32 8, !"sign-return-address-all", i32 0}
!300 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 2}
!303 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!304 = !{!"branch_weights", i32 2000, i32 1}
!305 = !{!"branch_weights", i32 1, i32 2000}
!306 = !{!"auto-init"}
