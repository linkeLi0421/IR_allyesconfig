; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/or51132.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/or51132.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+or51132_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_or51132_attach\09\09\09\09"
module asm "\09.long\09__crc_or51132_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_or51132_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22or51132_attach\22\09\09\09\09\09"
module asm "__kstrtabns_or51132_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.or51132_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.or51132_config = type { i8, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@or51132_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Oren OR51132 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44000000, i32 958000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 2204334 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @or51132_release, ptr null, ptr @or51132_init, ptr @or51132_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @or51132_set_parameters, ptr @or51132_get_tune_settings, ptr @or51132_get_parameters, ptr @or51132_read_status, ptr @or51132_read_ber, ptr @or51132_read_signal_strength, ptr @or51132_read_snr, ptr @or51132_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"or51132.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"or51132.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"or51132.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [107 x i8] c"or51132.description=OR51132 ATSC [pcHDTV HD-3000] (8VSB & ITU J83 AnnexB FEC QAM64/256) Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [27 x i8] c"or51132.author=Kirk Lapray\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [28 x i8] c"or51132.author=Trent Piepho\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [49 x i8] c"or51132.file=drivers/media/dvb-frontends/or51132\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [20 x i8] c"or51132.license=GPL\00", section ".modinfo", align 1
@__kstrtab_or51132_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_or51132_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_or51132_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @or51132_attach to i32), ptr @__kstrtab_or51132_attach, ptr @__kstrtabns_or51132_attach }, section "___ksymtab+or51132_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@or51132_set_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017or51132: set_parameters VSB MODE\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"or51132_set_parameters\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/or51132.c\00", [58 x i8] zeroinitializer }, align 32
@or51132_set_parameters._entry_ptr = internal global ptr @or51132_set_parameters._entry, section ".printk_index", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb-fe-or51132-vsb.fw\00", [42 x i8] zeroinitializer }, align 32
@or51132_set_parameters._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017or51132: set_parameters QAM MODE\0A\00", [60 x i8] zeroinitializer }, align 32
@or51132_set_parameters._entry_ptr.6 = internal global ptr @or51132_set_parameters._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb-fe-or51132-qam.fw\00", [42 x i8] zeroinitializer }, align 32
@or51132_set_parameters._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"or51132: Modulation type(%d) UNSUPPORTED\0A\00", [54 x i8] zeroinitializer }, align 32
@or51132_set_parameters._entry_ptr.10 = internal global ptr @or51132_set_parameters._entry.8, section ".printk_index", align 4
@or51132_set_parameters._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"or51132: Waiting for firmware upload(%s)...\0A\00", [51 x i8] zeroinitializer }, align 32
@or51132_set_parameters._entry_ptr.13 = internal global ptr @or51132_set_parameters._entry.11, section ".printk_index", align 4
@or51132_set_parameters._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014or51132: No firmware uploaded(timeout or file not found?)\0A\00", [35 x i8] zeroinitializer }, align 32
@or51132_set_parameters._entry_ptr.16 = internal global ptr @or51132_set_parameters._entry.14, section ".printk_index", align 4
@or51132_set_parameters._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014or51132: Writing firmware to device failed!\0A\00", [49 x i8] zeroinitializer }, align 32
@or51132_set_parameters._entry_ptr.19 = internal global ptr @or51132_set_parameters._entry.17, section ".printk_index", align 4
@or51132_set_parameters._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"or51132: Firmware upload complete.\0A\00", [60 x i8] zeroinitializer }, align 32
@or51132_set_parameters._entry_ptr.22 = internal global ptr @or51132_set_parameters._entry.20, section ".printk_index", align 4
@or51132_load_firmware.run_buf = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\7F\01", [30 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017or51132: Firmware is %zd bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"or51132_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr = internal global ptr @or51132_load_firmware._entry, section ".printk_index", align 4
@or51132_load_firmware._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017or51132: FirmwareA is %i bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.27 = internal global ptr @or51132_load_firmware._entry.25, section ".printk_index", align 4
@or51132_load_firmware._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017or51132: FirmwareB is %i bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.30 = internal global ptr @or51132_load_firmware._entry.28, section ".printk_index", align 4
@or51132_load_firmware._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014or51132: load_firmware error 1\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.33 = internal global ptr @or51132_load_firmware._entry.31, section ".printk_index", align 4
@or51132_load_firmware._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014or51132: load_firmware error 2\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.36 = internal global ptr @or51132_load_firmware._entry.34, section ".printk_index", align 4
@or51132_load_firmware._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014or51132: load_firmware error 3\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.39 = internal global ptr @or51132_load_firmware._entry.37, section ".printk_index", align 4
@or51132_load_firmware._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.24, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014or51132: load_firmware error 4\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.42 = internal global ptr @or51132_load_firmware._entry.40, section ".printk_index", align 4
@or51132_load_firmware._data = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\10\10\00", [29 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.24, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014or51132: load_firmware error a\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.45 = internal global ptr @or51132_load_firmware._entry.43, section ".printk_index", align 4
@or51132_load_firmware._data.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\04\17", [30 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.24, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014or51132: load_firmware error b\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.49 = internal global ptr @or51132_load_firmware._entry.47, section ".printk_index", align 4
@or51132_load_firmware._data.50 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@or51132_load_firmware._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.24, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014or51132: load_firmware error c\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.53 = internal global ptr @or51132_load_firmware._entry.51, section ".printk_index", align 4
@or51132_load_firmware._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.24, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014or51132: load_firmware error d - %d\0A\00", [57 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.56 = internal global ptr @or51132_load_firmware._entry.54, section ".printk_index", align 4
@or51132_load_firmware._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.24, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014or51132: Version: %02X%02X%02X%02X-%02X%02X%02X%02X (%02X%01X-%01X-%02X%01X-%01X)\0A\00", [43 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.59 = internal global ptr @or51132_load_firmware._entry.57, section ".printk_index", align 4
@or51132_load_firmware._data.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\10\00\00", [29 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.24, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014or51132: load_firmware error e\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_load_firmware._entry_ptr.63 = internal global ptr @or51132_load_firmware._entry.61, section ".printk_index", align 4
@or51132_writebuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014or51132: I2C write (addr 0x%02x len %d) error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"or51132_writebuf\00", [47 x i8] zeroinitializer }, align 32
@or51132_writebuf._entry_ptr = internal global ptr @or51132_writebuf._entry, section ".printk_index", align 4
@or51132_readbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014or51132: I2C read (addr 0x%02x len %d) error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"or51132_readbuf\00", [16 x i8] zeroinitializer }, align 32
@or51132_readbuf._entry_ptr = internal global ptr @or51132_readbuf._entry, section ".printk_index", align 4
@__const.or51132_setmode.cmd_buf1 = private unnamed_addr constant [3 x i8] c"\04\01_", align 1
@__const.or51132_setmode.cmd_buf2 = private unnamed_addr constant [3 x i8] c"\1C\00\00", align 1
@or51132_setmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017or51132: setmode %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"or51132_setmode\00", [16 x i8] zeroinitializer }, align 32
@or51132_setmode._entry_ptr = internal global ptr @or51132_setmode._entry, section ".printk_index", align 4
@or51132_setmode._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014or51132: setmode: Modulation set to unsupported value (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@or51132_setmode._entry_ptr.72 = internal global ptr @or51132_setmode._entry.70, section ".printk_index", align 4
@or51132_setmode._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014or51132: set_mode error 1\0A\00", [35 x i8] zeroinitializer }, align 32
@or51132_setmode._entry_ptr.75 = internal global ptr @or51132_setmode._entry.73, section ".printk_index", align 4
@or51132_setmode._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017or51132: set #1 to %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@or51132_setmode._entry_ptr.78 = internal global ptr @or51132_setmode._entry.76, section ".printk_index", align 4
@or51132_setmode._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.69, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014or51132: set_mode error 2\0A\00", [35 x i8] zeroinitializer }, align 32
@or51132_setmode._entry_ptr.81 = internal global ptr @or51132_setmode._entry.79, section ".printk_index", align 4
@or51132_setmode._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.69, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017or51132: set #6 to 0x%02x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@or51132_setmode._entry_ptr.84 = internal global ptr @or51132_setmode._entry.82, section ".printk_index", align 4
@or51132_get_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014or51132: get_parameters: error reading receiver status\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"or51132_get_parameters\00", [41 x i8] zeroinitializer }, align 32
@or51132_get_parameters._entry_ptr = internal global ptr @or51132_get_parameters._entry, section ".printk_index", align 4
@or51132_get_parameters._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014or51132: unknown status 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@or51132_get_parameters._entry_ptr.89 = internal global ptr @or51132_get_parameters._entry.87, section ".printk_index", align 4
@or51132_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014or51132: I2C error reading register %d: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"or51132_readreg\00", [16 x i8] zeroinitializer }, align 32
@or51132_readreg._entry_ptr = internal global ptr @or51132_readreg._entry, section ".printk_index", align 4
@or51132_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014or51132: read_status: error reading receiver status: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"or51132_read_status\00", [44 x i8] zeroinitializer }, align 32
@or51132_read_status._entry_ptr = internal global ptr @or51132_read_status._entry, section ".printk_index", align 4
@or51132_read_status._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017or51132: %s: read_status %04x\0A\00", [63 x i8] zeroinitializer }, align 32
@or51132_read_status._entry_ptr.96 = internal global ptr @or51132_read_status._entry.94, section ".printk_index", align 4
@or51132_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014or51132: read_snr: error reading equalizer\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"or51132_read_snr\00", [47 x i8] zeroinitializer }, align 32
@or51132_read_snr._entry_ptr = internal global ptr @or51132_read_snr._entry, section ".printk_index", align 4
@or51132_read_snr._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017or51132: read_snr noise (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@or51132_read_snr._entry_ptr.101 = internal global ptr @or51132_read_snr._entry.99, section ".printk_index", align 4
@or51132_read_snr._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014or51132: read_snr: error reading receiver status\0A\00", [44 x i8] zeroinitializer }, align 32
@or51132_read_snr._entry_ptr.104 = internal global ptr @or51132_read_snr._entry.102, section ".printk_index", align 4
@or51132_read_snr._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.98, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@or51132_read_snr._entry_ptr.106 = internal global ptr @or51132_read_snr._entry.105, section ".printk_index", align 4
@or51132_read_snr._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.98, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017or51132: %s: modulation %02x, NTSC rej O%s\0A\00", [50 x i8] zeroinitializer }, align 32
@or51132_read_snr._entry_ptr.109 = internal global ptr @or51132_read_snr._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ff\00", [29 x i8] zeroinitializer }, align 32
@or51132_read_snr._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.98, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017or51132: %s: noise = 0x%08x, snr = %d.%02d dB\0A\00", [47 x i8] zeroinitializer }, align 32
@or51132_read_snr._entry_ptr.114 = internal global ptr @or51132_read_snr._entry.112, section ".printk_index", align 4
@switch.table.or51132_set_parameters = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 0, i32 2, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.or51132_set_parameters.115 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 0, i32 2, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 67, i64 69]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 67, i64 69]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 67, i64 69]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 67, i64 69]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"or51132_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 571, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 34, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 308, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 309, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 315, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 316, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 322, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 326, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 330, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 336, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 339, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [8 x i8] c"run_buf\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 120, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 125, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 129, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 131, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 135, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 140, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 145, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 149, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 158, i32 13 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 159, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 162, i32 13 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 163, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 166, i32 13 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 167, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 177, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 183, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [6 x i8] c"_data\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 190, i32 13 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 191, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 68, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 91, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 225, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 252, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 260, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 263, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 267, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 270, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 371, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 387, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 110, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 408, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 412, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 469, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 472, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 478, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 493, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 497, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.413 = private constant [41 x i8] c"../drivers/media/dvb-frontends/or51132.c\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 504, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [36 x i8] c"switch.table.or51132_set_parameters\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [40 x i8] c"switch.table.or51132_set_parameters.115\00", align 1
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__ksymtab_or51132_attach, ptr @__param_debug, ptr @or51132_get_parameters._entry, ptr @or51132_get_parameters._entry.87, ptr @or51132_get_parameters._entry_ptr, ptr @or51132_get_parameters._entry_ptr.89, ptr @or51132_load_firmware._entry, ptr @or51132_load_firmware._entry.25, ptr @or51132_load_firmware._entry.28, ptr @or51132_load_firmware._entry.31, ptr @or51132_load_firmware._entry.34, ptr @or51132_load_firmware._entry.37, ptr @or51132_load_firmware._entry.40, ptr @or51132_load_firmware._entry.43, ptr @or51132_load_firmware._entry.47, ptr @or51132_load_firmware._entry.51, ptr @or51132_load_firmware._entry.54, ptr @or51132_load_firmware._entry.57, ptr @or51132_load_firmware._entry.61, ptr @or51132_load_firmware._entry_ptr, ptr @or51132_load_firmware._entry_ptr.27, ptr @or51132_load_firmware._entry_ptr.30, ptr @or51132_load_firmware._entry_ptr.33, ptr @or51132_load_firmware._entry_ptr.36, ptr @or51132_load_firmware._entry_ptr.39, ptr @or51132_load_firmware._entry_ptr.42, ptr @or51132_load_firmware._entry_ptr.45, ptr @or51132_load_firmware._entry_ptr.49, ptr @or51132_load_firmware._entry_ptr.53, ptr @or51132_load_firmware._entry_ptr.56, ptr @or51132_load_firmware._entry_ptr.59, ptr @or51132_load_firmware._entry_ptr.63, ptr @or51132_read_snr._entry, ptr @or51132_read_snr._entry.102, ptr @or51132_read_snr._entry.105, ptr @or51132_read_snr._entry.107, ptr @or51132_read_snr._entry.112, ptr @or51132_read_snr._entry.99, ptr @or51132_read_snr._entry_ptr, ptr @or51132_read_snr._entry_ptr.101, ptr @or51132_read_snr._entry_ptr.104, ptr @or51132_read_snr._entry_ptr.106, ptr @or51132_read_snr._entry_ptr.109, ptr @or51132_read_snr._entry_ptr.114, ptr @or51132_read_status._entry, ptr @or51132_read_status._entry.94, ptr @or51132_read_status._entry_ptr, ptr @or51132_read_status._entry_ptr.96, ptr @or51132_readbuf._entry, ptr @or51132_readbuf._entry_ptr, ptr @or51132_readreg._entry, ptr @or51132_readreg._entry_ptr, ptr @or51132_set_parameters._entry, ptr @or51132_set_parameters._entry.11, ptr @or51132_set_parameters._entry.14, ptr @or51132_set_parameters._entry.17, ptr @or51132_set_parameters._entry.20, ptr @or51132_set_parameters._entry.4, ptr @or51132_set_parameters._entry.8, ptr @or51132_set_parameters._entry_ptr, ptr @or51132_set_parameters._entry_ptr.10, ptr @or51132_set_parameters._entry_ptr.13, ptr @or51132_set_parameters._entry_ptr.16, ptr @or51132_set_parameters._entry_ptr.19, ptr @or51132_set_parameters._entry_ptr.22, ptr @or51132_set_parameters._entry_ptr.6, ptr @or51132_setmode._entry, ptr @or51132_setmode._entry.70, ptr @or51132_setmode._entry.73, ptr @or51132_setmode._entry.76, ptr @or51132_setmode._entry.79, ptr @or51132_setmode._entry.82, ptr @or51132_setmode._entry_ptr, ptr @or51132_setmode._entry_ptr.72, ptr @or51132_setmode._entry_ptr.75, ptr @or51132_setmode._entry_ptr.78, ptr @or51132_setmode._entry_ptr.81, ptr @or51132_setmode._entry_ptr.84, ptr @or51132_writebuf._entry, ptr @or51132_writebuf._entry_ptr, ptr @or51132_ops, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @or51132_load_firmware.run_buf, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @or51132_load_firmware._data, ptr @.str.44, ptr @or51132_load_firmware._data.46, ptr @.str.48, ptr @or51132_load_firmware._data.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @or51132_load_firmware._data.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @switch.table.or51132_set_parameters, ptr @switch.table.or51132_set_parameters.115], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_set_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_set_parameters._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_set_parameters._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_set_parameters._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_set_parameters._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_set_parameters._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_set_parameters._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware.run_buf to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._data to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._data.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._data.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._data.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_load_firmware._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_writebuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_readbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_setmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_setmode._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_setmode._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_setmode._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_setmode._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_setmode._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_get_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_get_parameters._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_read_status._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_read_snr._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_read_snr._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_read_snr._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_read_snr._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51132_read_snr._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.or51132_set_parameters to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.or51132_set_parameters.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @or51132_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1060) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %config1 = getelementptr inbounds %struct.or51132_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %current_frequency = getelementptr inbounds %struct.or51132_state, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %current_frequency, align 8
  %current_modulation = getelementptr inbounds %struct.or51132_state, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %current_modulation, align 8
  %frontend = getelementptr inbounds %struct.or51132_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.or51132_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = call ptr @memcpy(ptr %ops, ptr @or51132_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.or51132_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %frontend, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @or51132_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @or51132_init(ptr nocapture noundef readnone %fe) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @or51132_sleep(ptr nocapture noundef readnone %fe) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51132_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i252.i = alloca %struct.i2c_msg, align 4
  %msg.i238.i = alloca %struct.i2c_msg, align 4
  %msg.i224.i = alloca %struct.i2c_msg, align 4
  %msg.i210.i = alloca %struct.i2c_msg, align 4
  %msg.i196.i = alloca %struct.i2c_msg, align 4
  %msg.i181.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %rec_buf.i = alloca [8 x i8], align 8
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !211
  %current_modulation = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_modulation, align 4
  %switch.tableidx = add i32 %4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 5
  br i1 %5, label %switch.lookup, label %entry.modulation_fw_class.exit_crit_edge

entry.modulation_fw_class.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %modulation_fw_class.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.or51132_set_parameters, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %modulation_fw_class.exit

modulation_fw_class.exit:                         ; preds = %switch.lookup, %entry.modulation_fw_class.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.modulation_fw_class.exit_crit_edge ]
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %modulation, align 4
  %switch.tableidx128 = add i32 %8, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx128)
  %9 = icmp ult i32 %switch.tableidx128, 5
  br i1 %9, label %switch.lookup127, label %modulation_fw_class.exit.modulation_fw_class.exit115_crit_edge

modulation_fw_class.exit.modulation_fw_class.exit115_crit_edge: ; preds = %modulation_fw_class.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %modulation_fw_class.exit115

switch.lookup127:                                 ; preds = %modulation_fw_class.exit
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep129 = getelementptr inbounds [5 x i32], ptr @switch.table.or51132_set_parameters.115, i32 0, i32 %switch.tableidx128
  %10 = ptrtoint ptr %switch.gep129 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load130 = load i32, ptr %switch.gep129, align 4
  br label %modulation_fw_class.exit115

modulation_fw_class.exit115:                      ; preds = %switch.lookup127, %modulation_fw_class.exit.modulation_fw_class.exit115_crit_edge
  %retval.0.i114 = phi i32 [ %switch.load130, %switch.lookup127 ], [ 0, %modulation_fw_class.exit.modulation_fw_class.exit115_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i114)
  %cmp.not = icmp eq i32 %retval.0.i, %retval.0.i114
  br i1 %cmp.not, label %modulation_fw_class.exit115.if.end56_crit_edge, label %if.then

modulation_fw_class.exit115.if.end56_crit_edge:   ; preds = %modulation_fw_class.exit115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then:                                          ; preds = %modulation_fw_class.exit115
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end23 [
    i32 7, label %do.body
    i32 6, label %if.then.do.body10_crit_edge
    i32 3, label %if.then.do.body10_crit_edge131
    i32 5, label %if.then.do.body10_crit_edge132
  ]

if.then.do.body10_crit_edge132:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

if.then.do.body10_crit_edge131:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

if.then.do.body10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

do.body:                                          ; preds = %if.then
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %do.body.do.end29_crit_edge, label %do.body.do.end29.sink.split_crit_edge

do.body.do.end29.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29.sink.split

do.body.do.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

do.body10:                                        ; preds = %if.then.do.body10_crit_edge, %if.then.do.body10_crit_edge131, %if.then.do.body10_crit_edge132
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %do.body10.do.end29_crit_edge, label %do.body10.do.end29.sink.split_crit_edge

do.body10.do.end29.sink.split_crit_edge:          ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29.sink.split

do.body10.do.end29_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

do.end23:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %8) #12
  br label %cleanup

do.end29.sink.split:                              ; preds = %do.body10.do.end29.sink.split_crit_edge, %do.body.do.end29.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str, %do.body.do.end29.sink.split_crit_edge ], [ @.str.5, %do.body10.do.end29.sink.split_crit_edge ]
  %clock_mode.0.ph = phi i32 [ 0, %do.body.do.end29.sink.split_crit_edge ], [ 1, %do.body10.do.end29.sink.split_crit_edge ]
  %fwname.0.ph = phi ptr [ @.str.3, %do.body.do.end29.sink.split_crit_edge ], [ @.str.7, %do.body10.do.end29.sink.split_crit_edge ]
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink) #12
  br label %do.end29

do.end29:                                         ; preds = %do.end29.sink.split, %do.body10.do.end29_crit_edge, %do.body.do.end29_crit_edge
  %clock_mode.0 = phi i32 [ 0, %do.body.do.end29_crit_edge ], [ 1, %do.body10.do.end29_crit_edge ], [ %clock_mode.0.ph, %do.end29.sink.split ]
  %fwname.0 = phi ptr [ @.str.3, %do.body.do.end29_crit_edge ], [ @.str.7, %do.body10.do.end29_crit_edge ], [ %fwname.0.ph, %do.end29.sink.split ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %fwname.0) #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %call32 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %fwname.0, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end40:                                         ; preds = %do.end29
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  %20 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rec_buf.i) #8
  %22 = getelementptr inbounds [8 x i8], ptr %rec_buf.i, i32 0, i32 1
  %23 = getelementptr inbounds [8 x i8], ptr %rec_buf.i, i32 0, i32 2
  %24 = getelementptr inbounds [8 x i8], ptr %rec_buf.i, i32 0, i32 3
  %25 = getelementptr inbounds [8 x i8], ptr %rec_buf.i, i32 0, i32 4
  %26 = getelementptr inbounds [8 x i8], ptr %rec_buf.i, i32 0, i32 5
  %27 = getelementptr inbounds [8 x i8], ptr %rec_buf.i, i32 0, i32 6
  %28 = getelementptr inbounds [8 x i8], ptr %rec_buf.i, i32 0, i32 7
  %29 = ptrtoint ptr %rec_buf.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -1, ptr %rec_buf.i, align 8
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %do.end3.thread.i, label %do.end3.i

do.end3.thread.i:                                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %data265.i = getelementptr inbounds %struct.firmware, ptr %19, i32 0, i32 1
  %31 = ptrtoint ptr %data265.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data265.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #8
  br label %do.end14.i

do.end3.i:                                        ; preds = %if.end40
  %36 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %19, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %37) #12
  %.pr.i = load i32, ptr @debug, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %19, i32 0, i32 1
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool5.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool5.not.i, label %do.end3.i.do.end14.i_crit_edge, label %do.end9.i

do.end3.i.do.end14.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end9.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %42) #12
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end9.i, %do.end3.i.do.end14.i_crit_edge, %do.end3.thread.i
  %43 = phi i32 [ %35, %do.end3.thread.i ], [ %42, %do.end9.i ], [ %42, %do.end3.i.do.end14.i_crit_edge ]
  %data267.i = phi ptr [ %data265.i, %do.end3.thread.i ], [ %data.i, %do.end9.i ], [ %data.i, %do.end3.i.do.end14.i_crit_edge ]
  %44 = ptrtoint ptr %data267.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data267.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #8
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool17.not.i = icmp eq i32 %49, 0
  br i1 %tobool17.not.i, label %do.end14.i.do.end26.i_crit_edge, label %do.end21.i

do.end14.i.do.end26.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26.i

do.end21.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %48) #12
  br label %do.end26.i

do.end26.i:                                       ; preds = %do.end21.i, %do.end14.i.do.end26.i_crit_edge
  %50 = ptrtoint ptr %data267.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data267.i, align 4
  %arrayidx.i = getelementptr i8, ptr %51, i32 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %52 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %52, align 4
  %config.i.i = getelementptr inbounds %struct.or51132_state, ptr %21, i32 0, i32 1
  %54 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 4
  %conv.i.i = zext i8 %57 to i16
  %58 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i.i, align 2
  %conv2.i.i = trunc i32 %43 to i16
  store i16 %conv2.i.i, ptr %52, align 4
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.i, ptr %buf3.i.i, align 4
  %61 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %21, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end36.i, label %do.end33.i

do.end33.i:                                       ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %msg.i.i, align 4
  %conv6.i.i = zext i16 %64 to i32
  %65 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %52, align 4
  %conv8.i.i = zext i16 %66 to i32
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv6.i.i, i32 noundef %conv8.i.i, i32 noundef %call.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %do.end46

if.end36.i:                                       ; preds = %do.end26.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  %67 = ptrtoint ptr %data267.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data267.i, align 4
  %add.i = add i32 %43, 8
  %arrayidx38.i = getelementptr i8, ptr %68, i32 %add.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i181.i) #8
  %69 = getelementptr inbounds i8, ptr %msg.i181.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %69, align 4
  %71 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %conv.i183.i = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i181.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i183.i, ptr %msg.i181.i, align 4
  %flags.i184.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i181.i, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i184.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i184.i, align 2
  %conv2.i186.i = trunc i32 %48 to i16
  store i16 %conv2.i186.i, ptr %69, align 4
  %buf3.i187.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i181.i, i32 0, i32 3
  %77 = ptrtoint ptr %buf3.i187.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx38.i, ptr %buf3.i187.i, align 4
  %78 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %21, align 4
  %call.i188.i = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i181.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i188.i)
  %cmp.not.i189.i = icmp eq i32 %call.i188.i, 1
  br i1 %cmp.not.i189.i, label %if.end47.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %msg.i181.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %msg.i181.i, align 4
  %conv6.i190.i = zext i16 %81 to i32
  %82 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %69, align 4
  %conv8.i191.i = zext i16 %83 to i32
  %call9.i192.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv6.i190.i, i32 noundef %conv8.i191.i, i32 noundef %call.i188.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i181.i) #8
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %do.end46

if.end47.i:                                       ; preds = %if.end36.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i181.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i196.i) #8
  %84 = getelementptr inbounds i8, ptr %msg.i196.i, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196607, ptr %84, align 4
  %86 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 4
  %conv.i198.i = zext i8 %89 to i16
  %90 = ptrtoint ptr %msg.i196.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv.i198.i, ptr %msg.i196.i, align 4
  %flags.i199.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i199.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i199.i, align 2
  %buf3.i201.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 0, i32 3
  %92 = ptrtoint ptr %buf3.i201.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @or51132_load_firmware.run_buf, ptr %buf3.i201.i, align 4
  %93 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %21, align 4
  %call.i202.i = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i196.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i202.i)
  %cmp.not.i203.i = icmp eq i32 %call.i202.i, 1
  br i1 %cmp.not.i203.i, label %if.end56.i, label %do.end53.i

do.end53.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %msg.i196.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %msg.i196.i, align 4
  %conv6.i204.i = zext i16 %96 to i32
  %97 = ptrtoint ptr %84 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %84, align 4
  %conv8.i205.i = zext i16 %98 to i32
  %call9.i206.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv6.i204.i, i32 noundef %conv8.i205.i, i32 noundef %call.i202.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i196.i) #8
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  br label %do.end46

if.end56.i:                                       ; preds = %if.end47.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i196.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i210.i) #8
  %99 = getelementptr inbounds i8, ptr %msg.i210.i, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %99, align 4
  %101 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 4
  %conv.i212.i = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i210.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i212.i, ptr %msg.i210.i, align 4
  %flags.i213.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i210.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i213.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i213.i, align 2
  %buf3.i215.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i210.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf3.i215.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @or51132_load_firmware.run_buf, ptr %buf3.i215.i, align 4
  %108 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %21, align 4
  %call.i216.i = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i210.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i216.i)
  %cmp.not.i217.i = icmp eq i32 %call.i216.i, 1
  br i1 %cmp.not.i217.i, label %if.end65.i, label %do.end62.i

do.end62.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %msg.i210.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %msg.i210.i, align 4
  %conv6.i218.i = zext i16 %111 to i32
  %112 = ptrtoint ptr %99 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %99, align 4
  %conv8.i219.i = zext i16 %113 to i32
  %call9.i220.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv6.i218.i, i32 noundef %conv8.i219.i, i32 noundef %call.i216.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i210.i) #8
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  br label %do.end46

if.end65.i:                                       ; preds = %if.end56.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i210.i) #8
  call void @msleep(i32 noundef 50) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i224.i) #8
  %114 = getelementptr inbounds i8, ptr %msg.i224.i, i32 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 262143, ptr %114, align 4
  %116 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %config.i.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 4
  %conv.i226.i = zext i8 %119 to i16
  %120 = ptrtoint ptr %msg.i224.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i226.i, ptr %msg.i224.i, align 4
  %flags.i227.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i224.i, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i227.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i227.i, align 2
  %buf3.i229.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i224.i, i32 0, i32 3
  %122 = ptrtoint ptr %buf3.i229.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @or51132_load_firmware._data, ptr %buf3.i229.i, align 4
  %123 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %21, align 4
  %call.i230.i = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msg.i224.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i230.i)
  %cmp.not.i231.i = icmp eq i32 %call.i230.i, 1
  br i1 %cmp.not.i231.i, label %if.end75.i, label %do.end72.i

do.end72.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %msg.i224.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %msg.i224.i, align 4
  %conv6.i232.i = zext i16 %126 to i32
  %127 = ptrtoint ptr %114 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %114, align 4
  %conv8.i233.i = zext i16 %128 to i32
  %call9.i234.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv6.i232.i, i32 noundef %conv8.i233.i, i32 noundef %call.i230.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i224.i) #8
  %call74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %do.end46

if.end75.i:                                       ; preds = %if.end65.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i224.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i238.i) #8
  %129 = getelementptr inbounds i8, ptr %msg.i238.i, i32 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 196607, ptr %129, align 4
  %131 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %config.i.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 4
  %conv.i240.i = zext i8 %134 to i16
  %135 = ptrtoint ptr %msg.i238.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i240.i, ptr %msg.i238.i, align 4
  %flags.i241.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238.i, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i241.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i241.i, align 2
  %buf3.i243.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i238.i, i32 0, i32 3
  %137 = ptrtoint ptr %buf3.i243.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @or51132_load_firmware._data.46, ptr %buf3.i243.i, align 4
  %138 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %21, align 4
  %call.i244.i = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %msg.i238.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i244.i)
  %cmp.not.i245.i = icmp eq i32 %call.i244.i, 1
  br i1 %cmp.not.i245.i, label %if.end85.i, label %do.end82.i

do.end82.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %msg.i238.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %msg.i238.i, align 4
  %conv6.i246.i = zext i16 %141 to i32
  %142 = ptrtoint ptr %129 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %129, align 4
  %conv8.i247.i = zext i16 %143 to i32
  %call9.i248.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv6.i246.i, i32 noundef %conv8.i247.i, i32 noundef %call.i244.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i238.i) #8
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #12
  br label %do.end46

if.end85.i:                                       ; preds = %if.end75.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i238.i) #8
  %call87.i = call fastcc i32 @or51132_writebuf(ptr noundef %21, ptr noundef nonnull @or51132_load_firmware._data.50, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %for.cond.preheader.i, label %do.end92.i

for.cond.preheader.i:                             ; preds = %if.end85.i
  %144 = getelementptr inbounds i8, ptr %msg.i252.i, i32 4
  %flags.i255.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i252.i, i32 0, i32 1
  %buf3.i257.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i252.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i252.i) #8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %144, align 4
  %146 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %config.i.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 4
  %conv.i254.i = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i252.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i254.i, ptr %msg.i252.i, align 4
  %151 = ptrtoint ptr %flags.i255.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 1, ptr %flags.i255.i, align 2
  store i16 2, ptr %144, align 4
  %152 = ptrtoint ptr %buf3.i257.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %rec_buf.i, ptr %buf3.i257.i, align 4
  %153 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %21, align 4
  %call.i258.i = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %msg.i252.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i258.i)
  %cmp.not.i259.i = icmp eq i32 %call.i258.i, 1
  br i1 %cmp.not.i259.i, label %for.inc.i, label %for.cond.preheader.i.do.end102.i_crit_edge

for.cond.preheader.i.do.end102.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102.i

do.end92.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  br label %do.end46

do.end102.i:                                      ; preds = %for.inc.2.i.do.end102.i_crit_edge, %for.inc.1.i.do.end102.i_crit_edge, %for.inc.i.do.end102.i_crit_edge, %for.cond.preheader.i.do.end102.i_crit_edge
  %i.0283.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.do.end102.i_crit_edge ], [ 1, %for.inc.i.do.end102.i_crit_edge ], [ 2, %for.inc.1.i.do.end102.i_crit_edge ], [ 3, %for.inc.2.i.do.end102.i_crit_edge ]
  %call.i258.lcssa.i = phi i32 [ %call.i258.i, %for.cond.preheader.i.do.end102.i_crit_edge ], [ %call.i258.1.i, %for.inc.i.do.end102.i_crit_edge ], [ %call.i258.2.i, %for.inc.1.i.do.end102.i_crit_edge ], [ %call.i258.3.i, %for.inc.2.i.do.end102.i_crit_edge ]
  %155 = ptrtoint ptr %msg.i252.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %msg.i252.i, align 4
  %conv6.i260.i = zext i16 %156 to i32
  %157 = ptrtoint ptr %144 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %144, align 4
  %conv8.i261.i = zext i16 %158 to i32
  %call9.i262.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv6.i260.i, i32 noundef %conv8.i261.i, i32 noundef %call.i258.lcssa.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i252.i) #8
  %call104.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %i.0283.lcssa.i) #12
  br label %do.end46

for.inc.i:                                        ; preds = %for.cond.preheader.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i252.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i252.i) #8
  %159 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %144, align 4
  %160 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %config.i.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 4
  %conv.i254.1.i = zext i8 %163 to i16
  %164 = ptrtoint ptr %msg.i252.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv.i254.1.i, ptr %msg.i252.i, align 4
  %165 = ptrtoint ptr %flags.i255.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 1, ptr %flags.i255.i, align 2
  store i16 2, ptr %144, align 4
  %166 = ptrtoint ptr %buf3.i257.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %23, ptr %buf3.i257.i, align 4
  %167 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %21, align 4
  %call.i258.1.i = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %msg.i252.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i258.1.i)
  %cmp.not.i259.1.i = icmp eq i32 %call.i258.1.i, 1
  br i1 %cmp.not.i259.1.i, label %for.inc.1.i, label %for.inc.i.do.end102.i_crit_edge

for.inc.i.do.end102.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i252.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i252.i) #8
  %169 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %144, align 4
  %170 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %config.i.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %171, align 4
  %conv.i254.2.i = zext i8 %173 to i16
  %174 = ptrtoint ptr %msg.i252.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv.i254.2.i, ptr %msg.i252.i, align 4
  %175 = ptrtoint ptr %flags.i255.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 1, ptr %flags.i255.i, align 2
  store i16 2, ptr %144, align 4
  %176 = ptrtoint ptr %buf3.i257.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %25, ptr %buf3.i257.i, align 4
  %177 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %21, align 4
  %call.i258.2.i = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %msg.i252.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i258.2.i)
  %cmp.not.i259.2.i = icmp eq i32 %call.i258.2.i, 1
  br i1 %cmp.not.i259.2.i, label %for.inc.2.i, label %for.inc.1.i.do.end102.i_crit_edge

for.inc.1.i.do.end102.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i252.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i252.i) #8
  %179 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -1, ptr %144, align 4
  %180 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %config.i.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %181, align 4
  %conv.i254.3.i = zext i8 %183 to i16
  %184 = ptrtoint ptr %msg.i252.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv.i254.3.i, ptr %msg.i252.i, align 4
  %185 = ptrtoint ptr %flags.i255.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 1, ptr %flags.i255.i, align 2
  store i16 2, ptr %144, align 4
  %186 = ptrtoint ptr %buf3.i257.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %27, ptr %buf3.i257.i, align 4
  %187 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %21, align 4
  %call.i258.3.i = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %msg.i252.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i258.3.i)
  %cmp.not.i259.3.i = icmp eq i32 %call.i258.3.i, 1
  br i1 %cmp.not.i259.3.i, label %for.inc.3.i, label %for.inc.2.i.do.end102.i_crit_edge

for.inc.2.i.do.end102.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i252.i) #8
  %189 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %22, align 1
  %conv.i = zext i8 %190 to i32
  %191 = ptrtoint ptr %rec_buf.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %rec_buf.i, align 8
  %conv112.i = zext i8 %192 to i32
  %193 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %24, align 1
  %conv114.i = zext i8 %194 to i32
  %195 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %23, align 2
  %conv116.i = zext i8 %196 to i32
  %197 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %26, align 1
  %conv118.i = zext i8 %198 to i32
  %199 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %25, align 4
  %conv120.i = zext i8 %200 to i32
  %201 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %28, align 1
  %conv122.i = zext i8 %202 to i32
  %203 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %27, align 2
  %conv124.i = zext i8 %204 to i32
  %205 = lshr i32 %conv116.i, 4
  %and.i = and i32 %conv116.i, 15
  %206 = lshr i32 %conv120.i, 4
  %and138.i = and i32 %conv120.i, 15
  %call139.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv.i, i32 noundef %conv112.i, i32 noundef %conv114.i, i32 noundef %conv116.i, i32 noundef %conv118.i, i32 noundef %conv120.i, i32 noundef %conv122.i, i32 noundef %conv124.i, i32 noundef %conv114.i, i32 noundef %205, i32 noundef %and.i, i32 noundef %conv118.i, i32 noundef %206, i32 noundef %and138.i) #12
  %call141.i = call fastcc i32 @or51132_writebuf(ptr noundef %21, ptr noundef nonnull @or51132_load_firmware._data.60, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %tobool142.not.i = icmp eq i32 %call141.i, 0
  br i1 %tobool142.not.i, label %do.end52, label %do.end146.i

do.end146.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %do.end46

do.end46:                                         ; preds = %do.end146.i, %do.end102.i, %do.end92.i, %do.end82.i, %do.end72.i, %do.end62.i, %do.end53.i, %do.end44.i, %do.end33.i
  %retval.0.i120.ph = phi i32 [ %call141.i, %do.end146.i ], [ -121, %do.end102.i ], [ %call87.i, %do.end92.i ], [ -121, %do.end82.i ], [ -121, %do.end72.i ], [ -121, %do.end62.i ], [ -121, %do.end53.i ], [ -121, %do.end44.i ], [ -121, %do.end33.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rec_buf.i) #8
  %207 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %208) #8
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %cleanup

do.end52:                                         ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rec_buf.i) #8
  %209 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %210) #8
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  %config = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 1
  %211 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %config, align 4
  %set_ts_params = getelementptr inbounds %struct.or51132_config, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %set_ts_params, align 4
  %call55 = call i32 %214(ptr noundef %fe, i32 noundef %clock_mode.0) #8
  br label %if.end56

if.end56:                                         ; preds = %do.end52, %modulation_fw_class.exit115.if.end56_crit_edge
  %215 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %current_modulation, align 4
  %217 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %218)
  %cmp59.not = icmp eq i32 %216, %218
  br i1 %cmp59.not, label %if.end56.if.end64_crit_edge, label %if.then60

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %219 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %current_modulation, align 4
  call fastcc void @or51132_setmode(ptr noundef %fe)
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end56.if.end64_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %220 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %set_params, align 4
  %tobool65.not = icmp eq ptr %221, null
  br i1 %tobool65.not, label %if.end64.if.end78_crit_edge, label %if.then66

if.end64.if.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then66:                                        ; preds = %if.end64
  %call70 = call i32 %221(ptr noundef %fe) #8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %222 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool72.not = icmp eq ptr %223, null
  br i1 %tobool72.not, label %if.then66.if.end78_crit_edge, label %if.then73

if.then66.if.end78_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then73:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = call i32 %223(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.then66.if.end78_crit_edge, %if.end64.if.end78_crit_edge
  call fastcc void @or51132_setmode(ptr noundef %fe)
  %224 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %dtv_property_cache, align 4
  %current_frequency = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 5
  %226 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %current_frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %do.end46, %do.end37, %do.end23
  %retval.0 = phi i32 [ -1, %do.end23 ], [ %call32, %do.end37 ], [ %retval.0.i120.ph, %do.end46 ], [ 0, %if.end78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51132_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fe_tune_settings) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fe_tune_settings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %fe_tune_settings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fe_tune_settings, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fe_tune_settings, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51132_get_parameters(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %buf.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %6 = call ptr @memset(ptr %3, i32 255, i32 16)
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %3, align 4
  %14 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf2.i, align 4
  %15 = load i8, ptr %8, align 4
  %conv7.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv7.i, ptr %arrayinit.element3.i, align 4
  %17 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags8.i, align 2
  %18 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %len9.i, align 4
  %19 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.i, ptr %buf10.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %or51132_readreg.exit, label %entry.or51132_readreg.exit.thread_crit_edge

entry.or51132_readreg.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %or51132_readreg.exit.thread

or51132_readreg.exit.thread:                      ; preds = %sw.default.or51132_readreg.exit.thread_crit_edge, %entry.or51132_readreg.exit.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.or51132_readreg.exit.thread_crit_edge ], [ %call.i.1, %sw.default.or51132_readreg.exit.thread_crit_edge ]
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef 0, i32 noundef %call.i.lcssa) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #12
  br label %cleanup

or51132_readreg.exit:                             ; preds = %entry
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %23, label %sw.default [
    i8 6, label %or51132_readreg.exit.sw.epilog_crit_edge
    i8 67, label %or51132_readreg.exit.sw.bb2_crit_edge
    i8 69, label %or51132_readreg.exit.sw.bb4_crit_edge
  ]

or51132_readreg.exit.sw.bb4_crit_edge:            ; preds = %or51132_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

or51132_readreg.exit.sw.bb2_crit_edge:            ; preds = %or51132_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

or51132_readreg.exit.sw.epilog_crit_edge:         ; preds = %or51132_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %or51132_readreg.exit.1.sw.bb2_crit_edge, %or51132_readreg.exit.sw.bb2_crit_edge
  br label %sw.epilog

sw.bb4:                                           ; preds = %or51132_readreg.exit.1.sw.bb4_crit_edge, %or51132_readreg.exit.sw.bb4_crit_edge
  br label %sw.epilog

sw.default:                                       ; preds = %or51132_readreg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %buf.i, align 1
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %27 = call ptr @memset(ptr %3, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i.1 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.1, ptr %msg.i, align 4
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i, align 2
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %3, align 4
  %35 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i, ptr %buf2.i, align 4
  %36 = load i8, ptr %29, align 4
  %conv7.i.1 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv7.i.1, ptr %arrayinit.element3.i, align 4
  %38 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags8.i, align 2
  %39 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %len9.i, align 4
  %40 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i, ptr %buf10.i, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i.1 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.1)
  %cmp.not.i.1 = icmp eq i32 %call.i.1, 2
  br i1 %cmp.not.i.1, label %or51132_readreg.exit.1, label %sw.default.or51132_readreg.exit.thread_crit_edge

sw.default.or51132_readreg.exit.thread_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %or51132_readreg.exit.thread

or51132_readreg.exit.1:                           ; preds = %sw.default
  %43 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %44, label %sw.default.1 [
    i8 6, label %or51132_readreg.exit.1.sw.epilog_crit_edge
    i8 67, label %or51132_readreg.exit.1.sw.bb2_crit_edge
    i8 69, label %or51132_readreg.exit.1.sw.bb4_crit_edge
  ]

or51132_readreg.exit.1.sw.bb4_crit_edge:          ; preds = %or51132_readreg.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

or51132_readreg.exit.1.sw.bb2_crit_edge:          ; preds = %or51132_readreg.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

or51132_readreg.exit.1.sw.epilog_crit_edge:       ; preds = %or51132_readreg.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default.1:                                     ; preds = %or51132_readreg.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv16.i.le = zext i8 %44 to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv16.i.le) #12
  br label %cleanup

sw.epilog:                                        ; preds = %or51132_readreg.exit.1.sw.epilog_crit_edge, %sw.bb4, %sw.bb2, %or51132_readreg.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ 5, %sw.bb4 ], [ 3, %sw.bb2 ], [ 7, %or51132_readreg.exit.1.sw.epilog_crit_edge ], [ 7, %or51132_readreg.exit.sw.epilog_crit_edge ]
  %modulation5 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %46 = ptrtoint ptr %modulation5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %modulation5, align 4
  %current_frequency = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %current_frequency, align 4
  %49 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %p, align 4
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %50 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %inversion, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.1, %or51132_readreg.exit.thread
  %retval.0 = phi i32 [ -121, %or51132_readreg.exit.thread ], [ -121, %sw.default.1 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51132_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %5, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf2.i, align 4
  %arrayinit.element3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 4
  %conv7.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv7.i, ptr %arrayinit.element3.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %len9.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.i, ptr %buf10.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %or51132_readreg.exit, label %or51132_readreg.exit.thread

or51132_readreg.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef 0, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef -121) #12
  br label %cleanup

or51132_readreg.exit:                             ; preds = %entry
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.i, align 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %2, align 1
  %conv18.i = zext i8 %25 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %or51132_readreg.exit.do.end11_crit_edge, label %do.end6

or51132_readreg.exit.do.end11_crit_edge:          ; preds = %or51132_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end6:                                          ; preds = %or51132_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw nsw i32 %conv18.i, 8
  %conv16.i = zext i8 %23 to i32
  %or.i = or i32 %shl.i, %conv16.i
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef %or.i) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end6, %or51132_readreg.exit.do.end11_crit_edge
  %27 = and i32 %conv18.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not = icmp eq i32 %27, 0
  %. = select i1 %tobool12.not, i32 0, i32 31
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %or51132_readreg.exit.thread
  %storemerge20 = phi i32 [ %., %do.end11 ], [ 0, %or51132_readreg.exit.thread ]
  %retval.0 = phi i32 [ 0, %do.end11 ], [ -121, %or51132_readreg.exit.thread ]
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge20, ptr %status, align 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51132_read_ber(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ber) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51132_read_signal_strength(ptr noundef %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %snr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #8
  %2 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %snr, align 2, !annotation !211
  %read_snr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 18
  %3 = ptrtoint ptr %read_snr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_snr, align 4
  %call = call i32 %4(ptr noundef %fe, ptr noundef nonnull %snr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %snr1 = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %snr1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %snr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 587202559, i32 %6)
  %cmp2 = icmp ugt i32 %6, 587202559
  %div = udiv i32 %6, 8960
  %conv = trunc i32 %div to i16
  %storemerge = select i1 %cmp2, i16 -1, i16 %conv
  %7 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %storemerge, ptr %strength, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snr) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51132_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %buf.i88 = alloca [2 x i8], align 1
  %msg.i89 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i88, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %msg.i89, i32 4
  %flags.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 1
  %buf2.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 3
  %arrayinit.element3.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 1
  %flags8.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 1, i32 1
  %len9.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 1, i32 2
  %buf10.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %buf.i, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = call ptr @memset(ptr %3, i32 255, i32 16)
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %3, align 4
  %16 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf2.i, align 4
  %17 = load i8, ptr %10, align 4
  %conv7.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv7.i, ptr %arrayinit.element3.i, align 4
  %19 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags8.i, align 2
  %20 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len9.i, align 4
  %21 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %buf10.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %or51132_readreg.exit, label %entry.or51132_readreg.exit.thread_crit_edge

entry.or51132_readreg.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %or51132_readreg.exit.thread

or51132_readreg.exit.thread:                      ; preds = %do.end29.or51132_readreg.exit.thread_crit_edge, %entry.or51132_readreg.exit.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.or51132_readreg.exit.thread_crit_edge ], [ %call.i.1, %do.end29.or51132_readreg.exit.thread_crit_edge ]
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef 2, i32 noundef %call.i.lcssa) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #12
  br label %cleanup

or51132_readreg.exit:                             ; preds = %entry
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf.i, align 1
  %conv16.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 1
  %conv18.i = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 %conv18.i, 8
  %or.i = or i32 %shl.i, %conv16.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %or51132_readreg.exit.do.end11_crit_edge, label %do.end6

or51132_readreg.exit.do.end11_crit_edge:          ; preds = %or51132_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end6:                                          ; preds = %or51132_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %or.i) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end6, %or51132_readreg.exit.do.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i88) #8
  %29 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %buf.i88, align 1
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i89) #8
  %31 = call ptr @memset(ptr %5, i32 255, i32 16)
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i91 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i89 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i91, ptr %msg.i89, align 4
  %37 = ptrtoint ptr %flags.i92 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i92, align 2
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 2, ptr %5, align 4
  %39 = ptrtoint ptr %buf2.i94 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i88, ptr %buf2.i94, align 4
  %40 = load i8, ptr %33, align 4
  %conv7.i96 = zext i8 %40 to i16
  %41 = ptrtoint ptr %arrayinit.element3.i95 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv7.i96, ptr %arrayinit.element3.i95, align 4
  %42 = ptrtoint ptr %flags8.i97 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags8.i97, align 2
  %43 = ptrtoint ptr %len9.i98 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %len9.i98, align 4
  %44 = ptrtoint ptr %buf10.i99 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buf.i88, ptr %buf10.i99, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i100 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i89, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i100)
  %cmp.not.i101 = icmp eq i32 %call.i100, 2
  br i1 %cmp.not.i101, label %or51132_readreg.exit110, label %do.end11.or51132_readreg.exit110.thread_crit_edge

do.end11.or51132_readreg.exit110.thread_crit_edge: ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %or51132_readreg.exit110.thread

or51132_readreg.exit110.thread:                   ; preds = %do.end11.1.or51132_readreg.exit110.thread_crit_edge, %do.end11.or51132_readreg.exit110.thread_crit_edge
  %call.i100.lcssa = phi i32 [ %call.i100, %do.end11.or51132_readreg.exit110.thread_crit_edge ], [ %call.i100.1, %do.end11.1.or51132_readreg.exit110.thread_crit_edge ]
  %call15.i102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef 0, i32 noundef %call.i100.lcssa) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i89) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i88) #8
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #12
  br label %cleanup

or51132_readreg.exit110:                          ; preds = %do.end11
  %47 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %buf.i88, align 1
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i89) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i88) #8
  %51 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %48, label %do.end29 [
    i8 6, label %or51132_readreg.exit110.sw.bb_crit_edge
    i8 67, label %or51132_readreg.exit110.do.body36.loopexit_crit_edge
    i8 69, label %or51132_readreg.exit110.sw.bb26_crit_edge
  ]

or51132_readreg.exit110.sw.bb26_crit_edge:        ; preds = %or51132_readreg.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

or51132_readreg.exit110.do.body36.loopexit_crit_edge: ; preds = %or51132_readreg.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36.loopexit

or51132_readreg.exit110.sw.bb_crit_edge:          ; preds = %or51132_readreg.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %or51132_readreg.exit110.1.sw.bb_crit_edge, %or51132_readreg.exit110.sw.bb_crit_edge
  %.lcssa = phi i8 [ %50, %or51132_readreg.exit110.sw.bb_crit_edge ], [ %97, %or51132_readreg.exit110.1.sw.bb_crit_edge ]
  %or.i.lcssa156 = phi i32 [ %or.i, %or51132_readreg.exit110.sw.bb_crit_edge ], [ %or.i.1, %or51132_readreg.exit110.1.sw.bb_crit_edge ]
  %conv18.i105.le144 = zext i8 %.lcssa to i32
  %52 = and i32 %conv18.i105.le144, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool22.not = icmp eq i32 %52, 0
  %spec.select = select i1 %tobool22.not, i32 0, i32 -50331648
  br label %do.body36

sw.bb26:                                          ; preds = %or51132_readreg.exit110.1.sw.bb26_crit_edge, %or51132_readreg.exit110.sw.bb26_crit_edge
  %.lcssa166 = phi i8 [ %50, %or51132_readreg.exit110.sw.bb26_crit_edge ], [ %97, %or51132_readreg.exit110.1.sw.bb26_crit_edge ]
  %or.i.lcssa158 = phi i32 [ %or.i, %or51132_readreg.exit110.sw.bb26_crit_edge ], [ %or.i.1, %or51132_readreg.exit110.1.sw.bb26_crit_edge ]
  %conv18.i105.le = zext i8 %.lcssa166 to i32
  br label %do.body36

do.end29:                                         ; preds = %or51132_readreg.exit110
  %conv16.i104 = zext i8 %48 to i32
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv16.i104) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %53 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 4, ptr %buf.i, align 1
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %55 = call ptr @memset(ptr %3, i32 255, i32 16)
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv.i.1 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i.1, ptr %msg.i, align 4
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i, align 2
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 2, ptr %3, align 4
  %63 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf.i, ptr %buf2.i, align 4
  %64 = load i8, ptr %57, align 4
  %conv7.i.1 = zext i8 %64 to i16
  %65 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv7.i.1, ptr %arrayinit.element3.i, align 4
  %66 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags8.i, align 2
  %67 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 2, ptr %len9.i, align 4
  %68 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf.i, ptr %buf10.i, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i.1 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.1)
  %cmp.not.i.1 = icmp eq i32 %call.i.1, 2
  br i1 %cmp.not.i.1, label %or51132_readreg.exit.1, label %do.end29.or51132_readreg.exit.thread_crit_edge

do.end29.or51132_readreg.exit.thread_crit_edge:   ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %or51132_readreg.exit.thread

or51132_readreg.exit.1:                           ; preds = %do.end29
  %71 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %buf.i, align 1
  %conv16.i.1 = zext i8 %72 to i32
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %2, align 1
  %conv18.i.1 = zext i8 %74 to i32
  %shl.i.1 = shl nuw nsw i32 %conv18.i.1, 8
  %or.i.1 = or i32 %shl.i.1, %conv16.i.1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.1 = icmp eq i32 %75, 0
  br i1 %tobool.not.1, label %or51132_readreg.exit.1.do.end11.1_crit_edge, label %do.end6.1

or51132_readreg.exit.1.do.end11.1_crit_edge:      ; preds = %or51132_readreg.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.1

do.end6.1:                                        ; preds = %or51132_readreg.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %call8.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %or.i.1) #12
  br label %do.end11.1

do.end11.1:                                       ; preds = %do.end6.1, %or51132_readreg.exit.1.do.end11.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i88) #8
  %76 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 4, ptr %buf.i88, align 1
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i89) #8
  %78 = call ptr @memset(ptr %5, i32 255, i32 16)
  %79 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %config.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 4
  %conv.i91.1 = zext i8 %82 to i16
  %83 = ptrtoint ptr %msg.i89 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i91.1, ptr %msg.i89, align 4
  %84 = ptrtoint ptr %flags.i92 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i92, align 2
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 2, ptr %5, align 4
  %86 = ptrtoint ptr %buf2.i94 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf.i88, ptr %buf2.i94, align 4
  %87 = load i8, ptr %80, align 4
  %conv7.i96.1 = zext i8 %87 to i16
  %88 = ptrtoint ptr %arrayinit.element3.i95 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv7.i96.1, ptr %arrayinit.element3.i95, align 4
  %89 = ptrtoint ptr %flags8.i97 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %flags8.i97, align 2
  %90 = ptrtoint ptr %len9.i98 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 2, ptr %len9.i98, align 4
  %91 = ptrtoint ptr %buf10.i99 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %buf.i88, ptr %buf10.i99, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %call.i100.1 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i89, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i100.1)
  %cmp.not.i101.1 = icmp eq i32 %call.i100.1, 2
  br i1 %cmp.not.i101.1, label %or51132_readreg.exit110.1, label %do.end11.1.or51132_readreg.exit110.thread_crit_edge

do.end11.1.or51132_readreg.exit110.thread_crit_edge: ; preds = %do.end11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %or51132_readreg.exit110.thread

or51132_readreg.exit110.1:                        ; preds = %do.end11.1
  %94 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %buf.i88, align 1
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i89) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i88) #8
  %98 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %95, label %do.end29.1 [
    i8 6, label %or51132_readreg.exit110.1.sw.bb_crit_edge
    i8 67, label %or51132_readreg.exit110.1.do.body36.loopexit_crit_edge
    i8 69, label %or51132_readreg.exit110.1.sw.bb26_crit_edge
  ]

or51132_readreg.exit110.1.sw.bb26_crit_edge:      ; preds = %or51132_readreg.exit110.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

or51132_readreg.exit110.1.do.body36.loopexit_crit_edge: ; preds = %or51132_readreg.exit110.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36.loopexit

or51132_readreg.exit110.1.sw.bb_crit_edge:        ; preds = %or51132_readreg.exit110.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end29.1:                                       ; preds = %or51132_readreg.exit110.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv16.i104.1 = zext i8 %95 to i32
  %call32.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv16.i104.1) #12
  br label %cleanup

do.body36.loopexit:                               ; preds = %or51132_readreg.exit110.1.do.body36.loopexit_crit_edge, %or51132_readreg.exit110.do.body36.loopexit_crit_edge
  %.lcssa165 = phi i8 [ %50, %or51132_readreg.exit110.do.body36.loopexit_crit_edge ], [ %97, %or51132_readreg.exit110.1.do.body36.loopexit_crit_edge ]
  %or.i.lcssa157 = phi i32 [ %or.i, %or51132_readreg.exit110.do.body36.loopexit_crit_edge ], [ %or.i.1, %or51132_readreg.exit110.1.do.body36.loopexit_crit_edge ]
  %conv18.i105.le142 = zext i8 %.lcssa165 to i32
  br label %do.body36

do.body36:                                        ; preds = %do.body36.loopexit, %sw.bb26, %sw.bb
  %99 = phi i32 [ 69, %sw.bb26 ], [ 6, %sw.bb ], [ 67, %do.body36.loopexit ]
  %or.i160 = phi i32 [ %or.i.lcssa158, %sw.bb26 ], [ %or.i.lcssa156, %sw.bb ], [ %or.i.lcssa157, %do.body36.loopexit ]
  %conv18.i105137 = phi i32 [ %conv18.i105.le, %sw.bb26 ], [ %conv18.i105.le144, %sw.bb ], [ %conv18.i105.le142, %do.body36.loopexit ]
  %usK.1.neg = phi i32 [ 0, %sw.bb26 ], [ %spec.select, %sw.bb ], [ 0, %do.body36.loopexit ]
  %c.0 = phi i32 [ 150290396, %sw.bb26 ], [ 150204167, %sw.bb ], [ 150204167, %do.body36.loopexit ]
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool37.not = icmp eq i32 %100, 0
  br i1 %tobool37.not, label %do.body36.do.end49_crit_edge, label %do.end41

do.body36.do.end49_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %101 = and i32 %conv18.i105137, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool45.not = icmp eq i32 %101, 0
  %cond = select i1 %tobool45.not, ptr @.str.111, ptr @.str.110
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.98, i32 noundef %99, ptr noundef nonnull %cond) #12
  br label %do.end49

do.end49:                                         ; preds = %do.end41, %do.body36.do.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i160)
  %cmp.i = icmp eq i32 %or.i160, 0
  br i1 %cmp.i, label %do.end49.calculate_snr.exit_crit_edge, label %if.end.i112

do.end49.calculate_snr.exit_crit_edge:            ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %calculate_snr.exit

if.end.i112:                                      ; preds = %do.end49
  %call.i111 = call i32 @intlog10(i32 noundef %or.i160) #8
  %mul.i = shl i32 %call.i111, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0, i32 %mul.i)
  %cmp1.i = icmp ult i32 %c.0, %mul.i
  br i1 %cmp1.i, label %if.end.i112.calculate_snr.exit_crit_edge, label %if.end3.i

if.end.i112.calculate_snr.exit_crit_edge:         ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %calculate_snr.exit

if.end3.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %c.0, %mul.i
  %mul4.i = mul i32 %sub.i, 10
  br label %calculate_snr.exit

calculate_snr.exit:                               ; preds = %if.end3.i, %if.end.i112.calculate_snr.exit_crit_edge, %do.end49.calculate_snr.exit_crit_edge
  %retval.0.i113 = phi i32 [ %mul4.i, %if.end3.i ], [ 0, %do.end49.calculate_snr.exit_crit_edge ], [ 0, %if.end.i112.calculate_snr.exit_crit_edge ]
  %sub = add i32 %retval.0.i113, %usK.1.neg
  %snr51 = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 4
  %102 = ptrtoint ptr %snr51 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %sub, ptr %snr51, align 4
  %shr = lshr i32 %sub, 16
  %conv = trunc i32 %shr to i16
  %103 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv, ptr %snr, align 2
  %104 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool54.not = icmp eq i32 %104, 0
  br i1 %tobool54.not, label %calculate_snr.exit.cleanup_crit_edge, label %do.end58

calculate_snr.exit.cleanup_crit_edge:             ; preds = %calculate_snr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end58:                                         ; preds = %calculate_snr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %snr51 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %snr51, align 4
  %shr61 = lshr i32 %106, 24
  %shr63 = lshr i32 %106, 8
  %and64 = and i32 %shr63, 65535
  %mul = mul nuw nsw i32 %and64, 100
  %shr65 = lshr i32 %mul, 16
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.98, i32 noundef %or.i160, i32 noundef %shr61, i32 noundef %shr65) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %calculate_snr.exit.cleanup_crit_edge, %do.end29.1, %or51132_readreg.exit110.thread, %or51132_readreg.exit.thread
  %retval.0 = phi i32 [ -121, %or51132_readreg.exit.thread ], [ -121, %or51132_readreg.exit110.thread ], [ 0, %do.end58 ], [ 0, %calculate_snr.exit.cleanup_crit_edge ], [ -121, %do.end29.1 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51132_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ucblocks) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @or51132_setmode(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %msg.i1 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %cmd_buf1 = alloca [3 x i8], align 1
  %cmd_buf2 = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd_buf1) #8
  %2 = call ptr @memcpy(ptr %cmd_buf1, ptr @__const.or51132_setmode.cmd_buf1, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd_buf2) #8
  %3 = call ptr @memcpy(ptr %cmd_buf2, ptr @__const.or51132_setmode.cmd_buf2, i32 3)
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_modulation = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_modulation, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %6) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %current_modulation4 = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %current_modulation4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_modulation4, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %8, label %do.end15 [
    i32 7, label %sw.bb
    i32 6, label %do.end3.sw.epilog_crit_edge
    i32 5, label %sw.bb9
    i32 3, label %sw.bb11
  ]

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr inbounds [3 x i8], ptr %cmd_buf1, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 80, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr inbounds [3 x i8], ptr %cmd_buf2, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %arrayidx5, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end15:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %8) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %sw.bb, %do.end3.sw.epilog_crit_edge
  %.sink = phi i8 [ 67, %sw.bb11 ], [ 69, %sw.bb9 ], [ 6, %sw.bb ], [ 79, %do.end3.sw.epilog_crit_edge ]
  %arrayidx12 = getelementptr inbounds [3 x i8], ptr %cmd_buf2, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %arrayidx12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262143, ptr %13, align 4
  %config.i = getelementptr inbounds %struct.or51132_state, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd_buf1, ptr %buf3.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.body28, label %do.end24

do.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %msg.i, align 4
  %conv6.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %13, align 4
  %conv8.i = zext i16 %27 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv6.i, i32 noundef %conv8.i, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #12
  br label %cleanup

do.body28:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool29.not = icmp eq i32 %28, 0
  br i1 %tobool29.not, label %do.body28.do.end39_crit_edge, label %do.end33

do.body28.do.end39_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end33:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35 = getelementptr inbounds [3 x i8], ptr %cmd_buf1, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx35, align 1
  %conv = zext i8 %30 to i32
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %conv) #12
  br label %do.end39

do.end39:                                         ; preds = %do.end33, %do.body28.do.end39_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1) #8
  %31 = getelementptr inbounds i8, ptr %msg.i1, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 262143, ptr %31, align 4
  %33 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %conv.i3 = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i3, ptr %msg.i1, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i4, align 2
  %buf3.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 3
  %39 = ptrtoint ptr %buf3.i6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cmd_buf2, ptr %buf3.i6, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i7 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7)
  %cmp.not.i8 = icmp eq i32 %call.i7, 1
  br i1 %cmp.not.i8, label %do.body50, label %do.end46

do.end46:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %msg.i1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %msg.i1, align 4
  %conv6.i9 = zext i16 %43 to i32
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %31, align 4
  %conv8.i10 = zext i16 %45 to i32
  %call9.i11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv6.i9, i32 noundef %conv8.i10, i32 noundef %call.i7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1) #8
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #12
  br label %cleanup

do.body50:                                        ; preds = %do.end39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1) #8
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool51.not = icmp eq i32 %46, 0
  br i1 %tobool51.not, label %do.body50.cleanup_crit_edge, label %do.end55

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx57 = getelementptr inbounds [3 x i8], ptr %cmd_buf2, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %48 to i32
  %arrayidx59 = getelementptr inbounds [3 x i8], ptr %cmd_buf2, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %50 to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %conv58, i32 noundef %conv60) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.body50.cleanup_crit_edge, %do.end46, %do.end24, %do.end15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd_buf2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd_buf1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @or51132_writebuf(ptr nocapture noundef readonly %state, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %config = getelementptr inbounds %struct.or51132_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %conv2 = trunc i32 %len to i16
  %8 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2, ptr %len1, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf3, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msg, align 4
  %conv6 = zext i16 %13 to i32
  %14 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len1, align 4
  %conv8 = zext i16 %15 to i32
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !193, !194, !195, !196, !197, !199, !200, !201}
!llvm.module.flags = !{!202, !203, !204, !205, !206, !207, !208, !209}
!llvm.ident = !{!210}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 600, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 601, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 603, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 604, i32 1}
!9 = !{ptr @__UNIQUE_ID_author294, !10, !"__UNIQUE_ID_author294", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 605, i32 1}
!11 = !{ptr @__UNIQUE_ID_file295, !12, !"__UNIQUE_ID_file295", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 606, i32 1}
!13 = !{ptr @__UNIQUE_ID_license296, !12, !"__UNIQUE_ID_license296", i1 false, i1 false}
!14 = !{ptr @__ksymtab_or51132_attach, !15, !"__ksymtab_or51132_attach", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 608, i32 1}
!16 = !{ptr @debug, !17, !"debug", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 34, i32 12}
!18 = !{ptr @or51132_ops, !19, !"or51132_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 571, i32 38}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 308, i32 4}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @or51132_set_parameters._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @or51132_set_parameters._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 309, i32 13}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 315, i32 4}
!30 = !{ptr @or51132_set_parameters._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @or51132_set_parameters._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 316, i32 13}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 322, i32 4}
!36 = !{ptr @or51132_set_parameters._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @or51132_set_parameters._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 326, i32 3}
!40 = !{ptr @or51132_set_parameters._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @or51132_set_parameters._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 330, i32 4}
!44 = !{ptr @or51132_set_parameters._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @or51132_set_parameters._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 336, i32 4}
!48 = !{ptr @or51132_set_parameters._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @or51132_set_parameters._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 339, i32 3}
!52 = !{ptr @or51132_set_parameters._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @or51132_set_parameters._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @or51132_load_firmware.run_buf, !55, !"run_buf", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 120, i32 18}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 125, i32 2}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @or51132_load_firmware._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @or51132_load_firmware._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 129, i32 2}
!63 = !{ptr @or51132_load_firmware._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @or51132_load_firmware._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 131, i32 2}
!67 = !{ptr @or51132_load_firmware._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @or51132_load_firmware._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 135, i32 3}
!71 = !{ptr @or51132_load_firmware._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @or51132_load_firmware._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 140, i32 3}
!75 = !{ptr @or51132_load_firmware._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @or51132_load_firmware._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 145, i32 3}
!79 = !{ptr @or51132_load_firmware._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @or51132_load_firmware._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 149, i32 3}
!83 = !{ptr @or51132_load_firmware._entry.40, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @or51132_load_firmware._entry_ptr.42, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @or51132_load_firmware._data, !86, !"_data", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 158, i32 13}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 159, i32 3}
!89 = !{ptr @or51132_load_firmware._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @or51132_load_firmware._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @or51132_load_firmware._data.46, !92, !"_data", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 162, i32 13}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 163, i32 3}
!95 = !{ptr @or51132_load_firmware._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @or51132_load_firmware._entry_ptr.49, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @or51132_load_firmware._data.50, !98, !"_data", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 166, i32 13}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 167, i32 3}
!101 = !{ptr @or51132_load_firmware._entry.51, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @or51132_load_firmware._entry_ptr.53, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 177, i32 4}
!105 = !{ptr @or51132_load_firmware._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @or51132_load_firmware._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 183, i32 2}
!109 = !{ptr @or51132_load_firmware._entry.57, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @or51132_load_firmware._entry_ptr.59, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @or51132_load_firmware._data.60, !112, !"_data", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 190, i32 13}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 191, i32 3}
!115 = !{ptr @or51132_load_firmware._entry.61, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @or51132_load_firmware._entry_ptr.63, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 68, i32 3}
!119 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @or51132_writebuf._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @or51132_writebuf._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 91, i32 3}
!124 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @or51132_readbuf._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @or51132_readbuf._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 225, i32 2}
!129 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @or51132_setmode._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @or51132_setmode._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 252, i32 3}
!134 = !{ptr @or51132_setmode._entry.70, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @or51132_setmode._entry_ptr.72, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 260, i32 3}
!138 = !{ptr @or51132_setmode._entry.73, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @or51132_setmode._entry_ptr.75, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 263, i32 2}
!142 = !{ptr @or51132_setmode._entry.76, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @or51132_setmode._entry_ptr.78, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 267, i32 3}
!146 = !{ptr @or51132_setmode._entry.79, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @or51132_setmode._entry_ptr.81, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.83, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 270, i32 2}
!150 = !{ptr @or51132_setmode._entry.82, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @or51132_setmode._entry_ptr.84, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 371, i32 3}
!154 = !{ptr @.str.86, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @or51132_get_parameters._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @or51132_get_parameters._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.88, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 387, i32 3}
!159 = !{ptr @or51132_get_parameters._entry.87, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @or51132_get_parameters._entry_ptr.89, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.90, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 110, i32 3}
!163 = !{ptr @.str.91, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @or51132_readreg._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @or51132_readreg._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 408, i32 3}
!168 = !{ptr @.str.93, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @or51132_read_status._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @or51132_read_status._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.95, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 412, i32 2}
!173 = !{ptr @or51132_read_status._entry.94, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @or51132_read_status._entry_ptr.96, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.97, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 469, i32 3}
!177 = !{ptr @.str.98, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @or51132_read_snr._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @or51132_read_snr._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.100, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 472, i32 2}
!182 = !{ptr @or51132_read_snr._entry.99, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @or51132_read_snr._entry_ptr.101, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.103, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 478, i32 3}
!186 = !{ptr @or51132_read_snr._entry.102, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @or51132_read_snr._entry_ptr.104, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @or51132_read_snr._entry.105, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 493, i32 3}
!190 = !{ptr @or51132_read_snr._entry_ptr.106, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.108, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 497, i32 2}
!193 = !{ptr @or51132_read_snr._entry.107, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @or51132_read_snr._entry_ptr.109, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.110, !192, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.111, !192, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.113, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/dvb-frontends/or51132.c", i32 504, i32 2}
!199 = !{ptr @or51132_read_snr._entry.112, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @or51132_read_snr._entry_ptr.114, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 1, !"min_enum_size", i32 4}
!204 = !{i32 8, !"branch-target-enforcement", i32 0}
!205 = !{i32 8, !"sign-return-address", i32 0}
!206 = !{i32 8, !"sign-return-address-all", i32 0}
!207 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!208 = !{i32 7, !"uwtable", i32 1}
!209 = !{i32 7, !"frame-pointer", i32 2}
!210 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!211 = !{!"auto-init"}
