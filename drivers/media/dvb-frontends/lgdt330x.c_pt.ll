; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/lgdt330x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgdt330x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lgdt330x_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_lgdt330x_attach\09\09\09\09"
module asm "\09.long\09__crc_lgdt330x_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgdt330x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgdt330x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgdt330x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lgdt330x_state = type { ptr, %struct.lgdt330x_config, %struct.dvb_frontend, i32, i32, i16, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [15 x i8] c"lgdt330x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [28 x i8] c"lgdt330x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [75 x i8] c"lgdt330x.parm=debug:Turn on/off lgdt330x frontend debugging (default:off).\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lgdt330x\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_lgdt330x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgdt330x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgdt330x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgdt330x_attach to i32), ptr @__kstrtab_lgdt330x_attach, ptr @__kstrtabns_lgdt330x_attach }, section "___ksymtab+lgdt330x_attach", align 4
@__initcall__kmod_lgdt330x__295_1004_lgdt330x_driver_init6 = internal global ptr @lgdt330x_driver_init, section ".initcall6.init", align 4
@lgdt330x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lgdt330x_probe, ptr @lgdt330x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lgdt330x_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lgdt330x_driver_exit = internal global ptr @lgdt330x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [92 x i8] c"lgdt330x.description=LGDT330X (ATSC 8VSB & ITU-T J.83 AnnexB 64/256 QAM) Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [32 x i8] c"lgdt330x.author=Wilson Michaels\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [51 x i8] c"lgdt330x.file=drivers/media/dvb-frontends/lgdt330x\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [21 x i8] c"lgdt330x.license=GPL\00", section ".modinfo", align 1
@lgdt330x_get_dvb_frontend.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lgdt330x_get_dvb_frontend\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/lgdt330x.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@lgdt330x_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lgdt330x\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lgdt3302_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3302 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 5056941, i32 10762000, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt330x_release, ptr null, ptr @lgdt330x_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt330x_set_parameters, ptr @lgdt330x_get_tune_settings, ptr @lgdt330x_get_frontend, ptr @lgdt3302_read_status, ptr null, ptr @lgdt330x_read_signal_strength, ptr @lgdt330x_read_snr, ptr @lgdt330x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@lgdt3303_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3303 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 5056941, i32 10762000, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt330x_release, ptr null, ptr @lgdt330x_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt330x_set_parameters, ptr @lgdt330x_get_tune_settings, ptr @lgdt330x_get_frontend, ptr @lgdt3303_read_status, ptr null, ptr @lgdt330x_read_signal_strength, ptr @lgdt330x_read_snr, ptr @lgdt330x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@lgdt330x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 904, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Demod loaded for LGDT330%s chip\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgdt330x_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lgdt330x_probe._entry_ptr = internal global ptr @lgdt330x_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@lgdt330x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 911, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error loading lgdt330x driver\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@lgdt330x_probe._entry_ptr.13 = internal global ptr @lgdt330x_probe._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lgdt330x_release.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.3, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgdt330x_release\00", [47 x i8] zeroinitializer }, align 32
@lgdt330x_init.lgdt3302_init_data = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\16\00\17\87\18\8E\19\01f\FB-@.\93/\003\C64@*\07,\FE0\081\9A", [36 x i8] zeroinitializer }, align 32
@lgdt330x_init.lgdt3303_init_data = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\14", [30 x i8] zeroinitializer }, align 32
@lgdt330x_init.flip_1_lgdt3303_init_data = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L\14\87\F3", [28 x i8] zeroinitializer }, align 32
@lgdt330x_init.flip_2_lgdt3303_init_data = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L\14\87\DA", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LGDT3302\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LGDT3303\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@lgdt330x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 282, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Only LGDT3302 and LGDT3303 are supported chips.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lgdt330x_init\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lgdt330x_init._entry_ptr = internal global ptr @lgdt330x_init._entry, section ".printk_index", align 4
@lgdt330x_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 285, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Initialized the %s chip\0A\00", [39 x i8] zeroinitializer }, align 32
@lgdt330x_init._entry_ptr.23 = internal global ptr @lgdt330x_init._entry.21, section ".printk_index", align 4
@i2c_write_demod_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 77, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: error (addr %02x <- %02x, err = %i)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c_write_demod_bytes\00", [42 x i8] zeroinitializer }, align 32
@i2c_write_demod_bytes._entry_ptr = internal global ptr @i2c_write_demod_bytes._entry, section ".printk_index", align 4
@lgdt330x_set_parameters.lgdt3303_8vsb_44_data = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\04\00\0D@\0E\87\0F\8E\10\01G\8B", [20 x i8] zeroinitializer }, align 32
@lgdt330x_set_parameters.lgdt3303_qam_data = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\04\00\0D\00\0E\00\0F\00\10\00QcGfHfM\1AI\08J\9B", [42 x i8] zeroinitializer }, align 32
@lgdt330x_set_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 349, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VSB_8 MODE\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgdt330x_set_parameters\00", [40 x i8] zeroinitializer }, align 32
@lgdt330x_set_parameters._entry_ptr = internal global ptr @lgdt330x_set_parameters._entry, section ".printk_index", align 4
@lgdt330x_set_parameters._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 366, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QAM_64 MODE\0A\00", [19 x i8] zeroinitializer }, align 32
@lgdt330x_set_parameters._entry_ptr.30 = internal global ptr @lgdt330x_set_parameters._entry.28, section ".printk_index", align 4
@lgdt330x_set_parameters._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 383, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QAM_256 MODE\0A\00", [18 x i8] zeroinitializer }, align 32
@lgdt330x_set_parameters._entry_ptr.33 = internal global ptr @lgdt330x_set_parameters._entry.31, section ".printk_index", align 4
@lgdt330x_set_parameters._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 401, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Modulation type(%d) UNSUPPORTED\0A\00", [59 x i8] zeroinitializer }, align 32
@lgdt330x_set_parameters._entry_ptr.36 = internal global ptr @lgdt330x_set_parameters._entry.34, section ".printk_index", align 4
@lgdt330x_set_parameters._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 407, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: error blasting bytes to lgdt3303 for modulation type(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@lgdt330x_set_parameters._entry_ptr.39 = internal global ptr @lgdt330x_set_parameters._entry.37, section ".printk_index", align 4
@lgdt3302_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 630, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AGC_STATUS = 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lgdt3302_read_status\00", [43 x i8] zeroinitializer }, align 32
@lgdt3302_read_status._entry_ptr = internal global ptr @lgdt3302_read_status._entry, section ".printk_index", align 4
@lgdt3302_read_status._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 649, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"TOP_CONTROL = 0x%02x, IRO_MASK = 0x%02x, IRQ_STATUS = 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@lgdt3302_read_status._entry_ptr.44 = internal global ptr @lgdt3302_read_status._entry.42, section ".printk_index", align 4
@lgdt3302_read_status._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 661, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CARRIER_LOCK = 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@lgdt3302_read_status._entry_ptr.47 = internal global ptr @lgdt3302_read_status._entry.45, section ".printk_index", align 4
@lgdt3302_read_status._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 676, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Modulation set to unsupported value\0A\00", [55 x i8] zeroinitializer }, align 32
@lgdt3302_read_status._entry_ptr.50 = internal global ptr @lgdt3302_read_status._entry.48, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lgdt3302_read_status._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 705, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UCB = 0x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@lgdt3302_read_status._entry_ptr.53 = internal global ptr @lgdt3302_read_status._entry.51, section ".printk_index", align 4
@lgdt3302_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.54, ptr @.str.2, i32 524, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgdt3302_read_snr\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lgdt3302_read_snr._entry_ptr = internal global ptr @lgdt3302_read_snr._entry, section ".printk_index", align 4
@lgdt3302_read_snr._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.2, i32 534, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"noise = 0x%08x, snr = %d.%02d dB\0A\00", [62 x i8] zeroinitializer }, align 32
@lgdt3302_read_snr._entry_ptr.58 = internal global ptr @lgdt3302_read_snr._entry.56, section ".printk_index", align 4
@lgdt3303_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.59, ptr @.str.2, i32 736, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lgdt3303_read_status\00", [43 x i8] zeroinitializer }, align 32
@lgdt3303_read_status._entry_ptr = internal global ptr @lgdt3303_read_status._entry, section ".printk_index", align 4
@lgdt3303_read_status._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.59, ptr @.str.2, i32 747, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@lgdt3303_read_status._entry_ptr.61 = internal global ptr @lgdt3303_read_status._entry.60, section ".printk_index", align 4
@lgdt3303_read_status._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.2, i32 757, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QAM LOCK = 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@lgdt3303_read_status._entry_ptr.64 = internal global ptr @lgdt3303_read_status._entry.62, section ".printk_index", align 4
@lgdt3303_read_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.2, i32 772, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"8-VSB LOCK = 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@lgdt3303_read_status._entry_ptr.67 = internal global ptr @lgdt3303_read_status._entry.65, section ".printk_index", align 4
@lgdt3303_read_status._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.59, ptr @.str.2, i32 782, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@lgdt3303_read_status._entry_ptr.69 = internal global ptr @lgdt3303_read_status._entry.68, section ".printk_index", align 4
@lgdt3303_read_status._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.59, ptr @.str.2, i32 811, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@lgdt3303_read_status._entry_ptr.71 = internal global ptr @lgdt3303_read_status._entry.70, section ".printk_index", align 4
@lgdt3303_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.72, ptr @.str.2, i32 571, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgdt3303_read_snr\00", [46 x i8] zeroinitializer }, align 32
@lgdt3303_read_snr._entry_ptr = internal global ptr @lgdt3303_read_snr._entry, section ".printk_index", align 4
@lgdt3303_read_snr._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.72, ptr @.str.2, i32 579, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@lgdt3303_read_snr._entry_ptr.74 = internal global ptr @lgdt3303_read_snr._entry.73, section ".printk_index", align 4
@i2c_read_demod_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 115, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: addr 0x%02x select 0x%02x error (ret == %i)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_read_demod_bytes\00", [43 x i8] zeroinitializer }, align 32
@i2c_read_demod_bytes._entry_ptr = internal global ptr @i2c_read_demod_bytes._entry, section ".printk_index", align 4
@lgdt330x_remove.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.3, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt330x_remove\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 38, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 922, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"lgdt330x_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 994, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 852, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"lgdt330x_id_table\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 988, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"lgdt3302_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 933, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"lgdt3303_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 955, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 902, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 911, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 843, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"lgdt3302_init_data\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 189, i32 18 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"lgdt3303_init_data\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 234, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant [26 x i8] c"flip_1_lgdt3303_init_data\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 237, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant [26 x i8] c"flip_2_lgdt3303_init_data\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 241, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 256, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 261, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 280, i32 15 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 281, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 285, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 75, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [22 x i8] c"lgdt3303_8vsb_44_data\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 317, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"lgdt3303_qam_data\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 329, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 349, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 366, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 383, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 399, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 405, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 630, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 647, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 661, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 674, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 705, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 522, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 533, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 736, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 747, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 757, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 772, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 780, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 811, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 569, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 578, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 113, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [42 x i8] c"../drivers/media/dvb-frontends/lgdt330x.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 981, i32 2 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_lgdt330x_driver_exit, ptr @__initcall__kmod_lgdt330x__295_1004_lgdt330x_driver_init6, ptr @__ksymtab_lgdt330x_attach, ptr @__param_debug, ptr @i2c_read_demod_bytes._entry, ptr @i2c_read_demod_bytes._entry_ptr, ptr @i2c_write_demod_bytes._entry, ptr @i2c_write_demod_bytes._entry_ptr, ptr @lgdt3302_read_snr._entry, ptr @lgdt3302_read_snr._entry.56, ptr @lgdt3302_read_snr._entry_ptr, ptr @lgdt3302_read_snr._entry_ptr.58, ptr @lgdt3302_read_status._entry, ptr @lgdt3302_read_status._entry.42, ptr @lgdt3302_read_status._entry.45, ptr @lgdt3302_read_status._entry.48, ptr @lgdt3302_read_status._entry.51, ptr @lgdt3302_read_status._entry_ptr, ptr @lgdt3302_read_status._entry_ptr.44, ptr @lgdt3302_read_status._entry_ptr.47, ptr @lgdt3302_read_status._entry_ptr.50, ptr @lgdt3302_read_status._entry_ptr.53, ptr @lgdt3303_read_snr._entry, ptr @lgdt3303_read_snr._entry.73, ptr @lgdt3303_read_snr._entry_ptr, ptr @lgdt3303_read_snr._entry_ptr.74, ptr @lgdt3303_read_status._entry, ptr @lgdt3303_read_status._entry.60, ptr @lgdt3303_read_status._entry.62, ptr @lgdt3303_read_status._entry.65, ptr @lgdt3303_read_status._entry.68, ptr @lgdt3303_read_status._entry.70, ptr @lgdt3303_read_status._entry_ptr, ptr @lgdt3303_read_status._entry_ptr.61, ptr @lgdt3303_read_status._entry_ptr.64, ptr @lgdt3303_read_status._entry_ptr.67, ptr @lgdt3303_read_status._entry_ptr.69, ptr @lgdt3303_read_status._entry_ptr.71, ptr @lgdt330x_driver_exit, ptr @lgdt330x_init._entry, ptr @lgdt330x_init._entry.21, ptr @lgdt330x_init._entry_ptr, ptr @lgdt330x_init._entry_ptr.23, ptr @lgdt330x_probe._entry, ptr @lgdt330x_probe._entry.10, ptr @lgdt330x_probe._entry_ptr, ptr @lgdt330x_probe._entry_ptr.13, ptr @lgdt330x_set_parameters._entry, ptr @lgdt330x_set_parameters._entry.28, ptr @lgdt330x_set_parameters._entry.31, ptr @lgdt330x_set_parameters._entry.34, ptr @lgdt330x_set_parameters._entry.37, ptr @lgdt330x_set_parameters._entry_ptr, ptr @lgdt330x_set_parameters._entry_ptr.30, ptr @lgdt330x_set_parameters._entry_ptr.33, ptr @lgdt330x_set_parameters._entry_ptr.36, ptr @lgdt330x_set_parameters._entry_ptr.39, ptr @debug, ptr @.str, ptr @lgdt330x_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lgdt330x_id_table, ptr @lgdt3302_ops, ptr @lgdt3303_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @lgdt330x_init.lgdt3302_init_data, ptr @lgdt330x_init.lgdt3303_init_data, ptr @lgdt330x_init.flip_1_lgdt3303_init_data, ptr @lgdt330x_init.flip_2_lgdt3303_init_data, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, ptr @lgdt330x_set_parameters.lgdt3303_qam_data, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.63, ptr @.str.66, ptr @.str.72, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3302_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3303_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_init.lgdt3302_init_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_init.lgdt3303_init_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_init.flip_1_lgdt3303_init_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_init.flip_2_lgdt3303_init_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write_demod_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_set_parameters.lgdt3303_qam_data to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_set_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_set_parameters._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_set_parameters._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_set_parameters._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_set_parameters._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3302_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3302_read_status._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3302_read_status._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3302_read_status._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3302_read_status._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3302_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3302_read_snr._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3303_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3303_read_status._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3303_read_status._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3303_read_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3303_read_status._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3303_read_status._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3303_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3303_read_snr._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_read_demod_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lgdt330x_attach(ptr nocapture noundef readonly %_config, i8 noundef zeroext %demod_address, ptr noundef %i2c) #0 align 64 {
entry:
  %board_info = alloca %struct.i2c_board_info, align 4
  %config = alloca %struct.lgdt330x_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #8
  %0 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #8
  %1 = call ptr @memcpy(ptr %config, ptr %_config, i32 24)
  %call = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str, i32 noundef 20) #8
  %conv = zext i8 %demod_address to i16
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %3 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %config, ptr %platform_data, align 4
  %call1 = call ptr @i2c_new_client_device(ptr noundef %i2c, ptr noundef nonnull %board_info) #8
  %tobool.not.i.i = icmp eq ptr %call1, null
  %cmp.i.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.cleanup_crit_edge, label %i2c_client_has_driver.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

i2c_client_has_driver.exit:                       ; preds = %entry
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call1, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %5, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.cleanup_crit_edge, label %if.end

i2c_client_has_driver.exit.cleanup_crit_edge:     ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %i2c_client_has_driver.exit
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %call1, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lgdt330x_get_dvb_frontend.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lgdt330x_attach, %if.then.i)) #8
          to label %lgdt330x_get_dvb_frontend.exit [label %if.then.i], !srcloc !181

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %call1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lgdt330x_get_dvb_frontend.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.3) #8
  br label %lgdt330x_get_dvb_frontend.exit

lgdt330x_get_dvb_frontend.exit:                   ; preds = %if.then.i, %if.end
  %frontend.i = getelementptr inbounds %struct.lgdt330x_state, ptr %7, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %lgdt330x_get_dvb_frontend.exit, %i2c_client_has_driver.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %frontend.i, %lgdt330x_get_dvb_frontend.exit ], [ null, %i2c_client_has_driver.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lgdt330x_get_dvb_frontend(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lgdt330x_get_dvb_frontend.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lgdt330x_get_dvb_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !181

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lgdt330x_get_dvb_frontend.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %frontend = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 2
  ret ptr %frontend
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt330x_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lgdt330x_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lgdt330x_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @lgdt330x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt330x_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %wr.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1088) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %entry
  %config = getelementptr inbounds %struct.lgdt330x_state, ptr %call7.i.i, i32 0, i32 1
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %4 = call ptr @memcpy(ptr %config, ptr %3, i32 24)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.error_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.lgdt330x_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = call ptr @memcpy(ptr %ops, ptr @lgdt3302_ops, i32 544)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ops5 = getelementptr inbounds %struct.lgdt330x_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %11 = call ptr @memcpy(ptr %ops5, ptr @lgdt3303_ops, i32 544)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %demodulator_priv = getelementptr inbounds %struct.lgdt330x_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %get_dvb_frontend = getelementptr inbounds %struct.lgdt330x_state, ptr %call7.i.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @lgdt330x_get_dvb_frontend, ptr %get_dvb_frontend, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i) #8
  %14 = ptrtoint ptr %wr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %wr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %15 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %17 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr2.i, align 2
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %15, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %wr.i, ptr %buf4.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %23 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %18, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %24 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %25 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %26 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf, ptr %buf11.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end11, label %do.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  %addr17.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr17.i, align 2
  %conv18.i = zext i16 %32 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i, i32 noundef 2, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i) #8
  br label %error

if.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i) #8
  %current_frequency = getelementptr inbounds %struct.lgdt330x_state, ptr %call7.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %current_frequency, align 4
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %current_modulation, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp = icmp eq i32 %38, 1
  %cond = select i1 %cmp, ptr @.str.8, ptr @.str.9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond) #12
  br label %cleanup

error:                                            ; preds = %do.end.i, %if.end.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #8
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool16.not = icmp eq i32 %39, 0
  br i1 %tobool16.not, label %error.cleanup_crit_edge, label %do.end20

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev21, ptr noundef nonnull @.str.11) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %error.cleanup_crit_edge, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -19, %do.end20 ], [ -19, %error.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt330x_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lgdt330x_remove.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lgdt330x_remove, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !181

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lgdt330x_remove.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lgdt330x_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lgdt330x_release.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lgdt330x_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !181

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lgdt330x_release.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @i2c_unregister_device(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt330x_init(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %3, label %sw.default9 [
    i32 1, label %for.body.i.preheader
    i32 2, label %sw.bb1
  ]

for.body.i.preheader:                             ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull @lgdt330x_init.lgdt3302_init_data, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.preheader.do.end.i_crit_edge

for.body.i.preheader.do.end.i_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.12.do.end.i_crit_edge, %if.end.i.11.do.end.i_crit_edge, %if.end.i.10.do.end.i_crit_edge, %if.end.i.9.do.end.i_crit_edge, %if.end.i.8.do.end.i_crit_edge, %if.end.i.7.do.end.i_crit_edge, %if.end.i.6.do.end.i_crit_edge, %if.end.i.5.do.end.i_crit_edge, %if.end.i.4.do.end.i_crit_edge, %if.end.i.3.do.end.i_crit_edge, %if.end.i.2.do.end.i_crit_edge, %if.end.i.1.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %for.body.i.preheader.do.end.i_crit_edge
  %buf.addr.019.i.lcssa = phi ptr [ @lgdt330x_init.lgdt3302_init_data, %for.body.i.preheader.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 2), %if.end.i.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 4), %if.end.i.1.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 6), %if.end.i.2.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 8), %if.end.i.3.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 10), %if.end.i.4.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 12), %if.end.i.5.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 14), %if.end.i.6.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 16), %if.end.i.7.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 18), %if.end.i.8.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 20), %if.end.i.9.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 22), %if.end.i.10.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 24), %if.end.i.11.do.end.i_crit_edge ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 26), %if.end.i.12.do.end.i_crit_edge ]
  %call.i.i.lcssa = phi i32 [ %call.i.i, %for.body.i.preheader.do.end.i_crit_edge ], [ %call.i.i.1, %if.end.i.do.end.i_crit_edge ], [ %call.i.i.2, %if.end.i.1.do.end.i_crit_edge ], [ %call.i.i.3, %if.end.i.2.do.end.i_crit_edge ], [ %call.i.i.4, %if.end.i.3.do.end.i_crit_edge ], [ %call.i.i.5, %if.end.i.4.do.end.i_crit_edge ], [ %call.i.i.6, %if.end.i.5.do.end.i_crit_edge ], [ %call.i.i.7, %if.end.i.6.do.end.i_crit_edge ], [ %call.i.i.8, %if.end.i.7.do.end.i_crit_edge ], [ %call.i.i.9, %if.end.i.8.do.end.i_crit_edge ], [ %call.i.i.10, %if.end.i.9.do.end.i_crit_edge ], [ %call.i.i.11, %if.end.i.10.do.end.i_crit_edge ], [ %call.i.i.12, %if.end.i.11.do.end.i_crit_edge ], [ %call.i.i.13, %if.end.i.12.do.end.i_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %buf.addr.019.i.lcssa to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf.addr.019.i.lcssa, align 1
  %conv.i = zext i8 %10 to i32
  %arrayidx3.i = getelementptr i8, ptr %buf.addr.019.i.lcssa, i32 1
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef %call.i.i.lcssa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.lcssa)
  %cmp5.i = icmp slt i32 %call.i.i.lcssa, 0
  %call..i = select i1 %cmp5.i, i32 %call.i.i.lcssa, i32 -121
  br label %do.body11

if.end.i:                                         ; preds = %for.body.i.preheader
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.1)
  %cmp1.not.i.1 = icmp eq i32 %call.i.i.1, 2
  br i1 %cmp1.not.i.1, label %if.end.i.1, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.1:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.2)
  %cmp1.not.i.2 = icmp eq i32 %call.i.i.2, 2
  br i1 %cmp1.not.i.2, label %if.end.i.2, label %if.end.i.1.do.end.i_crit_edge

if.end.i.1.do.end.i_crit_edge:                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.2:                                       ; preds = %if.end.i.1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i.i.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.3)
  %cmp1.not.i.3 = icmp eq i32 %call.i.i.3, 2
  br i1 %cmp1.not.i.3, label %if.end.i.3, label %if.end.i.2.do.end.i_crit_edge

if.end.i.2.do.end.i_crit_edge:                    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.3:                                       ; preds = %if.end.i.2
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.4)
  %cmp1.not.i.4 = icmp eq i32 %call.i.i.4, 2
  br i1 %cmp1.not.i.4, label %if.end.i.4, label %if.end.i.3.do.end.i_crit_edge

if.end.i.3.do.end.i_crit_edge:                    ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.4:                                       ; preds = %if.end.i.3
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i.5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 10), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.5)
  %cmp1.not.i.5 = icmp eq i32 %call.i.i.5, 2
  br i1 %cmp1.not.i.5, label %if.end.i.5, label %if.end.i.4.do.end.i_crit_edge

if.end.i.4.do.end.i_crit_edge:                    ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.5:                                       ; preds = %if.end.i.4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i.i.6 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 12), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.6)
  %cmp1.not.i.6 = icmp eq i32 %call.i.i.6, 2
  br i1 %cmp1.not.i.6, label %if.end.i.6, label %if.end.i.5.do.end.i_crit_edge

if.end.i.5.do.end.i_crit_edge:                    ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.6:                                       ; preds = %if.end.i.5
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i.i.7 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 14), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.7)
  %cmp1.not.i.7 = icmp eq i32 %call.i.i.7, 2
  br i1 %cmp1.not.i.7, label %if.end.i.7, label %if.end.i.6.do.end.i_crit_edge

if.end.i.6.do.end.i_crit_edge:                    ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.7:                                       ; preds = %if.end.i.6
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i.i.8 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 16), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.8)
  %cmp1.not.i.8 = icmp eq i32 %call.i.i.8, 2
  br i1 %cmp1.not.i.8, label %if.end.i.8, label %if.end.i.7.do.end.i_crit_edge

if.end.i.7.do.end.i_crit_edge:                    ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.8:                                       ; preds = %if.end.i.7
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i.i.9 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 18), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.9)
  %cmp1.not.i.9 = icmp eq i32 %call.i.i.9, 2
  br i1 %cmp1.not.i.9, label %if.end.i.9, label %if.end.i.8.do.end.i_crit_edge

if.end.i.8.do.end.i_crit_edge:                    ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.9:                                       ; preds = %if.end.i.8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i.i.10 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 20), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.10)
  %cmp1.not.i.10 = icmp eq i32 %call.i.i.10, 2
  br i1 %cmp1.not.i.10, label %if.end.i.10, label %if.end.i.9.do.end.i_crit_edge

if.end.i.9.do.end.i_crit_edge:                    ; preds = %if.end.i.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.10:                                      ; preds = %if.end.i.9
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i.i.11 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 22), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.11)
  %cmp1.not.i.11 = icmp eq i32 %call.i.i.11, 2
  br i1 %cmp1.not.i.11, label %if.end.i.11, label %if.end.i.10.do.end.i_crit_edge

if.end.i.10.do.end.i_crit_edge:                   ; preds = %if.end.i.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.11:                                      ; preds = %if.end.i.10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i.i.12 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 24), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.12)
  %cmp1.not.i.12 = icmp eq i32 %call.i.i.12, 2
  br i1 %cmp1.not.i.12, label %if.end.i.12, label %if.end.i.11.do.end.i_crit_edge

if.end.i.11.do.end.i_crit_edge:                   ; preds = %if.end.i.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.12:                                      ; preds = %if.end.i.11
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i.i.13 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %38, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 26), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.13)
  %cmp1.not.i.13 = icmp eq i32 %call.i.i.13, 2
  br i1 %cmp1.not.i.13, label %if.end.i.12.do.body11_crit_edge, label %if.end.i.12.do.end.i_crit_edge

if.end.i.12.do.end.i_crit_edge:                   ; preds = %if.end.i.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.12.do.body11_crit_edge:                  ; preds = %if.end.i.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

sw.bb1:                                           ; preds = %entry
  %clock_polarity_flip = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %clock_polarity_flip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clock_polarity_flip, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %40, label %for.body.i92.preheader [
    i32 2, label %for.body.i56.preheader
    i32 1, label %for.body.i74.preheader
  ]

for.body.i74.preheader:                           ; preds = %sw.bb1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i.i72 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull @lgdt330x_init.flip_1_lgdt3303_init_data, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i72)
  %cmp1.not.i73 = icmp eq i32 %call.i.i72, 2
  br i1 %cmp1.not.i73, label %if.end.i85, label %for.body.i74.preheader.do.end.i81_crit_edge

for.body.i74.preheader.do.end.i81_crit_edge:      ; preds = %for.body.i74.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i81

for.body.i56.preheader:                           ; preds = %sw.bb1
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i.i54 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %45, ptr noundef nonnull @lgdt330x_init.flip_2_lgdt3303_init_data, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i54)
  %cmp1.not.i55 = icmp eq i32 %call.i.i54, 2
  br i1 %cmp1.not.i55, label %if.end.i67, label %for.body.i56.preheader.do.end.i63_crit_edge

for.body.i56.preheader.do.end.i63_crit_edge:      ; preds = %for.body.i56.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i63

for.body.i92.preheader:                           ; preds = %sw.bb1
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i.i90 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull @lgdt330x_init.lgdt3303_init_data, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i90)
  %cmp1.not.i91 = icmp eq i32 %call.i.i90, 2
  br i1 %cmp1.not.i91, label %for.body.i92.preheader.do.body11_crit_edge, label %do.end.i99

for.body.i92.preheader.do.body11_crit_edge:       ; preds = %for.body.i92.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.end.i63:                                       ; preds = %if.end.i67.do.end.i63_crit_edge, %for.body.i56.preheader.do.end.i63_crit_edge
  %buf.addr.019.i53.lcssa = phi ptr [ @lgdt330x_init.flip_2_lgdt3303_init_data, %for.body.i56.preheader.do.end.i63_crit_edge ], [ getelementptr inbounds ([4 x i8], ptr @lgdt330x_init.flip_2_lgdt3303_init_data, i32 0, i32 2), %if.end.i67.do.end.i63_crit_edge ]
  %call.i.i54.lcssa = phi i32 [ %call.i.i54, %for.body.i56.preheader.do.end.i63_crit_edge ], [ %call.i.i54.1, %if.end.i67.do.end.i63_crit_edge ]
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %dev.i57 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %buf.addr.019.i53.lcssa to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %buf.addr.019.i53.lcssa, align 1
  %conv.i58 = zext i8 %51 to i32
  %arrayidx3.i59 = getelementptr i8, ptr %buf.addr.019.i53.lcssa, i32 1
  %52 = ptrtoint ptr %arrayidx3.i59 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx3.i59, align 1
  %conv4.i60 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i57, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv.i58, i32 noundef %conv4.i60, i32 noundef %call.i.i54.lcssa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54.lcssa)
  %cmp5.i61 = icmp slt i32 %call.i.i54.lcssa, 0
  %call..i62 = select i1 %cmp5.i61, i32 %call.i.i54.lcssa, i32 -121
  br label %do.body11

if.end.i67:                                       ; preds = %for.body.i56.preheader
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call.i.i54.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %55, ptr noundef getelementptr inbounds ([4 x i8], ptr @lgdt330x_init.flip_2_lgdt3303_init_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i54.1)
  %cmp1.not.i55.1 = icmp eq i32 %call.i.i54.1, 2
  br i1 %cmp1.not.i55.1, label %if.end.i67.do.body11_crit_edge, label %if.end.i67.do.end.i63_crit_edge

if.end.i67.do.end.i63_crit_edge:                  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i63

if.end.i67.do.body11_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.end.i81:                                       ; preds = %if.end.i85.do.end.i81_crit_edge, %for.body.i74.preheader.do.end.i81_crit_edge
  %buf.addr.019.i71.lcssa = phi ptr [ @lgdt330x_init.flip_1_lgdt3303_init_data, %for.body.i74.preheader.do.end.i81_crit_edge ], [ getelementptr inbounds ([4 x i8], ptr @lgdt330x_init.flip_1_lgdt3303_init_data, i32 0, i32 2), %if.end.i85.do.end.i81_crit_edge ]
  %call.i.i72.lcssa = phi i32 [ %call.i.i72, %for.body.i74.preheader.do.end.i81_crit_edge ], [ %call.i.i72.1, %if.end.i85.do.end.i81_crit_edge ]
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %dev.i75 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %buf.addr.019.i71.lcssa to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %buf.addr.019.i71.lcssa, align 1
  %conv.i76 = zext i8 %59 to i32
  %arrayidx3.i77 = getelementptr i8, ptr %buf.addr.019.i71.lcssa, i32 1
  %60 = ptrtoint ptr %arrayidx3.i77 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx3.i77, align 1
  %conv4.i78 = zext i8 %61 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i75, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv.i76, i32 noundef %conv4.i78, i32 noundef %call.i.i72.lcssa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72.lcssa)
  %cmp5.i79 = icmp slt i32 %call.i.i72.lcssa, 0
  %call..i80 = select i1 %cmp5.i79, i32 %call.i.i72.lcssa, i32 -121
  br label %do.body11

if.end.i85:                                       ; preds = %for.body.i74.preheader
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call.i.i72.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %63, ptr noundef getelementptr inbounds ([4 x i8], ptr @lgdt330x_init.flip_1_lgdt3303_init_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i72.1)
  %cmp1.not.i73.1 = icmp eq i32 %call.i.i72.1, 2
  br i1 %cmp1.not.i73.1, label %if.end.i85.do.body11_crit_edge, label %if.end.i85.do.end.i81_crit_edge

if.end.i85.do.end.i81_crit_edge:                  ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i81

if.end.i85.do.body11_crit_edge:                   ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.end.i99:                                       ; preds = %for.body.i92.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %dev.i93 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i93, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 76, i32 noundef 20, i32 noundef %call.i.i90) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90)
  %cmp5.i97 = icmp slt i32 %call.i.i90, 0
  %call..i98 = select i1 %cmp5.i97, i32 %call.i.i90, i32 -121
  br label %do.body11

sw.default9:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %do.body11

do.body11:                                        ; preds = %sw.default9, %do.end.i99, %if.end.i85.do.body11_crit_edge, %do.end.i81, %if.end.i67.do.body11_crit_edge, %do.end.i63, %for.body.i92.preheader.do.body11_crit_edge, %if.end.i.12.do.body11_crit_edge, %do.end.i
  %chip_name.0 = phi ptr [ @.str.17, %sw.default9 ], [ @.str.15, %do.end.i ], [ @.str.16, %do.end.i63 ], [ @.str.16, %do.end.i81 ], [ @.str.16, %do.end.i99 ], [ @.str.15, %if.end.i.12.do.body11_crit_edge ], [ @.str.16, %if.end.i67.do.body11_crit_edge ], [ @.str.16, %if.end.i85.do.body11_crit_edge ], [ @.str.16, %for.body.i92.preheader.do.body11_crit_edge ]
  %err.0 = phi i32 [ -19, %sw.default9 ], [ %call..i, %do.end.i ], [ %call..i62, %do.end.i63 ], [ %call..i80, %do.end.i81 ], [ %call..i98, %do.end.i99 ], [ 0, %if.end.i.12.do.body11_crit_edge ], [ 0, %if.end.i67.do.body11_crit_edge ], [ 0, %if.end.i85.do.body11_crit_edge ], [ 0, %for.body.i92.preheader.do.body11_crit_edge ]
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not = icmp eq i32 %68, 0
  br i1 %tobool.not, label %do.body11.do.end18_crit_edge, label %do.end14

do.body11.do.end18_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end14:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev16, ptr noundef nonnull @.str.22, ptr noundef nonnull %chip_name.0) #12
  br label %do.end18

do.end18:                                         ; preds = %do.end14, %do.body11.do.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %do.end18.cleanup_crit_edge, label %if.end20

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %71 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %cnr, align 1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %72 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %stat, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %73 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %block_error, align 2
  %stat24 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %74 = ptrtoint ptr %stat24 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %stat24, align 1
  %block_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %75 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %block_count, align 1
  %stat29 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %76 = ptrtoint ptr %stat29 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %stat29, align 1
  %last_stats_time = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %last_stats_time to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %last_stats_time, align 4
  %call32 = tail call fastcc i32 @lgdt330x_sw_reset(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end20 ], [ %err.0, %do.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt330x_set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %top_ctrl_cfg = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %top_ctrl_cfg) #8
  %2 = ptrtoint ptr %top_ctrl_cfg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 3, ptr %top_ctrl_cfg, align 2
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_modulation, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %entry.if.end98_crit_edge, label %if.then

entry.if.end98_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then:                                          ; preds = %entry
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %6, label %do.end72 [
    i32 7, label %do.body
    i32 3, label %do.body17
    i32 5, label %do.body44
  ]

do.body:                                          ; preds = %if.then
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.26) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %arrayidx = getelementptr inbounds [2 x i8], ptr %top_ctrl_cfg, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %arrayidx, align 1
  %config = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1
  %pll_rf_set = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %pll_rf_set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_rf_set, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %do.end5.if.end10_crit_edge, label %if.then7

do.end5.if.end10_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %13(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end5.if.end10_crit_edge
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp12 = icmp eq i32 %15, 2
  br i1 %cmp12, label %for.body.i.preheader, label %if.end10.if.end84_crit_edge

if.end10.if.end84_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

for.body.i.preheader:                             ; preds = %if.end10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.preheader.do.end80_crit_edge

for.body.i.preheader.do.end80_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i:                                         ; preds = %for.body.i.preheader
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i.i.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.1)
  %cmp1.not.i.1 = icmp eq i32 %call.i.i.1, 2
  br i1 %cmp1.not.i.1, label %if.end.i.1, label %if.end.i.do.end80_crit_edge

if.end.i.do.end80_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i.1:                                       ; preds = %if.end.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i.i.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.2)
  %cmp1.not.i.2 = icmp eq i32 %call.i.i.2, 2
  br i1 %cmp1.not.i.2, label %if.end.i.2, label %if.end.i.1.do.end80_crit_edge

if.end.i.1.do.end80_crit_edge:                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i.2:                                       ; preds = %if.end.i.1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i.i.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.3)
  %cmp1.not.i.3 = icmp eq i32 %call.i.i.3, 2
  br i1 %cmp1.not.i.3, label %if.end.i.3, label %if.end.i.2.do.end80_crit_edge

if.end.i.2.do.end80_crit_edge:                    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i.3:                                       ; preds = %if.end.i.2
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call.i.i.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.4)
  %cmp1.not.i.4 = icmp eq i32 %call.i.i.4, 2
  br i1 %cmp1.not.i.4, label %if.end.i.4, label %if.end.i.3.do.end80_crit_edge

if.end.i.3.do.end80_crit_edge:                    ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i.4:                                       ; preds = %if.end.i.3
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i.i.5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %27, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 10), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.5)
  %cmp1.not.i.5 = icmp eq i32 %call.i.i.5, 2
  br i1 %cmp1.not.i.5, label %if.end.i.4.if.end84_crit_edge, label %if.end.i.4.do.end80_crit_edge

if.end.i.4.do.end80_crit_edge:                    ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i.4.if.end84_crit_edge:                    ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

do.body17:                                        ; preds = %if.then
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool18.not = icmp eq i32 %28, 0
  br i1 %tobool18.not, label %do.body17.do.end27_crit_edge, label %do.end22

do.body17.do.end27_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev24, ptr noundef nonnull @.str.29) #12
  br label %do.end27

do.end27:                                         ; preds = %do.end22, %do.body17.do.end27_crit_edge
  %arrayidx28 = getelementptr inbounds [2 x i8], ptr %top_ctrl_cfg, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx28, align 1
  %config29 = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1
  %pll_rf_set30 = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %pll_rf_set30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pll_rf_set30, align 4
  %tobool31.not = icmp eq ptr %33, null
  br i1 %tobool31.not, label %do.end27.if.end36_crit_edge, label %if.then32

do.end27.if.end36_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 %33(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %do.end27.if.end36_crit_edge
  %34 = ptrtoint ptr %config29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %config29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp39 = icmp eq i32 %35, 2
  br i1 %cmp39, label %for.body.i167.preheader, label %if.end36.if.end84_crit_edge

if.end36.if.end84_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

for.body.i167.preheader:                          ; preds = %if.end36
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i.i165 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull @lgdt330x_set_parameters.lgdt3303_qam_data, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165)
  %cmp1.not.i166 = icmp eq i32 %call.i.i165, 2
  br i1 %cmp1.not.i166, label %if.end.i178, label %for.body.i167.preheader.do.end80_crit_edge

for.body.i167.preheader.do.end80_crit_edge:       ; preds = %for.body.i167.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178:                                      ; preds = %for.body.i167.preheader
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i.i165.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.1)
  %cmp1.not.i166.1 = icmp eq i32 %call.i.i165.1, 2
  br i1 %cmp1.not.i166.1, label %if.end.i178.1, label %if.end.i178.do.end80_crit_edge

if.end.i178.do.end80_crit_edge:                   ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.1:                                    ; preds = %if.end.i178
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i.i165.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.2)
  %cmp1.not.i166.2 = icmp eq i32 %call.i.i165.2, 2
  br i1 %cmp1.not.i166.2, label %if.end.i178.2, label %if.end.i178.1.do.end80_crit_edge

if.end.i178.1.do.end80_crit_edge:                 ; preds = %if.end.i178.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.2:                                    ; preds = %if.end.i178.1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i.i165.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.3)
  %cmp1.not.i166.3 = icmp eq i32 %call.i.i165.3, 2
  br i1 %cmp1.not.i166.3, label %if.end.i178.3, label %if.end.i178.2.do.end80_crit_edge

if.end.i178.2.do.end80_crit_edge:                 ; preds = %if.end.i178.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.3:                                    ; preds = %if.end.i178.2
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i.i165.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %45, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.4)
  %cmp1.not.i166.4 = icmp eq i32 %call.i.i165.4, 2
  br i1 %cmp1.not.i166.4, label %if.end.i178.4, label %if.end.i178.3.do.end80_crit_edge

if.end.i178.3.do.end80_crit_edge:                 ; preds = %if.end.i178.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.4:                                    ; preds = %if.end.i178.3
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i.i165.5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 10), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.5)
  %cmp1.not.i166.5 = icmp eq i32 %call.i.i165.5, 2
  br i1 %cmp1.not.i166.5, label %if.end.i178.5, label %if.end.i178.4.do.end80_crit_edge

if.end.i178.4.do.end80_crit_edge:                 ; preds = %if.end.i178.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.5:                                    ; preds = %if.end.i178.4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i165.6 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %49, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 12), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.6)
  %cmp1.not.i166.6 = icmp eq i32 %call.i.i165.6, 2
  br i1 %cmp1.not.i166.6, label %if.end.i178.6, label %if.end.i178.5.do.end80_crit_edge

if.end.i178.5.do.end80_crit_edge:                 ; preds = %if.end.i178.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.6:                                    ; preds = %if.end.i178.5
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i.i165.7 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %51, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 14), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.7)
  %cmp1.not.i166.7 = icmp eq i32 %call.i.i165.7, 2
  br i1 %cmp1.not.i166.7, label %if.end.i178.7, label %if.end.i178.6.do.end80_crit_edge

if.end.i178.6.do.end80_crit_edge:                 ; preds = %if.end.i178.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.7:                                    ; preds = %if.end.i178.6
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i.i165.8 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %53, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 16), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.8)
  %cmp1.not.i166.8 = icmp eq i32 %call.i.i165.8, 2
  br i1 %cmp1.not.i166.8, label %if.end.i178.8, label %if.end.i178.7.do.end80_crit_edge

if.end.i178.7.do.end80_crit_edge:                 ; preds = %if.end.i178.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.8:                                    ; preds = %if.end.i178.7
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call.i.i165.9 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %55, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 18), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.9)
  %cmp1.not.i166.9 = icmp eq i32 %call.i.i165.9, 2
  br i1 %cmp1.not.i166.9, label %if.end.i178.9, label %if.end.i178.8.do.end80_crit_edge

if.end.i178.8.do.end80_crit_edge:                 ; preds = %if.end.i178.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.9:                                    ; preds = %if.end.i178.8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i.i165.10 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %57, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 20), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i165.10)
  %cmp1.not.i166.10 = icmp eq i32 %call.i.i165.10, 2
  br i1 %cmp1.not.i166.10, label %if.end.i178.9.if.end84_crit_edge, label %if.end.i178.9.do.end80_crit_edge

if.end.i178.9.do.end80_crit_edge:                 ; preds = %if.end.i178.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i178.9.if.end84_crit_edge:                 ; preds = %if.end.i178.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

do.body44:                                        ; preds = %if.then
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool45.not = icmp eq i32 %58, 0
  br i1 %tobool45.not, label %do.body44.do.end54_crit_edge, label %do.end49

do.body44.do.end54_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %dev51 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev51, ptr noundef nonnull @.str.32) #12
  br label %do.end54

do.end54:                                         ; preds = %do.end49, %do.body44.do.end54_crit_edge
  %arrayidx55 = getelementptr inbounds [2 x i8], ptr %top_ctrl_cfg, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %arrayidx55, align 1
  %config56 = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1
  %pll_rf_set57 = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %pll_rf_set57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pll_rf_set57, align 4
  %tobool58.not = icmp eq ptr %63, null
  br i1 %tobool58.not, label %do.end54.if.end63_crit_edge, label %if.then59

do.end54.if.end63_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then59:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = tail call i32 %63(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %do.end54.if.end63_crit_edge
  %64 = ptrtoint ptr %config56 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %config56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp66 = icmp eq i32 %65, 2
  br i1 %cmp66, label %for.body.i185.preheader, label %if.end63.if.end84_crit_edge

if.end63.if.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

for.body.i185.preheader:                          ; preds = %if.end63
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call.i.i183 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %67, ptr noundef nonnull @lgdt330x_set_parameters.lgdt3303_qam_data, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183)
  %cmp1.not.i184 = icmp eq i32 %call.i.i183, 2
  br i1 %cmp1.not.i184, label %if.end.i196, label %for.body.i185.preheader.do.end80_crit_edge

for.body.i185.preheader.do.end80_crit_edge:       ; preds = %for.body.i185.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196:                                      ; preds = %for.body.i185.preheader
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call.i.i183.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %69, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.1)
  %cmp1.not.i184.1 = icmp eq i32 %call.i.i183.1, 2
  br i1 %cmp1.not.i184.1, label %if.end.i196.1, label %if.end.i196.do.end80_crit_edge

if.end.i196.do.end80_crit_edge:                   ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.1:                                    ; preds = %if.end.i196
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %call.i.i183.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %71, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.2)
  %cmp1.not.i184.2 = icmp eq i32 %call.i.i183.2, 2
  br i1 %cmp1.not.i184.2, label %if.end.i196.2, label %if.end.i196.1.do.end80_crit_edge

if.end.i196.1.do.end80_crit_edge:                 ; preds = %if.end.i196.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.2:                                    ; preds = %if.end.i196.1
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i.i183.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %73, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.3)
  %cmp1.not.i184.3 = icmp eq i32 %call.i.i183.3, 2
  br i1 %cmp1.not.i184.3, label %if.end.i196.3, label %if.end.i196.2.do.end80_crit_edge

if.end.i196.2.do.end80_crit_edge:                 ; preds = %if.end.i196.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.3:                                    ; preds = %if.end.i196.2
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call.i.i183.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %75, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.4)
  %cmp1.not.i184.4 = icmp eq i32 %call.i.i183.4, 2
  br i1 %cmp1.not.i184.4, label %if.end.i196.4, label %if.end.i196.3.do.end80_crit_edge

if.end.i196.3.do.end80_crit_edge:                 ; preds = %if.end.i196.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.4:                                    ; preds = %if.end.i196.3
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %call.i.i183.5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %77, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 10), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.5)
  %cmp1.not.i184.5 = icmp eq i32 %call.i.i183.5, 2
  br i1 %cmp1.not.i184.5, label %if.end.i196.5, label %if.end.i196.4.do.end80_crit_edge

if.end.i196.4.do.end80_crit_edge:                 ; preds = %if.end.i196.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.5:                                    ; preds = %if.end.i196.4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i.i183.6 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %79, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 12), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.6)
  %cmp1.not.i184.6 = icmp eq i32 %call.i.i183.6, 2
  br i1 %cmp1.not.i184.6, label %if.end.i196.6, label %if.end.i196.5.do.end80_crit_edge

if.end.i196.5.do.end80_crit_edge:                 ; preds = %if.end.i196.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.6:                                    ; preds = %if.end.i196.5
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %call.i.i183.7 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %81, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 14), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.7)
  %cmp1.not.i184.7 = icmp eq i32 %call.i.i183.7, 2
  br i1 %cmp1.not.i184.7, label %if.end.i196.7, label %if.end.i196.6.do.end80_crit_edge

if.end.i196.6.do.end80_crit_edge:                 ; preds = %if.end.i196.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.7:                                    ; preds = %if.end.i196.6
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %call.i.i183.8 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %83, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 16), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.8)
  %cmp1.not.i184.8 = icmp eq i32 %call.i.i183.8, 2
  br i1 %cmp1.not.i184.8, label %if.end.i196.8, label %if.end.i196.7.do.end80_crit_edge

if.end.i196.7.do.end80_crit_edge:                 ; preds = %if.end.i196.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.8:                                    ; preds = %if.end.i196.7
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %call.i.i183.9 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %85, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 18), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.9)
  %cmp1.not.i184.9 = icmp eq i32 %call.i.i183.9, 2
  br i1 %cmp1.not.i184.9, label %if.end.i196.9, label %if.end.i196.8.do.end80_crit_edge

if.end.i196.8.do.end80_crit_edge:                 ; preds = %if.end.i196.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.9:                                    ; preds = %if.end.i196.8
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %call.i.i183.10 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %87, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 20), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i183.10)
  %cmp1.not.i184.10 = icmp eq i32 %call.i.i183.10, 2
  br i1 %cmp1.not.i184.10, label %if.end.i196.9.if.end84_crit_edge, label %if.end.i196.9.do.end80_crit_edge

if.end.i196.9.do.end80_crit_edge:                 ; preds = %if.end.i196.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i196.9.if.end84_crit_edge:                 ; preds = %if.end.i196.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

do.end72:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %dev74 = getelementptr inbounds %struct.i2c_client, ptr %89, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev74, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef %6) #12
  br label %cleanup

do.end80:                                         ; preds = %if.end.i196.9.do.end80_crit_edge, %if.end.i196.8.do.end80_crit_edge, %if.end.i196.7.do.end80_crit_edge, %if.end.i196.6.do.end80_crit_edge, %if.end.i196.5.do.end80_crit_edge, %if.end.i196.4.do.end80_crit_edge, %if.end.i196.3.do.end80_crit_edge, %if.end.i196.2.do.end80_crit_edge, %if.end.i196.1.do.end80_crit_edge, %if.end.i196.do.end80_crit_edge, %for.body.i185.preheader.do.end80_crit_edge, %if.end.i178.9.do.end80_crit_edge, %if.end.i178.8.do.end80_crit_edge, %if.end.i178.7.do.end80_crit_edge, %if.end.i178.6.do.end80_crit_edge, %if.end.i178.5.do.end80_crit_edge, %if.end.i178.4.do.end80_crit_edge, %if.end.i178.3.do.end80_crit_edge, %if.end.i178.2.do.end80_crit_edge, %if.end.i178.1.do.end80_crit_edge, %if.end.i178.do.end80_crit_edge, %for.body.i167.preheader.do.end80_crit_edge, %if.end.i.4.do.end80_crit_edge, %if.end.i.3.do.end80_crit_edge, %if.end.i.2.do.end80_crit_edge, %if.end.i.1.do.end80_crit_edge, %if.end.i.do.end80_crit_edge, %for.body.i.preheader.do.end80_crit_edge
  %buf.addr.019.i.lcssa.sink241 = phi ptr [ @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, %for.body.i.preheader.do.end80_crit_edge ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 2), %if.end.i.do.end80_crit_edge ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 4), %if.end.i.1.do.end80_crit_edge ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 6), %if.end.i.2.do.end80_crit_edge ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 8), %if.end.i.3.do.end80_crit_edge ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 10), %if.end.i.4.do.end80_crit_edge ], [ @lgdt330x_set_parameters.lgdt3303_qam_data, %for.body.i167.preheader.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 2), %if.end.i178.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 4), %if.end.i178.1.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 6), %if.end.i178.2.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 8), %if.end.i178.3.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 10), %if.end.i178.4.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 12), %if.end.i178.5.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 14), %if.end.i178.6.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 16), %if.end.i178.7.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 18), %if.end.i178.8.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 20), %if.end.i178.9.do.end80_crit_edge ], [ @lgdt330x_set_parameters.lgdt3303_qam_data, %for.body.i185.preheader.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 2), %if.end.i196.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 4), %if.end.i196.1.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 6), %if.end.i196.2.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 8), %if.end.i196.3.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 10), %if.end.i196.4.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 12), %if.end.i196.5.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 14), %if.end.i196.6.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 16), %if.end.i196.7.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 18), %if.end.i196.8.do.end80_crit_edge ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 20), %if.end.i196.9.do.end80_crit_edge ]
  %call.i.i.lcssa.sink = phi i32 [ %call.i.i, %for.body.i.preheader.do.end80_crit_edge ], [ %call.i.i.1, %if.end.i.do.end80_crit_edge ], [ %call.i.i.2, %if.end.i.1.do.end80_crit_edge ], [ %call.i.i.3, %if.end.i.2.do.end80_crit_edge ], [ %call.i.i.4, %if.end.i.3.do.end80_crit_edge ], [ %call.i.i.5, %if.end.i.4.do.end80_crit_edge ], [ %call.i.i165, %for.body.i167.preheader.do.end80_crit_edge ], [ %call.i.i165.1, %if.end.i178.do.end80_crit_edge ], [ %call.i.i165.2, %if.end.i178.1.do.end80_crit_edge ], [ %call.i.i165.3, %if.end.i178.2.do.end80_crit_edge ], [ %call.i.i165.4, %if.end.i178.3.do.end80_crit_edge ], [ %call.i.i165.5, %if.end.i178.4.do.end80_crit_edge ], [ %call.i.i165.6, %if.end.i178.5.do.end80_crit_edge ], [ %call.i.i165.7, %if.end.i178.6.do.end80_crit_edge ], [ %call.i.i165.8, %if.end.i178.7.do.end80_crit_edge ], [ %call.i.i165.9, %if.end.i178.8.do.end80_crit_edge ], [ %call.i.i165.10, %if.end.i178.9.do.end80_crit_edge ], [ %call.i.i183, %for.body.i185.preheader.do.end80_crit_edge ], [ %call.i.i183.1, %if.end.i196.do.end80_crit_edge ], [ %call.i.i183.2, %if.end.i196.1.do.end80_crit_edge ], [ %call.i.i183.3, %if.end.i196.2.do.end80_crit_edge ], [ %call.i.i183.4, %if.end.i196.3.do.end80_crit_edge ], [ %call.i.i183.5, %if.end.i196.4.do.end80_crit_edge ], [ %call.i.i183.6, %if.end.i196.5.do.end80_crit_edge ], [ %call.i.i183.7, %if.end.i196.6.do.end80_crit_edge ], [ %call.i.i183.8, %if.end.i196.7.do.end80_crit_edge ], [ %call.i.i183.9, %if.end.i196.8.do.end80_crit_edge ], [ %call.i.i183.10, %if.end.i196.9.do.end80_crit_edge ]
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %buf.addr.019.i.lcssa.sink241 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %buf.addr.019.i.lcssa.sink241, align 1
  %conv.i = zext i8 %93 to i32
  %arrayidx3.i = getelementptr i8, ptr %buf.addr.019.i.lcssa.sink241, i32 1
  %94 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %95 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef %call.i.i.lcssa.sink) #12
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %dev82 = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %modulation, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev82, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.27, i32 noundef %99) #12
  br label %if.end84

if.end84:                                         ; preds = %do.end80, %if.end.i196.9.if.end84_crit_edge, %if.end63.if.end84_crit_edge, %if.end.i178.9.if.end84_crit_edge, %if.end36.if.end84_crit_edge, %if.end.i.4.if.end84_crit_edge, %if.end10.if.end84_crit_edge
  %serial_mpeg = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %serial_mpeg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %serial_mpeg, align 4
  %arrayidx86 = getelementptr inbounds [2 x i8], ptr %top_ctrl_cfg, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx86, align 1
  %104 = trunc i32 %101 to i8
  %conv87 = or i8 %103, %104
  store i8 %conv87, ptr %arrayidx86, align 1
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %call.i.i201 = call i32 @i2c_transfer_buffer_flags(ptr noundef %106, ptr noundef nonnull %top_ctrl_cfg, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i201)
  %cmp1.not.i202 = icmp eq i32 %call.i.i201, 2
  br i1 %cmp1.not.i202, label %if.end84.i2c_write_demod_bytes.exit216_crit_edge, label %do.end.i210

if.end84.i2c_write_demod_bytes.exit216_crit_edge: ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_write_demod_bytes.exit216

do.end.i210:                                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %dev.i204 = getelementptr inbounds %struct.i2c_client, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %top_ctrl_cfg to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %top_ctrl_cfg, align 2
  %conv.i205 = zext i8 %110 to i32
  %111 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx86, align 1
  %conv4.i207 = zext i8 %112 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i204, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv.i205, i32 noundef %conv4.i207, i32 noundef %call.i.i201) #12
  br label %i2c_write_demod_bytes.exit216

i2c_write_demod_bytes.exit216:                    ; preds = %do.end.i210, %if.end84.i2c_write_demod_bytes.exit216_crit_edge
  %set_ts_params = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 1, i32 3
  %113 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %set_ts_params, align 4
  %tobool90.not = icmp eq ptr %114, null
  br i1 %tobool90.not, label %i2c_write_demod_bytes.exit216.if.end95_crit_edge, label %if.then91

i2c_write_demod_bytes.exit216.if.end95_crit_edge: ; preds = %i2c_write_demod_bytes.exit216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then91:                                        ; preds = %i2c_write_demod_bytes.exit216
  call void @__sanitizer_cov_trace_pc() #10
  %call94 = call i32 %114(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %i2c_write_demod_bytes.exit216.if.end95_crit_edge
  %115 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %modulation, align 4
  %117 = ptrtoint ptr %current_modulation to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %current_modulation, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.end95, %entry.if.end98_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %118 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %set_params, align 4
  %tobool99.not = icmp eq ptr %119, null
  br i1 %tobool99.not, label %if.end98.if.end112_crit_edge, label %if.then100

if.end98.if.end112_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then100:                                       ; preds = %if.end98
  %call104 = call i32 %119(ptr noundef %fe) #8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %120 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool106.not = icmp eq ptr %121, null
  br i1 %tobool106.not, label %if.then100.if.end112_crit_edge, label %if.then107

if.then100.if.end112_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then107:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  %call110 = call i32 %121(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %if.then100.if.end112_crit_edge, %if.end98.if.end112_crit_edge
  %122 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dtv_property_cache, align 4
  %current_frequency = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 7
  %124 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %current_frequency, align 4
  %call113 = call fastcc i32 @lgdt330x_sw_reset(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %do.end72
  %retval.0 = phi i32 [ -1, %do.end72 ], [ 0, %if.end112 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %top_ctrl_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgdt330x_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fe_tune_settings) #6 align 64 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lgdt330x_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %current_frequency = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_frequency, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3302_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %wr.i250 = alloca [1 x i8], align 1
  %msg.i251 = alloca [2 x %struct.i2c_msg], align 4
  %wr.i47.i = alloca [1 x i8], align 1
  %msg.i48.i = alloca [2 x %struct.i2c_msg], align 4
  %wr.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [5 x i8], align 1
  %wr.i227 = alloca [1 x i8], align 1
  %msg.i228 = alloca [2 x %struct.i2c_msg], align 4
  %wr.i206 = alloca [1 x i8], align 1
  %msg.i207 = alloca [2 x %struct.i2c_msg], align 4
  %wr.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !182
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !182
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !182
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i) #8
  %8 = ptrtoint ptr %wr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 63, ptr %wr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr2.i, align 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %9, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wr.i, ptr %buf4.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %19 = load i16, ptr %addr2.i, align 2
  %20 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %22 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %buf11.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.i2c_read_demod_bytes.exit_crit_edge, label %do.end.i

entry.i2c_read_demod_bytes.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %addr17.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr17.i, align 2
  %conv18.i = zext i16 %29 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i, i32 noundef 63, i32 noundef %call.i) #12
  br label %i2c_read_demod_bytes.exit

i2c_read_demod_bytes.exit:                        ; preds = %do.end.i, %entry.i2c_read_demod_bytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i) #8
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %i2c_read_demod_bytes.exit.do.end3_crit_edge, label %do.end

i2c_read_demod_bytes.exit.do.end3_crit_edge:      ; preds = %i2c_read_demod_bytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %i2c_read_demod_bytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %buf, align 1
  %conv = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %conv) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %i2c_read_demod_bytes.exit.do.end3_crit_edge
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf, align 1
  %37 = and i8 %36, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %37)
  %cmp = icmp eq i8 %37, 8
  br i1 %cmp, label %if.then7, label %do.end3.if.end8_crit_edge

do.end3.if.end8_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status, align 4
  %or = or i32 %39, 1
  store i32 %or, ptr %status, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end3.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i206) #8
  %40 = ptrtoint ptr %wr.i206 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %wr.i206, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i207) #8
  %41 = getelementptr inbounds i8, ptr %msg.i207, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %addr2.i208 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %addr2.i208 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr2.i208, align 2
  %47 = ptrtoint ptr %msg.i207 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %msg.i207, align 4
  %flags.i209 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i209 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i209, align 2
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %41, align 4
  %buf4.i211 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 0, i32 3
  %50 = ptrtoint ptr %buf4.i211 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %wr.i206, ptr %buf4.i211, align 4
  %arrayinit.element.i212 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 1
  %51 = load i16, ptr %addr2.i208, align 2
  %52 = ptrtoint ptr %arrayinit.element.i212 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %arrayinit.element.i212, align 4
  %flags8.i213 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 1, i32 1
  %53 = ptrtoint ptr %flags8.i213 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags8.i213, align 2
  %len9.i214 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 1, i32 2
  %54 = ptrtoint ptr %len9.i214 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 3, ptr %len9.i214, align 4
  %buf11.i215 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 1, i32 3
  %55 = ptrtoint ptr %buf11.i215 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf, ptr %buf11.i215, align 4
  %adapter.i216 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 3
  %56 = ptrtoint ptr %adapter.i216 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i216, align 8
  %call.i217 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i207, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i217)
  %cmp.not.i218 = icmp eq i32 %call.i217, 2
  br i1 %cmp.not.i218, label %if.end8.i2c_read_demod_bytes.exit226_crit_edge, label %do.end.i224

if.end8.i2c_read_demod_bytes.exit226_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit226

do.end.i224:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %dev.i219 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  %addr17.i220 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %addr17.i220 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr17.i220, align 2
  %conv18.i221 = zext i16 %61 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i219, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i221, i32 noundef 0, i32 noundef %call.i217) #12
  br label %i2c_read_demod_bytes.exit226

i2c_read_demod_bytes.exit226:                     ; preds = %do.end.i224, %if.end8.i2c_read_demod_bytes.exit226_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i207) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i206) #8
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool12.not = icmp eq i32 %62, 0
  br i1 %tobool12.not, label %i2c_read_demod_bytes.exit226.do.end27_crit_edge, label %do.end16

i2c_read_demod_bytes.exit226.do.end27_crit_edge:  ; preds = %i2c_read_demod_bytes.exit226
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.end16:                                         ; preds = %i2c_read_demod_bytes.exit226
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %buf, align 1
  %conv20 = zext i8 %66 to i32
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %3, align 1
  %conv22 = zext i8 %68 to i32
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %5, align 1
  %conv24 = zext i8 %70 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev18, ptr noundef nonnull @.str.43, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24) #12
  br label %do.end27

do.end27:                                         ; preds = %do.end16, %i2c_read_demod_bytes.exit226.do.end27_crit_edge
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %5, align 1
  %73 = and i8 %72, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp31 = icmp eq i8 %73, 1
  br i1 %cmp31, label %if.then33, label %do.end27.if.end35_crit_edge

do.end27.if.end35_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %status, align 4
  %or34 = or i32 %75, 8
  store i32 %or34, ptr %status, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %do.end27.if.end35_crit_edge
  %76 = and i8 %72, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %76)
  %cmp39 = icmp eq i8 %76, 8
  br i1 %cmp39, label %if.then41, label %if.end35.if.end43_crit_edge

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %status, align 4
  %or42 = or i32 %78, 20
  store i32 %or42, ptr %status, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end35.if.end43_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i227) #8
  %79 = ptrtoint ptr %wr.i227 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 28, ptr %wr.i227, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i228) #8
  %80 = getelementptr inbounds i8, ptr %msg.i228, i32 4
  %81 = call ptr @memset(ptr %80, i32 255, i32 16)
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %addr2.i229 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %addr2.i229 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %addr2.i229, align 2
  %86 = ptrtoint ptr %msg.i228 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %msg.i228, align 4
  %flags.i230 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i230 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i230, align 2
  %88 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %80, align 4
  %buf4.i232 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228, i32 0, i32 3
  %89 = ptrtoint ptr %buf4.i232 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %wr.i227, ptr %buf4.i232, align 4
  %arrayinit.element.i233 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228, i32 1
  %90 = load i16, ptr %addr2.i229, align 2
  %91 = ptrtoint ptr %arrayinit.element.i233 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %arrayinit.element.i233, align 4
  %flags8.i234 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228, i32 1, i32 1
  %92 = ptrtoint ptr %flags8.i234 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %flags8.i234, align 2
  %len9.i235 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228, i32 1, i32 2
  %93 = ptrtoint ptr %len9.i235 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %len9.i235, align 4
  %buf11.i236 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228, i32 1, i32 3
  %94 = ptrtoint ptr %buf11.i236 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf, ptr %buf11.i236, align 4
  %adapter.i237 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 3
  %95 = ptrtoint ptr %adapter.i237 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter.i237, align 8
  %call.i238 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i228, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i238)
  %cmp.not.i239 = icmp eq i32 %call.i238, 2
  br i1 %cmp.not.i239, label %if.end43.i2c_read_demod_bytes.exit247_crit_edge, label %do.end.i245

if.end43.i2c_read_demod_bytes.exit247_crit_edge:  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit247

do.end.i245:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %dev.i240 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 4
  %addr17.i241 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %addr17.i241 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %addr17.i241, align 2
  %conv18.i242 = zext i16 %100 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i240, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i242, i32 noundef 28, i32 noundef %call.i238) #12
  br label %i2c_read_demod_bytes.exit247

i2c_read_demod_bytes.exit247:                     ; preds = %do.end.i245, %if.end43.i2c_read_demod_bytes.exit247_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i228) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i227) #8
  %101 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool47.not = icmp eq i32 %101, 0
  br i1 %tobool47.not, label %i2c_read_demod_bytes.exit247.do.end58_crit_edge, label %do.end51

i2c_read_demod_bytes.exit247.do.end58_crit_edge:  ; preds = %i2c_read_demod_bytes.exit247
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58

do.end51:                                         ; preds = %i2c_read_demod_bytes.exit247
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %buf, align 1
  %conv55 = zext i8 %105 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev53, ptr noundef nonnull @.str.46, i32 noundef %conv55) #12
  br label %do.end58

do.end58:                                         ; preds = %do.end51, %i2c_read_demod_bytes.exit247.do.end58_crit_edge
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 3
  %106 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %current_modulation, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %107, label %do.end78 [
    i32 5, label %do.end58.sw.bb_crit_edge
    i32 3, label %do.end58.sw.bb_crit_edge275
    i32 7, label %sw.bb67
  ]

do.end58.sw.bb_crit_edge275:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end58.sw.bb_crit_edge:                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end58.sw.bb_crit_edge, %do.end58.sw.bb_crit_edge275
  %109 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %buf, align 1
  %111 = and i8 %110, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %111)
  %cmp62 = icmp eq i8 %111, 7
  br i1 %cmp62, label %if.then64, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then64:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %status, align 4
  %or65 = or i32 %113, 2
  store i32 %or65, ptr %status, align 4
  br label %sw.epilog

sw.bb67:                                          ; preds = %do.end58
  %114 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp71 = icmp slt i8 %115, 0
  br i1 %cmp71, label %if.then73, label %sw.bb67.sw.epilog_crit_edge

sw.bb67.sw.epilog_crit_edge:                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then73:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %status, align 4
  %or74 = or i32 %117, 2
  store i32 %or74, ptr %status, align 4
  br label %sw.epilog

do.end78:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %dev80 = getelementptr inbounds %struct.i2c_client, ptr %119, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev80, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end78, %if.then73, %sw.bb67.sw.epilog_crit_edge, %if.then64, %sw.bb.sw.epilog_crit_edge
  %120 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %status, align 4
  %and81 = and i32 %121, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.then83, label %if.end91

if.then83:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %122 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %stat, align 1
  %stat85 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %123 = ptrtoint ptr %stat85 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %stat85, align 1
  %stat88 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %124 = ptrtoint ptr %stat88 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %stat88, align 1
  br label %cleanup

if.end91:                                         ; preds = %sw.epilog
  %last_stats_time = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 6
  %125 = ptrtoint ptr %last_stats_time to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %last_stats_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool92.not = icmp eq i32 %126, 0
  br i1 %tobool92.not, label %if.end91.if.end97_crit_edge, label %land.lhs.true

if.end91.if.end97_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

land.lhs.true:                                    ; preds = %if.end91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %127, %126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp94 = icmp slt i32 %sub, 0
  br i1 %cmp94, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end97_crit_edge

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %land.lhs.true.if.end97_crit_edge, %if.end91.if.end97_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %128 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %128, 100
  %129 = ptrtoint ptr %last_stats_time to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add, ptr %last_stats_time, align 4
  %130 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i) #8
  %132 = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 1
  %133 = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 3
  %134 = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 4
  %current_modulation.i = getelementptr inbounds %struct.lgdt330x_state, ptr %131, i32 0, i32 3
  %135 = call ptr @memset(ptr %buf.i, i32 255, i32 5)
  %136 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %current_modulation.i, align 4
  %138 = zext i32 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %137, label %if.else [
    i32 7, label %sw.bb.i
    i32 3, label %if.end97.sw.bb7.i_crit_edge
    i32 5, label %if.end97.sw.bb7.i_crit_edge276
  ]

if.end97.sw.bb7.i_crit_edge276:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

if.end97.sw.bb7.i_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

sw.bb.i:                                          ; preds = %if.end97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i.i) #8
  %139 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 71, ptr %wr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %140 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %141 = call ptr @memset(ptr %140, i32 255, i32 16)
  %142 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %131, align 4
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %addr2.i.i, align 2
  %146 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %147 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %flags.i.i, align 2
  %148 = ptrtoint ptr %140 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %140, align 4
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %149 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %wr.i.i, ptr %buf4.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %150 = load i16, ptr %addr2.i.i, align 2
  %151 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %arrayinit.element.i.i, align 4
  %flags8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %152 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 1, ptr %flags8.i.i, align 2
  %len9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %153 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 5, ptr %len9.i.i, align 4
  %buf11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %154 = ptrtoint ptr %buf11.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %buf.i, ptr %buf11.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %143, i32 0, i32 3
  %155 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %sw.bb.i.i2c_read_demod_bytes.exit.i_crit_edge, label %do.end.i.i

sw.bb.i.i2c_read_demod_bytes.exit.i_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %131, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %158, i32 0, i32 4
  %addr17.i.i = getelementptr inbounds %struct.i2c_client, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %addr17.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %addr17.i.i, align 2
  %conv18.i.i = zext i16 %160 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i.i, i32 noundef 71, i32 noundef %call.i.i) #12
  br label %i2c_read_demod_bytes.exit.i

i2c_read_demod_bytes.exit.i:                      ; preds = %do.end.i.i, %sw.bb.i.i2c_read_demod_bytes.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i.i) #8
  %161 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %buf.i, align 1
  %163 = and i8 %162, 56
  %and.i = zext i8 %163 to i32
  %shl.i = shl nuw nsw i32 %and.i, 13
  %164 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %133, align 1
  %conv2.i = zext i8 %165 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %shl3.i
  %166 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %134, align 1
  %conv5.i = zext i8 %167 to i32
  %or6.i = or i32 %or.i, %conv5.i
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end97.sw.bb7.i_crit_edge, %if.end97.sw.bb7.i_crit_edge276
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i47.i) #8
  %168 = ptrtoint ptr %wr.i47.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 26, ptr %wr.i47.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i48.i) #8
  %169 = getelementptr inbounds i8, ptr %msg.i48.i, i32 4
  %170 = call ptr @memset(ptr %169, i32 255, i32 16)
  %171 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %131, align 4
  %addr2.i49.i = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %addr2.i49.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %addr2.i49.i, align 2
  %175 = ptrtoint ptr %msg.i48.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %msg.i48.i, align 4
  %flags.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48.i, i32 0, i32 1
  %176 = ptrtoint ptr %flags.i50.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %flags.i50.i, align 2
  %177 = ptrtoint ptr %169 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 1, ptr %169, align 4
  %buf4.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48.i, i32 0, i32 3
  %178 = ptrtoint ptr %buf4.i52.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %wr.i47.i, ptr %buf4.i52.i, align 4
  %arrayinit.element.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48.i, i32 1
  %179 = load i16, ptr %addr2.i49.i, align 2
  %180 = ptrtoint ptr %arrayinit.element.i53.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %arrayinit.element.i53.i, align 4
  %flags8.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48.i, i32 1, i32 1
  %181 = ptrtoint ptr %flags8.i54.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 1, ptr %flags8.i54.i, align 2
  %len9.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48.i, i32 1, i32 2
  %182 = ptrtoint ptr %len9.i55.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 2, ptr %len9.i55.i, align 4
  %buf11.i56.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48.i, i32 1, i32 3
  %183 = ptrtoint ptr %buf11.i56.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %buf.i, ptr %buf11.i56.i, align 4
  %adapter.i57.i = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 3
  %184 = ptrtoint ptr %adapter.i57.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %adapter.i57.i, align 8
  %call.i58.i = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %msg.i48.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i58.i)
  %cmp.not.i59.i = icmp eq i32 %call.i58.i, 2
  br i1 %cmp.not.i59.i, label %sw.bb7.i.i2c_read_demod_bytes.exit67.i_crit_edge, label %do.end.i65.i

sw.bb7.i.i2c_read_demod_bytes.exit67.i_crit_edge: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit67.i

do.end.i65.i:                                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %131, align 4
  %dev.i60.i = getelementptr inbounds %struct.i2c_client, ptr %187, i32 0, i32 4
  %addr17.i61.i = getelementptr inbounds %struct.i2c_client, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %addr17.i61.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %addr17.i61.i, align 2
  %conv18.i62.i = zext i16 %189 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i60.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i62.i, i32 noundef 26, i32 noundef %call.i58.i) #12
  br label %i2c_read_demod_bytes.exit67.i

i2c_read_demod_bytes.exit67.i:                    ; preds = %do.end.i65.i, %sw.bb7.i.i2c_read_demod_bytes.exit67.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i48.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i47.i) #8
  %190 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %buf.i, align 1
  %192 = and i8 %191, 3
  %and12.i = zext i8 %192 to i32
  %shl13.i = shl nuw nsw i32 %and12.i, 8
  %193 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %132, align 1
  %conv15.i = zext i8 %194 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %195 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %current_modulation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %196)
  %cmp.i = icmp eq i32 %196, 3
  %cond.i = select i1 %cmp.i, i32 97939837, i32 98026066
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %i2c_read_demod_bytes.exit67.i, %i2c_read_demod_bytes.exit.i
  %noise.0.i = phi i32 [ %or16.i, %i2c_read_demod_bytes.exit67.i ], [ %or6.i, %i2c_read_demod_bytes.exit.i ]
  %c.0.i = phi i32 [ %cond.i, %i2c_read_demod_bytes.exit67.i ], [ 73957994, %i2c_read_demod_bytes.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %noise.0.i)
  %cmp.i.i = icmp eq i32 %noise.0.i, 0
  br i1 %cmp.i.i, label %sw.epilog.i.calculate_snr.exit.i_crit_edge, label %if.end.i.i

sw.epilog.i.calculate_snr.exit.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calculate_snr.exit.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  %call.i68.i = call i32 @intlog10(i32 noundef %noise.0.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0.i, i32 %call.i68.i)
  %cmp1.i.i = icmp ult i32 %c.0.i, %call.i68.i
  br i1 %cmp1.i.i, label %if.end.i.i.calculate_snr.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.calculate_snr.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calculate_snr.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %c.0.i, %call.i68.i
  %mul.i.i = mul i32 %sub.i.i, 10
  br label %calculate_snr.exit.i

calculate_snr.exit.i:                             ; preds = %if.end3.i.i, %if.end.i.i.calculate_snr.exit.i_crit_edge, %sw.epilog.i.calculate_snr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul.i.i, %if.end3.i.i ], [ 0, %sw.epilog.i.calculate_snr.exit.i_crit_edge ], [ 0, %if.end.i.i.calculate_snr.exit.i_crit_edge ]
  %snr20.i = getelementptr inbounds %struct.lgdt330x_state, ptr %131, i32 0, i32 4
  %197 = ptrtoint ptr %snr20.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %retval.0.i.i, ptr %snr20.i, align 4
  %198 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i = icmp eq i32 %198, 0
  br i1 %tobool.not.i, label %calculate_snr.exit.i.if.then102_crit_edge, label %do.end24.i

calculate_snr.exit.i.if.then102_crit_edge:        ; preds = %calculate_snr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then102

do.end24.i:                                       ; preds = %calculate_snr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %131, align 4
  %dev26.i = getelementptr inbounds %struct.i2c_client, ptr %200, i32 0, i32 4
  %shr.i = lshr i32 %retval.0.i.i, 24
  %shr29.i = lshr i32 %retval.0.i.i, 8
  %and30.i = and i32 %shr29.i, 65535
  %mul.i = mul nuw nsw i32 %and30.i, 100
  %shr31.i = lshr i32 %mul.i, 16
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev26.i, ptr noundef nonnull @.str.57, i32 noundef %noise.0.i, i32 noundef %shr.i, i32 noundef %shr31.i) #12
  br label %if.then102

if.then102:                                       ; preds = %do.end24.i, %calculate_snr.exit.i.if.then102_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i) #8
  %stat104 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %201 = ptrtoint ptr %stat104 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 1, ptr %stat104, align 1
  %snr = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 4
  %202 = ptrtoint ptr %snr to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %snr, align 4
  %conv107 = zext i32 %203 to i64
  %mul = mul nuw nsw i64 %conv107, 1000
  %shr = lshr i64 %mul, 24
  %204 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_storeN_noabort(i32 %205, i32 8)
  store i64 %shr, ptr %204, align 1
  br label %if.end115

if.else:                                          ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %131, align 4
  %dev.i248 = getelementptr inbounds %struct.i2c_client, ptr %207, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i248, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.54) #12
  %snr.i = getelementptr inbounds %struct.lgdt330x_state, ptr %131, i32 0, i32 4
  %208 = ptrtoint ptr %snr.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %snr.i, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i) #8
  %stat112 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %209 = ptrtoint ptr %stat112 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %stat112, align 1
  br label %if.end115

if.end115:                                        ; preds = %if.else, %if.then102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i250) #8
  %210 = ptrtoint ptr %wr.i250 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 106, ptr %wr.i250, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i251) #8
  %211 = getelementptr inbounds i8, ptr %msg.i251, i32 4
  %212 = call ptr @memset(ptr %211, i32 255, i32 16)
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 4
  %addr2.i252 = getelementptr inbounds %struct.i2c_client, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %addr2.i252 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %addr2.i252, align 2
  %217 = ptrtoint ptr %msg.i251 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %msg.i251, align 4
  %flags.i253 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i251, i32 0, i32 1
  %218 = ptrtoint ptr %flags.i253 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %flags.i253, align 2
  %219 = ptrtoint ptr %211 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 1, ptr %211, align 4
  %buf4.i255 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i251, i32 0, i32 3
  %220 = ptrtoint ptr %buf4.i255 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %wr.i250, ptr %buf4.i255, align 4
  %arrayinit.element.i256 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i251, i32 1
  %221 = load i16, ptr %addr2.i252, align 2
  %222 = ptrtoint ptr %arrayinit.element.i256 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %arrayinit.element.i256, align 4
  %flags8.i257 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i251, i32 1, i32 1
  %223 = ptrtoint ptr %flags8.i257 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 1, ptr %flags8.i257, align 2
  %len9.i258 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i251, i32 1, i32 2
  %224 = ptrtoint ptr %len9.i258 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 3, ptr %len9.i258, align 4
  %buf11.i259 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i251, i32 1, i32 3
  %225 = ptrtoint ptr %buf11.i259 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %buf, ptr %buf11.i259, align 4
  %adapter.i260 = getelementptr inbounds %struct.i2c_client, ptr %214, i32 0, i32 3
  %226 = ptrtoint ptr %adapter.i260 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %adapter.i260, align 8
  %call.i261 = call i32 @i2c_transfer(ptr noundef %227, ptr noundef nonnull %msg.i251, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i261)
  %cmp.not.i262 = icmp eq i32 %call.i261, 2
  br i1 %cmp.not.i262, label %if.then119, label %do.end.i268

do.end.i268:                                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 4
  %dev.i263 = getelementptr inbounds %struct.i2c_client, ptr %229, i32 0, i32 4
  %addr17.i264 = getelementptr inbounds %struct.i2c_client, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %addr17.i264 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %addr17.i264, align 2
  %conv18.i265 = zext i16 %231 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i263, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i265, i32 noundef 106, i32 noundef %call.i261) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i251) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i250) #8
  %stat159 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %232 = ptrtoint ptr %stat159 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 0, ptr %stat159, align 1
  %stat163 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %233 = ptrtoint ptr %stat163 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 0, ptr %stat163, align 1
  br label %cleanup

if.then119:                                       ; preds = %if.end115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i251) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i250) #8
  %234 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %buf, align 1
  %conv121 = zext i8 %235 to i16
  %shl = shl nuw i16 %conv121, 8
  %236 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %3, align 1
  %conv123 = zext i8 %237 to i16
  %or124 = or i16 %shl, %conv123
  %ucblocks = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 5
  %238 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %or124, ptr %ucblocks, align 4
  %239 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool127.not = icmp eq i32 %239, 0
  br i1 %tobool127.not, label %if.then119.do.end138_crit_edge, label %do.end131

if.then119.do.end138_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

do.end131:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %1, align 4
  %dev133 = getelementptr inbounds %struct.i2c_client, ptr %241, i32 0, i32 4
  %conv135 = zext i16 %or124 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev133, ptr noundef nonnull @.str.52, i32 noundef %conv135) #12
  br label %do.end138

do.end138:                                        ; preds = %do.end131, %if.then119.do.end138_crit_edge
  %242 = ptrtoint ptr %ucblocks to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %ucblocks, align 4
  %conv140 = zext i16 %243 to i64
  %stat142 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %244 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 8)
  %246 = load i64, ptr %244, align 1
  %add144 = add i64 %246, %conv140
  store i64 %add144, ptr %244, align 1
  %stat146 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %247 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_loadN_noabort(i32 %248, i32 8)
  %249 = load i64, ptr %247, align 1
  %add148 = add i64 %249, 10000
  store i64 %add148, ptr %247, align 1
  %250 = ptrtoint ptr %stat142 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 3, ptr %stat142, align 1
  %251 = ptrtoint ptr %stat146 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 3, ptr %stat146, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end138, %do.end.i268, %land.lhs.true.cleanup_crit_edge, %if.then83
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt330x_read_signal_strength(ptr noundef %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
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
  store i16 -1, ptr %snr, align 2, !annotation !182
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
  %snr1 = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 4
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lgdt330x_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %snr1 = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %snr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snr1, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i16
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lgdt330x_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %ucblocks1 = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ucblocks1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ucblocks1, align 4
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgdt330x_sw_reset(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %reset.i5 = alloca [2 x i8], align 2
  %reset.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.lgdt330x_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reset.i) #8
  %3 = ptrtoint ptr %reset.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 256, ptr %reset.i, align 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %reset.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp1.not.i.i, label %sw.bb.if.then.i_crit_edge, label %i2c_write_demod_bytes.exit.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

i2c_write_demod_bytes.exit.i:                     ; preds = %sw.bb
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %reset.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reset.i, align 2
  %conv.i.i = zext i8 %9 to i32
  %arrayidx3.i.i = getelementptr inbounds i8, ptr %reset.i, i32 1
  %10 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv.i.i, i32 noundef %conv4.i.i, i32 noundef %call.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp5.i.i = icmp slt i32 %call.i.i.i, 0
  %call..i.i = select i1 %cmp5.i.i, i32 %call.i.i.i, i32 -121
  %conv1.i = and i32 %call..i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.i = icmp eq i32 %conv1.i, 0
  br i1 %cmp.i, label %i2c_write_demod_bytes.exit.i.if.then.i_crit_edge, label %i2c_write_demod_bytes.exit.i.lgdt3302_sw_reset.exit_crit_edge

i2c_write_demod_bytes.exit.i.lgdt3302_sw_reset.exit_crit_edge: ; preds = %i2c_write_demod_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3302_sw_reset.exit

i2c_write_demod_bytes.exit.i.if.then.i_crit_edge: ; preds = %i2c_write_demod_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %i2c_write_demod_bytes.exit.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %reset.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %arrayidx.i, align 1
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %call.i.i11.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %reset.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i11.i)
  %cmp1.not.i12.i = icmp eq i32 %call.i.i11.i, 2
  br i1 %cmp1.not.i12.i, label %if.then.i.lgdt3302_sw_reset.exit_crit_edge, label %do.end.i20.i

if.then.i.lgdt3302_sw_reset.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3302_sw_reset.exit

do.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %dev.i14.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %reset.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reset.i, align 2
  %conv.i15.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %conv4.i17.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i14.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv.i15.i, i32 noundef %conv4.i17.i, i32 noundef %call.i.i11.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %cmp5.i18.i = icmp slt i32 %call.i.i11.i, 0
  %call..i19.i = select i1 %cmp5.i18.i, i32 %call.i.i11.i, i32 -121
  br label %lgdt3302_sw_reset.exit

lgdt3302_sw_reset.exit:                           ; preds = %do.end.i20.i, %if.then.i.lgdt3302_sw_reset.exit_crit_edge, %i2c_write_demod_bytes.exit.i.lgdt3302_sw_reset.exit_crit_edge
  %ret.0.in.i = phi i32 [ %call..i.i, %i2c_write_demod_bytes.exit.i.lgdt3302_sw_reset.exit_crit_edge ], [ %call..i19.i, %do.end.i20.i ], [ 0, %if.then.i.lgdt3302_sw_reset.exit_crit_edge ]
  %conv6.i = and i32 %ret.0.in.i, 255
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reset.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reset.i5) #8
  %21 = ptrtoint ptr %reset.i5 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 512, ptr %reset.i5, align 2
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %call.i.i.i6 = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %reset.i5, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i6)
  %cmp1.not.i.i7 = icmp eq i32 %call.i.i.i6, 2
  br i1 %cmp1.not.i.i7, label %sw.bb1.if.then.i20_crit_edge, label %i2c_write_demod_bytes.exit.i16

sw.bb1.if.then.i20_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i20

i2c_write_demod_bytes.exit.i16:                   ; preds = %sw.bb1
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %dev.i.i8 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %reset.i5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reset.i5, align 2
  %conv.i.i9 = zext i8 %27 to i32
  %arrayidx3.i.i10 = getelementptr inbounds i8, ptr %reset.i5, i32 1
  %28 = ptrtoint ptr %arrayidx3.i.i10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx3.i.i10, align 1
  %conv4.i.i11 = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i8, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv.i.i9, i32 noundef %conv4.i.i11, i32 noundef %call.i.i.i6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i6)
  %cmp5.i.i12 = icmp slt i32 %call.i.i.i6, 0
  %call..i.i13 = select i1 %cmp5.i.i12, i32 %call.i.i.i6, i32 -121
  %conv1.i14 = and i32 %call..i.i13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i14)
  %cmp.i15 = icmp eq i32 %conv1.i14, 0
  br i1 %cmp.i15, label %i2c_write_demod_bytes.exit.i16.if.then.i20_crit_edge, label %i2c_write_demod_bytes.exit.i16.lgdt3303_sw_reset.exit_crit_edge

i2c_write_demod_bytes.exit.i16.lgdt3303_sw_reset.exit_crit_edge: ; preds = %i2c_write_demod_bytes.exit.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3303_sw_reset.exit

i2c_write_demod_bytes.exit.i16.if.then.i20_crit_edge: ; preds = %i2c_write_demod_bytes.exit.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i20

if.then.i20:                                      ; preds = %i2c_write_demod_bytes.exit.i16.if.then.i20_crit_edge, %sw.bb1.if.then.i20_crit_edge
  %arrayidx.i17 = getelementptr inbounds [2 x i8], ptr %reset.i5, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx.i17, align 1
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state, align 4
  %call.i.i11.i18 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %reset.i5, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i11.i18)
  %cmp1.not.i12.i19 = icmp eq i32 %call.i.i11.i18, 2
  br i1 %cmp1.not.i12.i19, label %if.then.i20.lgdt3303_sw_reset.exit_crit_edge, label %do.end.i20.i26

if.then.i20.lgdt3303_sw_reset.exit_crit_edge:     ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %lgdt3303_sw_reset.exit

do.end.i20.i26:                                   ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  %dev.i14.i21 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %reset.i5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reset.i5, align 2
  %conv.i15.i22 = zext i8 %36 to i32
  %37 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i17, align 1
  %conv4.i17.i23 = zext i8 %38 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i14.i21, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv.i15.i22, i32 noundef %conv4.i17.i23, i32 noundef %call.i.i11.i18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i18)
  %cmp5.i18.i24 = icmp slt i32 %call.i.i11.i18, 0
  %call..i19.i25 = select i1 %cmp5.i18.i24, i32 %call.i.i11.i18, i32 -121
  br label %lgdt3303_sw_reset.exit

lgdt3303_sw_reset.exit:                           ; preds = %do.end.i20.i26, %if.then.i20.lgdt3303_sw_reset.exit_crit_edge, %i2c_write_demod_bytes.exit.i16.lgdt3303_sw_reset.exit_crit_edge
  %ret.0.in.i27 = phi i32 [ %call..i.i13, %i2c_write_demod_bytes.exit.i16.lgdt3303_sw_reset.exit_crit_edge ], [ %call..i19.i25, %do.end.i20.i26 ], [ 0, %if.then.i20.lgdt3303_sw_reset.exit_crit_edge ]
  %conv6.i28 = and i32 %ret.0.in.i27, 255
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reset.i5) #8
  br label %return

return:                                           ; preds = %lgdt3303_sw_reset.exit, %lgdt3302_sw_reset.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv6.i28, %lgdt3303_sw_reset.exit ], [ %conv6.i, %lgdt3302_sw_reset.exit ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3303_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %wr.i318 = alloca [1 x i8], align 1
  %msg.i319 = alloca [2 x %struct.i2c_msg], align 4
  %wr.i46.i = alloca [1 x i8], align 1
  %msg.i47.i = alloca [2 x %struct.i2c_msg], align 4
  %wr.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [5 x i8], align 1
  %wr.i295 = alloca [1 x i8], align 1
  %msg.i296 = alloca [2 x %struct.i2c_msg], align 4
  %wr.i274 = alloca [1 x i8], align 1
  %msg.i275 = alloca [2 x %struct.i2c_msg], align 4
  %wr.i253 = alloca [1 x i8], align 1
  %msg.i254 = alloca [2 x %struct.i2c_msg], align 4
  %wr.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !182
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !182
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !182
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i) #8
  %8 = ptrtoint ptr %wr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 88, ptr %wr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr2.i, align 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %9, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wr.i, ptr %buf4.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %19 = load i16, ptr %addr2.i, align 2
  %20 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %22 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %buf11.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.body, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %addr17.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr17.i, align 2
  %conv18.i = zext i16 %29 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i, i32 noundef 88, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp19.i = icmp sgt i32 %call.i, -1
  %spec.select = select i1 %cmp19.i, i32 -5, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i) #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i) #8
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %buf, align 1
  %conv = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %conv) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf, align 1
  %37 = and i8 %36, 33
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp8 = icmp eq i8 %37, 1
  br i1 %cmp8, label %if.then10, label %do.end5.if.end11_crit_edge

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status, align 4
  %or = or i32 %39, 1
  store i32 %or, ptr %status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end5.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i253) #8
  %40 = ptrtoint ptr %wr.i253 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 28, ptr %wr.i253, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i254) #8
  %41 = getelementptr inbounds i8, ptr %msg.i254, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %addr2.i255 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %addr2.i255 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr2.i255, align 2
  %47 = ptrtoint ptr %msg.i254 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %msg.i254, align 4
  %flags.i256 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i256 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i256, align 2
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %41, align 4
  %buf4.i258 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254, i32 0, i32 3
  %50 = ptrtoint ptr %buf4.i258 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %wr.i253, ptr %buf4.i258, align 4
  %arrayinit.element.i259 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254, i32 1
  %51 = load i16, ptr %addr2.i255, align 2
  %52 = ptrtoint ptr %arrayinit.element.i259 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %arrayinit.element.i259, align 4
  %flags8.i260 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254, i32 1, i32 1
  %53 = ptrtoint ptr %flags8.i260 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags8.i260, align 2
  %len9.i261 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254, i32 1, i32 2
  %54 = ptrtoint ptr %len9.i261 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len9.i261, align 4
  %buf11.i262 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254, i32 1, i32 3
  %55 = ptrtoint ptr %buf11.i262 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf, ptr %buf11.i262, align 4
  %adapter.i263 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 3
  %56 = ptrtoint ptr %adapter.i263 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i263, align 8
  %call.i264 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i254, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i264)
  %cmp.not.i265 = icmp eq i32 %call.i264, 2
  br i1 %cmp.not.i265, label %if.end11.i2c_read_demod_bytes.exit273_crit_edge, label %do.end.i271

if.end11.i2c_read_demod_bytes.exit273_crit_edge:  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit273

do.end.i271:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %dev.i266 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  %addr17.i267 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %addr17.i267 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr17.i267, align 2
  %conv18.i268 = zext i16 %61 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i266, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i268, i32 noundef 28, i32 noundef %call.i264) #12
  br label %i2c_read_demod_bytes.exit273

i2c_read_demod_bytes.exit273:                     ; preds = %do.end.i271, %if.end11.i2c_read_demod_bytes.exit273_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i254) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i253) #8
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool15.not = icmp eq i32 %62, 0
  br i1 %tobool15.not, label %i2c_read_demod_bytes.exit273.do.end26_crit_edge, label %do.end19

i2c_read_demod_bytes.exit273.do.end26_crit_edge:  ; preds = %i2c_read_demod_bytes.exit273
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.end19:                                         ; preds = %i2c_read_demod_bytes.exit273
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %buf, align 1
  %conv23 = zext i8 %66 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev21, ptr noundef nonnull @.str.46, i32 noundef %conv23) #12
  br label %do.end26

do.end26:                                         ; preds = %do.end19, %i2c_read_demod_bytes.exit273.do.end26_crit_edge
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 3
  %67 = ptrtoint ptr %current_modulation to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %current_modulation, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %68, label %do.end117 [
    i32 5, label %do.end26.sw.bb_crit_edge
    i32 3, label %do.end26.sw.bb_crit_edge346
    i32 7, label %sw.bb74
  ]

do.end26.sw.bb_crit_edge346:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end26.sw.bb_crit_edge:                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end26.sw.bb_crit_edge, %do.end26.sw.bb_crit_edge346
  %70 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %buf, align 1
  %72 = and i8 %71, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %72)
  %cmp30 = icmp eq i8 %72, 7
  br i1 %cmp30, label %if.then32, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb
  %73 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %status, align 4
  %or33 = or i32 %74, 2
  store i32 %or33, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i274) #8
  %75 = ptrtoint ptr %wr.i274 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -118, ptr %wr.i274, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i275) #8
  %76 = getelementptr inbounds i8, ptr %msg.i275, i32 4
  %77 = call ptr @memset(ptr %76, i32 255, i32 16)
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %addr2.i276 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %addr2.i276 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %addr2.i276, align 2
  %82 = ptrtoint ptr %msg.i275 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %msg.i275, align 4
  %flags.i277 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 0, i32 1
  %83 = ptrtoint ptr %flags.i277 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %flags.i277, align 2
  %84 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %76, align 4
  %buf4.i279 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 0, i32 3
  %85 = ptrtoint ptr %buf4.i279 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %wr.i274, ptr %buf4.i279, align 4
  %arrayinit.element.i280 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 1
  %86 = load i16, ptr %addr2.i276, align 2
  %87 = ptrtoint ptr %arrayinit.element.i280 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %arrayinit.element.i280, align 4
  %flags8.i281 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 1, i32 1
  %88 = ptrtoint ptr %flags8.i281 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %flags8.i281, align 2
  %len9.i282 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 1, i32 2
  %89 = ptrtoint ptr %len9.i282 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %len9.i282, align 4
  %buf11.i283 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 1, i32 3
  %90 = ptrtoint ptr %buf11.i283 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %buf, ptr %buf11.i283, align 4
  %adapter.i284 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 3
  %91 = ptrtoint ptr %adapter.i284 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter.i284, align 8
  %call.i285 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %msg.i275, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i285)
  %cmp.not.i286 = icmp eq i32 %call.i285, 2
  br i1 %cmp.not.i286, label %if.then32.i2c_read_demod_bytes.exit294_crit_edge, label %do.end.i292

if.then32.i2c_read_demod_bytes.exit294_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit294

do.end.i292:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %dev.i287 = getelementptr inbounds %struct.i2c_client, ptr %94, i32 0, i32 4
  %addr17.i288 = getelementptr inbounds %struct.i2c_client, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %addr17.i288 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %addr17.i288, align 2
  %conv18.i289 = zext i16 %96 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i287, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i289, i32 noundef 138, i32 noundef %call.i285) #12
  br label %i2c_read_demod_bytes.exit294

i2c_read_demod_bytes.exit294:                     ; preds = %do.end.i292, %if.then32.i2c_read_demod_bytes.exit294_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i275) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i274) #8
  %97 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool38.not = icmp eq i32 %97, 0
  br i1 %tobool38.not, label %i2c_read_demod_bytes.exit294.do.end49_crit_edge, label %do.end42

i2c_read_demod_bytes.exit294.do.end49_crit_edge:  ; preds = %i2c_read_demod_bytes.exit294
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end42:                                         ; preds = %i2c_read_demod_bytes.exit294
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %dev44 = getelementptr inbounds %struct.i2c_client, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %buf, align 1
  %conv46 = zext i8 %101 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev44, ptr noundef nonnull @.str.63, i32 noundef %conv46) #12
  br label %do.end49

do.end49:                                         ; preds = %do.end42, %i2c_read_demod_bytes.exit294.do.end49_crit_edge
  %102 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %buf, align 1
  %104 = and i8 %103, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp53.not = icmp eq i8 %104, 0
  br i1 %cmp53.not, label %do.end49.if.end57_crit_edge, label %if.then55

do.end49.if.end57_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then55:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %status, align 4
  %or56 = or i32 %106, 8
  store i32 %or56, ptr %status, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %do.end49.if.end57_crit_edge
  %107 = and i8 %103, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp61.not = icmp eq i8 %107, 0
  br i1 %cmp61.not, label %if.end57.if.end65_crit_edge, label %if.then63

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %status, align 4
  %or64 = or i32 %109, 16
  store i32 %or64, ptr %status, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end57.if.end65_crit_edge
  %110 = and i8 %103, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp69.not = icmp eq i8 %110, 0
  br i1 %cmp69.not, label %if.end65.sw.epilog_crit_edge, label %if.then71

if.end65.sw.epilog_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %status, align 4
  %or72 = or i32 %112, 4
  store i32 %or72, ptr %status, align 4
  br label %sw.epilog

sw.bb74:                                          ; preds = %do.end26
  %113 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp78 = icmp slt i8 %114, 0
  br i1 %cmp78, label %if.then80, label %sw.bb74.sw.epilog_crit_edge

sw.bb74.sw.epilog_crit_edge:                      ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then80:                                        ; preds = %sw.bb74
  %115 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %status, align 4
  %or81 = or i32 %116, 2
  store i32 %or81, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i295) #8
  %117 = ptrtoint ptr %wr.i295 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 56, ptr %wr.i295, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i296) #8
  %118 = getelementptr inbounds i8, ptr %msg.i296, i32 4
  %119 = call ptr @memset(ptr %118, i32 255, i32 16)
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %addr2.i297 = getelementptr inbounds %struct.i2c_client, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %addr2.i297 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %addr2.i297, align 2
  %124 = ptrtoint ptr %msg.i296 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %msg.i296, align 4
  %flags.i298 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i296, i32 0, i32 1
  %125 = ptrtoint ptr %flags.i298 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i298, align 2
  %126 = ptrtoint ptr %118 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 1, ptr %118, align 4
  %buf4.i300 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i296, i32 0, i32 3
  %127 = ptrtoint ptr %buf4.i300 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %wr.i295, ptr %buf4.i300, align 4
  %arrayinit.element.i301 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i296, i32 1
  %128 = load i16, ptr %addr2.i297, align 2
  %129 = ptrtoint ptr %arrayinit.element.i301 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %arrayinit.element.i301, align 4
  %flags8.i302 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i296, i32 1, i32 1
  %130 = ptrtoint ptr %flags8.i302 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1, ptr %flags8.i302, align 2
  %len9.i303 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i296, i32 1, i32 2
  %131 = ptrtoint ptr %len9.i303 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 1, ptr %len9.i303, align 4
  %buf11.i304 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i296, i32 1, i32 3
  %132 = ptrtoint ptr %buf11.i304 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %buf, ptr %buf11.i304, align 4
  %adapter.i305 = getelementptr inbounds %struct.i2c_client, ptr %121, i32 0, i32 3
  %133 = ptrtoint ptr %adapter.i305 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adapter.i305, align 8
  %call.i306 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i296, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i306)
  %cmp.not.i307 = icmp eq i32 %call.i306, 2
  br i1 %cmp.not.i307, label %if.then80.i2c_read_demod_bytes.exit315_crit_edge, label %do.end.i313

if.then80.i2c_read_demod_bytes.exit315_crit_edge: ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit315

do.end.i313:                                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %dev.i308 = getelementptr inbounds %struct.i2c_client, ptr %136, i32 0, i32 4
  %addr17.i309 = getelementptr inbounds %struct.i2c_client, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %addr17.i309 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %addr17.i309, align 2
  %conv18.i310 = zext i16 %138 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i308, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i310, i32 noundef 56, i32 noundef %call.i306) #12
  br label %i2c_read_demod_bytes.exit315

i2c_read_demod_bytes.exit315:                     ; preds = %do.end.i313, %if.then80.i2c_read_demod_bytes.exit315_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i296) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i295) #8
  %139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool87.not = icmp eq i32 %139, 0
  br i1 %tobool87.not, label %i2c_read_demod_bytes.exit315.do.end98_crit_edge, label %do.end91

i2c_read_demod_bytes.exit315.do.end98_crit_edge:  ; preds = %i2c_read_demod_bytes.exit315
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

do.end91:                                         ; preds = %i2c_read_demod_bytes.exit315
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %dev93 = getelementptr inbounds %struct.i2c_client, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %buf, align 1
  %conv95 = zext i8 %143 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev93, ptr noundef nonnull @.str.66, i32 noundef %conv95) #12
  br label %do.end98

do.end98:                                         ; preds = %do.end91, %i2c_read_demod_bytes.exit315.do.end98_crit_edge
  %144 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %buf, align 1
  %146 = and i8 %145, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp102 = icmp eq i8 %146, 0
  br i1 %cmp102, label %if.then104, label %do.end98.if.end106_crit_edge

do.end98.if.end106_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.then104:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %status, align 4
  %or105 = or i32 %148, 8
  store i32 %or105, ptr %status, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %do.end98.if.end106_crit_edge
  %149 = and i8 %145, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp110.not = icmp eq i8 %149, 0
  br i1 %cmp110.not, label %if.end106.sw.epilog_crit_edge, label %if.then112

if.end106.sw.epilog_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then112:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %status, align 4
  %or113 = or i32 %151, 20
  store i32 %or113, ptr %status, align 4
  br label %sw.epilog

do.end117:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  %dev119 = getelementptr inbounds %struct.i2c_client, ptr %153, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev119, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.59) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end117, %if.then112, %if.end106.sw.epilog_crit_edge, %sw.bb74.sw.epilog_crit_edge, %if.then71, %if.end65.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %154 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %status, align 4
  %and120 = and i32 %155, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then122, label %if.end130

if.then122:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %156 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %stat, align 1
  %stat124 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %157 = ptrtoint ptr %stat124 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %stat124, align 1
  %stat127 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %158 = ptrtoint ptr %stat127 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %stat127, align 1
  br label %cleanup

if.end130:                                        ; preds = %sw.epilog
  %last_stats_time = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 6
  %159 = ptrtoint ptr %last_stats_time to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %last_stats_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool131.not = icmp eq i32 %160, 0
  br i1 %tobool131.not, label %if.end130.if.end136_crit_edge, label %land.lhs.true

if.end130.if.end136_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

land.lhs.true:                                    ; preds = %if.end130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %161 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %161, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp133 = icmp slt i32 %sub, 0
  br i1 %cmp133, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end136_crit_edge

land.lhs.true.if.end136_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end136:                                        ; preds = %land.lhs.true.if.end136_crit_edge, %if.end130.if.end136_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %162 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %162, 100
  %163 = ptrtoint ptr %last_stats_time to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %add, ptr %last_stats_time, align 4
  %164 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i) #8
  %166 = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 1
  %167 = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 3
  %168 = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 4
  %current_modulation.i = getelementptr inbounds %struct.lgdt330x_state, ptr %165, i32 0, i32 3
  %169 = call ptr @memset(ptr %buf.i, i32 255, i32 5)
  %170 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %current_modulation.i, align 4
  %172 = zext i32 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %171, label %if.else150 [
    i32 7, label %sw.bb.i
    i32 3, label %if.end136.sw.bb7.i_crit_edge
    i32 5, label %if.end136.sw.bb7.i_crit_edge347
  ]

if.end136.sw.bb7.i_crit_edge347:                  ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

if.end136.sw.bb7.i_crit_edge:                     ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

sw.bb.i:                                          ; preds = %if.end136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i.i) #8
  %173 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 110, ptr %wr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %174 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %175 = call ptr @memset(ptr %174, i32 255, i32 16)
  %176 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %165, align 4
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %addr2.i.i, align 2
  %180 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i.i, align 2
  %182 = ptrtoint ptr %174 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 1, ptr %174, align 4
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %183 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %wr.i.i, ptr %buf4.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %184 = load i16, ptr %addr2.i.i, align 2
  %185 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %arrayinit.element.i.i, align 4
  %flags8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %186 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 1, ptr %flags8.i.i, align 2
  %len9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %187 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 5, ptr %len9.i.i, align 4
  %buf11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %188 = ptrtoint ptr %buf11.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %buf.i, ptr %buf11.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %177, i32 0, i32 3
  %189 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %sw.bb.i.i2c_read_demod_bytes.exit.i_crit_edge, label %do.end.i.i

sw.bb.i.i2c_read_demod_bytes.exit.i_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %165, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %192, i32 0, i32 4
  %addr17.i.i = getelementptr inbounds %struct.i2c_client, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %addr17.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %addr17.i.i, align 2
  %conv18.i.i = zext i16 %194 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i.i, i32 noundef 110, i32 noundef %call.i.i) #12
  br label %i2c_read_demod_bytes.exit.i

i2c_read_demod_bytes.exit.i:                      ; preds = %do.end.i.i, %sw.bb.i.i2c_read_demod_bytes.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i.i) #8
  %195 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %buf.i, align 1
  %197 = and i8 %196, 7
  %and.i = zext i8 %197 to i32
  %shl.i = shl nuw nsw i32 %and.i, 16
  %198 = ptrtoint ptr %167 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %167, align 1
  %conv2.i = zext i8 %199 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %shl3.i
  %200 = ptrtoint ptr %168 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %168, align 1
  %conv5.i = zext i8 %201 to i32
  %or6.i = or i32 %or.i, %conv5.i
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end136.sw.bb7.i_crit_edge, %if.end136.sw.bb7.i_crit_edge347
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i46.i) #8
  %202 = ptrtoint ptr %wr.i46.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 26, ptr %wr.i46.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i47.i) #8
  %203 = getelementptr inbounds i8, ptr %msg.i47.i, i32 4
  %204 = call ptr @memset(ptr %203, i32 255, i32 16)
  %205 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %165, align 4
  %addr2.i48.i = getelementptr inbounds %struct.i2c_client, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %addr2.i48.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %addr2.i48.i, align 2
  %209 = ptrtoint ptr %msg.i47.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %208, ptr %msg.i47.i, align 4
  %flags.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 1
  %210 = ptrtoint ptr %flags.i49.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %flags.i49.i, align 2
  %211 = ptrtoint ptr %203 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 1, ptr %203, align 4
  %buf4.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 3
  %212 = ptrtoint ptr %buf4.i51.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %wr.i46.i, ptr %buf4.i51.i, align 4
  %arrayinit.element.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 1
  %213 = load i16, ptr %addr2.i48.i, align 2
  %214 = ptrtoint ptr %arrayinit.element.i52.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %213, ptr %arrayinit.element.i52.i, align 4
  %flags8.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 1, i32 1
  %215 = ptrtoint ptr %flags8.i53.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 1, ptr %flags8.i53.i, align 2
  %len9.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 1, i32 2
  %216 = ptrtoint ptr %len9.i54.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 2, ptr %len9.i54.i, align 4
  %buf11.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 1, i32 3
  %217 = ptrtoint ptr %buf11.i55.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %buf.i, ptr %buf11.i55.i, align 4
  %adapter.i56.i = getelementptr inbounds %struct.i2c_client, ptr %206, i32 0, i32 3
  %218 = ptrtoint ptr %adapter.i56.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %adapter.i56.i, align 8
  %call.i57.i = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %msg.i47.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i57.i)
  %cmp.not.i58.i = icmp eq i32 %call.i57.i, 2
  br i1 %cmp.not.i58.i, label %sw.bb7.i.i2c_read_demod_bytes.exit66.i_crit_edge, label %do.end.i64.i

sw.bb7.i.i2c_read_demod_bytes.exit66.i_crit_edge: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_read_demod_bytes.exit66.i

do.end.i64.i:                                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #10
  %220 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %165, align 4
  %dev.i59.i = getelementptr inbounds %struct.i2c_client, ptr %221, i32 0, i32 4
  %addr17.i60.i = getelementptr inbounds %struct.i2c_client, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %addr17.i60.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %addr17.i60.i, align 2
  %conv18.i61.i = zext i16 %223 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i59.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i61.i, i32 noundef 26, i32 noundef %call.i57.i) #12
  br label %i2c_read_demod_bytes.exit66.i

i2c_read_demod_bytes.exit66.i:                    ; preds = %do.end.i64.i, %sw.bb7.i.i2c_read_demod_bytes.exit66.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i47.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i46.i) #8
  %224 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %buf.i, align 1
  %conv11.i = zext i8 %225 to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 8
  %226 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %166, align 1
  %conv14.i = zext i8 %227 to i32
  %or15.i = or i32 %shl12.i, %conv14.i
  %228 = ptrtoint ptr %current_modulation.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %current_modulation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %229)
  %cmp.i = icmp eq i32 %229, 3
  %cond.i = select i1 %cmp.i, i32 97939837, i32 98026066
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %i2c_read_demod_bytes.exit66.i, %i2c_read_demod_bytes.exit.i
  %noise.0.i = phi i32 [ %or15.i, %i2c_read_demod_bytes.exit66.i ], [ %or6.i, %i2c_read_demod_bytes.exit.i ]
  %c.0.i = phi i32 [ %cond.i, %i2c_read_demod_bytes.exit66.i ], [ 73957994, %i2c_read_demod_bytes.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %noise.0.i)
  %cmp.i.i = icmp eq i32 %noise.0.i, 0
  br i1 %cmp.i.i, label %sw.epilog.i.calculate_snr.exit.i_crit_edge, label %if.end.i.i

sw.epilog.i.calculate_snr.exit.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calculate_snr.exit.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  %call.i67.i = call i32 @intlog10(i32 noundef %noise.0.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0.i, i32 %call.i67.i)
  %cmp1.i.i = icmp ult i32 %c.0.i, %call.i67.i
  br i1 %cmp1.i.i, label %if.end.i.i.calculate_snr.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.calculate_snr.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calculate_snr.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %c.0.i, %call.i67.i
  %mul.i.i = mul i32 %sub.i.i, 10
  br label %calculate_snr.exit.i

calculate_snr.exit.i:                             ; preds = %if.end3.i.i, %if.end.i.i.calculate_snr.exit.i_crit_edge, %sw.epilog.i.calculate_snr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul.i.i, %if.end3.i.i ], [ 0, %sw.epilog.i.calculate_snr.exit.i_crit_edge ], [ 0, %if.end.i.i.calculate_snr.exit.i_crit_edge ]
  %snr19.i = getelementptr inbounds %struct.lgdt330x_state, ptr %165, i32 0, i32 4
  %230 = ptrtoint ptr %snr19.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %retval.0.i.i, ptr %snr19.i, align 4
  %231 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool.not.i = icmp eq i32 %231, 0
  br i1 %tobool.not.i, label %calculate_snr.exit.i.if.then141_crit_edge, label %do.end23.i

calculate_snr.exit.i.if.then141_crit_edge:        ; preds = %calculate_snr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then141

do.end23.i:                                       ; preds = %calculate_snr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %232 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %165, align 4
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %233, i32 0, i32 4
  %shr.i = lshr i32 %retval.0.i.i, 24
  %shr28.i = lshr i32 %retval.0.i.i, 8
  %and29.i = and i32 %shr28.i, 65535
  %mul.i = mul nuw nsw i32 %and29.i, 100
  %shr30.i = lshr i32 %mul.i, 16
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev25.i, ptr noundef nonnull @.str.57, i32 noundef %noise.0.i, i32 noundef %shr.i, i32 noundef %shr30.i) #12
  br label %if.then141

if.then141:                                       ; preds = %do.end23.i, %calculate_snr.exit.i.if.then141_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i) #8
  %stat143 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %234 = ptrtoint ptr %stat143 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 1, ptr %stat143, align 1
  %snr = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 4
  %235 = ptrtoint ptr %snr to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %snr, align 4
  %conv146 = zext i32 %236 to i64
  %mul = mul nuw nsw i64 %conv146, 1000
  %shr = lshr i64 %mul, 24
  %237 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 8)
  store i64 %shr, ptr %237, align 1
  br label %if.end155

if.else150:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %239 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %165, align 4
  %dev.i316 = getelementptr inbounds %struct.i2c_client, ptr %240, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i316, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.72) #12
  %snr.i = getelementptr inbounds %struct.lgdt330x_state, ptr %165, i32 0, i32 4
  %241 = ptrtoint ptr %snr.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %snr.i, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i) #8
  %stat152 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %242 = ptrtoint ptr %stat152 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %stat152, align 1
  br label %if.end155

if.end155:                                        ; preds = %if.else150, %if.then141
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wr.i318) #8
  %243 = ptrtoint ptr %wr.i318 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 -117, ptr %wr.i318, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i319) #8
  %244 = getelementptr inbounds i8, ptr %msg.i319, i32 4
  %245 = call ptr @memset(ptr %244, i32 255, i32 16)
  %246 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %1, align 4
  %addr2.i320 = getelementptr inbounds %struct.i2c_client, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %addr2.i320 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %addr2.i320, align 2
  %250 = ptrtoint ptr %msg.i319 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %msg.i319, align 4
  %flags.i321 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i319, i32 0, i32 1
  %251 = ptrtoint ptr %flags.i321 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 0, ptr %flags.i321, align 2
  %252 = ptrtoint ptr %244 to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 1, ptr %244, align 4
  %buf4.i323 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i319, i32 0, i32 3
  %253 = ptrtoint ptr %buf4.i323 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %wr.i318, ptr %buf4.i323, align 4
  %arrayinit.element.i324 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i319, i32 1
  %254 = load i16, ptr %addr2.i320, align 2
  %255 = ptrtoint ptr %arrayinit.element.i324 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %254, ptr %arrayinit.element.i324, align 4
  %flags8.i325 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i319, i32 1, i32 1
  %256 = ptrtoint ptr %flags8.i325 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 1, ptr %flags8.i325, align 2
  %len9.i326 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i319, i32 1, i32 2
  %257 = ptrtoint ptr %len9.i326 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 3, ptr %len9.i326, align 4
  %buf11.i327 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i319, i32 1, i32 3
  %258 = ptrtoint ptr %buf11.i327 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %buf, ptr %buf11.i327, align 4
  %adapter.i328 = getelementptr inbounds %struct.i2c_client, ptr %247, i32 0, i32 3
  %259 = ptrtoint ptr %adapter.i328 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %adapter.i328, align 8
  %call.i329 = call i32 @i2c_transfer(ptr noundef %260, ptr noundef nonnull %msg.i319, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i329)
  %cmp.not.i330 = icmp eq i32 %call.i329, 2
  br i1 %cmp.not.i330, label %if.then159, label %do.end.i336

do.end.i336:                                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %261 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %1, align 4
  %dev.i331 = getelementptr inbounds %struct.i2c_client, ptr %262, i32 0, i32 4
  %addr17.i332 = getelementptr inbounds %struct.i2c_client, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %addr17.i332 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %addr17.i332, align 2
  %conv18.i333 = zext i16 %264 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i331, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv18.i333, i32 noundef 139, i32 noundef %call.i329) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i319) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i318) #8
  %stat199 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %265 = ptrtoint ptr %stat199 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %stat199, align 1
  %stat203 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %266 = ptrtoint ptr %stat203 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %stat203, align 1
  br label %cleanup

if.then159:                                       ; preds = %if.end155
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i319) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wr.i318) #8
  %267 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %buf, align 1
  %conv161 = zext i8 %268 to i16
  %shl = shl nuw i16 %conv161, 8
  %269 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %3, align 1
  %conv163 = zext i8 %270 to i16
  %or164 = or i16 %shl, %conv163
  %ucblocks = getelementptr inbounds %struct.lgdt330x_state, ptr %1, i32 0, i32 5
  %271 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %or164, ptr %ucblocks, align 4
  %272 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %tobool167.not = icmp eq i32 %272, 0
  br i1 %tobool167.not, label %if.then159.do.end178_crit_edge, label %do.end171

if.then159.do.end178_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end178

do.end171:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  %273 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %1, align 4
  %dev173 = getelementptr inbounds %struct.i2c_client, ptr %274, i32 0, i32 4
  %conv175 = zext i16 %or164 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev173, ptr noundef nonnull @.str.52, i32 noundef %conv175) #12
  br label %do.end178

do.end178:                                        ; preds = %do.end171, %if.then159.do.end178_crit_edge
  %275 = ptrtoint ptr %ucblocks to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %ucblocks, align 4
  %conv180 = zext i16 %276 to i64
  %stat182 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %277 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_loadN_noabort(i32 %278, i32 8)
  %279 = load i64, ptr %277, align 1
  %add184 = add i64 %279, %conv180
  store i64 %add184, ptr %277, align 1
  %stat186 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %280 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_loadN_noabort(i32 %281, i32 8)
  %282 = load i64, ptr %280, align 1
  %add188 = add i64 %282, 10000
  store i64 %add188, ptr %280, align 1
  %283 = ptrtoint ptr %stat182 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 3, ptr %stat182, align 1
  %284 = ptrtoint ptr %stat186 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 3, ptr %stat186, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end178, %do.end.i336, %land.lhs.true.cleanup_crit_edge, %if.then122, %do.end.i
  %retval.0 = phi i32 [ 0, %if.then122 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end.i336 ], [ 0, %do.end178 ], [ %spec.select, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !167, !169, !170}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 40, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 922, i32 27}
!7 = !{ptr @__ksymtab_lgdt330x_attach, !8, !"__ksymtab_lgdt330x_attach", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 931, i32 1}
!9 = !{ptr @__initcall__kmod_lgdt330x__295_1004_lgdt330x_driver_init6, !10, !"__initcall__kmod_lgdt330x__295_1004_lgdt330x_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 1004, i32 1}
!11 = !{ptr @__exitcall_lgdt330x_driver_exit, !10, !"__exitcall_lgdt330x_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description296, !13, !"__UNIQUE_ID_description296", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 1007, i32 1}
!14 = !{ptr @__UNIQUE_ID_author297, !15, !"__UNIQUE_ID_author297", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 1008, i32 1}
!16 = !{ptr @__UNIQUE_ID_file298, !17, !"__UNIQUE_ID_file298", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 1009, i32 1}
!18 = !{ptr @__UNIQUE_ID_license299, !17, !"__UNIQUE_ID_license299", i1 false, i1 false}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 38, i32 12}
!21 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 852, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lgdt330x_get_dvb_frontend.__UNIQUE_ID_ddebug293, !23, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!27 = !{ptr @lgdt330x_driver, !28, !"lgdt330x_driver", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 994, i32 26}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 902, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @lgdt330x_probe._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @lgdt330x_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 911, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @lgdt330x_probe._entry.10, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @lgdt330x_probe._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @lgdt3302_ops, !44, !"lgdt3302_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 933, i32 38}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 843, i32 2}
!47 = !{ptr @lgdt330x_release.__UNIQUE_ID_ddebug292, !46, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!48 = !{ptr @lgdt330x_init.lgdt3302_init_data, !49, !"lgdt3302_init_data", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 189, i32 18}
!50 = !{ptr @lgdt330x_init.lgdt3303_init_data, !51, !"lgdt3303_init_data", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 234, i32 18}
!52 = !{ptr @lgdt330x_init.flip_1_lgdt3303_init_data, !53, !"flip_1_lgdt3303_init_data", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 237, i32 18}
!54 = !{ptr @lgdt330x_init.flip_2_lgdt3303_init_data, !55, !"flip_2_lgdt3303_init_data", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 241, i32 18}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 256, i32 15}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 261, i32 15}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 280, i32 15}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 281, i32 3}
!64 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @lgdt330x_init._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @lgdt330x_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 285, i32 2}
!70 = !{ptr @lgdt330x_init._entry.21, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lgdt330x_init._entry_ptr.23, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 75, i32 4}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @i2c_write_demod_bytes._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @i2c_write_demod_bytes._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, !78, !"lgdt3303_8vsb_44_data", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 317, i32 18}
!79 = !{ptr @lgdt330x_set_parameters.lgdt3303_qam_data, !80, !"lgdt3303_qam_data", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 329, i32 18}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 349, i32 4}
!83 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @lgdt330x_set_parameters._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @lgdt330x_set_parameters._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 366, i32 4}
!88 = !{ptr @lgdt330x_set_parameters._entry.28, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lgdt330x_set_parameters._entry_ptr.30, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 383, i32 4}
!92 = !{ptr @lgdt330x_set_parameters._entry.31, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @lgdt330x_set_parameters._entry_ptr.33, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 399, i32 4}
!96 = !{ptr @lgdt330x_set_parameters._entry.34, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @lgdt330x_set_parameters._entry_ptr.36, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 405, i32 4}
!100 = !{ptr @lgdt330x_set_parameters._entry.37, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @lgdt330x_set_parameters._entry_ptr.39, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 630, i32 2}
!104 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @lgdt3302_read_status._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @lgdt3302_read_status._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 647, i32 2}
!109 = !{ptr @lgdt3302_read_status._entry.42, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @lgdt3302_read_status._entry_ptr.44, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 661, i32 2}
!113 = !{ptr @lgdt3302_read_status._entry.45, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @lgdt3302_read_status._entry_ptr.47, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 674, i32 3}
!117 = !{ptr @lgdt3302_read_status._entry.48, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @lgdt3302_read_status._entry_ptr.50, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 705, i32 3}
!121 = !{ptr @lgdt3302_read_status._entry.51, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @lgdt3302_read_status._entry_ptr.53, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 522, i32 3}
!125 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @lgdt3302_read_snr._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @lgdt3302_read_snr._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 533, i32 2}
!130 = !{ptr @lgdt3302_read_snr._entry.56, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @lgdt3302_read_snr._entry_ptr.58, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @lgdt3303_ops, !133, !"lgdt3303_ops", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 955, i32 38}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 736, i32 2}
!136 = !{ptr @lgdt3303_read_status._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @lgdt3303_read_status._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @lgdt3303_read_status._entry.60, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 747, i32 2}
!140 = !{ptr @lgdt3303_read_status._entry_ptr.61, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 757, i32 3}
!143 = !{ptr @lgdt3303_read_status._entry.62, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @lgdt3303_read_status._entry_ptr.64, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 772, i32 3}
!147 = !{ptr @lgdt3303_read_status._entry.65, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @lgdt3303_read_status._entry_ptr.67, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @lgdt3303_read_status._entry.68, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 780, i32 3}
!151 = !{ptr @lgdt3303_read_status._entry_ptr.69, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @lgdt3303_read_status._entry.70, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 811, i32 3}
!154 = !{ptr @lgdt3303_read_status._entry_ptr.71, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 569, i32 3}
!157 = !{ptr @lgdt3303_read_snr._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @lgdt3303_read_snr._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @lgdt3303_read_snr._entry.73, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 578, i32 2}
!161 = !{ptr @lgdt3303_read_snr._entry_ptr.74, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 113, i32 3}
!164 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @i2c_read_demod_bytes._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @i2c_read_demod_bytes._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 981, i32 2}
!169 = !{ptr @lgdt330x_remove.__UNIQUE_ID_ddebug294, !168, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!170 = !{ptr @lgdt330x_id_table, !171, !"lgdt330x_id_table", i1 false, i1 false}
!171 = !{!"../drivers/media/dvb-frontends/lgdt330x.c", i32 988, i32 35}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i64 2148715712, i64 2148715717, i64 2148715730, i64 2148715774, i64 2148715808, i64 2148715829}
!182 = !{!"auto-init"}
