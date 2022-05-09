; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cx24123.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24123.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx24123_get_tuner_i2c_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_cx24123_get_tuner_i2c_adapter\09\09\09\09"
module asm "\09.long\09__crc_cx24123_get_tuner_i2c_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24123_get_tuner_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24123_get_tuner_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cx24123_get_tuner_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx24123_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cx24123_attach\09\09\09\09"
module asm "\09.long\09__crc_cx24123_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24123_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24123_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24123_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.91 = type { i8, i8 }
%struct.cx24123_bandselect_val = type { i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.cx24123_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32, i32, i32, %struct.i2c_adapter, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx24123_config = type { i8, ptr, i32, i8, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__param_str_force_band = internal constant [19 x i8] c"cx24123.force_band\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_band = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_band = internal constant %struct.kernel_param { ptr @__param_str_force_band, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @force_band } }, section "__param", align 4
@__UNIQUE_ID_force_bandtype290 = internal constant [32 x i8] c"cx24123.parmtype=force_band:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_band291 = internal constant [73 x i8] c"cx24123.parm=force_band:Force a specific band select (1-9, default:off).\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"cx24123.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"cx24123.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [60 x i8] c"cx24123.parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@__kstrtab_cx24123_get_tuner_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24123_get_tuner_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24123_get_tuner_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24123_get_tuner_i2c_adapter to i32), ptr @__kstrtab_cx24123_get_tuner_i2c_adapter, ptr @__kstrtabns_cx24123_get_tuner_i2c_adapter }, section "___ksymtab+cx24123_get_tuner_i2c_adapter", align 4
@cx24123_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017CX24123: %s: \00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24123_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/cx24123.c\00", [58 x i8] zeroinitializer }, align 32
@cx24123_attach._entry_ptr = internal global ptr @cx24123_attach._entry, section ".printk_index", align 4
@cx24123_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cx24123_attach._entry_ptr.5 = internal global ptr @cx24123_attach._entry.3, section ".printk_index", align 4
@cx24123_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013CX24123: Unable to kzalloc\0A\00", [34 x i8] zeroinitializer }, align 32
@cx24123_attach._entry_ptr.8 = internal global ptr @cx24123_attach._entry.6, section ".printk_index", align 4
@cx24123_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016CX24123: detected CX24123C\0A\00", [34 x i8] zeroinitializer }, align 32
@cx24123_attach._entry_ptr.11 = internal global ptr @cx24123_attach._entry.9, section ".printk_index", align 4
@cx24123_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016CX24123: detected CX24123\0A\00", [35 x i8] zeroinitializer }, align 32
@cx24123_attach._entry_ptr.14 = internal global ptr @cx24123_attach._entry.12, section ".printk_index", align 4
@cx24123_attach._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013CX24123: wrong demod revision: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@cx24123_attach._entry_ptr.17 = internal global ptr @cx24123_attach._entry.15, section ".printk_index", align 4
@cx24123_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24123/CX24109\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1073743615 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @cx24123_release, ptr null, ptr @cx24123_initfe, ptr null, ptr null, ptr null, ptr null, ptr @cx24123_tune, ptr @cx24123_get_algo, ptr @cx24123_set_frontend, ptr null, ptr @cx24123_get_frontend, ptr @cx24123_read_status, ptr @cx24123_read_ber, ptr @cx24123_read_signal_strength, ptr @cx24123_read_snr, ptr null, ptr null, ptr @cx24123_send_diseqc_msg, ptr null, ptr @cx24123_diseqc_send_burst, ptr @cx24123_set_tone, ptr @cx24123_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CX24123 tuner I2C bus\00", [42 x i8] zeroinitializer }, align 32
@cx24123_tuner_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @cx24123_tuner_i2c_tuner_xfer, ptr null, ptr null, ptr null, ptr @cx24123_tuner_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cx24123_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CX24123: tuner i2c bus could not be initialized\0A\00", [45 x i8] zeroinitializer }, align 32
@cx24123_attach._entry_ptr.21 = internal global ptr @cx24123_attach._entry.19, section ".printk_index", align 4
@__kstrtab_cx24123_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24123_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24123_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24123_attach to i32), ptr @__kstrtab_cx24123_attach, ptr @__kstrtabns_cx24123_attach }, section "___ksymtab+cx24123_attach", align 4
@__UNIQUE_ID_description294 = internal constant [86 x i8] c"cx24123.description=DVB Frontend module for Conexant CX24123/CX24109/CX24113 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [27 x i8] c"cx24123.author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [49 x i8] c"cx24123.file=drivers/media/dvb-frontends/cx24123\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"cx24123.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx24123_i2c_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013CX24123: %s: reg=0x%x (error=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24123_i2c_readreg\00", [44 x i8] zeroinitializer }, align 32
@cx24123_i2c_readreg._entry_ptr = internal global ptr @cx24123_i2c_readreg._entry, section ".printk_index", align 4
@cx24123_i2c_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: writereg error(err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24123_i2c_writereg\00", [43 x i8] zeroinitializer }, align 32
@cx24123_i2c_writereg._entry_ptr = internal global ptr @cx24123_i2c_writereg._entry, section ".printk_index", align 4
@cx24123_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.26, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24123_release\00", [16 x i8] zeroinitializer }, align 32
@cx24123_release._entry_ptr = internal global ptr @cx24123_release._entry, section ".printk_index", align 4
@cx24123_release._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.26, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_release._entry_ptr.28 = internal global ptr @cx24123_release._entry.27, section ".printk_index", align 4
@cx24123_initfe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.29, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24123_initfe\00", [17 x i8] zeroinitializer }, align 32
@cx24123_initfe._entry_ptr = internal global ptr @cx24123_initfe._entry, section ".printk_index", align 4
@cx24123_initfe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init frontend\0A\00", [17 x i8] zeroinitializer }, align 32
@cx24123_initfe._entry_ptr.32 = internal global ptr @cx24123_initfe._entry.30, section ".printk_index", align 4
@cx24123_regdata = internal constant { [41 x %struct.anon.91], [46 x i8] } { [41 x %struct.anon.91] [%struct.anon.91 { i8 0, i8 3 }, %struct.anon.91 zeroinitializer, %struct.anon.91 { i8 3, i8 7 }, %struct.anon.91 { i8 4, i8 16 }, %struct.anon.91 { i8 5, i8 4 }, %struct.anon.91 { i8 6, i8 49 }, %struct.anon.91 { i8 11, i8 0 }, %struct.anon.91 { i8 12, i8 0 }, %struct.anon.91 { i8 13, i8 127 }, %struct.anon.91 { i8 14, i8 3 }, %struct.anon.91 { i8 15, i8 -2 }, %struct.anon.91 { i8 16, i8 1 }, %struct.anon.91 { i8 22, i8 0 }, %struct.anon.91 { i8 23, i8 1 }, %struct.anon.91 { i8 28, i8 -128 }, %struct.anon.91 { i8 32, i8 0 }, %struct.anon.91 { i8 33, i8 21 }, %struct.anon.91 { i8 40, i8 0 }, %struct.anon.91 { i8 41, i8 0 }, %struct.anon.91 { i8 42, i8 -80 }, %struct.anon.91 { i8 43, i8 115 }, %struct.anon.91 { i8 44, i8 0 }, %struct.anon.91 { i8 45, i8 0 }, %struct.anon.91 { i8 46, i8 0 }, %struct.anon.91 { i8 47, i8 0 }, %struct.anon.91 { i8 48, i8 0 }, %struct.anon.91 { i8 49, i8 0 }, %struct.anon.91 { i8 50, i8 -116 }, %struct.anon.91 { i8 51, i8 0 }, %struct.anon.91 { i8 52, i8 0 }, %struct.anon.91 { i8 53, i8 3 }, %struct.anon.91 { i8 54, i8 2 }, %struct.anon.91 { i8 55, i8 58 }, %struct.anon.91 { i8 58, i8 0 }, %struct.anon.91 { i8 68, i8 0 }, %struct.anon.91 { i8 69, i8 0 }, %struct.anon.91 { i8 70, i8 13 }, %struct.anon.91 { i8 86, i8 -63 }, %struct.anon.91 { i8 87, i8 -1 }, %struct.anon.91 { i8 92, i8 32 }, %struct.anon.91 { i8 103, i8 -125 }], [46 x i8] zeroinitializer }, align 32
@cx24123_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.33, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24123_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@cx24123_set_frontend._entry_ptr = internal global ptr @cx24123_set_frontend._entry, section ".printk_index", align 4
@cx24123_set_frontend._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.33, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_frontend._entry_ptr.35 = internal global ptr @cx24123_set_frontend._entry.34, section ".printk_index", align 4
@cx24123_set_frontend._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.2, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CX24123: it seems I don't have a tuner...\00", [52 x i8] zeroinitializer }, align 32
@cx24123_set_frontend._entry_ptr.38 = internal global ptr @cx24123_set_frontend._entry.36, section ".printk_index", align 4
@cx24123_set_inversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.39, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24123_set_inversion\00", [42 x i8] zeroinitializer }, align 32
@cx24123_set_inversion._entry_ptr = internal global ptr @cx24123_set_inversion._entry, section ".printk_index", align 4
@cx24123_set_inversion._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inversion off\0A\00", [17 x i8] zeroinitializer }, align 32
@cx24123_set_inversion._entry_ptr.42 = internal global ptr @cx24123_set_inversion._entry.40, section ".printk_index", align 4
@cx24123_set_inversion._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.39, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_inversion._entry_ptr.44 = internal global ptr @cx24123_set_inversion._entry.43, section ".printk_index", align 4
@cx24123_set_inversion._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.39, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inversion on\0A\00", [18 x i8] zeroinitializer }, align 32
@cx24123_set_inversion._entry_ptr.47 = internal global ptr @cx24123_set_inversion._entry.45, section ".printk_index", align 4
@cx24123_set_inversion._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.39, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_inversion._entry_ptr.49 = internal global ptr @cx24123_set_inversion._entry.48, section ".printk_index", align 4
@cx24123_set_inversion._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.39, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inversion auto\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24123_set_inversion._entry_ptr.52 = internal global ptr @cx24123_set_inversion._entry.50, section ".printk_index", align 4
@cx24123_set_fec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.53, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24123_set_fec\00", [16 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr = internal global ptr @cx24123_set_fec._entry, section ".printk_index", align 4
@cx24123_set_fec._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set FEC to 1/2\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.56 = internal global ptr @cx24123_set_fec._entry.54, section ".printk_index", align 4
@cx24123_set_fec._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.53, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.58 = internal global ptr @cx24123_set_fec._entry.57, section ".printk_index", align 4
@cx24123_set_fec._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.53, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set FEC to 2/3\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.61 = internal global ptr @cx24123_set_fec._entry.59, section ".printk_index", align 4
@cx24123_set_fec._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.53, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.63 = internal global ptr @cx24123_set_fec._entry.62, section ".printk_index", align 4
@cx24123_set_fec._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.53, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set FEC to 3/4\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.66 = internal global ptr @cx24123_set_fec._entry.64, section ".printk_index", align 4
@cx24123_set_fec._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.53, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.68 = internal global ptr @cx24123_set_fec._entry.67, section ".printk_index", align 4
@cx24123_set_fec._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.53, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set FEC to 4/5\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.71 = internal global ptr @cx24123_set_fec._entry.69, section ".printk_index", align 4
@cx24123_set_fec._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.53, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.73 = internal global ptr @cx24123_set_fec._entry.72, section ".printk_index", align 4
@cx24123_set_fec._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.53, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set FEC to 5/6\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.76 = internal global ptr @cx24123_set_fec._entry.74, section ".printk_index", align 4
@cx24123_set_fec._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.53, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.78 = internal global ptr @cx24123_set_fec._entry.77, section ".printk_index", align 4
@cx24123_set_fec._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.53, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set FEC to 6/7\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.81 = internal global ptr @cx24123_set_fec._entry.79, section ".printk_index", align 4
@cx24123_set_fec._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.53, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.83 = internal global ptr @cx24123_set_fec._entry.82, section ".printk_index", align 4
@cx24123_set_fec._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.53, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set FEC to 7/8\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.86 = internal global ptr @cx24123_set_fec._entry.84, section ".printk_index", align 4
@cx24123_set_fec._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.53, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.88 = internal global ptr @cx24123_set_fec._entry.87, section ".printk_index", align 4
@cx24123_set_fec._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.53, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set FEC to auto\0A\00", [47 x i8] zeroinitializer }, align 32
@cx24123_set_fec._entry_ptr.91 = internal global ptr @cx24123_set_fec._entry.89, section ".printk_index", align 4
@cx24123_set_symbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.92, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx24123_set_symbolrate\00", [41 x i8] zeroinitializer }, align 32
@cx24123_set_symbolrate._entry_ptr = internal global ptr @cx24123_set_symbolrate._entry, section ".printk_index", align 4
@cx24123_set_symbolrate._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"srate=%d, ratio=0x%08x, sample_rate=%i sample_gain=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@cx24123_set_symbolrate._entry_ptr.95 = internal global ptr @cx24123_set_symbolrate._entry.93, section ".printk_index", align 4
@cx24123_pll_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.96, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24123_pll_tune\00", [47 x i8] zeroinitializer }, align 32
@cx24123_pll_tune._entry_ptr = internal global ptr @cx24123_pll_tune._entry, section ".printk_index", align 4
@cx24123_pll_tune._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frequency=%i\0A\00", [18 x i8] zeroinitializer }, align 32
@cx24123_pll_tune._entry_ptr.99 = internal global ptr @cx24123_pll_tune._entry.97, section ".printk_index", align 4
@cx24123_pll_tune._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CX24123: %s: cx24123_pll_calculate failed\0A\00", [51 x i8] zeroinitializer }, align 32
@cx24123_pll_tune._entry_ptr.102 = internal global ptr @cx24123_pll_tune._entry.100, section ".printk_index", align 4
@cx24123_pll_tune._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.96, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_pll_tune._entry_ptr.104 = internal global ptr @cx24123_pll_tune._entry.103, section ".printk_index", align 4
@cx24123_pll_tune._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.96, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pll tune VCA=%d, band=%d, pll=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@cx24123_pll_tune._entry_ptr.107 = internal global ptr @cx24123_pll_tune._entry.105, section ".printk_index", align 4
@cx24123_bandselect_vals = internal constant { [9 x %struct.cx24123_bandselect_val], [48 x i8] } { [9 x %struct.cx24123_bandselect_val] [%struct.cx24123_bandselect_val { i32 950000, i32 1074999, i32 4, i32 64 }, %struct.cx24123_bandselect_val { i32 1075000, i32 1177999, i32 4, i32 128 }, %struct.cx24123_bandselect_val { i32 1178000, i32 1295999, i32 2, i32 513 }, %struct.cx24123_bandselect_val { i32 1296000, i32 1431999, i32 2, i32 514 }, %struct.cx24123_bandselect_val { i32 1432000, i32 1575999, i32 2, i32 516 }, %struct.cx24123_bandselect_val { i32 1576000, i32 1717999, i32 2, i32 520 }, %struct.cx24123_bandselect_val { i32 1718000, i32 1855999, i32 2, i32 528 }, %struct.cx24123_bandselect_val { i32 1856000, i32 2035999, i32 2, i32 544 }, %struct.cx24123_bandselect_val { i32 2036000, i32 2150000, i32 2, i32 576 }], [48 x i8] zeroinitializer }, align 32
@cx24123_pll_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.108, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24123_pll_writereg\00", [43 x i8] zeroinitializer }, align 32
@cx24123_pll_writereg._entry_ptr = internal global ptr @cx24123_pll_writereg._entry, section ".printk_index", align 4
@cx24123_pll_writereg._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pll writereg called, data=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@cx24123_pll_writereg._entry_ptr.111 = internal global ptr @cx24123_pll_writereg._entry.109, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cx24123_pll_writereg._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013CX24123: %s:  demodulator is not responding, possibly hung, aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@cx24123_pll_writereg._entry_ptr.114 = internal global ptr @cx24123_pll_writereg._entry.112, section ".printk_index", align 4
@cx24123_pll_writereg._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_pll_writereg._entry_ptr.116 = internal global ptr @cx24123_pll_writereg._entry.115, section ".printk_index", align 4
@cx24123_pll_writereg._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.108, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013CX24123: %s:  demodulator is not responding,possibly hung, aborting.\0A\00", [56 x i8] zeroinitializer }, align 32
@cx24123_pll_writereg._entry_ptr.119 = internal global ptr @cx24123_pll_writereg._entry.117, section ".printk_index", align 4
@cx24123_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.120, ptr @.str.2, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24123_get_frontend\00", [43 x i8] zeroinitializer }, align 32
@cx24123_get_frontend._entry_ptr = internal global ptr @cx24123_get_frontend._entry, section ".printk_index", align 4
@cx24123_get_frontend._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.120, ptr @.str.2, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_get_frontend._entry_ptr.122 = internal global ptr @cx24123_get_frontend._entry.121, section ".printk_index", align 4
@cx24123_get_frontend._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.120, ptr @.str.2, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CX24123: %s: Failed to get inversion status\0A\00", [49 x i8] zeroinitializer }, align 32
@cx24123_get_frontend._entry_ptr.125 = internal global ptr @cx24123_get_frontend._entry.123, section ".printk_index", align 4
@cx24123_get_frontend._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.120, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013CX24123: %s: Failed to get fec status\0A\00", [55 x i8] zeroinitializer }, align 32
@cx24123_get_frontend._entry_ptr.128 = internal global ptr @cx24123_get_frontend._entry.126, section ".printk_index", align 4
@cx24123_get_inversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.129, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24123_get_inversion\00", [42 x i8] zeroinitializer }, align 32
@cx24123_get_inversion._entry_ptr = internal global ptr @cx24123_get_inversion._entry, section ".printk_index", align 4
@cx24123_get_inversion._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read inversion off\0A\00", [44 x i8] zeroinitializer }, align 32
@cx24123_get_inversion._entry_ptr.132 = internal global ptr @cx24123_get_inversion._entry.130, section ".printk_index", align 4
@cx24123_get_inversion._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.129, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_get_inversion._entry_ptr.134 = internal global ptr @cx24123_get_inversion._entry.133, section ".printk_index", align 4
@cx24123_get_inversion._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.129, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read inversion on\0A\00", [45 x i8] zeroinitializer }, align 32
@cx24123_get_inversion._entry_ptr.137 = internal global ptr @cx24123_get_inversion._entry.135, section ".printk_index", align 4
@cx24123_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.138, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24123_read_ber\00", [47 x i8] zeroinitializer }, align 32
@cx24123_read_ber._entry_ptr = internal global ptr @cx24123_read_ber._entry, section ".printk_index", align 4
@cx24123_read_ber._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BER = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@cx24123_read_ber._entry_ptr.141 = internal global ptr @cx24123_read_ber._entry.139, section ".printk_index", align 4
@cx24123_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.142, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cx24123_read_signal_strength\00", [35 x i8] zeroinitializer }, align 32
@cx24123_read_signal_strength._entry_ptr = internal global ptr @cx24123_read_signal_strength._entry, section ".printk_index", align 4
@cx24123_read_signal_strength._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Signal strength = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx24123_read_signal_strength._entry_ptr.145 = internal global ptr @cx24123_read_signal_strength._entry.143, section ".printk_index", align 4
@cx24123_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.146, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24123_read_snr\00", [47 x i8] zeroinitializer }, align 32
@cx24123_read_snr._entry_ptr = internal global ptr @cx24123_read_snr._entry, section ".printk_index", align 4
@cx24123_read_snr._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read S/N index = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24123_read_snr._entry_ptr.149 = internal global ptr @cx24123_read_snr._entry.147, section ".printk_index", align 4
@cx24123_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.150, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx24123_send_diseqc_msg\00", [40 x i8] zeroinitializer }, align 32
@cx24123_send_diseqc_msg._entry_ptr = internal global ptr @cx24123_send_diseqc_msg._entry, section ".printk_index", align 4
@cx24123_send_diseqc_msg._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.150, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_send_diseqc_msg._entry_ptr.152 = internal global ptr @cx24123_send_diseqc_msg._entry.151, section ".printk_index", align 4
@cx24123_wait_for_diseqc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013CX24123: %s: diseqc queue not ready, command may be lost.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx24123_wait_for_diseqc\00", [40 x i8] zeroinitializer }, align 32
@cx24123_wait_for_diseqc._entry_ptr = internal global ptr @cx24123_wait_for_diseqc._entry, section ".printk_index", align 4
@cx24123_diseqc_send_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.155, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx24123_diseqc_send_burst\00", [38 x i8] zeroinitializer }, align 32
@cx24123_diseqc_send_burst._entry_ptr = internal global ptr @cx24123_diseqc_send_burst._entry, section ".printk_index", align 4
@cx24123_diseqc_send_burst._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.155, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_diseqc_send_burst._entry_ptr.157 = internal global ptr @cx24123_diseqc_send_burst._entry.156, section ".printk_index", align 4
@cx24123_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.158, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24123_set_tone\00", [47 x i8] zeroinitializer }, align 32
@cx24123_set_tone._entry_ptr = internal global ptr @cx24123_set_tone._entry, section ".printk_index", align 4
@cx24123_set_tone._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setting tone on\0A\00", [47 x i8] zeroinitializer }, align 32
@cx24123_set_tone._entry_ptr.161 = internal global ptr @cx24123_set_tone._entry.159, section ".printk_index", align 4
@cx24123_set_tone._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.158, ptr @.str.2, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_tone._entry_ptr.163 = internal global ptr @cx24123_set_tone._entry.162, section ".printk_index", align 4
@cx24123_set_tone._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.158, ptr @.str.2, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setting tone off\0A\00", [46 x i8] zeroinitializer }, align 32
@cx24123_set_tone._entry_ptr.166 = internal global ptr @cx24123_set_tone._entry.164, section ".printk_index", align 4
@cx24123_set_tone._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.158, ptr @.str.2, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CX24123: CASE reached default with tone=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@cx24123_set_tone._entry_ptr.169 = internal global ptr @cx24123_set_tone._entry.167, section ".printk_index", align 4
@cx24123_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.170, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24123_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@cx24123_set_voltage._entry_ptr = internal global ptr @cx24123_set_voltage._entry, section ".printk_index", align 4
@cx24123_set_voltage._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting voltage 13V\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24123_set_voltage._entry_ptr.173 = internal global ptr @cx24123_set_voltage._entry.171, section ".printk_index", align 4
@cx24123_set_voltage._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.170, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24123_set_voltage._entry_ptr.175 = internal global ptr @cx24123_set_voltage._entry.174, section ".printk_index", align 4
@cx24123_set_voltage._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.170, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting voltage 18V\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24123_set_voltage._entry_ptr.178 = internal global ptr @cx24123_set_voltage._entry.176, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 209, i64 225]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.180 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.184 = private unnamed_addr constant [11 x i8] c"force_band\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 23, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 28, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1048, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1050, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1062, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1065, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1068, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [12 x i8] c"cx24123_ops\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1101, i32 38 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1081, i32 41 }
@___asan_gen_.238 = private unnamed_addr constant [23 x i8] c"cx24123_tuner_i2c_algo\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1026, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1088, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 265, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 245, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1007, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 691, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [16 x i8] c"cx24123_regdata\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 187, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 905, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 922, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 287, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 292, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 297, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 342, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 347, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 352, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 357, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 362, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 367, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 372, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 377, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 491, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 640, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 643, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 660, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [24 x i8] c"cx24123_bandselect_vals\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 109, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 582, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 595, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 607, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 620, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 940, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 943, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 947, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 315, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 318, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 868, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 881, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 895, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 754, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 740, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 790, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 968, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 971, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 974, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 719, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.628 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.629 = private constant [41 x i8] c"../drivers/media/dvb-frontends/cx24123.c\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 722, i32 3 }
@llvm.compiler.used = appending global [239 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_force_band291, ptr @__UNIQUE_ID_force_bandtype290, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_cx24123_attach, ptr @__ksymtab_cx24123_get_tuner_i2c_adapter, ptr @__param_debug, ptr @__param_force_band, ptr @cx24123_attach._entry, ptr @cx24123_attach._entry.12, ptr @cx24123_attach._entry.15, ptr @cx24123_attach._entry.19, ptr @cx24123_attach._entry.3, ptr @cx24123_attach._entry.6, ptr @cx24123_attach._entry.9, ptr @cx24123_attach._entry_ptr, ptr @cx24123_attach._entry_ptr.11, ptr @cx24123_attach._entry_ptr.14, ptr @cx24123_attach._entry_ptr.17, ptr @cx24123_attach._entry_ptr.21, ptr @cx24123_attach._entry_ptr.5, ptr @cx24123_attach._entry_ptr.8, ptr @cx24123_diseqc_send_burst._entry, ptr @cx24123_diseqc_send_burst._entry.156, ptr @cx24123_diseqc_send_burst._entry_ptr, ptr @cx24123_diseqc_send_burst._entry_ptr.157, ptr @cx24123_get_frontend._entry, ptr @cx24123_get_frontend._entry.121, ptr @cx24123_get_frontend._entry.123, ptr @cx24123_get_frontend._entry.126, ptr @cx24123_get_frontend._entry_ptr, ptr @cx24123_get_frontend._entry_ptr.122, ptr @cx24123_get_frontend._entry_ptr.125, ptr @cx24123_get_frontend._entry_ptr.128, ptr @cx24123_get_inversion._entry, ptr @cx24123_get_inversion._entry.130, ptr @cx24123_get_inversion._entry.133, ptr @cx24123_get_inversion._entry.135, ptr @cx24123_get_inversion._entry_ptr, ptr @cx24123_get_inversion._entry_ptr.132, ptr @cx24123_get_inversion._entry_ptr.134, ptr @cx24123_get_inversion._entry_ptr.137, ptr @cx24123_i2c_readreg._entry, ptr @cx24123_i2c_readreg._entry_ptr, ptr @cx24123_i2c_writereg._entry, ptr @cx24123_i2c_writereg._entry_ptr, ptr @cx24123_initfe._entry, ptr @cx24123_initfe._entry.30, ptr @cx24123_initfe._entry_ptr, ptr @cx24123_initfe._entry_ptr.32, ptr @cx24123_pll_tune._entry, ptr @cx24123_pll_tune._entry.100, ptr @cx24123_pll_tune._entry.103, ptr @cx24123_pll_tune._entry.105, ptr @cx24123_pll_tune._entry.97, ptr @cx24123_pll_tune._entry_ptr, ptr @cx24123_pll_tune._entry_ptr.102, ptr @cx24123_pll_tune._entry_ptr.104, ptr @cx24123_pll_tune._entry_ptr.107, ptr @cx24123_pll_tune._entry_ptr.99, ptr @cx24123_pll_writereg._entry, ptr @cx24123_pll_writereg._entry.109, ptr @cx24123_pll_writereg._entry.112, ptr @cx24123_pll_writereg._entry.115, ptr @cx24123_pll_writereg._entry.117, ptr @cx24123_pll_writereg._entry_ptr, ptr @cx24123_pll_writereg._entry_ptr.111, ptr @cx24123_pll_writereg._entry_ptr.114, ptr @cx24123_pll_writereg._entry_ptr.116, ptr @cx24123_pll_writereg._entry_ptr.119, ptr @cx24123_read_ber._entry, ptr @cx24123_read_ber._entry.139, ptr @cx24123_read_ber._entry_ptr, ptr @cx24123_read_ber._entry_ptr.141, ptr @cx24123_read_signal_strength._entry, ptr @cx24123_read_signal_strength._entry.143, ptr @cx24123_read_signal_strength._entry_ptr, ptr @cx24123_read_signal_strength._entry_ptr.145, ptr @cx24123_read_snr._entry, ptr @cx24123_read_snr._entry.147, ptr @cx24123_read_snr._entry_ptr, ptr @cx24123_read_snr._entry_ptr.149, ptr @cx24123_release._entry, ptr @cx24123_release._entry.27, ptr @cx24123_release._entry_ptr, ptr @cx24123_release._entry_ptr.28, ptr @cx24123_send_diseqc_msg._entry, ptr @cx24123_send_diseqc_msg._entry.151, ptr @cx24123_send_diseqc_msg._entry_ptr, ptr @cx24123_send_diseqc_msg._entry_ptr.152, ptr @cx24123_set_fec._entry, ptr @cx24123_set_fec._entry.54, ptr @cx24123_set_fec._entry.57, ptr @cx24123_set_fec._entry.59, ptr @cx24123_set_fec._entry.62, ptr @cx24123_set_fec._entry.64, ptr @cx24123_set_fec._entry.67, ptr @cx24123_set_fec._entry.69, ptr @cx24123_set_fec._entry.72, ptr @cx24123_set_fec._entry.74, ptr @cx24123_set_fec._entry.77, ptr @cx24123_set_fec._entry.79, ptr @cx24123_set_fec._entry.82, ptr @cx24123_set_fec._entry.84, ptr @cx24123_set_fec._entry.87, ptr @cx24123_set_fec._entry.89, ptr @cx24123_set_fec._entry_ptr, ptr @cx24123_set_fec._entry_ptr.56, ptr @cx24123_set_fec._entry_ptr.58, ptr @cx24123_set_fec._entry_ptr.61, ptr @cx24123_set_fec._entry_ptr.63, ptr @cx24123_set_fec._entry_ptr.66, ptr @cx24123_set_fec._entry_ptr.68, ptr @cx24123_set_fec._entry_ptr.71, ptr @cx24123_set_fec._entry_ptr.73, ptr @cx24123_set_fec._entry_ptr.76, ptr @cx24123_set_fec._entry_ptr.78, ptr @cx24123_set_fec._entry_ptr.81, ptr @cx24123_set_fec._entry_ptr.83, ptr @cx24123_set_fec._entry_ptr.86, ptr @cx24123_set_fec._entry_ptr.88, ptr @cx24123_set_fec._entry_ptr.91, ptr @cx24123_set_frontend._entry, ptr @cx24123_set_frontend._entry.34, ptr @cx24123_set_frontend._entry.36, ptr @cx24123_set_frontend._entry_ptr, ptr @cx24123_set_frontend._entry_ptr.35, ptr @cx24123_set_frontend._entry_ptr.38, ptr @cx24123_set_inversion._entry, ptr @cx24123_set_inversion._entry.40, ptr @cx24123_set_inversion._entry.43, ptr @cx24123_set_inversion._entry.45, ptr @cx24123_set_inversion._entry.48, ptr @cx24123_set_inversion._entry.50, ptr @cx24123_set_inversion._entry_ptr, ptr @cx24123_set_inversion._entry_ptr.42, ptr @cx24123_set_inversion._entry_ptr.44, ptr @cx24123_set_inversion._entry_ptr.47, ptr @cx24123_set_inversion._entry_ptr.49, ptr @cx24123_set_inversion._entry_ptr.52, ptr @cx24123_set_symbolrate._entry, ptr @cx24123_set_symbolrate._entry.93, ptr @cx24123_set_symbolrate._entry_ptr, ptr @cx24123_set_symbolrate._entry_ptr.95, ptr @cx24123_set_tone._entry, ptr @cx24123_set_tone._entry.159, ptr @cx24123_set_tone._entry.162, ptr @cx24123_set_tone._entry.164, ptr @cx24123_set_tone._entry.167, ptr @cx24123_set_tone._entry_ptr, ptr @cx24123_set_tone._entry_ptr.161, ptr @cx24123_set_tone._entry_ptr.163, ptr @cx24123_set_tone._entry_ptr.166, ptr @cx24123_set_tone._entry_ptr.169, ptr @cx24123_set_voltage._entry, ptr @cx24123_set_voltage._entry.171, ptr @cx24123_set_voltage._entry.174, ptr @cx24123_set_voltage._entry.176, ptr @cx24123_set_voltage._entry_ptr, ptr @cx24123_set_voltage._entry_ptr.173, ptr @cx24123_set_voltage._entry_ptr.175, ptr @cx24123_set_voltage._entry_ptr.178, ptr @cx24123_wait_for_diseqc._entry, ptr @cx24123_wait_for_diseqc._entry_ptr, ptr @force_band, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @cx24123_ops, ptr @.str.18, ptr @cx24123_tuner_i2c_algo, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @cx24123_regdata, ptr @.str.33, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.46, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.60, ptr @.str.65, ptr @.str.70, ptr @.str.75, ptr @.str.80, ptr @.str.85, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.106, ptr @cx24123_bandselect_vals, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.118, ptr @.str.120, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.177], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_band to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_attach._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_tuner_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_i2c_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_i2c_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_release._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_initfe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_initfe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_regdata to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_frontend._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_frontend._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_inversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_inversion._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_inversion._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_inversion._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_inversion._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_inversion._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_fec._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_symbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_symbolrate._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_tune._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_tune._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_tune._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_tune._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_bandselect_vals to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_writereg._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_writereg._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_writereg._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_pll_writereg._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_get_frontend._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_get_frontend._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_get_frontend._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_get_inversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_get_inversion._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_get_inversion._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_get_inversion._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_read_ber._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_read_signal_strength._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_read_snr._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_send_diseqc_msg._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_wait_for_diseqc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_diseqc_send_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_diseqc_send_burst._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_tone._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_tone._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_tone._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_tone._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_voltage._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_voltage._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24123_set_voltage._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cx24123_get_tuner_i2c_adapter(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %tuner_i2c_adapter = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 8
  ret ptr %tuner_i2c_adapter
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx24123_attach(ptr noundef %config, ptr noundef %i2c) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2448) #11
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end14, label %if.end19

do.end14:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %error

if.end19:                                         ; preds = %do.end9
  %config20 = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config20 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config20, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.i, ptr %buf5.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %19 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %21 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv = trunc i32 %retval.0.i to i8
  %demod_rev = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %demod_rev to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %demod_rev, align 8
  %23 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %do.end46 [
    i8 -31, label %cx24123_i2c_readreg.exit.sw.epilog_crit_edge
    i8 -47, label %do.end38
  ]

cx24123_i2c_readreg.exit.sw.epilog_crit_edge:     ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end38:                                         ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end46:                                         ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv25 = and i32 %retval.0.i, 255
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv25) #12
  br label %error

sw.epilog:                                        ; preds = %do.end38, %cx24123_i2c_readreg.exit.sw.epilog_crit_edge
  %.str.13.sink = phi ptr [ @.str.13, %do.end38 ], [ @.str.10, %cx24123_i2c_readreg.exit.sw.epilog_crit_edge ]
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.13.sink) #12
  %frontend = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %24 = call ptr @memcpy(ptr %ops, ptr @cx24123_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %dont_use_pll = getelementptr inbounds %struct.cx24123_config, ptr %config, i32 0, i32 3
  %26 = ptrtoint ptr %dont_use_pll to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dont_use_pll, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool54.not = icmp eq i8 %27, 0
  br i1 %tobool54.not, label %sw.epilog.if.end57_crit_edge, label %if.then55

sw.epilog.if.end57_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then55:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @cx24123_repeater_mode(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %sw.epilog.if.end57_crit_edge
  %tuner_i2c_adapter = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 8
  %name = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 8, i32 12
  %call58 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.18, i32 noundef 48) #8
  %algo = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cx24123_tuner_i2c_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 8, i32 3
  %29 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  %parent63 = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 8, i32 9, i32 1
  %32 = ptrtoint ptr %parent63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %parent63, align 8
  %driver_data.i.i = getelementptr inbounds %struct.cx24123_state, ptr %call7.i.i, i32 0, i32 8, i32 9, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call66 = call i32 @i2c_add_adapter(ptr noundef %tuner_i2c_adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end73, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end73:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %error

error:                                            ; preds = %do.end73, %do.end46, %do.end14
  call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end57.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end57.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24123_repeater_mode(ptr nocapture noundef readonly %state, i8 noundef zeroext %start) unnamed_addr #2 align 64 {
entry:
  %buf.i1 = alloca [2 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.cx24123_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %4 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 35, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %5 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %conv.i = zext i8 %3 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b.i, ptr %buf5.i, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %19 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %21 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv = and i32 %retval.0.i, 30
  %conv1 = zext i8 %start to i32
  %shl = shl nuw nsw i32 %conv1, 5
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %or = and i32 %shl, 160
  %or.masked = or i32 %or, %conv
  %conv12 = or i32 %or.masked, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #8
  %26 = getelementptr inbounds [2 x i8], ptr %buf.i1, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 35, ptr %buf.i1, align 1
  %conv1.i = trunc i32 %conv12 to i8
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv1.i, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #8
  %29 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 196607, ptr %29, align 4
  %conv2.i = zext i8 %25 to i16
  %31 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv2.i, ptr %msg.i2, align 4
  %flags.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i3, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %33 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i1, ptr %buf3.i, align 4
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state, align 8
  %call.i5 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i5)
  %cmp.not.i6 = icmp eq i32 %call.i5, 1
  br i1 %cmp.not.i6, label %cx24123_i2c_readreg.exit.cx24123_i2c_writereg.exit_crit_edge, label %do.end.i7

cx24123_i2c_readreg.exit.cx24123_i2c_writereg.exit_crit_edge: ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit

do.end.i7:                                        ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i5, i32 noundef 35, i32 noundef %conv12) #12
  br label %cx24123_i2c_writereg.exit

cx24123_i2c_writereg.exit:                        ; preds = %do.end.i7, %cx24123_i2c_readreg.exit.cx24123_i2c_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_tuner_i2c_tuner_xfer(ptr nocapture noundef readonly %i2c_adap, ptr noundef %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @cx24123_repeater_mode(ptr noundef %1, i8 noundef zeroext 1)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @i2c_transfer(ptr noundef %3, ptr noundef %msg, i32 noundef %num) #8
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24123_tuner_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx24123_release(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %tuner_i2c_adapter = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 8
  tail call void @i2c_del_adapter(ptr noundef %tuner_i2c_adapter) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_initfe(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %buf.i46 = alloca [2 x i8], align 1
  %msg.i47 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i38 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cx24123_i2c_writereg.exit.for.body_crit_edge, %do.end8
  %i.058 = phi i32 [ 0, %do.end8 ], [ %inc, %cx24123_i2c_writereg.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %arrayidx = getelementptr [41 x %struct.anon.91], ptr @cx24123_regdata, i32 0, i32 %i.058
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %data = getelementptr [41 x %struct.anon.91], ptr @cx24123_regdata, i32 0, i32 %i.058, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %buf.i, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196607, ptr %4, align 4
  %conv2.i = zext i8 %8 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv2.i, ptr %msg.i, align 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %18 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i, ptr %buf3.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body.cx24123_i2c_writereg.exit_crit_edge, label %do.end.i

for.body.cx24123_i2c_writereg.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv10 = zext i8 %12 to i32
  %conv = zext i8 %10 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i, i32 noundef %conv, i32 noundef %conv10) #12
  br label %cx24123_i2c_writereg.exit

cx24123_i2c_writereg.exit:                        ; preds = %do.end.i, %for.body.cx24123_i2c_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 41
  br i1 %exitcond.not, label %for.end, label %cx24123_i2c_writereg.exit.for.body_crit_edge

cx24123_i2c_writereg.exit.for.body_crit_edge:     ; preds = %cx24123_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cx24123_i2c_writereg.exit
  %21 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config, align 4
  %lnb_polarity = getelementptr inbounds %struct.cx24123_config, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %lnb_polarity to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lnb_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not = icmp eq i32 %24, 0
  br i1 %tobool13.not, label %for.end.if.end21_crit_edge, label %if.then14

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14:                                        ; preds = %for.end
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %27 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 50, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %28 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i38) #8
  %29 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %conv.i = zext i8 %26 to i16
  %31 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %msg.i38, align 4
  %flags.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i39, align 2
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %29, align 4
  %buf.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %reg.addr.i, ptr %buf.i41, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1
  %35 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 1
  %36 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 2
  %37 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 3
  %38 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b.i, ptr %buf5.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %call.i42 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i38, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 2
  br i1 %cmp.not.i43, label %if.end.i, label %do.end.i44

do.end.i44:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %42 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i42) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %44 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i44
  %retval.0.i45 = phi i32 [ %call.i42, %do.end.i44 ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i38) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %or = or i32 %retval.0.i45, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i46) #8
  %45 = getelementptr inbounds [2 x i8], ptr %buf.i46, i32 0, i32 1
  %46 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 50, ptr %buf.i46, align 1
  %conv1.i = trunc i32 %or to i8
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv1.i, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i47) #8
  %48 = getelementptr inbounds i8, ptr %msg.i47, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 196607, ptr %48, align 4
  %50 = ptrtoint ptr %msg.i47 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i, ptr %msg.i47, align 4
  %flags.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i49 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i49, align 2
  %buf3.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47, i32 0, i32 3
  %52 = ptrtoint ptr %buf3.i51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buf.i46, ptr %buf3.i51, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %call.i52 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i47, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i52)
  %cmp.not.i53 = icmp eq i32 %call.i52, 1
  br i1 %cmp.not.i53, label %cx24123_i2c_readreg.exit.cx24123_i2c_writereg.exit57_crit_edge, label %do.end.i55

cx24123_i2c_readreg.exit.cx24123_i2c_writereg.exit57_crit_edge: ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit57

do.end.i55:                                       ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i52, i32 noundef 50, i32 noundef %or) #12
  br label %cx24123_i2c_writereg.exit57

cx24123_i2c_writereg.exit57:                      ; preds = %do.end.i55, %cx24123_i2c_readreg.exit.cx24123_i2c_writereg.exit57_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i46) #8
  br label %if.end21

if.end21:                                         ; preds = %cx24123_i2c_writereg.exit57, %for.end.if.end21_crit_edge
  %55 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config, align 4
  %dont_use_pll = getelementptr inbounds %struct.cx24123_config, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %dont_use_pll to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dont_use_pll, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool23.not = icmp eq i8 %58, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @cx24123_repeater_mode(ptr noundef %1, i8 noundef zeroext 0)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_tune(ptr noundef %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef writeonly %delay, ptr nocapture noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %re_tune, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @cx24123_set_frontend(ptr noundef %fe)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %mode_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @cx24123_read_status(ptr noundef %fe, ptr noundef %status)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %delay, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24123_get_algo(ptr nocapture noundef readnone %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %buf.i240 = alloca [2 x i8], align 1
  %msg.i241 = alloca %struct.i2c_msg, align 4
  %buf.i228 = alloca [2 x i8], align 1
  %msg.i229 = alloca %struct.i2c_msg, align 4
  %buf.i220 = alloca [2 x i8], align 1
  %msg.i221 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i9.i = alloca [2 x i8], align 1
  %msg.i10.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i180 = alloca i8, align 1
  %b.i.i181 = alloca i8, align 1
  %msg.i.i182 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i51.i = alloca [2 x i8], align 1
  %msg.i52.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i140 = alloca i8, align 1
  %b.i.i141 = alloca i8, align 1
  %msg.i43.i142 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i29.i143 = alloca [2 x i8], align 1
  %msg.i30.i144 = alloca %struct.i2c_msg, align 4
  %buf.i16.i = alloca [2 x i8], align 1
  %msg.i17.i = alloca %struct.i2c_msg, align 4
  %buf.i3.i = alloca [2 x i8], align 1
  %msg.i4.i = alloca %struct.i2c_msg, align 4
  %buf.i.i145 = alloca [2 x i8], align 1
  %msg.i.i146 = alloca %struct.i2c_msg, align 4
  %buf.i231.i = alloca [2 x i8], align 1
  %msg.i232.i = alloca %struct.i2c_msg, align 4
  %buf.i219.i = alloca [2 x i8], align 1
  %msg.i220.i = alloca %struct.i2c_msg, align 4
  %buf.i206.i = alloca [2 x i8], align 1
  %msg.i207.i = alloca %struct.i2c_msg, align 4
  %buf.i194.i = alloca [2 x i8], align 1
  %msg.i195.i = alloca %struct.i2c_msg, align 4
  %buf.i182.i = alloca [2 x i8], align 1
  %msg.i183.i = alloca %struct.i2c_msg, align 4
  %buf.i170.i = alloca [2 x i8], align 1
  %msg.i171.i = alloca %struct.i2c_msg, align 4
  %buf.i158.i = alloca [2 x i8], align 1
  %msg.i159.i = alloca %struct.i2c_msg, align 4
  %buf.i146.i = alloca [2 x i8], align 1
  %msg.i147.i = alloca %struct.i2c_msg, align 4
  %buf.i134.i = alloca [2 x i8], align 1
  %msg.i135.i = alloca %struct.i2c_msg, align 4
  %buf.i122.i = alloca [2 x i8], align 1
  %msg.i123.i = alloca %struct.i2c_msg, align 4
  %buf.i110.i = alloca [2 x i8], align 1
  %msg.i111.i = alloca %struct.i2c_msg, align 4
  %buf.i98.i = alloca [2 x i8], align 1
  %msg.i99.i = alloca %struct.i2c_msg, align 4
  %buf.i86.i = alloca [2 x i8], align 1
  %msg.i87.i = alloca %struct.i2c_msg, align 4
  %buf.i74.i = alloca [2 x i8], align 1
  %msg.i75.i = alloca %struct.i2c_msg, align 4
  %buf.i62.i = alloca [2 x i8], align 1
  %msg.i63.i = alloca %struct.i2c_msg, align 4
  %buf.i49.i = alloca [2 x i8], align 1
  %msg.i50.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i29.i = alloca i8, align 1
  %b.i30.i = alloca i8, align 1
  %msg.i31.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i21.i87 = alloca [2 x i8], align 1
  %msg.i22.i88 = alloca %struct.i2c_msg, align 4
  %reg.addr.i1.i89 = alloca i8, align 1
  %b.i2.i90 = alloca i8, align 1
  %msg.i3.i91 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i92 = alloca i8, align 1
  %b.i.i93 = alloca i8, align 1
  %msg.i.i94 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i68.i = alloca [2 x i8], align 1
  %msg.i69.i = alloca %struct.i2c_msg, align 4
  %buf.i55.i = alloca [2 x i8], align 1
  %msg.i56.i = alloca %struct.i2c_msg, align 4
  %buf.i42.i = alloca [2 x i8], align 1
  %msg.i43.i = alloca %struct.i2c_msg, align 4
  %buf.i29.i = alloca [2 x i8], align 1
  %msg.i30.i = alloca %struct.i2c_msg, align 4
  %buf.i21.i = alloca [2 x i8], align 1
  %msg.i22.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i1.i = alloca i8, align 1
  %b.i2.i = alloca i8, align 1
  %msg.i3.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i = alloca i8, align 1
  %b.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %set_ts_params = getelementptr inbounds %struct.cx24123_config, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_ts_params, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.end8.if.end14_crit_edge, label %if.then10

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 %6(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.end8.if.end14_crit_edge
  %7 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dtv_property_cache, align 4
  %currentfreq = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %currentfreq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %currentfreq, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %10 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %symbol_rate, align 4
  %currentsymbolrate = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %currentsymbolrate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %currentsymbolrate, align 8
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %13 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inversion, align 4
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %19 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 14, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i) #8
  %20 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %b.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %21 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 255, i32 16)
  %conv.i.i = zext i8 %18 to i16
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i.i, align 2
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %21, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %27 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %28 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %flags3.i.i, align 2
  %len4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %29 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %len4.i.i, align 4
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %30 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %b.i.i, ptr %buf5.i.i, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reg.addr.i.i, align 1
  %conv8.i.i = zext i8 %34 to i32
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i.i, i32 noundef %call.i.i) #12
  br label %cx24123_i2c_readreg.exit.i

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %b.i.i, align 1
  %conv12.i.i = zext i8 %36 to i32
  br label %cx24123_i2c_readreg.exit.i

cx24123_i2c_readreg.exit.i:                       ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %conv12.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %37 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1.i) #8
  %41 = ptrtoint ptr %reg.addr.i1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 16, ptr %reg.addr.i1.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i2.i) #8
  %42 = ptrtoint ptr %b.i2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %b.i2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i3.i) #8
  %43 = getelementptr inbounds i8, ptr %msg.i3.i, i32 4
  %44 = call ptr @memset(ptr %43, i32 255, i32 16)
  %conv.i4.i = zext i8 %40 to i16
  %45 = ptrtoint ptr %msg.i3.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i4.i, ptr %msg.i3.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i5.i, align 2
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %43, align 4
  %buf.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %reg.addr.i1.i, ptr %buf.i7.i, align 4
  %arrayinit.element.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 1
  %49 = ptrtoint ptr %arrayinit.element.i8.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i4.i, ptr %arrayinit.element.i8.i, align 4
  %flags3.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 1, i32 1
  %50 = ptrtoint ptr %flags3.i9.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %flags3.i9.i, align 2
  %len4.i10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 1, i32 2
  %51 = ptrtoint ptr %len4.i10.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %len4.i10.i, align 4
  %buf5.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 1, i32 3
  %52 = ptrtoint ptr %buf5.i11.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %b.i2.i, ptr %buf5.i11.i, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %call.i12.i = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i3.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i12.i)
  %cmp.not.i13.i = icmp eq i32 %call.i12.i, 2
  br i1 %cmp.not.i13.i, label %if.end.i18.i, label %do.end.i16.i

do.end.i16.i:                                     ; preds = %cx24123_i2c_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %reg.addr.i1.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %reg.addr.i1.i, align 1
  %conv8.i14.i = zext i8 %56 to i32
  %call9.i15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i14.i, i32 noundef %call.i12.i) #12
  br label %cx24123_i2c_readreg.exit20.i

if.end.i18.i:                                     ; preds = %cx24123_i2c_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %b.i2.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %b.i2.i, align 1
  %conv12.i17.i = zext i8 %58 to i32
  br label %cx24123_i2c_readreg.exit20.i

cx24123_i2c_readreg.exit20.i:                     ; preds = %if.end.i18.i, %do.end.i16.i
  %retval.0.i19.i = phi i32 [ %call.i12.i, %do.end.i16.i ], [ %conv12.i17.i, %if.end.i18.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i3.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1.i) #8
  %59 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %14, label %cx24123_i2c_readreg.exit20.i.cx24123_set_inversion.exit_crit_edge [
    i32 0, label %do.body.i
    i32 1, label %do.body23.i
    i32 2, label %do.body50.i
  ]

cx24123_i2c_readreg.exit20.i.cx24123_set_inversion.exit_crit_edge: ; preds = %cx24123_i2c_readreg.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_set_inversion.exit

do.body.i:                                        ; preds = %cx24123_i2c_readreg.exit20.i
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39) #12
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  %61 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %config, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 4
  %and.i = and i32 %retval.0.i.i, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i21.i) #8
  %65 = getelementptr inbounds [2 x i8], ptr %buf.i21.i, i32 0, i32 1
  %66 = ptrtoint ptr %buf.i21.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 14, ptr %buf.i21.i, align 1
  %conv1.i.i = trunc i32 %and.i to i8
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv1.i.i, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22.i) #8
  %68 = getelementptr inbounds i8, ptr %msg.i22.i, i32 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 196607, ptr %68, align 4
  %conv2.i.i = zext i8 %64 to i16
  %70 = ptrtoint ptr %msg.i22.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv2.i.i, ptr %msg.i22.i, align 4
  %flags.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i23.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i23.i, align 2
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 0, i32 3
  %72 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buf.i21.i, ptr %buf3.i.i, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  %call.i25.i = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i22.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i25.i)
  %cmp.not.i26.i = icmp eq i32 %call.i25.i, 1
  br i1 %cmp.not.i26.i, label %do.end13.i.cx24123_i2c_writereg.exit.i_crit_edge, label %do.end.i27.i

do.end13.i.cx24123_i2c_writereg.exit.i_crit_edge: ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit.i

do.end.i27.i:                                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i25.i, i32 noundef 14, i32 noundef %and.i) #12
  br label %cx24123_i2c_writereg.exit.i

cx24123_i2c_writereg.exit.i:                      ; preds = %do.end.i27.i, %do.end13.i.cx24123_i2c_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i21.i) #8
  %75 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %config, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 4
  %conv20.i = and i32 %retval.0.i19.i, 127
  %or.i = or i32 %conv20.i, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i29.i) #8
  %79 = getelementptr inbounds [2 x i8], ptr %buf.i29.i, i32 0, i32 1
  %80 = ptrtoint ptr %buf.i29.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 16, ptr %buf.i29.i, align 1
  %conv1.i31.i = trunc i32 %or.i to i8
  %81 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv1.i31.i, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i30.i) #8
  %82 = getelementptr inbounds i8, ptr %msg.i30.i, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 196607, ptr %82, align 4
  %conv2.i32.i = zext i8 %78 to i16
  %84 = ptrtoint ptr %msg.i30.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv2.i32.i, ptr %msg.i30.i, align 4
  %flags.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30.i, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i33.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i33.i, align 2
  %buf3.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30.i, i32 0, i32 3
  %86 = ptrtoint ptr %buf3.i35.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf.i29.i, ptr %buf3.i35.i, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %call.i36.i = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i30.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i36.i)
  %cmp.not.i37.i = icmp eq i32 %call.i36.i, 1
  br i1 %cmp.not.i37.i, label %cx24123_i2c_writereg.exit.i.cx24123_i2c_writereg.exit41.i_crit_edge, label %do.end.i39.i

cx24123_i2c_writereg.exit.i.cx24123_i2c_writereg.exit41.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit41.i

do.end.i39.i:                                     ; preds = %cx24123_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i36.i, i32 noundef 16, i32 noundef %or.i) #12
  br label %cx24123_i2c_writereg.exit41.i

cx24123_i2c_writereg.exit41.i:                    ; preds = %do.end.i39.i, %cx24123_i2c_writereg.exit.i.cx24123_i2c_writereg.exit41.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i30.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i29.i) #8
  br label %cx24123_set_inversion.exit

do.body23.i:                                      ; preds = %cx24123_i2c_readreg.exit20.i
  %89 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool24.not.i = icmp eq i32 %89, 0
  br i1 %tobool24.not.i, label %do.body23.i.do.end38.i_crit_edge, label %do.end28.i

do.body23.i.do.end38.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38.i

do.end28.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39) #12
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  br label %do.end38.i

do.end38.i:                                       ; preds = %do.end28.i, %do.body23.i.do.end38.i_crit_edge
  %90 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %config, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 4
  %conv41.i = and i32 %retval.0.i.i, 127
  %or42.i = or i32 %conv41.i, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i42.i) #8
  %94 = getelementptr inbounds [2 x i8], ptr %buf.i42.i, i32 0, i32 1
  %95 = ptrtoint ptr %buf.i42.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 14, ptr %buf.i42.i, align 1
  %conv1.i44.i = trunc i32 %or42.i to i8
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv1.i44.i, ptr %94, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i43.i) #8
  %97 = getelementptr inbounds i8, ptr %msg.i43.i, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 196607, ptr %97, align 4
  %conv2.i45.i = zext i8 %93 to i16
  %99 = ptrtoint ptr %msg.i43.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv2.i45.i, ptr %msg.i43.i, align 4
  %flags.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i46.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i46.i, align 2
  %buf3.i48.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i, i32 0, i32 3
  %101 = ptrtoint ptr %buf3.i48.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buf.i42.i, ptr %buf3.i48.i, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 8
  %call.i49.i = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i43.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i49.i)
  %cmp.not.i50.i = icmp eq i32 %call.i49.i, 1
  br i1 %cmp.not.i50.i, label %do.end38.i.cx24123_i2c_writereg.exit54.i_crit_edge, label %do.end.i52.i

do.end38.i.cx24123_i2c_writereg.exit54.i_crit_edge: ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit54.i

do.end.i52.i:                                     ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i49.i, i32 noundef 14, i32 noundef %or42.i) #12
  br label %cx24123_i2c_writereg.exit54.i

cx24123_i2c_writereg.exit54.i:                    ; preds = %do.end.i52.i, %do.end38.i.cx24123_i2c_writereg.exit54.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i43.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i42.i) #8
  %104 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 4
  %conv46.i = and i32 %retval.0.i19.i, 127
  %or47.i = or i32 %conv46.i, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i55.i) #8
  %108 = getelementptr inbounds [2 x i8], ptr %buf.i55.i, i32 0, i32 1
  %109 = ptrtoint ptr %buf.i55.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 16, ptr %buf.i55.i, align 1
  %conv1.i57.i = trunc i32 %or47.i to i8
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv1.i57.i, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56.i) #8
  %111 = getelementptr inbounds i8, ptr %msg.i56.i, i32 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 196607, ptr %111, align 4
  %conv2.i58.i = zext i8 %107 to i16
  %113 = ptrtoint ptr %msg.i56.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv2.i58.i, ptr %msg.i56.i, align 4
  %flags.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56.i, i32 0, i32 1
  %114 = ptrtoint ptr %flags.i59.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %flags.i59.i, align 2
  %buf3.i61.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56.i, i32 0, i32 3
  %115 = ptrtoint ptr %buf3.i61.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %buf.i55.i, ptr %buf3.i61.i, align 4
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 8
  %call.i62.i = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %msg.i56.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i62.i)
  %cmp.not.i63.i = icmp eq i32 %call.i62.i, 1
  br i1 %cmp.not.i63.i, label %cx24123_i2c_writereg.exit54.i.cx24123_i2c_writereg.exit67.i_crit_edge, label %do.end.i65.i

cx24123_i2c_writereg.exit54.i.cx24123_i2c_writereg.exit67.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit67.i

do.end.i65.i:                                     ; preds = %cx24123_i2c_writereg.exit54.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i62.i, i32 noundef 16, i32 noundef %or47.i) #12
  br label %cx24123_i2c_writereg.exit67.i

cx24123_i2c_writereg.exit67.i:                    ; preds = %do.end.i65.i, %cx24123_i2c_writereg.exit54.i.cx24123_i2c_writereg.exit67.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i55.i) #8
  br label %cx24123_set_inversion.exit

do.body50.i:                                      ; preds = %cx24123_i2c_readreg.exit20.i
  %118 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool51.not.i = icmp eq i32 %118, 0
  br i1 %tobool51.not.i, label %do.body50.i.do.end65.i_crit_edge, label %do.end55.i

do.body50.i.do.end65.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65.i

do.end55.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #10
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39) #12
  %call62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  br label %do.end65.i

do.end65.i:                                       ; preds = %do.end55.i, %do.body50.i.do.end65.i_crit_edge
  %119 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %config, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %120, align 4
  %and69.i = and i32 %retval.0.i19.i, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i68.i) #8
  %123 = getelementptr inbounds [2 x i8], ptr %buf.i68.i, i32 0, i32 1
  %124 = ptrtoint ptr %buf.i68.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 16, ptr %buf.i68.i, align 1
  %conv1.i70.i = trunc i32 %and69.i to i8
  %125 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv1.i70.i, ptr %123, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i69.i) #8
  %126 = getelementptr inbounds i8, ptr %msg.i69.i, i32 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 196607, ptr %126, align 4
  %conv2.i71.i = zext i8 %122 to i16
  %128 = ptrtoint ptr %msg.i69.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv2.i71.i, ptr %msg.i69.i, align 4
  %flags.i72.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i, i32 0, i32 1
  %129 = ptrtoint ptr %flags.i72.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %flags.i72.i, align 2
  %buf3.i74.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i, i32 0, i32 3
  %130 = ptrtoint ptr %buf3.i74.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %buf.i68.i, ptr %buf3.i74.i, align 4
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 8
  %call.i75.i = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %msg.i69.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i75.i)
  %cmp.not.i76.i = icmp eq i32 %call.i75.i, 1
  br i1 %cmp.not.i76.i, label %do.end65.i.cx24123_i2c_writereg.exit80.i_crit_edge, label %do.end.i78.i

do.end65.i.cx24123_i2c_writereg.exit80.i_crit_edge: ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit80.i

do.end.i78.i:                                     ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i75.i, i32 noundef 16, i32 noundef %and69.i) #12
  br label %cx24123_i2c_writereg.exit80.i

cx24123_i2c_writereg.exit80.i:                    ; preds = %do.end.i78.i, %do.end65.i.cx24123_i2c_writereg.exit80.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i69.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i68.i) #8
  br label %cx24123_set_inversion.exit

cx24123_set_inversion.exit:                       ; preds = %cx24123_i2c_writereg.exit80.i, %cx24123_i2c_writereg.exit67.i, %cx24123_i2c_writereg.exit41.i, %cx24123_i2c_readreg.exit20.i.cx24123_set_inversion.exit_crit_edge
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %133 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %fec_inner, align 4
  %135 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %config, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %136, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i92) #8
  %139 = ptrtoint ptr %reg.addr.i.i92 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 14, ptr %reg.addr.i.i92, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i93) #8
  %140 = ptrtoint ptr %b.i.i93 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %b.i.i93, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i94) #8
  %141 = getelementptr inbounds i8, ptr %msg.i.i94, i32 4
  %142 = call ptr @memset(ptr %141, i32 255, i32 16)
  %conv.i.i96 = zext i8 %138 to i16
  %143 = ptrtoint ptr %msg.i.i94 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv.i.i96, ptr %msg.i.i94, align 4
  %flags.i.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 0, i32 1
  %144 = ptrtoint ptr %flags.i.i97 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %flags.i.i97, align 2
  %145 = ptrtoint ptr %141 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1, ptr %141, align 4
  %buf.i.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 0, i32 3
  %146 = ptrtoint ptr %buf.i.i98 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %reg.addr.i.i92, ptr %buf.i.i98, align 4
  %arrayinit.element.i.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 1
  %147 = ptrtoint ptr %arrayinit.element.i.i99 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv.i.i96, ptr %arrayinit.element.i.i99, align 4
  %flags3.i.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 1, i32 1
  %148 = ptrtoint ptr %flags3.i.i100 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %flags3.i.i100, align 2
  %len4.i.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 1, i32 2
  %149 = ptrtoint ptr %len4.i.i101 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 1, ptr %len4.i.i101, align 4
  %buf5.i.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 1, i32 3
  %150 = ptrtoint ptr %buf5.i.i102 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %b.i.i93, ptr %buf5.i.i102, align 4
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 8
  %call.i.i103 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %msg.i.i94, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i103)
  %cmp.not.i.i104 = icmp eq i32 %call.i.i103, 2
  br i1 %cmp.not.i.i104, label %if.end.i.i109, label %do.end.i.i107

do.end.i.i107:                                    ; preds = %cx24123_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %reg.addr.i.i92 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %reg.addr.i.i92, align 1
  %conv8.i.i105 = zext i8 %154 to i32
  %call9.i.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i.i105, i32 noundef %call.i.i103) #12
  br label %cx24123_i2c_readreg.exit.i111

if.end.i.i109:                                    ; preds = %cx24123_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %b.i.i93 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %b.i.i93, align 1
  %conv12.i.i108 = zext i8 %156 to i32
  br label %cx24123_i2c_readreg.exit.i111

cx24123_i2c_readreg.exit.i111:                    ; preds = %if.end.i.i109, %do.end.i.i107
  %retval.0.i.i110 = phi i32 [ %call.i.i103, %do.end.i.i107 ], [ %conv12.i.i108, %if.end.i.i109 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i94) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i93) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i92) #8
  %157 = trunc i32 %retval.0.i.i110 to i8
  %conv.i = and i8 %157, -8
  %158 = call i32 @llvm.umin.i32(i32 %134, i32 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %158)
  %cmp4.i = icmp eq i32 %158, 1
  %159 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %config, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %160, align 4
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %cx24123_i2c_readreg.exit.i111
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1.i89) #8
  %163 = ptrtoint ptr %reg.addr.i1.i89 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 67, ptr %reg.addr.i1.i89, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i2.i90) #8
  %164 = ptrtoint ptr %b.i2.i90 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %b.i2.i90, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i3.i91) #8
  %165 = getelementptr inbounds i8, ptr %msg.i3.i91, i32 4
  %166 = call ptr @memset(ptr %165, i32 255, i32 16)
  %conv.i4.i112 = zext i8 %162 to i16
  %167 = ptrtoint ptr %msg.i3.i91 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i4.i112, ptr %msg.i3.i91, align 4
  %flags.i5.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i91, i32 0, i32 1
  %168 = ptrtoint ptr %flags.i5.i113 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i5.i113, align 2
  %169 = ptrtoint ptr %165 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 1, ptr %165, align 4
  %buf.i7.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i91, i32 0, i32 3
  %170 = ptrtoint ptr %buf.i7.i114 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %reg.addr.i1.i89, ptr %buf.i7.i114, align 4
  %arrayinit.element.i8.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i91, i32 1
  %171 = ptrtoint ptr %arrayinit.element.i8.i115 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv.i4.i112, ptr %arrayinit.element.i8.i115, align 4
  %flags3.i9.i116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i91, i32 1, i32 1
  %172 = ptrtoint ptr %flags3.i9.i116 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 1, ptr %flags3.i9.i116, align 2
  %len4.i10.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i91, i32 1, i32 2
  %173 = ptrtoint ptr %len4.i10.i117 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 1, ptr %len4.i10.i117, align 4
  %buf5.i11.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i91, i32 1, i32 3
  %174 = ptrtoint ptr %buf5.i11.i118 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %b.i2.i90, ptr %buf5.i11.i118, align 4
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 8
  %call.i12.i119 = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %msg.i3.i91, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i12.i119)
  %cmp.not.i13.i120 = icmp eq i32 %call.i12.i119, 2
  br i1 %cmp.not.i13.i120, label %if.end.i18.i125, label %do.end.i16.i123

do.end.i16.i123:                                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %177 = ptrtoint ptr %reg.addr.i1.i89 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %reg.addr.i1.i89, align 1
  %conv8.i14.i121 = zext i8 %178 to i32
  %call9.i15.i122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i14.i121, i32 noundef %call.i12.i119) #12
  br label %cx24123_i2c_readreg.exit20.i133

if.end.i18.i125:                                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %b.i2.i90 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %b.i2.i90, align 1
  %conv12.i17.i124 = zext i8 %180 to i32
  br label %cx24123_i2c_readreg.exit20.i133

cx24123_i2c_readreg.exit20.i133:                  ; preds = %if.end.i18.i125, %do.end.i16.i123
  %retval.0.i19.i126 = phi i32 [ %call.i12.i119, %do.end.i16.i123 ], [ %conv12.i17.i124, %if.end.i18.i125 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i3.i91) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i2.i90) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1.i89) #8
  %or.i127 = or i32 %retval.0.i19.i126, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i21.i87) #8
  %181 = getelementptr inbounds [2 x i8], ptr %buf.i21.i87, i32 0, i32 1
  %182 = ptrtoint ptr %buf.i21.i87 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 67, ptr %buf.i21.i87, align 1
  %conv1.i.i128 = trunc i32 %or.i127 to i8
  %183 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv1.i.i128, ptr %181, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22.i88) #8
  %184 = getelementptr inbounds i8, ptr %msg.i22.i88, i32 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 196607, ptr %184, align 4
  %186 = ptrtoint ptr %msg.i22.i88 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv.i4.i112, ptr %msg.i22.i88, align 4
  %flags.i23.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i88, i32 0, i32 1
  %187 = ptrtoint ptr %flags.i23.i129 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 0, ptr %flags.i23.i129, align 2
  %buf3.i.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i88, i32 0, i32 3
  %188 = ptrtoint ptr %buf3.i.i130 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %buf.i21.i87, ptr %buf3.i.i130, align 4
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %1, align 8
  %call.i25.i131 = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %msg.i22.i88, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i25.i131)
  %cmp.not.i26.i132 = icmp eq i32 %call.i25.i131, 1
  br i1 %cmp.not.i26.i132, label %cx24123_i2c_readreg.exit20.i133.if.end20.thread.i_crit_edge, label %do.end.i27.i135

cx24123_i2c_readreg.exit20.i133.if.end20.thread.i_crit_edge: ; preds = %cx24123_i2c_readreg.exit20.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.thread.i

do.end.i27.i135:                                  ; preds = %cx24123_i2c_readreg.exit20.i133
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i25.i131, i32 noundef 67, i32 noundef %or.i127) #12
  br label %if.end20.thread.i

if.end20.thread.i:                                ; preds = %do.end.i27.i135, %cx24123_i2c_readreg.exit20.i133.if.end20.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22.i88) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i21.i87) #8
  br label %do.body.i138

if.else.i:                                        ; preds = %cx24123_i2c_readreg.exit.i111
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i29.i) #8
  %191 = ptrtoint ptr %reg.addr.i29.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 67, ptr %reg.addr.i29.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i30.i) #8
  %192 = ptrtoint ptr %b.i30.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %b.i30.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i31.i) #8
  %193 = getelementptr inbounds i8, ptr %msg.i31.i, i32 4
  %194 = call ptr @memset(ptr %193, i32 255, i32 16)
  %conv.i32.i = zext i8 %162 to i16
  %195 = ptrtoint ptr %msg.i31.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv.i32.i, ptr %msg.i31.i, align 4
  %flags.i33.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 1
  %196 = ptrtoint ptr %flags.i33.i136 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 0, ptr %flags.i33.i136, align 2
  %197 = ptrtoint ptr %193 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 1, ptr %193, align 4
  %buf.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 3
  %198 = ptrtoint ptr %buf.i35.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %reg.addr.i29.i, ptr %buf.i35.i, align 4
  %arrayinit.element.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 1
  %199 = ptrtoint ptr %arrayinit.element.i36.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv.i32.i, ptr %arrayinit.element.i36.i, align 4
  %flags3.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 1, i32 1
  %200 = ptrtoint ptr %flags3.i37.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 1, ptr %flags3.i37.i, align 2
  %len4.i38.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 1, i32 2
  %201 = ptrtoint ptr %len4.i38.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 1, ptr %len4.i38.i, align 4
  %buf5.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 1, i32 3
  %202 = ptrtoint ptr %buf5.i39.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %b.i30.i, ptr %buf5.i39.i, align 4
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %1, align 8
  %call.i40.i = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %msg.i31.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i40.i)
  %cmp.not.i41.i = icmp eq i32 %call.i40.i, 2
  br i1 %cmp.not.i41.i, label %if.end.i46.i, label %do.end.i44.i

do.end.i44.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %reg.addr.i29.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %reg.addr.i29.i, align 1
  %conv8.i42.i = zext i8 %206 to i32
  %call9.i43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i42.i, i32 noundef %call.i40.i) #12
  br label %cx24123_i2c_readreg.exit48.i

if.end.i46.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %b.i30.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %b.i30.i, align 1
  %conv12.i45.i = zext i8 %208 to i32
  br label %cx24123_i2c_readreg.exit48.i

cx24123_i2c_readreg.exit48.i:                     ; preds = %if.end.i46.i, %do.end.i44.i
  %retval.0.i47.i = phi i32 [ %call.i40.i, %do.end.i44.i ], [ %conv12.i45.i, %if.end.i46.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i31.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i30.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i29.i) #8
  %and18.i = and i32 %retval.0.i47.i, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i49.i) #8
  %209 = getelementptr inbounds [2 x i8], ptr %buf.i49.i, i32 0, i32 1
  %210 = ptrtoint ptr %buf.i49.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 67, ptr %buf.i49.i, align 1
  %conv1.i51.i = trunc i32 %and18.i to i8
  %211 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv1.i51.i, ptr %209, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50.i) #8
  %212 = getelementptr inbounds i8, ptr %msg.i50.i, i32 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 196607, ptr %212, align 4
  %214 = ptrtoint ptr %msg.i50.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %conv.i32.i, ptr %msg.i50.i, align 4
  %flags.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 1
  %215 = ptrtoint ptr %flags.i53.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %flags.i53.i, align 2
  %buf3.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 3
  %216 = ptrtoint ptr %buf3.i55.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %buf.i49.i, ptr %buf3.i55.i, align 4
  %217 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %1, align 8
  %call.i56.i = call i32 @i2c_transfer(ptr noundef %218, ptr noundef nonnull %msg.i50.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i56.i)
  %cmp.not.i57.i = icmp eq i32 %call.i56.i, 1
  br i1 %cmp.not.i57.i, label %cx24123_i2c_readreg.exit48.i.if.end20.i_crit_edge, label %do.end.i59.i

cx24123_i2c_readreg.exit48.i.if.end20.i_crit_edge: ; preds = %cx24123_i2c_readreg.exit48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

do.end.i59.i:                                     ; preds = %cx24123_i2c_readreg.exit48.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i56.i, i32 noundef 67, i32 noundef %and18.i) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i59.i, %cx24123_i2c_readreg.exit48.i.if.end20.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i49.i) #8
  %219 = zext i32 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %158, label %if.end20.i.cx24123_set_fec.exit_crit_edge [
    i32 1, label %if.end20.i.do.body.i138_crit_edge
    i32 2, label %do.body41.i
    i32 3, label %do.body66.i
    i32 4, label %do.body91.i
    i32 5, label %do.body116.i
    i32 6, label %do.body141.i
    i32 7, label %do.body166.i
    i32 9, label %do.body191.i
  ]

if.end20.i.do.body.i138_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i138

if.end20.i.cx24123_set_fec.exit_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_set_fec.exit

do.body.i138:                                     ; preds = %if.end20.i.do.body.i138_crit_edge, %if.end20.thread.i
  %220 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i137 = icmp eq i32 %220, 0
  br i1 %tobool.not.i137, label %do.body.i138.do.end31.i_crit_edge, label %do.end.i139

do.body.i138.do.end31.i_crit_edge:                ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31.i

do.end.i139:                                      ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #12
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #12
  br label %do.end31.i

do.end31.i:                                       ; preds = %do.end.i139, %do.body.i138.do.end31.i_crit_edge
  %221 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %config, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %222, align 4
  %225 = or i8 %conv.i, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i62.i) #8
  %226 = getelementptr inbounds [2 x i8], ptr %buf.i62.i, i32 0, i32 1
  %227 = ptrtoint ptr %buf.i62.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 14, ptr %buf.i62.i, align 1
  %228 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %225, ptr %226, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i63.i) #8
  %229 = getelementptr inbounds i8, ptr %msg.i63.i, i32 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 196607, ptr %229, align 4
  %conv2.i64.i = zext i8 %224 to i16
  %231 = ptrtoint ptr %msg.i63.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %conv2.i64.i, ptr %msg.i63.i, align 4
  %flags.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 1
  %232 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 0, ptr %flags.i65.i, align 2
  %buf3.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 3
  %233 = ptrtoint ptr %buf3.i67.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %buf.i62.i, ptr %buf3.i67.i, align 4
  %234 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %1, align 8
  %call.i68.i = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %msg.i63.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i68.i)
  %cmp.not.i69.i = icmp eq i32 %call.i68.i, 1
  br i1 %cmp.not.i69.i, label %do.end31.i.cx24123_i2c_writereg.exit73.i_crit_edge, label %do.end.i71.i

do.end31.i.cx24123_i2c_writereg.exit73.i_crit_edge: ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit73.i

do.end.i71.i:                                     ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %or35.i = zext i8 %225 to i32
  %call5.i70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i68.i, i32 noundef 14, i32 noundef %or35.i) #12
  br label %cx24123_i2c_writereg.exit73.i

cx24123_i2c_writereg.exit73.i:                    ; preds = %do.end.i71.i, %do.end31.i.cx24123_i2c_writereg.exit73.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i63.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i62.i) #8
  %236 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %config, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %237, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i74.i) #8
  %240 = getelementptr inbounds [2 x i8], ptr %buf.i74.i, i32 0, i32 1
  %241 = ptrtoint ptr %buf.i74.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 15, ptr %buf.i74.i, align 1
  %242 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 2, ptr %240, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i75.i) #8
  %243 = getelementptr inbounds i8, ptr %msg.i75.i, i32 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 196607, ptr %243, align 4
  %conv2.i76.i = zext i8 %239 to i16
  %245 = ptrtoint ptr %msg.i75.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv2.i76.i, ptr %msg.i75.i, align 4
  %flags.i77.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75.i, i32 0, i32 1
  %246 = ptrtoint ptr %flags.i77.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 0, ptr %flags.i77.i, align 2
  %buf3.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75.i, i32 0, i32 3
  %247 = ptrtoint ptr %buf3.i79.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %buf.i74.i, ptr %buf3.i79.i, align 4
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 8
  %call.i80.i = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %msg.i75.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i80.i)
  %cmp.not.i81.i = icmp eq i32 %call.i80.i, 1
  br i1 %cmp.not.i81.i, label %cx24123_i2c_writereg.exit73.i.cx24123_i2c_writereg.exit85.i_crit_edge, label %do.end.i83.i

cx24123_i2c_writereg.exit73.i.cx24123_i2c_writereg.exit85.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit85.i

do.end.i83.i:                                     ; preds = %cx24123_i2c_writereg.exit73.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i80.i, i32 noundef 15, i32 noundef 2) #12
  br label %cx24123_i2c_writereg.exit85.i

cx24123_i2c_writereg.exit85.i:                    ; preds = %do.end.i83.i, %cx24123_i2c_writereg.exit73.i.cx24123_i2c_writereg.exit85.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i75.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i74.i) #8
  br label %cx24123_set_fec.exit

do.body41.i:                                      ; preds = %if.end20.i
  %250 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool42.not.i = icmp eq i32 %250, 0
  br i1 %tobool42.not.i, label %do.body41.i.do.end56.i_crit_edge, label %do.end46.i

do.body41.i.do.end56.i_crit_edge:                 ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56.i

do.end46.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #12
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  br label %do.end56.i

do.end56.i:                                       ; preds = %do.end46.i, %do.body41.i.do.end56.i_crit_edge
  %251 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %config, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %252, align 4
  %255 = or i8 %conv.i, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i86.i) #8
  %256 = getelementptr inbounds [2 x i8], ptr %buf.i86.i, i32 0, i32 1
  %257 = ptrtoint ptr %buf.i86.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 14, ptr %buf.i86.i, align 1
  %258 = ptrtoint ptr %256 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %255, ptr %256, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i87.i) #8
  %259 = getelementptr inbounds i8, ptr %msg.i87.i, i32 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 196607, ptr %259, align 4
  %conv2.i88.i = zext i8 %254 to i16
  %261 = ptrtoint ptr %msg.i87.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %conv2.i88.i, ptr %msg.i87.i, align 4
  %flags.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 1
  %262 = ptrtoint ptr %flags.i89.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 0, ptr %flags.i89.i, align 2
  %buf3.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 3
  %263 = ptrtoint ptr %buf3.i91.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %buf.i86.i, ptr %buf3.i91.i, align 4
  %264 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %1, align 8
  %call.i92.i = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %msg.i87.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i92.i)
  %cmp.not.i93.i = icmp eq i32 %call.i92.i, 1
  br i1 %cmp.not.i93.i, label %do.end56.i.cx24123_i2c_writereg.exit97.i_crit_edge, label %do.end.i95.i

do.end56.i.cx24123_i2c_writereg.exit97.i_crit_edge: ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit97.i

do.end.i95.i:                                     ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %or60.i = zext i8 %255 to i32
  %call5.i94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i92.i, i32 noundef 14, i32 noundef %or60.i) #12
  br label %cx24123_i2c_writereg.exit97.i

cx24123_i2c_writereg.exit97.i:                    ; preds = %do.end.i95.i, %do.end56.i.cx24123_i2c_writereg.exit97.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i87.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i86.i) #8
  %266 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %config, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %267, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i98.i) #8
  %270 = getelementptr inbounds [2 x i8], ptr %buf.i98.i, i32 0, i32 1
  %271 = ptrtoint ptr %buf.i98.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 15, ptr %buf.i98.i, align 1
  %272 = ptrtoint ptr %270 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 4, ptr %270, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i99.i) #8
  %273 = getelementptr inbounds i8, ptr %msg.i99.i, i32 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 196607, ptr %273, align 4
  %conv2.i100.i = zext i8 %269 to i16
  %275 = ptrtoint ptr %msg.i99.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %conv2.i100.i, ptr %msg.i99.i, align 4
  %flags.i101.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99.i, i32 0, i32 1
  %276 = ptrtoint ptr %flags.i101.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 0, ptr %flags.i101.i, align 2
  %buf3.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99.i, i32 0, i32 3
  %277 = ptrtoint ptr %buf3.i103.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %buf.i98.i, ptr %buf3.i103.i, align 4
  %278 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %1, align 8
  %call.i104.i = call i32 @i2c_transfer(ptr noundef %279, ptr noundef nonnull %msg.i99.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i104.i)
  %cmp.not.i105.i = icmp eq i32 %call.i104.i, 1
  br i1 %cmp.not.i105.i, label %cx24123_i2c_writereg.exit97.i.cx24123_i2c_writereg.exit109.i_crit_edge, label %do.end.i107.i

cx24123_i2c_writereg.exit97.i.cx24123_i2c_writereg.exit109.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit109.i

do.end.i107.i:                                    ; preds = %cx24123_i2c_writereg.exit97.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i106.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i104.i, i32 noundef 15, i32 noundef 4) #12
  br label %cx24123_i2c_writereg.exit109.i

cx24123_i2c_writereg.exit109.i:                   ; preds = %do.end.i107.i, %cx24123_i2c_writereg.exit97.i.cx24123_i2c_writereg.exit109.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i99.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i98.i) #8
  br label %cx24123_set_fec.exit

do.body66.i:                                      ; preds = %if.end20.i
  %280 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool67.not.i = icmp eq i32 %280, 0
  br i1 %tobool67.not.i, label %do.body66.i.do.end81.i_crit_edge, label %do.end71.i

do.body66.i.do.end81.i_crit_edge:                 ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end81.i

do.end71.i:                                       ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #10
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #12
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #12
  br label %do.end81.i

do.end81.i:                                       ; preds = %do.end71.i, %do.body66.i.do.end81.i_crit_edge
  %281 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %config, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %282, align 4
  %285 = or i8 %conv.i, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i110.i) #8
  %286 = getelementptr inbounds [2 x i8], ptr %buf.i110.i, i32 0, i32 1
  %287 = ptrtoint ptr %buf.i110.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 14, ptr %buf.i110.i, align 1
  %288 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %285, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i111.i) #8
  %289 = getelementptr inbounds i8, ptr %msg.i111.i, i32 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 196607, ptr %289, align 4
  %conv2.i112.i = zext i8 %284 to i16
  %291 = ptrtoint ptr %msg.i111.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %conv2.i112.i, ptr %msg.i111.i, align 4
  %flags.i113.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111.i, i32 0, i32 1
  %292 = ptrtoint ptr %flags.i113.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 0, ptr %flags.i113.i, align 2
  %buf3.i115.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111.i, i32 0, i32 3
  %293 = ptrtoint ptr %buf3.i115.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %buf.i110.i, ptr %buf3.i115.i, align 4
  %294 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %1, align 8
  %call.i116.i = call i32 @i2c_transfer(ptr noundef %295, ptr noundef nonnull %msg.i111.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i116.i)
  %cmp.not.i117.i = icmp eq i32 %call.i116.i, 1
  br i1 %cmp.not.i117.i, label %do.end81.i.cx24123_i2c_writereg.exit121.i_crit_edge, label %do.end.i119.i

do.end81.i.cx24123_i2c_writereg.exit121.i_crit_edge: ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit121.i

do.end.i119.i:                                    ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %or85.i = zext i8 %285 to i32
  %call5.i118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i116.i, i32 noundef 14, i32 noundef %or85.i) #12
  br label %cx24123_i2c_writereg.exit121.i

cx24123_i2c_writereg.exit121.i:                   ; preds = %do.end.i119.i, %do.end81.i.cx24123_i2c_writereg.exit121.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i111.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i110.i) #8
  %296 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %config, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %297, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i122.i) #8
  %300 = getelementptr inbounds [2 x i8], ptr %buf.i122.i, i32 0, i32 1
  %301 = ptrtoint ptr %buf.i122.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 15, ptr %buf.i122.i, align 1
  %302 = ptrtoint ptr %300 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 8, ptr %300, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i123.i) #8
  %303 = getelementptr inbounds i8, ptr %msg.i123.i, i32 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 196607, ptr %303, align 4
  %conv2.i124.i = zext i8 %299 to i16
  %305 = ptrtoint ptr %msg.i123.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 %conv2.i124.i, ptr %msg.i123.i, align 4
  %flags.i125.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123.i, i32 0, i32 1
  %306 = ptrtoint ptr %flags.i125.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 0, ptr %flags.i125.i, align 2
  %buf3.i127.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123.i, i32 0, i32 3
  %307 = ptrtoint ptr %buf3.i127.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %buf.i122.i, ptr %buf3.i127.i, align 4
  %308 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %1, align 8
  %call.i128.i = call i32 @i2c_transfer(ptr noundef %309, ptr noundef nonnull %msg.i123.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i128.i)
  %cmp.not.i129.i = icmp eq i32 %call.i128.i, 1
  br i1 %cmp.not.i129.i, label %cx24123_i2c_writereg.exit121.i.cx24123_i2c_writereg.exit133.i_crit_edge, label %do.end.i131.i

cx24123_i2c_writereg.exit121.i.cx24123_i2c_writereg.exit133.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit133.i

do.end.i131.i:                                    ; preds = %cx24123_i2c_writereg.exit121.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i130.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i128.i, i32 noundef 15, i32 noundef 8) #12
  br label %cx24123_i2c_writereg.exit133.i

cx24123_i2c_writereg.exit133.i:                   ; preds = %do.end.i131.i, %cx24123_i2c_writereg.exit121.i.cx24123_i2c_writereg.exit133.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i123.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i122.i) #8
  br label %cx24123_set_fec.exit

do.body91.i:                                      ; preds = %if.end20.i
  %310 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool92.not.i = icmp eq i32 %310, 0
  br i1 %tobool92.not.i, label %do.body91.i.do.end106.i_crit_edge, label %do.end96.i

do.body91.i.do.end106.i_crit_edge:                ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end106.i

do.end96.i:                                       ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #10
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #12
  %call103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #12
  br label %do.end106.i

do.end106.i:                                      ; preds = %do.end96.i, %do.body91.i.do.end106.i_crit_edge
  %311 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %config, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %312, align 4
  %315 = or i8 %conv.i, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i134.i) #8
  %316 = getelementptr inbounds [2 x i8], ptr %buf.i134.i, i32 0, i32 1
  %317 = ptrtoint ptr %buf.i134.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 14, ptr %buf.i134.i, align 1
  %318 = ptrtoint ptr %316 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %315, ptr %316, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i135.i) #8
  %319 = getelementptr inbounds i8, ptr %msg.i135.i, i32 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 196607, ptr %319, align 4
  %conv2.i136.i = zext i8 %314 to i16
  %321 = ptrtoint ptr %msg.i135.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 %conv2.i136.i, ptr %msg.i135.i, align 4
  %flags.i137.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i, i32 0, i32 1
  %322 = ptrtoint ptr %flags.i137.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 0, ptr %flags.i137.i, align 2
  %buf3.i139.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i, i32 0, i32 3
  %323 = ptrtoint ptr %buf3.i139.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %buf.i134.i, ptr %buf3.i139.i, align 4
  %324 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %1, align 8
  %call.i140.i = call i32 @i2c_transfer(ptr noundef %325, ptr noundef nonnull %msg.i135.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i140.i)
  %cmp.not.i141.i = icmp eq i32 %call.i140.i, 1
  br i1 %cmp.not.i141.i, label %do.end106.i.cx24123_i2c_writereg.exit145.i_crit_edge, label %do.end.i143.i

do.end106.i.cx24123_i2c_writereg.exit145.i_crit_edge: ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit145.i

do.end.i143.i:                                    ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  %or110.i = zext i8 %315 to i32
  %call5.i142.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i140.i, i32 noundef 14, i32 noundef %or110.i) #12
  br label %cx24123_i2c_writereg.exit145.i

cx24123_i2c_writereg.exit145.i:                   ; preds = %do.end.i143.i, %do.end106.i.cx24123_i2c_writereg.exit145.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i135.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i134.i) #8
  %326 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %config, align 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %327, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i146.i) #8
  %330 = getelementptr inbounds [2 x i8], ptr %buf.i146.i, i32 0, i32 1
  %331 = ptrtoint ptr %buf.i146.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 15, ptr %buf.i146.i, align 1
  %332 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 16, ptr %330, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i147.i) #8
  %333 = getelementptr inbounds i8, ptr %msg.i147.i, i32 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 196607, ptr %333, align 4
  %conv2.i148.i = zext i8 %329 to i16
  %335 = ptrtoint ptr %msg.i147.i to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 %conv2.i148.i, ptr %msg.i147.i, align 4
  %flags.i149.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147.i, i32 0, i32 1
  %336 = ptrtoint ptr %flags.i149.i to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 0, ptr %flags.i149.i, align 2
  %buf3.i151.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147.i, i32 0, i32 3
  %337 = ptrtoint ptr %buf3.i151.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %buf.i146.i, ptr %buf3.i151.i, align 4
  %338 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %1, align 8
  %call.i152.i = call i32 @i2c_transfer(ptr noundef %339, ptr noundef nonnull %msg.i147.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i152.i)
  %cmp.not.i153.i = icmp eq i32 %call.i152.i, 1
  br i1 %cmp.not.i153.i, label %cx24123_i2c_writereg.exit145.i.cx24123_i2c_writereg.exit157.i_crit_edge, label %do.end.i155.i

cx24123_i2c_writereg.exit145.i.cx24123_i2c_writereg.exit157.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit157.i

do.end.i155.i:                                    ; preds = %cx24123_i2c_writereg.exit145.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i154.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i152.i, i32 noundef 15, i32 noundef 16) #12
  br label %cx24123_i2c_writereg.exit157.i

cx24123_i2c_writereg.exit157.i:                   ; preds = %do.end.i155.i, %cx24123_i2c_writereg.exit145.i.cx24123_i2c_writereg.exit157.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i147.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i146.i) #8
  br label %cx24123_set_fec.exit

do.body116.i:                                     ; preds = %if.end20.i
  %340 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool117.not.i = icmp eq i32 %340, 0
  br i1 %tobool117.not.i, label %do.body116.i.do.end131.i_crit_edge, label %do.end121.i

do.body116.i.do.end131.i_crit_edge:               ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end131.i

do.end121.i:                                      ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #10
  %call123.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #12
  %call128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #12
  br label %do.end131.i

do.end131.i:                                      ; preds = %do.end121.i, %do.body116.i.do.end131.i_crit_edge
  %341 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %config, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %342, align 4
  %345 = or i8 %conv.i, 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i158.i) #8
  %346 = getelementptr inbounds [2 x i8], ptr %buf.i158.i, i32 0, i32 1
  %347 = ptrtoint ptr %buf.i158.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 14, ptr %buf.i158.i, align 1
  %348 = ptrtoint ptr %346 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %345, ptr %346, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i159.i) #8
  %349 = getelementptr inbounds i8, ptr %msg.i159.i, i32 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 196607, ptr %349, align 4
  %conv2.i160.i = zext i8 %344 to i16
  %351 = ptrtoint ptr %msg.i159.i to i32
  call void @__asan_store2_noabort(i32 %351)
  store i16 %conv2.i160.i, ptr %msg.i159.i, align 4
  %flags.i161.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i159.i, i32 0, i32 1
  %352 = ptrtoint ptr %flags.i161.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 0, ptr %flags.i161.i, align 2
  %buf3.i163.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i159.i, i32 0, i32 3
  %353 = ptrtoint ptr %buf3.i163.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %buf.i158.i, ptr %buf3.i163.i, align 4
  %354 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %1, align 8
  %call.i164.i = call i32 @i2c_transfer(ptr noundef %355, ptr noundef nonnull %msg.i159.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i164.i)
  %cmp.not.i165.i = icmp eq i32 %call.i164.i, 1
  br i1 %cmp.not.i165.i, label %do.end131.i.cx24123_i2c_writereg.exit169.i_crit_edge, label %do.end.i167.i

do.end131.i.cx24123_i2c_writereg.exit169.i_crit_edge: ; preds = %do.end131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit169.i

do.end.i167.i:                                    ; preds = %do.end131.i
  call void @__sanitizer_cov_trace_pc() #10
  %or135.i = zext i8 %345 to i32
  %call5.i166.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i164.i, i32 noundef 14, i32 noundef %or135.i) #12
  br label %cx24123_i2c_writereg.exit169.i

cx24123_i2c_writereg.exit169.i:                   ; preds = %do.end.i167.i, %do.end131.i.cx24123_i2c_writereg.exit169.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i159.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i158.i) #8
  %356 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %config, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %357, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i170.i) #8
  %360 = getelementptr inbounds [2 x i8], ptr %buf.i170.i, i32 0, i32 1
  %361 = ptrtoint ptr %buf.i170.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 15, ptr %buf.i170.i, align 1
  %362 = ptrtoint ptr %360 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 32, ptr %360, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i171.i) #8
  %363 = getelementptr inbounds i8, ptr %msg.i171.i, i32 4
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 196607, ptr %363, align 4
  %conv2.i172.i = zext i8 %359 to i16
  %365 = ptrtoint ptr %msg.i171.i to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 %conv2.i172.i, ptr %msg.i171.i, align 4
  %flags.i173.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i171.i, i32 0, i32 1
  %366 = ptrtoint ptr %flags.i173.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 0, ptr %flags.i173.i, align 2
  %buf3.i175.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i171.i, i32 0, i32 3
  %367 = ptrtoint ptr %buf3.i175.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %buf.i170.i, ptr %buf3.i175.i, align 4
  %368 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %1, align 8
  %call.i176.i = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %msg.i171.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i176.i)
  %cmp.not.i177.i = icmp eq i32 %call.i176.i, 1
  br i1 %cmp.not.i177.i, label %cx24123_i2c_writereg.exit169.i.cx24123_i2c_writereg.exit181.i_crit_edge, label %do.end.i179.i

cx24123_i2c_writereg.exit169.i.cx24123_i2c_writereg.exit181.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit181.i

do.end.i179.i:                                    ; preds = %cx24123_i2c_writereg.exit169.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i178.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i176.i, i32 noundef 15, i32 noundef 32) #12
  br label %cx24123_i2c_writereg.exit181.i

cx24123_i2c_writereg.exit181.i:                   ; preds = %do.end.i179.i, %cx24123_i2c_writereg.exit169.i.cx24123_i2c_writereg.exit181.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i171.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i170.i) #8
  br label %cx24123_set_fec.exit

do.body141.i:                                     ; preds = %if.end20.i
  %370 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool142.not.i = icmp eq i32 %370, 0
  br i1 %tobool142.not.i, label %do.body141.i.do.end156.i_crit_edge, label %do.end146.i

do.body141.i.do.end156.i_crit_edge:               ; preds = %do.body141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156.i

do.end146.i:                                      ; preds = %do.body141.i
  call void @__sanitizer_cov_trace_pc() #10
  %call148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #12
  %call153.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #12
  br label %do.end156.i

do.end156.i:                                      ; preds = %do.end146.i, %do.body141.i.do.end156.i_crit_edge
  %371 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %config, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %372, align 4
  %375 = or i8 %conv.i, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i182.i) #8
  %376 = getelementptr inbounds [2 x i8], ptr %buf.i182.i, i32 0, i32 1
  %377 = ptrtoint ptr %buf.i182.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 14, ptr %buf.i182.i, align 1
  %378 = ptrtoint ptr %376 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %375, ptr %376, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i183.i) #8
  %379 = getelementptr inbounds i8, ptr %msg.i183.i, i32 4
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 196607, ptr %379, align 4
  %conv2.i184.i = zext i8 %374 to i16
  %381 = ptrtoint ptr %msg.i183.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %conv2.i184.i, ptr %msg.i183.i, align 4
  %flags.i185.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i183.i, i32 0, i32 1
  %382 = ptrtoint ptr %flags.i185.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 0, ptr %flags.i185.i, align 2
  %buf3.i187.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i183.i, i32 0, i32 3
  %383 = ptrtoint ptr %buf3.i187.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %buf.i182.i, ptr %buf3.i187.i, align 4
  %384 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %1, align 8
  %call.i188.i = call i32 @i2c_transfer(ptr noundef %385, ptr noundef nonnull %msg.i183.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i188.i)
  %cmp.not.i189.i = icmp eq i32 %call.i188.i, 1
  br i1 %cmp.not.i189.i, label %do.end156.i.cx24123_i2c_writereg.exit193.i_crit_edge, label %do.end.i191.i

do.end156.i.cx24123_i2c_writereg.exit193.i_crit_edge: ; preds = %do.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit193.i

do.end.i191.i:                                    ; preds = %do.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  %or160.i = zext i8 %375 to i32
  %call5.i190.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i188.i, i32 noundef 14, i32 noundef %or160.i) #12
  br label %cx24123_i2c_writereg.exit193.i

cx24123_i2c_writereg.exit193.i:                   ; preds = %do.end.i191.i, %do.end156.i.cx24123_i2c_writereg.exit193.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i183.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i182.i) #8
  %386 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %config, align 4
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %387, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i194.i) #8
  %390 = getelementptr inbounds [2 x i8], ptr %buf.i194.i, i32 0, i32 1
  %391 = ptrtoint ptr %buf.i194.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 15, ptr %buf.i194.i, align 1
  %392 = ptrtoint ptr %390 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 64, ptr %390, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i195.i) #8
  %393 = getelementptr inbounds i8, ptr %msg.i195.i, i32 4
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 196607, ptr %393, align 4
  %conv2.i196.i = zext i8 %389 to i16
  %395 = ptrtoint ptr %msg.i195.i to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 %conv2.i196.i, ptr %msg.i195.i, align 4
  %flags.i197.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195.i, i32 0, i32 1
  %396 = ptrtoint ptr %flags.i197.i to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 0, ptr %flags.i197.i, align 2
  %buf3.i199.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195.i, i32 0, i32 3
  %397 = ptrtoint ptr %buf3.i199.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %buf.i194.i, ptr %buf3.i199.i, align 4
  %398 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %1, align 8
  %call.i200.i = call i32 @i2c_transfer(ptr noundef %399, ptr noundef nonnull %msg.i195.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i200.i)
  %cmp.not.i201.i = icmp eq i32 %call.i200.i, 1
  br i1 %cmp.not.i201.i, label %cx24123_i2c_writereg.exit193.i.cx24123_i2c_writereg.exit205.i_crit_edge, label %do.end.i203.i

cx24123_i2c_writereg.exit193.i.cx24123_i2c_writereg.exit205.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit205.i

do.end.i203.i:                                    ; preds = %cx24123_i2c_writereg.exit193.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i202.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i200.i, i32 noundef 15, i32 noundef 64) #12
  br label %cx24123_i2c_writereg.exit205.i

cx24123_i2c_writereg.exit205.i:                   ; preds = %do.end.i203.i, %cx24123_i2c_writereg.exit193.i.cx24123_i2c_writereg.exit205.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i195.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i194.i) #8
  br label %cx24123_set_fec.exit

do.body166.i:                                     ; preds = %if.end20.i
  %400 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %400)
  %tobool167.not.i = icmp eq i32 %400, 0
  br i1 %tobool167.not.i, label %do.body166.i.do.end181.i_crit_edge, label %do.end171.i

do.body166.i.do.end181.i_crit_edge:               ; preds = %do.body166.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end181.i

do.end171.i:                                      ; preds = %do.body166.i
  call void @__sanitizer_cov_trace_pc() #10
  %call173.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #12
  %call178.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #12
  br label %do.end181.i

do.end181.i:                                      ; preds = %do.end171.i, %do.body166.i.do.end181.i_crit_edge
  %401 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %config, align 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %402, align 4
  %conv184.i = and i32 %retval.0.i.i110, 248
  %or185.i = or i32 %conv184.i, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i206.i) #8
  %405 = getelementptr inbounds [2 x i8], ptr %buf.i206.i, i32 0, i32 1
  %406 = ptrtoint ptr %buf.i206.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 14, ptr %buf.i206.i, align 1
  %conv1.i208.i = trunc i32 %or185.i to i8
  %407 = ptrtoint ptr %405 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %conv1.i208.i, ptr %405, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i207.i) #8
  %408 = getelementptr inbounds i8, ptr %msg.i207.i, i32 4
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 196607, ptr %408, align 4
  %conv2.i209.i = zext i8 %404 to i16
  %410 = ptrtoint ptr %msg.i207.i to i32
  call void @__asan_store2_noabort(i32 %410)
  store i16 %conv2.i209.i, ptr %msg.i207.i, align 4
  %flags.i210.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207.i, i32 0, i32 1
  %411 = ptrtoint ptr %flags.i210.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 0, ptr %flags.i210.i, align 2
  %buf3.i212.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207.i, i32 0, i32 3
  %412 = ptrtoint ptr %buf3.i212.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %buf.i206.i, ptr %buf3.i212.i, align 4
  %413 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %1, align 8
  %call.i213.i = call i32 @i2c_transfer(ptr noundef %414, ptr noundef nonnull %msg.i207.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i213.i)
  %cmp.not.i214.i = icmp eq i32 %call.i213.i, 1
  br i1 %cmp.not.i214.i, label %do.end181.i.cx24123_i2c_writereg.exit218.i_crit_edge, label %do.end.i216.i

do.end181.i.cx24123_i2c_writereg.exit218.i_crit_edge: ; preds = %do.end181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit218.i

do.end.i216.i:                                    ; preds = %do.end181.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i215.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i213.i, i32 noundef 14, i32 noundef %or185.i) #12
  br label %cx24123_i2c_writereg.exit218.i

cx24123_i2c_writereg.exit218.i:                   ; preds = %do.end.i216.i, %do.end181.i.cx24123_i2c_writereg.exit218.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i207.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i206.i) #8
  %415 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %config, align 4
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %416, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i219.i) #8
  %419 = getelementptr inbounds [2 x i8], ptr %buf.i219.i, i32 0, i32 1
  %420 = ptrtoint ptr %buf.i219.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 15, ptr %buf.i219.i, align 1
  %421 = ptrtoint ptr %419 to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 -128, ptr %419, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i220.i) #8
  %422 = getelementptr inbounds i8, ptr %msg.i220.i, i32 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 196607, ptr %422, align 4
  %conv2.i221.i = zext i8 %418 to i16
  %424 = ptrtoint ptr %msg.i220.i to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 %conv2.i221.i, ptr %msg.i220.i, align 4
  %flags.i222.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220.i, i32 0, i32 1
  %425 = ptrtoint ptr %flags.i222.i to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 0, ptr %flags.i222.i, align 2
  %buf3.i224.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220.i, i32 0, i32 3
  %426 = ptrtoint ptr %buf3.i224.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr %buf.i219.i, ptr %buf3.i224.i, align 4
  %427 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %1, align 8
  %call.i225.i = call i32 @i2c_transfer(ptr noundef %428, ptr noundef nonnull %msg.i220.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i225.i)
  %cmp.not.i226.i = icmp eq i32 %call.i225.i, 1
  br i1 %cmp.not.i226.i, label %cx24123_i2c_writereg.exit218.i.cx24123_i2c_writereg.exit230.i_crit_edge, label %do.end.i228.i

cx24123_i2c_writereg.exit218.i.cx24123_i2c_writereg.exit230.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit230.i

do.end.i228.i:                                    ; preds = %cx24123_i2c_writereg.exit218.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i227.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i225.i, i32 noundef 15, i32 noundef 128) #12
  br label %cx24123_i2c_writereg.exit230.i

cx24123_i2c_writereg.exit230.i:                   ; preds = %do.end.i228.i, %cx24123_i2c_writereg.exit218.i.cx24123_i2c_writereg.exit230.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i220.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i219.i) #8
  br label %cx24123_set_fec.exit

do.body191.i:                                     ; preds = %if.end20.i
  %429 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %429)
  %tobool192.not.i = icmp eq i32 %429, 0
  br i1 %tobool192.not.i, label %do.body191.i.do.end206.i_crit_edge, label %do.end196.i

do.body191.i.do.end206.i_crit_edge:               ; preds = %do.body191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end206.i

do.end196.i:                                      ; preds = %do.body191.i
  call void @__sanitizer_cov_trace_pc() #10
  %call198.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #12
  %call203.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  br label %do.end206.i

do.end206.i:                                      ; preds = %do.end196.i, %do.body191.i.do.end206.i_crit_edge
  %430 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %config, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %431, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i231.i) #8
  %434 = getelementptr inbounds [2 x i8], ptr %buf.i231.i, i32 0, i32 1
  %435 = ptrtoint ptr %buf.i231.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 15, ptr %buf.i231.i, align 1
  %436 = ptrtoint ptr %434 to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 -2, ptr %434, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i232.i) #8
  %437 = getelementptr inbounds i8, ptr %msg.i232.i, i32 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 196607, ptr %437, align 4
  %conv2.i233.i = zext i8 %433 to i16
  %439 = ptrtoint ptr %msg.i232.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 %conv2.i233.i, ptr %msg.i232.i, align 4
  %flags.i234.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i232.i, i32 0, i32 1
  %440 = ptrtoint ptr %flags.i234.i to i32
  call void @__asan_store2_noabort(i32 %440)
  store i16 0, ptr %flags.i234.i, align 2
  %buf3.i236.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i232.i, i32 0, i32 3
  %441 = ptrtoint ptr %buf3.i236.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %buf.i231.i, ptr %buf3.i236.i, align 4
  %442 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %1, align 8
  %call.i237.i = call i32 @i2c_transfer(ptr noundef %443, ptr noundef nonnull %msg.i232.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i237.i)
  %cmp.not.i238.i = icmp eq i32 %call.i237.i, 1
  br i1 %cmp.not.i238.i, label %do.end206.i.cx24123_i2c_writereg.exit242.i_crit_edge, label %do.end.i240.i

do.end206.i.cx24123_i2c_writereg.exit242.i_crit_edge: ; preds = %do.end206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit242.i

do.end.i240.i:                                    ; preds = %do.end206.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i239.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i237.i, i32 noundef 15, i32 noundef 254) #12
  br label %cx24123_i2c_writereg.exit242.i

cx24123_i2c_writereg.exit242.i:                   ; preds = %do.end.i240.i, %do.end206.i.cx24123_i2c_writereg.exit242.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i232.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i231.i) #8
  br label %cx24123_set_fec.exit

cx24123_set_fec.exit:                             ; preds = %cx24123_i2c_writereg.exit242.i, %cx24123_i2c_writereg.exit230.i, %cx24123_i2c_writereg.exit205.i, %cx24123_i2c_writereg.exit181.i, %cx24123_i2c_writereg.exit157.i, %cx24123_i2c_writereg.exit133.i, %cx24123_i2c_writereg.exit109.i, %cx24123_i2c_writereg.exit85.i, %if.end20.i.cx24123_set_fec.exit_crit_edge
  %444 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %symbol_rate, align 4
  %symbol_rate_max.i = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 6
  %446 = ptrtoint ptr %symbol_rate_max.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %symbol_rate_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %447, i32 %445)
  %cmp.i = icmp ult i32 %447, %445
  br i1 %cmp.i, label %cx24123_set_fec.exit.cx24123_set_symbolrate.exit_crit_edge, label %lor.lhs.false.i

cx24123_set_fec.exit.cx24123_set_symbolrate.exit_crit_edge: ; preds = %cx24123_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_set_symbolrate.exit

lor.lhs.false.i:                                  ; preds = %cx24123_set_fec.exit
  %symbol_rate_min.i = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 5
  %448 = ptrtoint ptr %symbol_rate_min.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %symbol_rate_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %449, i32 %445)
  %cmp4.i147 = icmp ugt i32 %449, %445
  br i1 %cmp4.i147, label %lor.lhs.false.i.cx24123_set_symbolrate.exit_crit_edge, label %if.end.i

lor.lhs.false.i.cx24123_set_symbolrate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_set_symbolrate.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10111000, i32 %445)
  %cmp5.i = icmp ult i32 %445, 10111000
  br i1 %cmp5.i, label %if.end.i.if.end31.i_crit_edge, label %if.else.i148

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else.i148:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15166500, i32 %445)
  %cmp7.i = icmp ult i32 %445, 15166500
  br i1 %cmp7.i, label %if.else.i148.if.end31.i_crit_edge, label %if.else9.i

if.else.i148.if.end31.i_crit_edge:                ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else9.i:                                       ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 20222000, i32 %445)
  %cmp10.i = icmp ult i32 %445, 20222000
  br i1 %cmp10.i, label %if.else9.i.if.end31.i_crit_edge, label %if.else12.i

if.else9.i.if.end31.i_crit_edge:                  ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else12.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25277500, i32 %445)
  %cmp13.i = icmp ult i32 %445, 25277500
  br i1 %cmp13.i, label %if.else12.i.if.end31.i_crit_edge, label %if.else15.i

if.else12.i.if.end31.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30333000, i32 %445)
  %cmp16.i = icmp ult i32 %445, 30333000
  br i1 %cmp16.i, label %if.else15.i.if.end31.i_crit_edge, label %if.else18.i

if.else15.i.if.end31.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 35388500, i32 %445)
  %cmp19.i = icmp ult i32 %445, 35388500
  br i1 %cmp19.i, label %if.else18.i.if.end31.i_crit_edge, label %if.else21.i

if.else18.i.if.end31.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 40444000, i32 %445)
  %cmp22.i = icmp ult i32 %445, 40444000
  %..i = select i1 %cmp22.i, i32 8, i32 9
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else21.i, %if.else18.i.if.end31.i_crit_edge, %if.else15.i.if.end31.i_crit_edge, %if.else12.i.if.end31.i_crit_edge, %if.else9.i.if.end31.i_crit_edge, %if.else.i148.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %pll_mult.0.i = phi i32 [ 2, %if.end.i.if.end31.i_crit_edge ], [ 3, %if.else.i148.if.end31.i_crit_edge ], [ 4, %if.else9.i.if.end31.i_crit_edge ], [ 5, %if.else12.i.if.end31.i_crit_edge ], [ 6, %if.else15.i.if.end31.i_crit_edge ], [ 7, %if.else18.i.if.end31.i_crit_edge ], [ %..i, %if.else21.i ]
  %mul.i = mul nuw nsw i32 %pll_mult.0.i, 10111000
  %conv32.i = zext i32 %445 to i64
  %shl.i = shl nuw nsw i64 %conv32.i, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %445)
  %cmp205.i = icmp ult i32 %445, 512
  br i1 %cmp205.i, label %if.then209.i, label %if.else215.i, !prof !315

if.then209.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv210.i = trunc i64 %shl.i to i32
  %div213.i = udiv i32 %conv210.i, %mul.i
  br label %if.end219.i

if.else215.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %450 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %shl.i) #13, !srcloc !316
  %asmresult1.i.i = extractvalue { i64, i64 } %450, 1
  %extract.t88.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.else215.i, %if.then209.i
  %tmp.0.off0.i = phi i32 [ %div213.i, %if.then209.i ], [ %extract.t88.i, %if.else215.i ]
  %451 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %config, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %452, align 4
  %mul223.i = mul nuw nsw i32 %pll_mult.0.i, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i145) #8
  %455 = getelementptr inbounds [2 x i8], ptr %buf.i.i145, i32 0, i32 1
  %456 = ptrtoint ptr %buf.i.i145 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 1, ptr %buf.i.i145, align 1
  %conv1.i.i151 = trunc i32 %mul223.i to i8
  %457 = ptrtoint ptr %455 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %conv1.i.i151, ptr %455, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i146) #8
  %458 = getelementptr inbounds i8, ptr %msg.i.i146, i32 4
  %459 = ptrtoint ptr %458 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 196607, ptr %458, align 4
  %conv2.i.i152 = zext i8 %454 to i16
  %460 = ptrtoint ptr %msg.i.i146 to i32
  call void @__asan_store2_noabort(i32 %460)
  store i16 %conv2.i.i152, ptr %msg.i.i146, align 4
  %flags.i.i153 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i146, i32 0, i32 1
  %461 = ptrtoint ptr %flags.i.i153 to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 0, ptr %flags.i.i153, align 2
  %buf3.i.i154 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i146, i32 0, i32 3
  %462 = ptrtoint ptr %buf3.i.i154 to i32
  call void @__asan_store4_noabort(i32 %462)
  store ptr %buf.i.i145, ptr %buf3.i.i154, align 4
  %463 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %1, align 8
  %call.i.i155 = call i32 @i2c_transfer(ptr noundef %464, ptr noundef nonnull %msg.i.i146, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i155)
  %cmp.not.i.i156 = icmp eq i32 %call.i.i155, 1
  br i1 %cmp.not.i.i156, label %if.end219.i.cx24123_i2c_writereg.exit.i159_crit_edge, label %do.end.i.i158

if.end219.i.cx24123_i2c_writereg.exit.i159_crit_edge: ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit.i159

do.end.i.i158:                                    ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i.i155, i32 noundef 1, i32 noundef %mul223.i) #12
  br label %cx24123_i2c_writereg.exit.i159

cx24123_i2c_writereg.exit.i159:                   ; preds = %do.end.i.i158, %if.end219.i.cx24123_i2c_writereg.exit.i159_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i146) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i145) #8
  %465 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %config, align 4
  %467 = ptrtoint ptr %466 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %466, align 4
  %shr227.i = lshr i32 %tmp.0.off0.i, 16
  %and228.i = and i32 %shr227.i, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3.i) #8
  %469 = getelementptr inbounds [2 x i8], ptr %buf.i3.i, i32 0, i32 1
  %470 = ptrtoint ptr %buf.i3.i to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 8, ptr %buf.i3.i, align 1
  %conv1.i5.i = trunc i32 %and228.i to i8
  %471 = ptrtoint ptr %469 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 %conv1.i5.i, ptr %469, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i) #8
  %472 = getelementptr inbounds i8, ptr %msg.i4.i, i32 4
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 196607, ptr %472, align 4
  %conv2.i6.i = zext i8 %468 to i16
  %474 = ptrtoint ptr %msg.i4.i to i32
  call void @__asan_store2_noabort(i32 %474)
  store i16 %conv2.i6.i, ptr %msg.i4.i, align 4
  %flags.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 1
  %475 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_store2_noabort(i32 %475)
  store i16 0, ptr %flags.i7.i, align 2
  %buf3.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 3
  %476 = ptrtoint ptr %buf3.i9.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %buf.i3.i, ptr %buf3.i9.i, align 4
  %477 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %1, align 8
  %call.i10.i = call i32 @i2c_transfer(ptr noundef %478, ptr noundef nonnull %msg.i4.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10.i)
  %cmp.not.i11.i = icmp eq i32 %call.i10.i, 1
  br i1 %cmp.not.i11.i, label %cx24123_i2c_writereg.exit.i159.cx24123_i2c_writereg.exit15.i_crit_edge, label %do.end.i13.i

cx24123_i2c_writereg.exit.i159.cx24123_i2c_writereg.exit15.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit15.i

do.end.i13.i:                                     ; preds = %cx24123_i2c_writereg.exit.i159
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i10.i, i32 noundef 8, i32 noundef %and228.i) #12
  br label %cx24123_i2c_writereg.exit15.i

cx24123_i2c_writereg.exit15.i:                    ; preds = %do.end.i13.i, %cx24123_i2c_writereg.exit.i159.cx24123_i2c_writereg.exit15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3.i) #8
  %479 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %config, align 4
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %480, align 4
  %shr232.i = lshr i32 %tmp.0.off0.i, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i16.i) #8
  %483 = getelementptr inbounds [2 x i8], ptr %buf.i16.i, i32 0, i32 1
  %484 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 9, ptr %buf.i16.i, align 1
  %conv1.i18.i = trunc i32 %shr232.i to i8
  %485 = ptrtoint ptr %483 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 %conv1.i18.i, ptr %483, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i17.i) #8
  %486 = getelementptr inbounds i8, ptr %msg.i17.i, i32 4
  %487 = ptrtoint ptr %486 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 196607, ptr %486, align 4
  %conv2.i19.i = zext i8 %482 to i16
  %488 = ptrtoint ptr %msg.i17.i to i32
  call void @__asan_store2_noabort(i32 %488)
  store i16 %conv2.i19.i, ptr %msg.i17.i, align 4
  %flags.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i, i32 0, i32 1
  %489 = ptrtoint ptr %flags.i20.i to i32
  call void @__asan_store2_noabort(i32 %489)
  store i16 0, ptr %flags.i20.i, align 2
  %buf3.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i, i32 0, i32 3
  %490 = ptrtoint ptr %buf3.i22.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store ptr %buf.i16.i, ptr %buf3.i22.i, align 4
  %491 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %1, align 8
  %call.i23.i = call i32 @i2c_transfer(ptr noundef %492, ptr noundef nonnull %msg.i17.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23.i)
  %cmp.not.i24.i = icmp eq i32 %call.i23.i, 1
  br i1 %cmp.not.i24.i, label %cx24123_i2c_writereg.exit15.i.cx24123_i2c_writereg.exit28.i_crit_edge, label %do.end.i26.i

cx24123_i2c_writereg.exit15.i.cx24123_i2c_writereg.exit28.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit28.i

do.end.i26.i:                                     ; preds = %cx24123_i2c_writereg.exit15.i
  call void @__sanitizer_cov_trace_pc() #10
  %and233.i = and i32 %shr232.i, 255
  %call5.i25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i23.i, i32 noundef 9, i32 noundef %and233.i) #12
  br label %cx24123_i2c_writereg.exit28.i

cx24123_i2c_writereg.exit28.i:                    ; preds = %do.end.i26.i, %cx24123_i2c_writereg.exit15.i.cx24123_i2c_writereg.exit28.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i17.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i16.i) #8
  %493 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %config, align 4
  %495 = ptrtoint ptr %494 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %494, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i29.i143) #8
  %497 = getelementptr inbounds [2 x i8], ptr %buf.i29.i143, i32 0, i32 1
  %498 = ptrtoint ptr %buf.i29.i143 to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 10, ptr %buf.i29.i143, align 1
  %conv1.i31.i160 = trunc i32 %tmp.0.off0.i to i8
  %499 = ptrtoint ptr %497 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %conv1.i31.i160, ptr %497, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i30.i144) #8
  %500 = getelementptr inbounds i8, ptr %msg.i30.i144, i32 4
  %501 = ptrtoint ptr %500 to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 196607, ptr %500, align 4
  %conv2.i32.i161 = zext i8 %496 to i16
  %502 = ptrtoint ptr %msg.i30.i144 to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 %conv2.i32.i161, ptr %msg.i30.i144, align 4
  %flags.i33.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30.i144, i32 0, i32 1
  %503 = ptrtoint ptr %flags.i33.i162 to i32
  call void @__asan_store2_noabort(i32 %503)
  store i16 0, ptr %flags.i33.i162, align 2
  %buf3.i35.i163 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30.i144, i32 0, i32 3
  %504 = ptrtoint ptr %buf3.i35.i163 to i32
  call void @__asan_store4_noabort(i32 %504)
  store ptr %buf.i29.i143, ptr %buf3.i35.i163, align 4
  %505 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %1, align 8
  %call.i36.i164 = call i32 @i2c_transfer(ptr noundef %506, ptr noundef nonnull %msg.i30.i144, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i36.i164)
  %cmp.not.i37.i165 = icmp eq i32 %call.i36.i164, 1
  br i1 %cmp.not.i37.i165, label %cx24123_i2c_writereg.exit28.i.cx24123_i2c_writereg.exit41.i168_crit_edge, label %do.end.i39.i167

cx24123_i2c_writereg.exit28.i.cx24123_i2c_writereg.exit41.i168_crit_edge: ; preds = %cx24123_i2c_writereg.exit28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit41.i168

do.end.i39.i167:                                  ; preds = %cx24123_i2c_writereg.exit28.i
  call void @__sanitizer_cov_trace_pc() #10
  %and237.i = and i32 %tmp.0.off0.i, 255
  %call5.i38.i166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i36.i164, i32 noundef 10, i32 noundef %and237.i) #12
  br label %cx24123_i2c_writereg.exit41.i168

cx24123_i2c_writereg.exit41.i168:                 ; preds = %do.end.i39.i167, %cx24123_i2c_writereg.exit28.i.cx24123_i2c_writereg.exit41.i168_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i30.i144) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i29.i143) #8
  %mul.i.frozen = freeze i32 %mul.i
  %.frozen = freeze i32 %445
  %div1.i.i = udiv i32 %mul.i.frozen, %.frozen
  %507 = mul i32 %div1.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %mul.i.frozen, %507
  %div216.i.i = lshr i32 %445, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.decomposed, i32 %div216.i.i)
  %cmp.not.i42.i = icmp uge i32 %rem.i.i.decomposed, %div216.i.i
  %inc.i.i = zext i1 %cmp.not.i42.i to i32
  %spec.select.i.i = add nuw nsw i32 %div1.i.i, %inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i)
  %cmp517.i.i = icmp ugt i32 %spec.select.i.i, 1
  br i1 %cmp517.i.i, label %cx24123_i2c_writereg.exit41.i168.for.body.i.i_crit_edge, label %cx24123_i2c_writereg.exit41.i168.cx24123_int_log2.exit.i_crit_edge

cx24123_i2c_writereg.exit41.i168.cx24123_int_log2.exit.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit41.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_int_log2.exit.i

cx24123_i2c_writereg.exit41.i168.for.body.i.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit41.i168
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %cx24123_i2c_writereg.exit41.i168.for.body.i.i_crit_edge
  %nearest.019.i.i = phi i32 [ %inc6.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %cx24123_i2c_writereg.exit41.i168.for.body.i.i_crit_edge ]
  %exp.018.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %cx24123_i2c_writereg.exit41.i168.for.body.i.i_crit_edge ]
  %add.i.i = shl i32 %exp.018.i.i, 1
  %inc6.i.i = add i32 %nearest.019.i.i, 1
  %cmp5.i.i = icmp ugt i32 %spec.select.i.i, %add.i.i
  br i1 %cmp5.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.cx24123_int_log2.exit.i_crit_edge

for.body.i.i.cx24123_int_log2.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_int_log2.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

cx24123_int_log2.exit.i:                          ; preds = %for.body.i.i.cx24123_int_log2.exit.i_crit_edge, %cx24123_i2c_writereg.exit41.i168.cx24123_int_log2.exit.i_crit_edge
  %nearest.0.lcssa.i.i = phi i32 [ 0, %cx24123_i2c_writereg.exit41.i168.cx24123_int_log2.exit.i_crit_edge ], [ %inc6.i.i, %for.body.i.i.cx24123_int_log2.exit.i_crit_edge ]
  %508 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %config, align 4
  %510 = ptrtoint ptr %509 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %509, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i140) #8
  %512 = ptrtoint ptr %reg.addr.i.i140 to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 12, ptr %reg.addr.i.i140, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i141) #8
  %513 = ptrtoint ptr %b.i.i141 to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 0, ptr %b.i.i141, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i43.i142) #8
  %514 = getelementptr inbounds i8, ptr %msg.i43.i142, i32 4
  %515 = call ptr @memset(ptr %514, i32 255, i32 16)
  %conv.i.i169 = zext i8 %511 to i16
  %516 = ptrtoint ptr %msg.i43.i142 to i32
  call void @__asan_store2_noabort(i32 %516)
  store i16 %conv.i.i169, ptr %msg.i43.i142, align 4
  %flags.i44.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i142, i32 0, i32 1
  %517 = ptrtoint ptr %flags.i44.i to i32
  call void @__asan_store2_noabort(i32 %517)
  store i16 0, ptr %flags.i44.i, align 2
  %518 = ptrtoint ptr %514 to i32
  call void @__asan_store2_noabort(i32 %518)
  store i16 1, ptr %514, align 4
  %buf.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i142, i32 0, i32 3
  %519 = ptrtoint ptr %buf.i46.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr %reg.addr.i.i140, ptr %buf.i46.i, align 4
  %arrayinit.element.i.i170 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i142, i32 1
  %520 = ptrtoint ptr %arrayinit.element.i.i170 to i32
  call void @__asan_store2_noabort(i32 %520)
  store i16 %conv.i.i169, ptr %arrayinit.element.i.i170, align 4
  %flags3.i.i171 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i142, i32 1, i32 1
  %521 = ptrtoint ptr %flags3.i.i171 to i32
  call void @__asan_store2_noabort(i32 %521)
  store i16 1, ptr %flags3.i.i171, align 2
  %len4.i.i172 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i142, i32 1, i32 2
  %522 = ptrtoint ptr %len4.i.i172 to i32
  call void @__asan_store2_noabort(i32 %522)
  store i16 1, ptr %len4.i.i172, align 4
  %buf5.i.i173 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i142, i32 1, i32 3
  %523 = ptrtoint ptr %buf5.i.i173 to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr %b.i.i141, ptr %buf5.i.i173, align 4
  %524 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %1, align 8
  %call.i47.i = call i32 @i2c_transfer(ptr noundef %525, ptr noundef nonnull %msg.i43.i142, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i47.i)
  %cmp.not.i48.i = icmp eq i32 %call.i47.i, 2
  br i1 %cmp.not.i48.i, label %if.end.i.i177, label %do.end.i49.i

do.end.i49.i:                                     ; preds = %cx24123_int_log2.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %526 = ptrtoint ptr %reg.addr.i.i140 to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %reg.addr.i.i140, align 1
  %conv8.i.i174 = zext i8 %527 to i32
  %call9.i.i175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i.i174, i32 noundef %call.i47.i) #12
  br label %cx24123_i2c_readreg.exit.i178

if.end.i.i177:                                    ; preds = %cx24123_int_log2.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %528 = ptrtoint ptr %b.i.i141 to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %b.i.i141, align 1
  %conv12.i.i176 = zext i8 %529 to i32
  br label %cx24123_i2c_readreg.exit.i178

cx24123_i2c_readreg.exit.i178:                    ; preds = %if.end.i.i177, %do.end.i49.i
  %retval.0.i50.i = phi i32 [ %call.i47.i, %do.end.i49.i ], [ %conv12.i.i176, %if.end.i.i177 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i43.i142) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i141) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i140) #8
  %and243.i = and i32 %retval.0.i50.i, -225
  %530 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %config, align 4
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %531, align 4
  %shl247.i = shl i32 %nearest.0.lcssa.i.i, 5
  %or249.i = or i32 %and243.i, %shl247.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i51.i) #8
  %534 = getelementptr inbounds [2 x i8], ptr %buf.i51.i, i32 0, i32 1
  %535 = ptrtoint ptr %buf.i51.i to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 12, ptr %buf.i51.i, align 1
  %conv1.i53.i = trunc i32 %or249.i to i8
  %536 = ptrtoint ptr %534 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 %conv1.i53.i, ptr %534, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i52.i) #8
  %537 = getelementptr inbounds i8, ptr %msg.i52.i, i32 4
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 196607, ptr %537, align 4
  %conv2.i54.i = zext i8 %533 to i16
  %539 = ptrtoint ptr %msg.i52.i to i32
  call void @__asan_store2_noabort(i32 %539)
  store i16 %conv2.i54.i, ptr %msg.i52.i, align 4
  %flags.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52.i, i32 0, i32 1
  %540 = ptrtoint ptr %flags.i55.i to i32
  call void @__asan_store2_noabort(i32 %540)
  store i16 0, ptr %flags.i55.i, align 2
  %buf3.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52.i, i32 0, i32 3
  %541 = ptrtoint ptr %buf3.i57.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store ptr %buf.i51.i, ptr %buf3.i57.i, align 4
  %542 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %1, align 8
  %call.i58.i = call i32 @i2c_transfer(ptr noundef %543, ptr noundef nonnull %msg.i52.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58.i)
  %cmp.not.i59.i = icmp eq i32 %call.i58.i, 1
  br i1 %cmp.not.i59.i, label %cx24123_i2c_readreg.exit.i178.cx24123_i2c_writereg.exit63.i_crit_edge, label %do.end.i61.i

cx24123_i2c_readreg.exit.i178.cx24123_i2c_writereg.exit63.i_crit_edge: ; preds = %cx24123_i2c_readreg.exit.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit63.i

do.end.i61.i:                                     ; preds = %cx24123_i2c_readreg.exit.i178
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i58.i, i32 noundef 12, i32 noundef %or249.i) #12
  br label %cx24123_i2c_writereg.exit63.i

cx24123_i2c_writereg.exit63.i:                    ; preds = %do.end.i61.i, %cx24123_i2c_readreg.exit.i178.cx24123_i2c_writereg.exit63.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i52.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i51.i) #8
  %544 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %544)
  %tobool252.not.i = icmp eq i32 %544, 0
  br i1 %tobool252.not.i, label %cx24123_i2c_writereg.exit63.i.cx24123_set_symbolrate.exit_crit_edge, label %do.end.i179

cx24123_i2c_writereg.exit63.i.cx24123_set_symbolrate.exit_crit_edge: ; preds = %cx24123_i2c_writereg.exit63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_set_symbolrate.exit

do.end.i179:                                      ; preds = %cx24123_i2c_writereg.exit63.i
  call void @__sanitizer_cov_trace_pc() #10
  %call256.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.92) #12
  %call261.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %445, i32 noundef %tmp.0.off0.i, i32 noundef %mul.i, i32 noundef %nearest.0.lcssa.i.i) #12
  br label %cx24123_set_symbolrate.exit

cx24123_set_symbolrate.exit:                      ; preds = %do.end.i179, %cx24123_i2c_writereg.exit63.i.cx24123_set_symbolrate.exit_crit_edge, %lor.lhs.false.i.cx24123_set_symbolrate.exit_crit_edge, %cx24123_set_fec.exit.cx24123_set_symbolrate.exit_crit_edge
  %545 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %config, align 4
  %dont_use_pll = getelementptr inbounds %struct.cx24123_config, ptr %546, i32 0, i32 3
  %547 = ptrtoint ptr %dont_use_pll to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %dont_use_pll, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %548)
  %tobool20.not = icmp eq i8 %548, 0
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %cx24123_set_symbolrate.exit
  %549 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %demodulator_priv, align 4
  %551 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %551)
  %tobool.not.i183 = icmp eq i32 %551, 0
  br i1 %tobool.not.i183, label %if.then21.do.end8.i_crit_edge, label %do.end.i185

if.then21.do.end8.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i185:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.96) #12
  %552 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %dtv_property_cache, align 4
  %call6.i184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %553) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i185, %if.then21.do.end8.i_crit_edge
  %554 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %demodulator_priv, align 4
  %VCAarg.i.i = getelementptr inbounds %struct.cx24123_state, ptr %555, i32 0, i32 3
  %556 = ptrtoint ptr %VCAarg.i.i to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 1052167, ptr %VCAarg.i.i, align 8
  %VGAarg.i.i = getelementptr inbounds %struct.cx24123_state, ptr %555, i32 0, i32 4
  %557 = ptrtoint ptr %VGAarg.i.i to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 721376, ptr %VGAarg.i.i, align 4
  %bandselectarg.i.i = getelementptr inbounds %struct.cx24123_state, ptr %555, i32 0, i32 5
  %558 = ptrtoint ptr %bandselectarg.i.i to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 64, ptr %bandselectarg.i.i, align 8
  %FILTune6.i.i = getelementptr inbounds %struct.cx24123_state, ptr %555, i32 0, i32 7
  %559 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %560)
  %cmp1.not.i.i = icmp ult i32 %560, 1000000
  br i1 %cmp1.not.i.i, label %do.end8.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.i.i

do.end8.i.for.inc.2.i.i_crit_edge:                ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

land.lhs.true.i.i:                                ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999999, i32 %560)
  %cmp3.not.i.i = icmp ugt i32 %560, 4999999
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge, label %for.inc.i.i

land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.1.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i
  %561 = ptrtoint ptr %VGAarg.i.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 721376, ptr %VGAarg.i.i, align 4
  %562 = ptrtoint ptr %FILTune6.i.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 639, ptr %FILTune6.i.i, align 8
  %563 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %563)
  %.pr.i.i = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %.pr.i.i)
  %cmp1.not.1.i.i = icmp ult i32 %.pr.i.i, 5000000
  br i1 %cmp1.not.1.i.i, label %for.inc.i.i.for.inc.2.i.i_crit_edge, label %for.inc.i.i.land.lhs.true.1.i.i_crit_edge

for.inc.i.i.land.lhs.true.1.i.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.1.i.i

for.inc.i.i.for.inc.2.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i.land.lhs.true.1.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge
  %564 = phi i32 [ %.pr.i.i, %for.inc.i.i.land.lhs.true.1.i.i_crit_edge ], [ %560, %land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14999999, i32 %564)
  %cmp3.not.1.i.i = icmp ugt i32 %564, 14999999
  br i1 %cmp3.not.1.i.i, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %565 = ptrtoint ptr %VCAarg.i.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 1052191, ptr %VCAarg.i.i, align 8
  %566 = ptrtoint ptr %VGAarg.i.i to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 721376, ptr %VGAarg.i.i, align 4
  %567 = ptrtoint ptr %FILTune6.i.i to i32
  call void @__asan_store4_noabort(i32 %567)
  store i32 791, ptr %FILTune6.i.i, align 8
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge
  %568 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %568)
  %.pr11.i.i = load i32, ptr %symbol_rate, align 4
  %569 = add i32 %.pr11.i.i, -45000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -30000001, i32 %569)
  %570 = icmp ult i32 %569, -30000001
  br i1 %570, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %571 = ptrtoint ptr %VCAarg.i.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 1052223, ptr %VCAarg.i.i, align 8
  %572 = ptrtoint ptr %VGAarg.i.i to i32
  call void @__asan_store4_noabort(i32 %572)
  store i32 655744, ptr %VGAarg.i.i, align 4
  %573 = ptrtoint ptr %FILTune6.i.i to i32
  call void @__asan_store4_noabort(i32 %573)
  store i32 325, ptr %FILTune6.i.i, align 8
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge, %for.inc.i.i.for.inc.2.i.i_crit_edge, %do.end8.i.for.inc.2.i.i_crit_edge
  %574 = load i32, ptr @force_band, align 4
  %575 = add i32 %574, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %575)
  %576 = icmp ult i32 %575, -9
  br i1 %576, label %for.cond10.preheader.i.i, label %if.else.i.i186

for.cond10.preheader.i.i:                         ; preds = %for.inc.2.i.i
  %577 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1075000, i32 %578)
  %cmp14.not.1.i.i = icmp ult i32 %578, 1075000
  br i1 %cmp14.not.1.i.i, label %for.cond10.preheader.i.i.cx24123_pll_calculate.exit.i_crit_edge, label %for.inc20.1.i.i

for.cond10.preheader.i.i.cx24123_pll_calculate.exit.i_crit_edge: ; preds = %for.cond10.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_pll_calculate.exit.i

for.inc20.1.i.i:                                  ; preds = %for.cond10.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1178000, i32 %578)
  %cmp17.not.1.i.i = icmp ult i32 %578, 1178000
  br i1 %cmp17.not.1.i.i, label %for.inc20.1.i.i.cx24123_pll_calculate.exit.i_crit_edge, label %for.inc20.2.i.i

for.inc20.1.i.i.cx24123_pll_calculate.exit.i_crit_edge: ; preds = %for.inc20.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_pll_calculate.exit.i

for.inc20.2.i.i:                                  ; preds = %for.inc20.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1295999, i32 %578)
  %cmp17.not.2.i.i = icmp ugt i32 %578, 1295999
  %spec.select.2.i.i = select i1 %cmp17.not.2.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296000, i32 %578)
  %cmp14.not.3.i.i = icmp ult i32 %578, 1296000
  br i1 %cmp14.not.3.i.i, label %for.inc20.2.i.i.cx24123_pll_calculate.exit.i_crit_edge, label %for.inc20.3.i.i

for.inc20.2.i.i.cx24123_pll_calculate.exit.i_crit_edge: ; preds = %for.inc20.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_pll_calculate.exit.i

for.inc20.3.i.i:                                  ; preds = %for.inc20.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431999, i32 %578)
  %cmp17.not.3.i.i = icmp ugt i32 %578, 1431999
  %spec.select.3.i.i = select i1 %cmp17.not.3.i.i, i32 %spec.select.2.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1432000, i32 %578)
  %cmp14.not.4.i.i = icmp ult i32 %578, 1432000
  br i1 %cmp14.not.4.i.i, label %for.inc20.3.i.i.cx24123_pll_calculate.exit.i_crit_edge, label %for.inc20.4.i.i

for.inc20.3.i.i.cx24123_pll_calculate.exit.i_crit_edge: ; preds = %for.inc20.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_pll_calculate.exit.i

for.inc20.4.i.i:                                  ; preds = %for.inc20.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1575999, i32 %578)
  %cmp17.not.4.i.i = icmp ugt i32 %578, 1575999
  %spec.select.4.i.i = select i1 %cmp17.not.4.i.i, i32 %spec.select.3.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1576000, i32 %578)
  %cmp14.not.5.i.i = icmp ult i32 %578, 1576000
  br i1 %cmp14.not.5.i.i, label %for.inc20.4.i.i.cx24123_pll_calculate.exit.i_crit_edge, label %for.inc20.5.i.i

for.inc20.4.i.i.cx24123_pll_calculate.exit.i_crit_edge: ; preds = %for.inc20.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_pll_calculate.exit.i

for.inc20.5.i.i:                                  ; preds = %for.inc20.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1717999, i32 %578)
  %cmp17.not.5.i.i = icmp ugt i32 %578, 1717999
  %spec.select.5.i.i = select i1 %cmp17.not.5.i.i, i32 %spec.select.4.i.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1718000, i32 %578)
  %cmp14.not.6.i.i = icmp ult i32 %578, 1718000
  br i1 %cmp14.not.6.i.i, label %for.inc20.5.i.i.cx24123_pll_calculate.exit.i_crit_edge, label %for.inc20.6.i.i

for.inc20.5.i.i.cx24123_pll_calculate.exit.i_crit_edge: ; preds = %for.inc20.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_pll_calculate.exit.i

for.inc20.6.i.i:                                  ; preds = %for.inc20.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1855999, i32 %578)
  %cmp17.not.6.i.i = icmp ugt i32 %578, 1855999
  %spec.select.6.i.i = select i1 %cmp17.not.6.i.i, i32 %spec.select.5.i.i, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1856000, i32 %578)
  %cmp14.not.7.i.i = icmp ult i32 %578, 1856000
  br i1 %cmp14.not.7.i.i, label %for.inc20.6.i.i.cx24123_pll_calculate.exit.i_crit_edge, label %for.inc20.7.i.i

for.inc20.6.i.i.cx24123_pll_calculate.exit.i_crit_edge: ; preds = %for.inc20.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_pll_calculate.exit.i

for.inc20.7.i.i:                                  ; preds = %for.inc20.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2035999, i32 %578)
  %cmp17.not.7.i.i = icmp ugt i32 %578, 2035999
  %spec.select.7.i.i = select i1 %cmp17.not.7.i.i, i32 %spec.select.6.i.i, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2036000, i32 %578)
  %cmp14.not.8.i.i = icmp ult i32 %578, 2036000
  br i1 %cmp14.not.8.i.i, label %for.inc20.7.i.i.cx24123_pll_calculate.exit.i_crit_edge, label %land.lhs.true15.8.i.i

for.inc20.7.i.i.cx24123_pll_calculate.exit.i_crit_edge: ; preds = %for.inc20.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_pll_calculate.exit.i

land.lhs.true15.8.i.i:                            ; preds = %for.inc20.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2150000, i32 %578)
  %cmp17.not.8.i.i = icmp ugt i32 %578, 2150000
  %spec.select.8.i.i = select i1 %cmp17.not.8.i.i, i32 %spec.select.7.i.i, i32 8
  br label %cx24123_pll_calculate.exit.i

if.else.i.i186:                                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add nsw i32 %574, -1
  br label %cx24123_pll_calculate.exit.i

cx24123_pll_calculate.exit.i:                     ; preds = %if.else.i.i186, %land.lhs.true15.8.i.i, %for.inc20.7.i.i.cx24123_pll_calculate.exit.i_crit_edge, %for.inc20.6.i.i.cx24123_pll_calculate.exit.i_crit_edge, %for.inc20.5.i.i.cx24123_pll_calculate.exit.i_crit_edge, %for.inc20.4.i.i.cx24123_pll_calculate.exit.i_crit_edge, %for.inc20.3.i.i.cx24123_pll_calculate.exit.i_crit_edge, %for.inc20.2.i.i.cx24123_pll_calculate.exit.i_crit_edge, %for.inc20.1.i.i.cx24123_pll_calculate.exit.i_crit_edge, %for.cond10.preheader.i.i.cx24123_pll_calculate.exit.i_crit_edge
  %band.2.i.i = phi i32 [ %sub.i.i, %if.else.i.i186 ], [ %spec.select.7.i.i, %for.inc20.7.i.i.cx24123_pll_calculate.exit.i_crit_edge ], [ %spec.select.8.i.i, %land.lhs.true15.8.i.i ], [ %spec.select.6.i.i, %for.inc20.6.i.i.cx24123_pll_calculate.exit.i_crit_edge ], [ %spec.select.5.i.i, %for.inc20.5.i.i.cx24123_pll_calculate.exit.i_crit_edge ], [ %spec.select.4.i.i, %for.inc20.4.i.i.cx24123_pll_calculate.exit.i_crit_edge ], [ %spec.select.3.i.i, %for.inc20.3.i.i.cx24123_pll_calculate.exit.i_crit_edge ], [ %spec.select.2.i.i, %for.inc20.2.i.i.cx24123_pll_calculate.exit.i_crit_edge ], [ 1, %for.inc20.1.i.i.cx24123_pll_calculate.exit.i_crit_edge ], [ 0, %for.cond10.preheader.i.i.cx24123_pll_calculate.exit.i_crit_edge ]
  %arrayidx24.i.i = getelementptr [9 x %struct.cx24123_bandselect_val], ptr @cx24123_bandselect_vals, i32 0, i32 %band.2.i.i
  %progdata.i.i = getelementptr [9 x %struct.cx24123_bandselect_val], ptr @cx24123_bandselect_vals, i32 0, i32 %band.2.i.i, i32 3
  %579 = ptrtoint ptr %progdata.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %progdata.i.i, align 4
  %581 = ptrtoint ptr %bandselectarg.i.i to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 %580, ptr %bandselectarg.i.i, align 8
  %VCOdivider.i.i = getelementptr [9 x %struct.cx24123_bandselect_val], ptr @cx24123_bandselect_vals, i32 0, i32 %band.2.i.i, i32 2
  %582 = ptrtoint ptr %VCOdivider.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %VCOdivider.i.i, align 4
  %584 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %dtv_property_cache, align 4
  %586 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %arrayidx24.i.i, align 4
  %freq_high31.i.i = getelementptr [9 x %struct.cx24123_bandselect_val], ptr @cx24123_bandselect_vals, i32 0, i32 %band.2.i.i, i32 1
  %588 = ptrtoint ptr %freq_high31.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %freq_high31.i.i, align 4
  %add.i.i187 = add i32 %589, %587
  %div1.i.i188 = lshr i32 %add.i.i187, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %585, i32 %div1.i.i188)
  %cmp32.i.i = icmp ult i32 %585, %div1.i.i188
  %..i.i = select i1 %cmp32.i.i, i32 2048000, i32 2064384
  %mul.i.i = mul i32 %583, 10
  %mul37.i.i = mul i32 %mul.i.i, %585
  %div38.i.i = udiv i32 %mul37.i.i, 20222
  %div39.i.i = udiv i32 %mul37.i.i, 647104
  %and.i.i189 = and i32 %div39.i.i, 511
  %rem.i.i190 = and i32 %div38.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i190)
  %cmp45.i.i = icmp eq i32 %rem.i.i190, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i189)
  %cmp47.not.i.i = icmp eq i32 %and.i.i189, 0
  %dec.i.i = add nsw i32 %and.i.i189, -1
  %spec.select2.i.i = select i1 %cmp47.not.i.i, i32 0, i32 %dec.i.i
  %ndiv.0.i.i = select i1 %cmp45.i.i, i32 %spec.select2.i.i, i32 %and.i.i189
  %shl50.i.i = shl nuw nsw i32 %ndiv.0.i.i, 5
  %or51.i.i = or i32 %..i.i, %rem.i.i190
  %or52.i.i = or i32 %or51.i.i, %shl50.i.i
  %pllarg.i.i = getelementptr inbounds %struct.cx24123_state, ptr %555, i32 0, i32 6
  %590 = ptrtoint ptr %pllarg.i.i to i32
  call void @__asan_store4_noabort(i32 %590)
  store i32 %or52.i.i, ptr %pllarg.i.i, align 4
  %VCAarg.i = getelementptr inbounds %struct.cx24123_state, ptr %550, i32 0, i32 3
  %591 = ptrtoint ptr %VCAarg.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %VCAarg.i, align 8
  call fastcc void @cx24123_pll_writereg(ptr noundef %fe, i32 noundef %592) #8
  %VGAarg.i = getelementptr inbounds %struct.cx24123_state, ptr %550, i32 0, i32 4
  %593 = ptrtoint ptr %VGAarg.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %VGAarg.i, align 4
  call fastcc void @cx24123_pll_writereg(ptr noundef %fe, i32 noundef %594) #8
  %bandselectarg.i = getelementptr inbounds %struct.cx24123_state, ptr %550, i32 0, i32 5
  %595 = ptrtoint ptr %bandselectarg.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %bandselectarg.i, align 8
  call fastcc void @cx24123_pll_writereg(ptr noundef %fe, i32 noundef %596) #8
  %pllarg.i = getelementptr inbounds %struct.cx24123_state, ptr %550, i32 0, i32 6
  %597 = ptrtoint ptr %pllarg.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %pllarg.i, align 4
  call fastcc void @cx24123_pll_writereg(ptr noundef %fe, i32 noundef %598) #8
  %config.i191 = getelementptr inbounds %struct.cx24123_state, ptr %550, i32 0, i32 1
  %599 = ptrtoint ptr %config.i191 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %config.i191, align 4
  %601 = ptrtoint ptr %600 to i32
  call void @__asan_load1_noabort(i32 %601)
  %602 = load i8, ptr %600, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i180) #8
  %603 = ptrtoint ptr %reg.addr.i.i180 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 40, ptr %reg.addr.i.i180, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i181) #8
  %604 = ptrtoint ptr %b.i.i181 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 0, ptr %b.i.i181, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i182) #8
  %605 = getelementptr inbounds i8, ptr %msg.i.i182, i32 4
  %606 = call ptr @memset(ptr %605, i32 255, i32 16)
  %conv.i.i192 = zext i8 %602 to i16
  %607 = ptrtoint ptr %msg.i.i182 to i32
  call void @__asan_store2_noabort(i32 %607)
  store i16 %conv.i.i192, ptr %msg.i.i182, align 4
  %flags.i.i193 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i182, i32 0, i32 1
  %608 = ptrtoint ptr %flags.i.i193 to i32
  call void @__asan_store2_noabort(i32 %608)
  store i16 0, ptr %flags.i.i193, align 2
  %609 = ptrtoint ptr %605 to i32
  call void @__asan_store2_noabort(i32 %609)
  store i16 1, ptr %605, align 4
  %buf.i.i194 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i182, i32 0, i32 3
  %610 = ptrtoint ptr %buf.i.i194 to i32
  call void @__asan_store4_noabort(i32 %610)
  store ptr %reg.addr.i.i180, ptr %buf.i.i194, align 4
  %arrayinit.element.i.i195 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i182, i32 1
  %611 = ptrtoint ptr %arrayinit.element.i.i195 to i32
  call void @__asan_store2_noabort(i32 %611)
  store i16 %conv.i.i192, ptr %arrayinit.element.i.i195, align 4
  %flags3.i.i196 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i182, i32 1, i32 1
  %612 = ptrtoint ptr %flags3.i.i196 to i32
  call void @__asan_store2_noabort(i32 %612)
  store i16 1, ptr %flags3.i.i196, align 2
  %len4.i.i197 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i182, i32 1, i32 2
  %613 = ptrtoint ptr %len4.i.i197 to i32
  call void @__asan_store2_noabort(i32 %613)
  store i16 1, ptr %len4.i.i197, align 4
  %buf5.i.i198 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i182, i32 1, i32 3
  %614 = ptrtoint ptr %buf5.i.i198 to i32
  call void @__asan_store4_noabort(i32 %614)
  store ptr %b.i.i181, ptr %buf5.i.i198, align 4
  %615 = ptrtoint ptr %550 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %550, align 8
  %call.i.i199 = call i32 @i2c_transfer(ptr noundef %616, ptr noundef nonnull %msg.i.i182, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i199)
  %cmp.not.i.i200 = icmp eq i32 %call.i.i199, 2
  br i1 %cmp.not.i.i200, label %if.end.i.i205, label %do.end.i.i203

do.end.i.i203:                                    ; preds = %cx24123_pll_calculate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %617 = ptrtoint ptr %reg.addr.i.i180 to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %reg.addr.i.i180, align 1
  %conv8.i.i201 = zext i8 %618 to i32
  %call9.i.i202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i.i201, i32 noundef %call.i.i199) #12
  br label %cx24123_i2c_readreg.exit.i212

if.end.i.i205:                                    ; preds = %cx24123_pll_calculate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %619 = ptrtoint ptr %b.i.i181 to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %b.i.i181, align 1
  %conv12.i.i204 = zext i8 %620 to i32
  br label %cx24123_i2c_readreg.exit.i212

cx24123_i2c_readreg.exit.i212:                    ; preds = %if.end.i.i205, %do.end.i.i203
  %retval.0.i.i206 = phi i32 [ %call.i.i199, %do.end.i.i203 ], [ %conv12.i.i204, %if.end.i.i205 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i182) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i181) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i180) #8
  %conv.i207 = and i32 %retval.0.i.i206, 252
  %621 = ptrtoint ptr %config.i191 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %config.i191, align 4
  %623 = ptrtoint ptr %622 to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %622, align 4
  %FILTune.i = getelementptr inbounds %struct.cx24123_state, ptr %550, i32 0, i32 7
  %625 = ptrtoint ptr %FILTune.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %FILTune.i, align 8
  %shr.i208 = lshr i32 %626, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #8
  %627 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %628 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 39, ptr %buf.i1.i, align 1
  %conv1.i.i209 = trunc i32 %shr.i208 to i8
  %629 = ptrtoint ptr %627 to i32
  call void @__asan_store1_noabort(i32 %629)
  store i8 %conv1.i.i209, ptr %627, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #8
  %630 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %631 = ptrtoint ptr %630 to i32
  call void @__asan_store4_noabort(i32 %631)
  store i32 196607, ptr %630, align 4
  %conv2.i.i210 = zext i8 %624 to i16
  %632 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %632)
  store i16 %conv2.i.i210, ptr %msg.i2.i, align 4
  %flags.i3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %633 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_store2_noabort(i32 %633)
  store i16 0, ptr %flags.i3.i, align 2
  %buf3.i.i211 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %634 = ptrtoint ptr %buf3.i.i211 to i32
  call void @__asan_store4_noabort(i32 %634)
  store ptr %buf.i1.i, ptr %buf3.i.i211, align 4
  %635 = ptrtoint ptr %550 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %550, align 8
  %call.i5.i = call i32 @i2c_transfer(ptr noundef %636, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i5.i)
  %cmp.not.i6.i = icmp eq i32 %call.i5.i, 1
  br i1 %cmp.not.i6.i, label %cx24123_i2c_readreg.exit.i212.cx24123_i2c_writereg.exit.i215_crit_edge, label %do.end.i7.i

cx24123_i2c_readreg.exit.i212.cx24123_i2c_writereg.exit.i215_crit_edge: ; preds = %cx24123_i2c_readreg.exit.i212
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit.i215

do.end.i7.i:                                      ; preds = %cx24123_i2c_readreg.exit.i212
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i5.i, i32 noundef 39, i32 noundef %shr.i208) #12
  br label %cx24123_i2c_writereg.exit.i215

cx24123_i2c_writereg.exit.i215:                   ; preds = %do.end.i7.i, %cx24123_i2c_readreg.exit.i212.cx24123_i2c_writereg.exit.i215_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #8
  %637 = ptrtoint ptr %config.i191 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %config.i191, align 4
  %639 = ptrtoint ptr %638 to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %638, align 4
  %641 = ptrtoint ptr %FILTune.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %FILTune.i, align 8
  %and32.i = and i32 %642, 3
  %or.i214 = or i32 %and32.i, %conv.i207
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i9.i) #8
  %643 = getelementptr inbounds [2 x i8], ptr %buf.i9.i, i32 0, i32 1
  %644 = ptrtoint ptr %buf.i9.i to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 40, ptr %buf.i9.i, align 1
  %conv1.i11.i = trunc i32 %or.i214 to i8
  %645 = ptrtoint ptr %643 to i32
  call void @__asan_store1_noabort(i32 %645)
  store i8 %conv1.i11.i, ptr %643, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i) #8
  %646 = getelementptr inbounds i8, ptr %msg.i10.i, i32 4
  %647 = ptrtoint ptr %646 to i32
  call void @__asan_store4_noabort(i32 %647)
  store i32 196607, ptr %646, align 4
  %conv2.i12.i = zext i8 %640 to i16
  %648 = ptrtoint ptr %msg.i10.i to i32
  call void @__asan_store2_noabort(i32 %648)
  store i16 %conv2.i12.i, ptr %msg.i10.i, align 4
  %flags.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 1
  %649 = ptrtoint ptr %flags.i13.i to i32
  call void @__asan_store2_noabort(i32 %649)
  store i16 0, ptr %flags.i13.i, align 2
  %buf3.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 3
  %650 = ptrtoint ptr %buf3.i15.i to i32
  call void @__asan_store4_noabort(i32 %650)
  store ptr %buf.i9.i, ptr %buf3.i15.i, align 4
  %651 = ptrtoint ptr %550 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %550, align 8
  %call.i16.i = call i32 @i2c_transfer(ptr noundef %652, ptr noundef nonnull %msg.i10.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i16.i)
  %cmp.not.i17.i = icmp eq i32 %call.i16.i, 1
  br i1 %cmp.not.i17.i, label %cx24123_i2c_writereg.exit.i215.cx24123_i2c_writereg.exit21.i_crit_edge, label %do.end.i19.i

cx24123_i2c_writereg.exit.i215.cx24123_i2c_writereg.exit21.i_crit_edge: ; preds = %cx24123_i2c_writereg.exit.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit21.i

do.end.i19.i:                                     ; preds = %cx24123_i2c_writereg.exit.i215
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i16.i, i32 noundef 40, i32 noundef %or.i214) #12
  br label %cx24123_i2c_writereg.exit21.i

cx24123_i2c_writereg.exit21.i:                    ; preds = %do.end.i19.i, %cx24123_i2c_writereg.exit.i215.cx24123_i2c_writereg.exit21.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i9.i) #8
  %653 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %653)
  %tobool35.not.i = icmp eq i32 %653, 0
  br i1 %tobool35.not.i, label %cx24123_i2c_writereg.exit21.i.if.end39_crit_edge, label %do.end39.i

cx24123_i2c_writereg.exit21.i.if.end39_crit_edge: ; preds = %cx24123_i2c_writereg.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.end39.i:                                       ; preds = %cx24123_i2c_writereg.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.96) #12
  %654 = ptrtoint ptr %VCAarg.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %VCAarg.i, align 8
  %656 = ptrtoint ptr %bandselectarg.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %bandselectarg.i, align 8
  %658 = ptrtoint ptr %pllarg.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %pllarg.i, align 4
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %655, i32 noundef %657, i32 noundef %659) #12
  br label %if.end39

if.else:                                          ; preds = %cx24123_set_symbolrate.exit
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %660 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %set_params, align 4
  %tobool23.not = icmp eq ptr %661, null
  br i1 %tobool23.not, label %do.end33, label %if.then24

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call i32 %661(ptr noundef %fe) #8
  br label %if.end39

do.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end33, %if.then24, %do.end39.i, %cx24123_i2c_writereg.exit21.i.if.end39_crit_edge
  %662 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %config, align 4
  %664 = ptrtoint ptr %663 to i32
  call void @__asan_load1_noabort(i32 %664)
  %665 = load i8, ptr %663, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %666 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %666)
  store i8 3, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %667 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %668 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %669 = call ptr @memset(ptr %668, i32 255, i32 16)
  %conv.i216 = zext i8 %665 to i16
  %670 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %670)
  store i16 %conv.i216, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %671 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %671)
  store i16 0, ptr %flags.i, align 2
  %672 = ptrtoint ptr %668 to i32
  call void @__asan_store2_noabort(i32 %672)
  store i16 1, ptr %668, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %673 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %673)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %674 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %674)
  store i16 %conv.i216, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %675 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %675)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %676 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %676)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %677 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %677)
  store ptr %b.i, ptr %buf5.i, align 4
  %678 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %1, align 8
  %call.i217 = call i32 @i2c_transfer(ptr noundef %679, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i217)
  %cmp.not.i = icmp eq i32 %call.i217, 2
  br i1 %cmp.not.i, label %if.end.i219, label %do.end.i218

do.end.i218:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %680 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %680)
  %681 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %681 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i217) #12
  br label %cx24123_i2c_readreg.exit

if.end.i219:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %682 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %683 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i219, %do.end.i218
  %retval.0.i = phi i32 [ %call.i217, %do.end.i218 ], [ %conv12.i, %if.end.i219 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %or = or i32 %retval.0.i, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i220) #8
  %684 = getelementptr inbounds [2 x i8], ptr %buf.i220, i32 0, i32 1
  %685 = ptrtoint ptr %buf.i220 to i32
  call void @__asan_store1_noabort(i32 %685)
  store i8 3, ptr %buf.i220, align 1
  %conv1.i = trunc i32 %or to i8
  %686 = ptrtoint ptr %684 to i32
  call void @__asan_store1_noabort(i32 %686)
  store i8 %conv1.i, ptr %684, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i221) #8
  %687 = getelementptr inbounds i8, ptr %msg.i221, i32 4
  %688 = ptrtoint ptr %687 to i32
  call void @__asan_store4_noabort(i32 %688)
  store i32 196607, ptr %687, align 4
  %689 = ptrtoint ptr %msg.i221 to i32
  call void @__asan_store2_noabort(i32 %689)
  store i16 %conv.i216, ptr %msg.i221, align 4
  %flags.i222 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 0, i32 1
  %690 = ptrtoint ptr %flags.i222 to i32
  call void @__asan_store2_noabort(i32 %690)
  store i16 0, ptr %flags.i222, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 0, i32 3
  %691 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %691)
  store ptr %buf.i220, ptr %buf3.i, align 4
  %692 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %1, align 8
  %call.i224 = call i32 @i2c_transfer(ptr noundef %693, ptr noundef nonnull %msg.i221, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i224)
  %cmp.not.i225 = icmp eq i32 %call.i224, 1
  br i1 %cmp.not.i225, label %cx24123_i2c_readreg.exit.cx24123_i2c_writereg.exit_crit_edge, label %do.end.i226

cx24123_i2c_readreg.exit.cx24123_i2c_writereg.exit_crit_edge: ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit

do.end.i226:                                      ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i224, i32 noundef 3, i32 noundef %or) #12
  br label %cx24123_i2c_writereg.exit

cx24123_i2c_writereg.exit:                        ; preds = %do.end.i226, %cx24123_i2c_readreg.exit.cx24123_i2c_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i221) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i220) #8
  %694 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %config, align 4
  %696 = ptrtoint ptr %695 to i32
  call void @__asan_load1_noabort(i32 %696)
  %697 = load i8, ptr %695, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i228) #8
  %698 = getelementptr inbounds [2 x i8], ptr %buf.i228, i32 0, i32 1
  %699 = ptrtoint ptr %buf.i228 to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 0, ptr %buf.i228, align 1
  %700 = ptrtoint ptr %698 to i32
  call void @__asan_store1_noabort(i32 %700)
  store i8 16, ptr %698, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i229) #8
  %701 = getelementptr inbounds i8, ptr %msg.i229, i32 4
  %702 = ptrtoint ptr %701 to i32
  call void @__asan_store4_noabort(i32 %702)
  store i32 196607, ptr %701, align 4
  %conv2.i230 = zext i8 %697 to i16
  %703 = ptrtoint ptr %msg.i229 to i32
  call void @__asan_store2_noabort(i32 %703)
  store i16 %conv2.i230, ptr %msg.i229, align 4
  %flags.i231 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i229, i32 0, i32 1
  %704 = ptrtoint ptr %flags.i231 to i32
  call void @__asan_store2_noabort(i32 %704)
  store i16 0, ptr %flags.i231, align 2
  %buf3.i233 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i229, i32 0, i32 3
  %705 = ptrtoint ptr %buf3.i233 to i32
  call void @__asan_store4_noabort(i32 %705)
  store ptr %buf.i228, ptr %buf3.i233, align 4
  %706 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %1, align 8
  %call.i234 = call i32 @i2c_transfer(ptr noundef %707, ptr noundef nonnull %msg.i229, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i234)
  %cmp.not.i235 = icmp eq i32 %call.i234, 1
  br i1 %cmp.not.i235, label %cx24123_i2c_writereg.exit.cx24123_i2c_writereg.exit239_crit_edge, label %do.end.i237

cx24123_i2c_writereg.exit.cx24123_i2c_writereg.exit239_crit_edge: ; preds = %cx24123_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit239

do.end.i237:                                      ; preds = %cx24123_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i234, i32 noundef 0, i32 noundef 16) #12
  br label %cx24123_i2c_writereg.exit239

cx24123_i2c_writereg.exit239:                     ; preds = %do.end.i237, %cx24123_i2c_writereg.exit.cx24123_i2c_writereg.exit239_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i229) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i228) #8
  %708 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %config, align 4
  %710 = ptrtoint ptr %709 to i32
  call void @__asan_load1_noabort(i32 %710)
  %711 = load i8, ptr %709, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i240) #8
  %712 = getelementptr inbounds [2 x i8], ptr %buf.i240, i32 0, i32 1
  %713 = ptrtoint ptr %buf.i240 to i32
  call void @__asan_store1_noabort(i32 %713)
  store i8 0, ptr %buf.i240, align 1
  %714 = ptrtoint ptr %712 to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 0, ptr %712, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i241) #8
  %715 = getelementptr inbounds i8, ptr %msg.i241, i32 4
  %716 = ptrtoint ptr %715 to i32
  call void @__asan_store4_noabort(i32 %716)
  store i32 196607, ptr %715, align 4
  %conv2.i242 = zext i8 %711 to i16
  %717 = ptrtoint ptr %msg.i241 to i32
  call void @__asan_store2_noabort(i32 %717)
  store i16 %conv2.i242, ptr %msg.i241, align 4
  %flags.i243 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241, i32 0, i32 1
  %718 = ptrtoint ptr %flags.i243 to i32
  call void @__asan_store2_noabort(i32 %718)
  store i16 0, ptr %flags.i243, align 2
  %buf3.i245 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241, i32 0, i32 3
  %719 = ptrtoint ptr %buf3.i245 to i32
  call void @__asan_store4_noabort(i32 %719)
  store ptr %buf.i240, ptr %buf3.i245, align 4
  %720 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %1, align 8
  %call.i246 = call i32 @i2c_transfer(ptr noundef %721, ptr noundef nonnull %msg.i241, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i246)
  %cmp.not.i247 = icmp eq i32 %call.i246, 1
  br i1 %cmp.not.i247, label %cx24123_i2c_writereg.exit239.cx24123_i2c_writereg.exit251_crit_edge, label %do.end.i249

cx24123_i2c_writereg.exit239.cx24123_i2c_writereg.exit251_crit_edge: ; preds = %cx24123_i2c_writereg.exit239
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit251

do.end.i249:                                      ; preds = %cx24123_i2c_writereg.exit239
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i246, i32 noundef 0, i32 noundef 0) #12
  br label %cx24123_i2c_writereg.exit251

cx24123_i2c_writereg.exit251:                     ; preds = %do.end.i249, %cx24123_i2c_writereg.exit239.cx24123_i2c_writereg.exit251_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i241) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i240) #8
  %722 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %config, align 4
  %agc_callback = getelementptr inbounds %struct.cx24123_config, ptr %723, i32 0, i32 4
  %724 = ptrtoint ptr %agc_callback to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %agc_callback, align 4
  %tobool52.not = icmp eq ptr %725, null
  br i1 %tobool52.not, label %cx24123_i2c_writereg.exit251.if.end56_crit_edge, label %if.then53

cx24123_i2c_writereg.exit251.if.end56_crit_edge:  ; preds = %cx24123_i2c_writereg.exit251
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then53:                                        ; preds = %cx24123_i2c_writereg.exit251
  call void @__sanitizer_cov_trace_pc() #10
  call void %725(ptr noundef %fe) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %cx24123_i2c_writereg.exit251.if.end56_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #2 align 64 {
entry:
  %reg.addr.i.i38 = alloca i8, align 1
  %b.i.i39 = alloca i8, align 1
  %msg.i.i40 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i = alloca i8, align 1
  %b.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.120) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %config.i = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %7 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 27, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i) #8
  %8 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %b.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %conv.i.i = zext i8 %6 to i16
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags3.i.i, align 2
  %len4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len4.i.i, align 4
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b.i.i, ptr %buf5.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i.i, align 1
  %conv8.i.i = zext i8 %22 to i32
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i.i, i32 noundef %call.i.i) #12
  br label %cx24123_i2c_readreg.exit.i

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b.i.i, align 1
  %conv12.i.i = zext i8 %24 to i32
  br label %cx24123_i2c_readreg.exit.i

cx24123_i2c_readreg.exit.i:                       ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %conv12.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %25 = and i32 %retval.0.i.i, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %cx24123_i2c_readreg.exit.i.cx24123_get_inversion.exit_crit_edge, label %if.end29.sink.split.i

cx24123_i2c_readreg.exit.i.cx24123_get_inversion.exit_crit_edge: ; preds = %cx24123_i2c_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_get_inversion.exit

if.end29.sink.split.i:                            ; preds = %cx24123_i2c_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %.str.131..str.136.i = select i1 %cmp.i, ptr @.str.131, ptr @.str.136
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.129) #12
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.131..str.136.i) #12
  br label %cx24123_get_inversion.exit

cx24123_get_inversion.exit:                       ; preds = %if.end29.sink.split.i, %cx24123_i2c_readreg.exit.i.cx24123_get_inversion.exit_crit_edge
  %not.cmp.i = xor i1 %cmp.i, true
  %..i = zext i1 %not.cmp.i to i32
  %27 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %..i, ptr %inversion, align 4
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i38) #8
  %32 = ptrtoint ptr %reg.addr.i.i38 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 27, ptr %reg.addr.i.i38, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i39) #8
  %33 = ptrtoint ptr %b.i.i39 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %b.i.i39, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i40) #8
  %34 = getelementptr inbounds i8, ptr %msg.i.i40, i32 4
  %35 = call ptr @memset(ptr %34, i32 255, i32 16)
  %conv.i.i42 = zext i8 %31 to i16
  %36 = ptrtoint ptr %msg.i.i40 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i42, ptr %msg.i.i40, align 4
  %flags.i.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i40, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i.i43 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i.i43, align 2
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %34, align 4
  %buf.i.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i40, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i.i44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %reg.addr.i.i38, ptr %buf.i.i44, align 4
  %arrayinit.element.i.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i40, i32 1
  %40 = ptrtoint ptr %arrayinit.element.i.i45 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i42, ptr %arrayinit.element.i.i45, align 4
  %flags3.i.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i40, i32 1, i32 1
  %41 = ptrtoint ptr %flags3.i.i46 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags3.i.i46, align 2
  %len4.i.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i40, i32 1, i32 2
  %42 = ptrtoint ptr %len4.i.i47 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len4.i.i47, align 4
  %buf5.i.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i40, i32 1, i32 3
  %43 = ptrtoint ptr %buf5.i.i48 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b.i.i39, ptr %buf5.i.i48, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %call.i.i49 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i.i40, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i49)
  %cmp.not.i.i50 = icmp eq i32 %call.i.i49, 2
  br i1 %cmp.not.i.i50, label %cx24123_i2c_readreg.exit.thread.i, label %cx24123_i2c_readreg.exit.i55

cx24123_i2c_readreg.exit.thread.i:                ; preds = %cx24123_get_inversion.exit
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %b.i.i39 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b.i.i39, align 1
  %conv12.i.i51 = zext i8 %47 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i40) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i39) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i38) #8
  br label %if.end.i

cx24123_i2c_readreg.exit.i55:                     ; preds = %cx24123_get_inversion.exit
  %48 = ptrtoint ptr %reg.addr.i.i38 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reg.addr.i.i38, align 1
  %conv8.i.i52 = zext i8 %49 to i32
  %call9.i.i53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i.i52, i32 noundef %call.i.i49) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i40) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i39) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp.i54 = icmp slt i32 %call.i.i49, 0
  br i1 %cmp.i54, label %do.end26, label %cx24123_i2c_readreg.exit.i55.if.end.i_crit_edge

cx24123_i2c_readreg.exit.i55.if.end.i_crit_edge:  ; preds = %cx24123_i2c_readreg.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %cx24123_i2c_readreg.exit.i55.if.end.i_crit_edge, %cx24123_i2c_readreg.exit.thread.i
  %retval.0.i20.i = phi i32 [ %conv12.i.i51, %cx24123_i2c_readreg.exit.thread.i ], [ %call.i.i49, %cx24123_i2c_readreg.exit.i55.if.end.i_crit_edge ]
  %and.i = and i32 %retval.0.i20.i, 7
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %50 = icmp ult i32 %switch.tableidx, 7
  %.sink.i = select i1 %50, i32 %and.i, i32 0
  %51 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink.i, ptr %fec_inner, align 4
  %currentfreq = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 10
  %52 = ptrtoint ptr %currentfreq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %currentfreq, align 4
  %54 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %p, align 4
  %currentsymbolrate = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 11
  %55 = ptrtoint ptr %currentsymbolrate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %currentsymbolrate, align 8
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %57 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %symbol_rate, align 4
  br label %cleanup

do.end26:                                         ; preds = %cx24123_i2c_readreg.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.120) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end.i
  %retval.0 = phi i32 [ -121, %do.end26 ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_read_status(ptr noundef %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %reg.addr.i56 = alloca i8, align 1
  %b.i57 = alloca i8, align 1
  %msg.i58 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %tun_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 20, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.i, ptr %buf5.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %21 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %23 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %status, align 4
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config, align 4
  %dont_use_pll = getelementptr inbounds %struct.cx24123_config, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dont_use_pll to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dont_use_pll, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %cx24123_i2c_readreg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tun_status) #8
  %29 = ptrtoint ptr %tun_status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tun_status, align 4
  %get_status = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 12
  %30 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_status, align 4
  %tobool2.not = icmp eq ptr %31, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 %31(ptr noundef %fe, ptr noundef nonnull %tun_status) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %32 = ptrtoint ptr %tun_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tun_status, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %or = or i32 %35, 1
  store i32 %or, ptr %status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tun_status) #8
  br label %if.end19

if.else:                                          ; preds = %cx24123_i2c_readreg.exit
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i56)
  %38 = ptrtoint ptr %reg.addr.i56 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 32, ptr %reg.addr.i56, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i57) #8
  %39 = ptrtoint ptr %b.i57 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b.i57, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i58) #8
  %40 = getelementptr inbounds i8, ptr %msg.i58, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %conv.i59 = zext i8 %37 to i16
  %42 = ptrtoint ptr %msg.i58 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i59, ptr %msg.i58, align 4
  %flags.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i60 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i60, align 2
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %40, align 4
  %buf.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 3
  %45 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %reg.addr.i56, ptr %buf.i62, align 4
  %arrayinit.element.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 1
  %46 = ptrtoint ptr %arrayinit.element.i63 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i59, ptr %arrayinit.element.i63, align 4
  %flags3.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 1, i32 1
  %47 = ptrtoint ptr %flags3.i64 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %flags3.i64, align 2
  %len4.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 1, i32 2
  %48 = ptrtoint ptr %len4.i65 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %len4.i65, align 4
  %buf5.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 1, i32 3
  %49 = ptrtoint ptr %buf5.i66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %b.i57, ptr %buf5.i66, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %call.i67 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i58, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i67)
  %cmp.not.i68 = icmp eq i32 %call.i67, 2
  br i1 %cmp.not.i68, label %if.end.i73, label %do.end.i71

do.end.i71:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %reg.addr.i56 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %reg.addr.i56, align 1
  %conv8.i69 = zext i8 %53 to i32
  %call9.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i69, i32 noundef %call.i67) #12
  br label %cx24123_i2c_readreg.exit75

if.end.i73:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %b.i57 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b.i57, align 1
  %conv12.i72 = zext i8 %55 to i32
  br label %cx24123_i2c_readreg.exit75

cx24123_i2c_readreg.exit75:                       ; preds = %if.end.i73, %do.end.i71
  %retval.0.i74 = phi i32 [ %call.i67, %do.end.i71 ], [ %conv12.i72, %if.end.i73 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i58) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i57) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i56)
  %and14 = and i32 %retval.0.i74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %cx24123_i2c_readreg.exit75.if.end19_crit_edge, label %if.then16

cx24123_i2c_readreg.exit75.if.end19_crit_edge:    ; preds = %cx24123_i2c_readreg.exit75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %cx24123_i2c_readreg.exit75
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status, align 4
  %or17 = or i32 %57, 1
  store i32 %or17, ptr %status, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %cx24123_i2c_readreg.exit75.if.end19_crit_edge, %if.end10
  %and20 = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status, align 4
  %or23 = or i32 %59, 2
  store i32 %or23, ptr %status, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %and25 = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %status, align 4
  %or28 = or i32 %61, 4
  store i32 %or28, ptr %status, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  %and30 = and i32 %retval.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %status, align 4
  %or33 = or i32 %63, 8
  store i32 %or33, ptr %status, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %and35 = and i32 %retval.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.then37

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status, align 4
  %or38 = or i32 %65, 16
  store i32 %or38, ptr %status, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef %ber) #2 align 64 {
entry:
  %reg.addr.i44 = alloca i8, align 1
  %b.i45 = alloca i8, align 1
  %msg.i46 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i24 = alloca i8, align 1
  %b.i25 = alloca i8, align 1
  %msg.i26 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 28, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.i, ptr %buf5.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %21 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %23 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %and = shl i32 %retval.0.i, 16
  %shl = and i32 %and, 4128768
  %24 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i24)
  %28 = ptrtoint ptr %reg.addr.i24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 29, ptr %reg.addr.i24, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i25) #8
  %29 = ptrtoint ptr %b.i25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %b.i25, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i26) #8
  %30 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %conv.i27 = zext i8 %27 to i16
  %32 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i27, ptr %msg.i26, align 4
  %flags.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i28, align 2
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %30, align 4
  %buf.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %reg.addr.i24, ptr %buf.i30, align 4
  %arrayinit.element.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 1
  %36 = ptrtoint ptr %arrayinit.element.i31 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i27, ptr %arrayinit.element.i31, align 4
  %flags3.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 1, i32 1
  %37 = ptrtoint ptr %flags3.i32 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags3.i32, align 2
  %len4.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 1, i32 2
  %38 = ptrtoint ptr %len4.i33 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len4.i33, align 4
  %buf5.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 1, i32 3
  %39 = ptrtoint ptr %buf5.i34 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b.i25, ptr %buf5.i34, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %call.i35 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i26, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 2
  br i1 %cmp.not.i36, label %if.end.i41, label %do.end.i39

do.end.i39:                                       ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %reg.addr.i24 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reg.addr.i24, align 1
  %conv8.i37 = zext i8 %43 to i32
  %call9.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i37, i32 noundef %call.i35) #12
  br label %cx24123_i2c_readreg.exit43

if.end.i41:                                       ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %b.i25 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b.i25, align 1
  %conv12.i40 = zext i8 %45 to i32
  br label %cx24123_i2c_readreg.exit43

cx24123_i2c_readreg.exit43:                       ; preds = %if.end.i41, %do.end.i39
  %retval.0.i42 = phi i32 [ %call.i35, %do.end.i39 ], [ %conv12.i40, %if.end.i41 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i26) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i25) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i24)
  %shl4 = shl i32 %retval.0.i42, 8
  %46 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i44)
  %50 = ptrtoint ptr %reg.addr.i44 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 30, ptr %reg.addr.i44, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i45) #8
  %51 = ptrtoint ptr %b.i45 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %b.i45, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i46) #8
  %52 = getelementptr inbounds i8, ptr %msg.i46, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 16)
  %conv.i47 = zext i8 %49 to i16
  %54 = ptrtoint ptr %msg.i46 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i47, ptr %msg.i46, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i48, align 2
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %52, align 4
  %buf.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46, i32 0, i32 3
  %57 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %reg.addr.i44, ptr %buf.i50, align 4
  %arrayinit.element.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46, i32 1
  %58 = ptrtoint ptr %arrayinit.element.i51 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i47, ptr %arrayinit.element.i51, align 4
  %flags3.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46, i32 1, i32 1
  %59 = ptrtoint ptr %flags3.i52 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %flags3.i52, align 2
  %len4.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46, i32 1, i32 2
  %60 = ptrtoint ptr %len4.i53 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %len4.i53, align 4
  %buf5.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46, i32 1, i32 3
  %61 = ptrtoint ptr %buf5.i54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b.i45, ptr %buf5.i54, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %call.i55 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i46, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i55)
  %cmp.not.i56 = icmp eq i32 %call.i55, 2
  br i1 %cmp.not.i56, label %if.end.i61, label %do.end.i59

do.end.i59:                                       ; preds = %cx24123_i2c_readreg.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %reg.addr.i44 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %reg.addr.i44, align 1
  %conv8.i57 = zext i8 %65 to i32
  %call9.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i57, i32 noundef %call.i55) #12
  br label %cx24123_i2c_readreg.exit63

if.end.i61:                                       ; preds = %cx24123_i2c_readreg.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %b.i45 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %b.i45, align 1
  %conv12.i60 = zext i8 %67 to i32
  br label %cx24123_i2c_readreg.exit63

cx24123_i2c_readreg.exit63:                       ; preds = %if.end.i61, %do.end.i59
  %retval.0.i62 = phi i32 [ %call.i55, %do.end.i59 ], [ %conv12.i60, %if.end.i61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i46) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i45) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i44)
  %or = or i32 %shl4, %shl
  %or8 = or i32 %or, %retval.0.i62
  %68 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or8, ptr %ber, align 4
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not = icmp eq i32 %69, 0
  br i1 %tobool.not, label %cx24123_i2c_readreg.exit63.do.end17_crit_edge, label %do.end

cx24123_i2c_readreg.exit63.do.end17_crit_edge:    ; preds = %cx24123_i2c_readreg.exit63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end:                                           ; preds = %cx24123_i2c_readreg.exit63
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.138) #12
  %70 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ber, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %71) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end, %cx24123_i2c_readreg.exit63.do.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef %signal_strength) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 59, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.i, ptr %buf5.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %21 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %23 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %call.tr = trunc i32 %retval.0.i to i16
  %conv = shl i16 %call.tr, 8
  %24 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %signal_strength, align 2
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %cx24123_i2c_readreg.exit.do.end10_crit_edge, label %do.end

cx24123_i2c_readreg.exit.do.end10_crit_edge:      ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.142) #12
  %26 = ptrtoint ptr %signal_strength to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %signal_strength, align 2
  %conv7 = zext i16 %27 to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %conv7) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %cx24123_i2c_readreg.exit.do.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef %snr) #2 align 64 {
entry:
  %reg.addr.i22 = alloca i8, align 1
  %b.i23 = alloca i8, align 1
  %msg.i24 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.i, ptr %buf5.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %21 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %23 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv1 = shl i32 %retval.0.i, 8
  %24 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i22)
  %28 = ptrtoint ptr %reg.addr.i22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 25, ptr %reg.addr.i22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i23) #8
  %29 = ptrtoint ptr %b.i23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %b.i23, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i24) #8
  %30 = getelementptr inbounds i8, ptr %msg.i24, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %conv.i25 = zext i8 %27 to i16
  %32 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i25, ptr %msg.i24, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i26, align 2
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %30, align 4
  %buf.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %reg.addr.i22, ptr %buf.i28, align 4
  %arrayinit.element.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1
  %36 = ptrtoint ptr %arrayinit.element.i29 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i25, ptr %arrayinit.element.i29, align 4
  %flags3.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 1
  %37 = ptrtoint ptr %flags3.i30 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags3.i30, align 2
  %len4.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 2
  %38 = ptrtoint ptr %len4.i31 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len4.i31, align 4
  %buf5.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 3
  %39 = ptrtoint ptr %buf5.i32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b.i23, ptr %buf5.i32, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %call.i33 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i24, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i33)
  %cmp.not.i34 = icmp eq i32 %call.i33, 2
  br i1 %cmp.not.i34, label %if.end.i39, label %do.end.i37

do.end.i37:                                       ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %reg.addr.i22 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reg.addr.i22, align 1
  %conv8.i35 = zext i8 %43 to i32
  %call9.i36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i35, i32 noundef %call.i33) #12
  br label %cx24123_i2c_readreg.exit41

if.end.i39:                                       ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %b.i23 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b.i23, align 1
  %conv12.i38 = zext i8 %45 to i32
  br label %cx24123_i2c_readreg.exit41

cx24123_i2c_readreg.exit41:                       ; preds = %if.end.i39, %do.end.i37
  %retval.0.i40 = phi i32 [ %call.i33, %do.end.i37 ], [ %conv12.i38, %if.end.i39 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i24) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i23) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i22)
  %or = or i32 %retval.0.i40, %conv1
  %46 = trunc i32 %or to i16
  %conv7 = xor i16 %46, -1
  %47 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv7, ptr %snr, align 2
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not = icmp eq i32 %48, 0
  br i1 %tobool.not, label %cx24123_i2c_readreg.exit41.do.end17_crit_edge, label %do.end

cx24123_i2c_readreg.exit41.do.end17_crit_edge:    ; preds = %cx24123_i2c_readreg.exit41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end:                                           ; preds = %cx24123_i2c_readreg.exit41
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.146) #12
  %49 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %snr, align 2
  %conv14 = zext i16 %50 to i32
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %conv14) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end, %cx24123_i2c_readreg.exit41.do.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  %buf.i160 = alloca [2 x i8], align 1
  %msg.i161 = alloca %struct.i2c_msg, align 4
  %buf.i147 = alloca [2 x i8], align 1
  %msg.i148 = alloca %struct.i2c_msg, align 4
  %reg.addr.i127 = alloca i8, align 1
  %b.i128 = alloca i8, align 1
  %msg.i129 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i114 = alloca [2 x i8], align 1
  %msg.i115 = alloca %struct.i2c_msg, align 4
  %buf.i101 = alloca [2 x i8], align 1
  %msg.i102 = alloca %struct.i2c_msg, align 4
  %reg.addr.i81 = alloca i8, align 1
  %b.i82 = alloca i8, align 1
  %msg.i83 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i73 = alloca [2 x i8], align 1
  %msg.i74 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.150) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %7 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 41, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %8 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %conv.i = zext i8 %6 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b.i, ptr %buf5.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %22 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %24 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %and = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %cx24123_i2c_readreg.exit.if.end16_crit_edge, label %if.then11

cx24123_i2c_readreg.exit.if.end16_crit_edge:      ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %cx24123_i2c_readreg.exit
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %and14 = and i32 %retval.0.i, -81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i73) #8
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i73, i32 0, i32 1
  %30 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 41, ptr %buf.i73, align 1
  %conv1.i = trunc i32 %and14 to i8
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i74) #8
  %32 = getelementptr inbounds i8, ptr %msg.i74, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 196607, ptr %32, align 4
  %conv2.i = zext i8 %28 to i16
  %34 = ptrtoint ptr %msg.i74 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv2.i, ptr %msg.i74, align 4
  %flags.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i75, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 3
  %36 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i73, ptr %buf3.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %call.i77 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i74, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i77)
  %cmp.not.i78 = icmp eq i32 %call.i77, 1
  br i1 %cmp.not.i78, label %if.then11.cx24123_i2c_writereg.exit_crit_edge, label %do.end.i79

if.then11.cx24123_i2c_writereg.exit_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit

do.end.i79:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i77, i32 noundef 41, i32 noundef %and14) #12
  br label %cx24123_i2c_writereg.exit

cx24123_i2c_writereg.exit:                        ; preds = %do.end.i79, %if.then11.cx24123_i2c_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i74) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i73) #8
  br label %if.end16

if.end16:                                         ; preds = %cx24123_i2c_writereg.exit, %cx24123_i2c_readreg.exit.if.end16_crit_edge
  call fastcc void @cx24123_wait_for_diseqc(ptr noundef %1)
  %39 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i81)
  %43 = ptrtoint ptr %reg.addr.i81 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 42, ptr %reg.addr.i81, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i82) #8
  %44 = ptrtoint ptr %b.i82 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %b.i82, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i83) #8
  %45 = getelementptr inbounds i8, ptr %msg.i83, i32 4
  %46 = call ptr @memset(ptr %45, i32 255, i32 16)
  %conv.i84 = zext i8 %42 to i16
  %47 = ptrtoint ptr %msg.i83 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i84, ptr %msg.i83, align 4
  %flags.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i85, align 2
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %45, align 4
  %buf.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i87 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %reg.addr.i81, ptr %buf.i87, align 4
  %arrayinit.element.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 1
  %51 = ptrtoint ptr %arrayinit.element.i88 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i84, ptr %arrayinit.element.i88, align 4
  %flags3.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 1, i32 1
  %52 = ptrtoint ptr %flags3.i89 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flags3.i89, align 2
  %len4.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 1, i32 2
  %53 = ptrtoint ptr %len4.i90 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %len4.i90, align 4
  %buf5.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 1, i32 3
  %54 = ptrtoint ptr %buf5.i91 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %b.i82, ptr %buf5.i91, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %call.i92 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i83, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i92)
  %cmp.not.i93 = icmp eq i32 %call.i92, 2
  br i1 %cmp.not.i93, label %if.end.i98, label %do.end.i96

do.end.i96:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %reg.addr.i81 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %reg.addr.i81, align 1
  %conv8.i94 = zext i8 %58 to i32
  %call9.i95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i94, i32 noundef %call.i92) #12
  br label %cx24123_i2c_readreg.exit100

if.end.i98:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %b.i82 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %b.i82, align 1
  %conv12.i97 = zext i8 %60 to i32
  br label %cx24123_i2c_readreg.exit100

cx24123_i2c_readreg.exit100:                      ; preds = %if.end.i98, %do.end.i96
  %retval.0.i99 = phi i32 [ %call.i92, %do.end.i96 ], [ %conv12.i97, %if.end.i98 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i83) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i82) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i81)
  %and22 = and i32 %retval.0.i99, 251
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i101) #8
  %61 = getelementptr inbounds [2 x i8], ptr %buf.i101, i32 0, i32 1
  %62 = ptrtoint ptr %buf.i101 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 42, ptr %buf.i101, align 1
  %conv1.i103 = trunc i32 %and22 to i8
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv1.i103, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i102) #8
  %64 = getelementptr inbounds i8, ptr %msg.i102, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 196607, ptr %64, align 4
  %66 = ptrtoint ptr %msg.i102 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i84, ptr %msg.i102, align 4
  %flags.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i105 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i105, align 2
  %buf3.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 3
  %68 = ptrtoint ptr %buf3.i107 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf.i101, ptr %buf3.i107, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %call.i108 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i102, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i108)
  %cmp.not.i109 = icmp eq i32 %call.i108, 1
  br i1 %cmp.not.i109, label %cx24123_i2c_readreg.exit100.cx24123_i2c_writereg.exit113_crit_edge, label %do.end.i111

cx24123_i2c_readreg.exit100.cx24123_i2c_writereg.exit113_crit_edge: ; preds = %cx24123_i2c_readreg.exit100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit113

do.end.i111:                                      ; preds = %cx24123_i2c_readreg.exit100
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i108, i32 noundef 42, i32 noundef %and22) #12
  br label %cx24123_i2c_writereg.exit113

cx24123_i2c_writereg.exit113:                     ; preds = %do.end.i111, %cx24123_i2c_readreg.exit100.cx24123_i2c_writereg.exit113_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i102) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i101) #8
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %71 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp174.not = icmp eq i8 %72, 0
  br i1 %cmp174.not, label %cx24123_i2c_writereg.exit113.for.end_crit_edge, label %for.body.lr.ph

cx24123_i2c_writereg.exit113.for.end_crit_edge:   ; preds = %cx24123_i2c_writereg.exit113
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %cx24123_i2c_writereg.exit113
  %73 = getelementptr inbounds [2 x i8], ptr %buf.i114, i32 0, i32 1
  %74 = getelementptr inbounds i8, ptr %msg.i115, i32 4
  %flags.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 1
  %buf3.i120 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cx24123_i2c_writereg.exit126.for.body_crit_edge, %for.body.lr.ph
  %i.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cx24123_i2c_writereg.exit126.for.body_crit_edge ]
  %75 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %config, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 4
  %add = add nuw nsw i32 %i.0175, 44
  %arrayidx = getelementptr [6 x i8], ptr %cmd, i32 0, i32 %i.0175
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i114) #8
  %conv.i116 = trunc i32 %add to i8
  %81 = ptrtoint ptr %buf.i114 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.i116, ptr %buf.i114, align 1
  %82 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %80, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i115) #8
  %83 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 196607, ptr %74, align 4
  %conv2.i117 = zext i8 %78 to i16
  %84 = ptrtoint ptr %msg.i115 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv2.i117, ptr %msg.i115, align 4
  %85 = ptrtoint ptr %flags.i118 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i118, align 2
  %86 = ptrtoint ptr %buf3.i120 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf.i114, ptr %buf3.i120, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %call.i121 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i115, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i121)
  %cmp.not.i122 = icmp eq i32 %call.i121, 1
  br i1 %cmp.not.i122, label %for.body.cx24123_i2c_writereg.exit126_crit_edge, label %do.end.i124

for.body.cx24123_i2c_writereg.exit126_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit126

do.end.i124:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv27 = zext i8 %80 to i32
  %call5.i123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i121, i32 noundef %add, i32 noundef %conv27) #12
  br label %cx24123_i2c_writereg.exit126

cx24123_i2c_writereg.exit126:                     ; preds = %do.end.i124, %for.body.cx24123_i2c_writereg.exit126_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i115) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i114) #8
  %inc = add nuw nsw i32 %i.0175, 1
  %89 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %90 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cx24123_i2c_writereg.exit126.for.body_crit_edge, label %cx24123_i2c_writereg.exit126.for.end_crit_edge

cx24123_i2c_writereg.exit126.for.end_crit_edge:   ; preds = %cx24123_i2c_writereg.exit126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cx24123_i2c_writereg.exit126.for.body_crit_edge:  ; preds = %cx24123_i2c_writereg.exit126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cx24123_i2c_writereg.exit126.for.end_crit_edge, %cx24123_i2c_writereg.exit113.for.end_crit_edge
  %91 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %config, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i127)
  %95 = ptrtoint ptr %reg.addr.i127 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 41, ptr %reg.addr.i127, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i128) #8
  %96 = ptrtoint ptr %b.i128 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %b.i128, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i129) #8
  %97 = getelementptr inbounds i8, ptr %msg.i129, i32 4
  %98 = call ptr @memset(ptr %97, i32 255, i32 16)
  %conv.i130 = zext i8 %94 to i16
  %99 = ptrtoint ptr %msg.i129 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i130, ptr %msg.i129, align 4
  %flags.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i131 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i131, align 2
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1, ptr %97, align 4
  %buf.i133 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 3
  %102 = ptrtoint ptr %buf.i133 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %reg.addr.i127, ptr %buf.i133, align 4
  %arrayinit.element.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 1
  %103 = ptrtoint ptr %arrayinit.element.i134 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i130, ptr %arrayinit.element.i134, align 4
  %flags3.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 1, i32 1
  %104 = ptrtoint ptr %flags3.i135 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 1, ptr %flags3.i135, align 2
  %len4.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 1, i32 2
  %105 = ptrtoint ptr %len4.i136 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 1, ptr %len4.i136, align 4
  %buf5.i137 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 1, i32 3
  %106 = ptrtoint ptr %buf5.i137 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %b.i128, ptr %buf5.i137, align 4
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 8
  %call.i138 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i129, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i138)
  %cmp.not.i139 = icmp eq i32 %call.i138, 2
  br i1 %cmp.not.i139, label %if.end.i144, label %do.end.i142

do.end.i142:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %reg.addr.i127 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %reg.addr.i127, align 1
  %conv8.i140 = zext i8 %110 to i32
  %call9.i141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i140, i32 noundef %call.i138) #12
  br label %cx24123_i2c_readreg.exit146

if.end.i144:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %b.i128 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %b.i128, align 1
  %conv12.i143 = zext i8 %112 to i32
  br label %cx24123_i2c_readreg.exit146

cx24123_i2c_readreg.exit146:                      ; preds = %if.end.i144, %do.end.i142
  %retval.0.i145 = phi i32 [ %call.i138, %do.end.i142 ], [ %conv12.i143, %if.end.i144 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i129) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i128) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i127)
  %113 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %config, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %114, align 4
  %and34 = and i32 %retval.0.i145, 144
  %117 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %msg_len, align 1
  %119 = add i8 %118, 1
  %120 = and i8 %119, 3
  %and37 = zext i8 %120 to i32
  %or = or i32 %and34, %and37
  %or38 = or i32 %or, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i147) #8
  %121 = getelementptr inbounds [2 x i8], ptr %buf.i147, i32 0, i32 1
  %122 = ptrtoint ptr %buf.i147 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 41, ptr %buf.i147, align 1
  %conv1.i149 = trunc i32 %or38 to i8
  %123 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv1.i149, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i148) #8
  %124 = getelementptr inbounds i8, ptr %msg.i148, i32 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 196607, ptr %124, align 4
  %conv2.i150 = zext i8 %116 to i16
  %126 = ptrtoint ptr %msg.i148 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv2.i150, ptr %msg.i148, align 4
  %flags.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 0, i32 1
  %127 = ptrtoint ptr %flags.i151 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags.i151, align 2
  %buf3.i153 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 0, i32 3
  %128 = ptrtoint ptr %buf3.i153 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %buf.i147, ptr %buf3.i153, align 4
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 8
  %call.i154 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %msg.i148, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i154)
  %cmp.not.i155 = icmp eq i32 %call.i154, 1
  br i1 %cmp.not.i155, label %cx24123_i2c_readreg.exit146.cx24123_i2c_writereg.exit159_crit_edge, label %do.end.i157

cx24123_i2c_readreg.exit146.cx24123_i2c_writereg.exit159_crit_edge: ; preds = %cx24123_i2c_readreg.exit146
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit159

do.end.i157:                                      ; preds = %cx24123_i2c_readreg.exit146
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i154, i32 noundef 41, i32 noundef %or38) #12
  br label %cx24123_i2c_writereg.exit159

cx24123_i2c_writereg.exit159:                     ; preds = %do.end.i157, %cx24123_i2c_readreg.exit146.cx24123_i2c_writereg.exit159_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i148) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i147) #8
  call fastcc void @cx24123_wait_for_diseqc(ptr noundef %1)
  br i1 %tobool10.not, label %cx24123_i2c_writereg.exit159.if.end47_crit_edge, label %if.then42

cx24123_i2c_writereg.exit159.if.end47_crit_edge:  ; preds = %cx24123_i2c_writereg.exit159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then42:                                        ; preds = %cx24123_i2c_writereg.exit159
  %131 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %config, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 4
  %and45 = and i32 %retval.0.i, -65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i160) #8
  %135 = getelementptr inbounds [2 x i8], ptr %buf.i160, i32 0, i32 1
  %136 = ptrtoint ptr %buf.i160 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 41, ptr %buf.i160, align 1
  %conv1.i162 = trunc i32 %and45 to i8
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv1.i162, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i161) #8
  %138 = getelementptr inbounds i8, ptr %msg.i161, i32 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 196607, ptr %138, align 4
  %conv2.i163 = zext i8 %134 to i16
  %140 = ptrtoint ptr %msg.i161 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv2.i163, ptr %msg.i161, align 4
  %flags.i164 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 0, i32 1
  %141 = ptrtoint ptr %flags.i164 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %flags.i164, align 2
  %buf3.i166 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 0, i32 3
  %142 = ptrtoint ptr %buf3.i166 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %buf.i160, ptr %buf3.i166, align 4
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 8
  %call.i167 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i161, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i167)
  %cmp.not.i168 = icmp eq i32 %call.i167, 1
  br i1 %cmp.not.i168, label %if.then42.cx24123_i2c_writereg.exit172_crit_edge, label %do.end.i170

if.then42.cx24123_i2c_writereg.exit172_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit172

do.end.i170:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i167, i32 noundef 41, i32 noundef %and45) #12
  br label %cx24123_i2c_writereg.exit172

cx24123_i2c_writereg.exit172:                     ; preds = %do.end.i170, %if.then42.cx24123_i2c_writereg.exit172_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i161) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i160) #8
  br label %if.end47

if.end47:                                         ; preds = %cx24123_i2c_writereg.exit172, %cx24123_i2c_writereg.exit159.if.end47_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #2 align 64 {
entry:
  %buf.i207 = alloca [2 x i8], align 1
  %msg.i208 = alloca %struct.i2c_msg, align 4
  %buf.i194 = alloca [2 x i8], align 1
  %msg.i195 = alloca %struct.i2c_msg, align 4
  %reg.addr.i174 = alloca i8, align 1
  %b.i175 = alloca i8, align 1
  %msg.i176 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i161 = alloca [2 x i8], align 1
  %msg.i162 = alloca %struct.i2c_msg, align 4
  %buf.i148 = alloca [2 x i8], align 1
  %msg.i149 = alloca %struct.i2c_msg, align 4
  %reg.addr.i128 = alloca i8, align 1
  %b.i129 = alloca i8, align 1
  %msg.i130 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i115 = alloca [2 x i8], align 1
  %msg.i116 = alloca %struct.i2c_msg, align 4
  %reg.addr.i95 = alloca i8, align 1
  %b.i96 = alloca i8, align 1
  %msg.i97 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i87 = alloca [2 x i8], align 1
  %msg.i88 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.155) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %7 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 41, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %8 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %conv.i = zext i8 %6 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b.i, ptr %buf5.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %22 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %24 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %and = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %cx24123_i2c_readreg.exit.if.end16_crit_edge, label %if.then11

cx24123_i2c_readreg.exit.if.end16_crit_edge:      ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %cx24123_i2c_readreg.exit
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %and14 = and i32 %retval.0.i, -81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i87) #8
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i87, i32 0, i32 1
  %30 = ptrtoint ptr %buf.i87 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 41, ptr %buf.i87, align 1
  %conv1.i = trunc i32 %and14 to i8
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i88) #8
  %32 = getelementptr inbounds i8, ptr %msg.i88, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 196607, ptr %32, align 4
  %conv2.i = zext i8 %28 to i16
  %34 = ptrtoint ptr %msg.i88 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv2.i, ptr %msg.i88, align 4
  %flags.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i89 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i89, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 3
  %36 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i87, ptr %buf3.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %call.i91 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i88, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91)
  %cmp.not.i92 = icmp eq i32 %call.i91, 1
  br i1 %cmp.not.i92, label %if.then11.cx24123_i2c_writereg.exit_crit_edge, label %do.end.i93

if.then11.cx24123_i2c_writereg.exit_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit

do.end.i93:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i91, i32 noundef 41, i32 noundef %and14) #12
  br label %cx24123_i2c_writereg.exit

cx24123_i2c_writereg.exit:                        ; preds = %do.end.i93, %if.then11.cx24123_i2c_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i88) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i87) #8
  br label %if.end16

if.end16:                                         ; preds = %cx24123_i2c_writereg.exit, %cx24123_i2c_readreg.exit.if.end16_crit_edge
  call fastcc void @cx24123_wait_for_diseqc(ptr noundef %1)
  %39 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i95)
  %43 = ptrtoint ptr %reg.addr.i95 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 42, ptr %reg.addr.i95, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i96) #8
  %44 = ptrtoint ptr %b.i96 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %b.i96, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i97) #8
  %45 = getelementptr inbounds i8, ptr %msg.i97, i32 4
  %46 = call ptr @memset(ptr %45, i32 255, i32 16)
  %conv.i98 = zext i8 %42 to i16
  %47 = ptrtoint ptr %msg.i97 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i98, ptr %msg.i97, align 4
  %flags.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i99 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i99, align 2
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %45, align 4
  %buf.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i101 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %reg.addr.i95, ptr %buf.i101, align 4
  %arrayinit.element.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97, i32 1
  %51 = ptrtoint ptr %arrayinit.element.i102 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i98, ptr %arrayinit.element.i102, align 4
  %flags3.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97, i32 1, i32 1
  %52 = ptrtoint ptr %flags3.i103 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flags3.i103, align 2
  %len4.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97, i32 1, i32 2
  %53 = ptrtoint ptr %len4.i104 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %len4.i104, align 4
  %buf5.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97, i32 1, i32 3
  %54 = ptrtoint ptr %buf5.i105 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %b.i96, ptr %buf5.i105, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %call.i106 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i97, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i106)
  %cmp.not.i107 = icmp eq i32 %call.i106, 2
  br i1 %cmp.not.i107, label %if.end.i112, label %do.end.i110

do.end.i110:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %reg.addr.i95 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %reg.addr.i95, align 1
  %conv8.i108 = zext i8 %58 to i32
  %call9.i109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i108, i32 noundef %call.i106) #12
  br label %cx24123_i2c_readreg.exit114

if.end.i112:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %b.i96 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %b.i96, align 1
  %conv12.i111 = zext i8 %60 to i32
  br label %cx24123_i2c_readreg.exit114

cx24123_i2c_readreg.exit114:                      ; preds = %if.end.i112, %do.end.i110
  %retval.0.i113 = phi i32 [ %call.i106, %do.end.i110 ], [ %conv12.i111, %if.end.i112 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i97) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i96) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i95)
  %or = or i32 %retval.0.i113, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i115) #8
  %61 = getelementptr inbounds [2 x i8], ptr %buf.i115, i32 0, i32 1
  %62 = ptrtoint ptr %buf.i115 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 42, ptr %buf.i115, align 1
  %conv1.i117 = trunc i32 %or to i8
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv1.i117, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i116) #8
  %64 = getelementptr inbounds i8, ptr %msg.i116, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 196607, ptr %64, align 4
  %66 = ptrtoint ptr %msg.i116 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i98, ptr %msg.i116, align 4
  %flags.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i119 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i119, align 2
  %buf3.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116, i32 0, i32 3
  %68 = ptrtoint ptr %buf3.i121 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf.i115, ptr %buf3.i121, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %call.i122 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i116, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i122)
  %cmp.not.i123 = icmp eq i32 %call.i122, 1
  br i1 %cmp.not.i123, label %cx24123_i2c_readreg.exit114.cx24123_i2c_writereg.exit127_crit_edge, label %do.end.i125

cx24123_i2c_readreg.exit114.cx24123_i2c_writereg.exit127_crit_edge: ; preds = %cx24123_i2c_readreg.exit114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit127

do.end.i125:                                      ; preds = %cx24123_i2c_readreg.exit114
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i122, i32 noundef 42, i32 noundef %or) #12
  br label %cx24123_i2c_writereg.exit127

cx24123_i2c_writereg.exit127:                     ; preds = %do.end.i125, %cx24123_i2c_readreg.exit114.cx24123_i2c_writereg.exit127_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i116) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i115) #8
  call void @msleep(i32 noundef 30) #8
  %71 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i128)
  %75 = ptrtoint ptr %reg.addr.i128 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 41, ptr %reg.addr.i128, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i129) #8
  %76 = ptrtoint ptr %b.i129 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %b.i129, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i130) #8
  %77 = getelementptr inbounds i8, ptr %msg.i130, i32 4
  %78 = call ptr @memset(ptr %77, i32 255, i32 16)
  %conv.i131 = zext i8 %74 to i16
  %79 = ptrtoint ptr %msg.i130 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i131, ptr %msg.i130, align 4
  %flags.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i130, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i132 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i132, align 2
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 1, ptr %77, align 4
  %buf.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i130, i32 0, i32 3
  %82 = ptrtoint ptr %buf.i134 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %reg.addr.i128, ptr %buf.i134, align 4
  %arrayinit.element.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i130, i32 1
  %83 = ptrtoint ptr %arrayinit.element.i135 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i131, ptr %arrayinit.element.i135, align 4
  %flags3.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i130, i32 1, i32 1
  %84 = ptrtoint ptr %flags3.i136 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %flags3.i136, align 2
  %len4.i137 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i130, i32 1, i32 2
  %85 = ptrtoint ptr %len4.i137 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %len4.i137, align 4
  %buf5.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i130, i32 1, i32 3
  %86 = ptrtoint ptr %buf5.i138 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %b.i129, ptr %buf5.i138, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %call.i139 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i130, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i139)
  %cmp.not.i140 = icmp eq i32 %call.i139, 2
  br i1 %cmp.not.i140, label %if.end.i145, label %do.end.i143

do.end.i143:                                      ; preds = %cx24123_i2c_writereg.exit127
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %reg.addr.i128 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %reg.addr.i128, align 1
  %conv8.i141 = zext i8 %90 to i32
  %call9.i142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i141, i32 noundef %call.i139) #12
  br label %cx24123_i2c_readreg.exit147

if.end.i145:                                      ; preds = %cx24123_i2c_writereg.exit127
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %b.i129 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %b.i129, align 1
  %conv12.i144 = zext i8 %92 to i32
  br label %cx24123_i2c_readreg.exit147

cx24123_i2c_readreg.exit147:                      ; preds = %if.end.i145, %do.end.i143
  %retval.0.i146 = phi i32 [ %call.i139, %do.end.i143 ], [ %conv12.i144, %if.end.i145 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i130) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i129) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i128)
  %93 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %burst, label %cx24123_i2c_readreg.exit147.cleanup_crit_edge [
    i32 0, label %if.then26
    i32 1, label %if.then34
  ]

cx24123_i2c_readreg.exit147.cleanup_crit_edge:    ; preds = %cx24123_i2c_readreg.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %cx24123_i2c_readreg.exit147
  %94 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %config, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 4
  %and29 = and i32 %retval.0.i146, 144
  %or30 = or i32 %and29, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i148) #8
  %98 = getelementptr inbounds [2 x i8], ptr %buf.i148, i32 0, i32 1
  %99 = ptrtoint ptr %buf.i148 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 41, ptr %buf.i148, align 1
  %conv1.i150 = trunc i32 %or30 to i8
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv1.i150, ptr %98, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i149) #8
  %101 = getelementptr inbounds i8, ptr %msg.i149, i32 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 196607, ptr %101, align 4
  %conv2.i151 = zext i8 %97 to i16
  %103 = ptrtoint ptr %msg.i149 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv2.i151, ptr %msg.i149, align 4
  %flags.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i149, i32 0, i32 1
  %104 = ptrtoint ptr %flags.i152 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i152, align 2
  %buf3.i154 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i149, i32 0, i32 3
  %105 = ptrtoint ptr %buf3.i154 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %buf.i148, ptr %buf3.i154, align 4
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 8
  %call.i155 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i149, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i155)
  %cmp.not.i156 = icmp eq i32 %call.i155, 1
  br i1 %cmp.not.i156, label %if.then26.cx24123_i2c_writereg.exit160_crit_edge, label %do.end.i158

if.then26.cx24123_i2c_writereg.exit160_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit160

do.end.i158:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i155, i32 noundef 41, i32 noundef %or30) #12
  br label %cx24123_i2c_writereg.exit160

cx24123_i2c_writereg.exit160:                     ; preds = %do.end.i158, %if.then26.cx24123_i2c_writereg.exit160_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i149) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i148) #8
  br label %if.end43

if.then34:                                        ; preds = %cx24123_i2c_readreg.exit147
  %108 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %config, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 4
  %and37 = and i32 %retval.0.i146, 144
  %or39 = or i32 %and37, 72
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i161) #8
  %112 = getelementptr inbounds [2 x i8], ptr %buf.i161, i32 0, i32 1
  %113 = ptrtoint ptr %buf.i161 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 41, ptr %buf.i161, align 1
  %conv1.i163 = trunc i32 %or39 to i8
  %114 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv1.i163, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i162) #8
  %115 = getelementptr inbounds i8, ptr %msg.i162, i32 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 196607, ptr %115, align 4
  %conv2.i164 = zext i8 %111 to i16
  %117 = ptrtoint ptr %msg.i162 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv2.i164, ptr %msg.i162, align 4
  %flags.i165 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i162, i32 0, i32 1
  %118 = ptrtoint ptr %flags.i165 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flags.i165, align 2
  %buf3.i167 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i162, i32 0, i32 3
  %119 = ptrtoint ptr %buf3.i167 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %buf.i161, ptr %buf3.i167, align 4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 8
  %call.i168 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %msg.i162, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i168)
  %cmp.not.i169 = icmp eq i32 %call.i168, 1
  br i1 %cmp.not.i169, label %if.then34.cx24123_i2c_writereg.exit173_crit_edge, label %do.end.i171

if.then34.cx24123_i2c_writereg.exit173_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit173

do.end.i171:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i168, i32 noundef 41, i32 noundef %or39) #12
  br label %cx24123_i2c_writereg.exit173

cx24123_i2c_writereg.exit173:                     ; preds = %do.end.i171, %if.then34.cx24123_i2c_writereg.exit173_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i162) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i161) #8
  br label %if.end43

if.end43:                                         ; preds = %cx24123_i2c_writereg.exit173, %cx24123_i2c_writereg.exit160
  call fastcc void @cx24123_wait_for_diseqc(ptr noundef %1)
  %122 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %config, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %123, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i174)
  %126 = ptrtoint ptr %reg.addr.i174 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 42, ptr %reg.addr.i174, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i175) #8
  %127 = ptrtoint ptr %b.i175 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %b.i175, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i176) #8
  %128 = getelementptr inbounds i8, ptr %msg.i176, i32 4
  %129 = call ptr @memset(ptr %128, i32 255, i32 16)
  %conv.i177 = zext i8 %125 to i16
  %130 = ptrtoint ptr %msg.i176 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i177, ptr %msg.i176, align 4
  %flags.i178 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i176, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i178 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i178, align 2
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 1, ptr %128, align 4
  %buf.i180 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i176, i32 0, i32 3
  %133 = ptrtoint ptr %buf.i180 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %reg.addr.i174, ptr %buf.i180, align 4
  %arrayinit.element.i181 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i176, i32 1
  %134 = ptrtoint ptr %arrayinit.element.i181 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv.i177, ptr %arrayinit.element.i181, align 4
  %flags3.i182 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i176, i32 1, i32 1
  %135 = ptrtoint ptr %flags3.i182 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 1, ptr %flags3.i182, align 2
  %len4.i183 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i176, i32 1, i32 2
  %136 = ptrtoint ptr %len4.i183 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 1, ptr %len4.i183, align 4
  %buf5.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i176, i32 1, i32 3
  %137 = ptrtoint ptr %buf5.i184 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %b.i175, ptr %buf5.i184, align 4
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 8
  %call.i185 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %msg.i176, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i185)
  %cmp.not.i186 = icmp eq i32 %call.i185, 2
  br i1 %cmp.not.i186, label %if.end.i191, label %do.end.i189

do.end.i189:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %reg.addr.i174 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %reg.addr.i174, align 1
  %conv8.i187 = zext i8 %141 to i32
  %call9.i188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i187, i32 noundef %call.i185) #12
  br label %cx24123_i2c_readreg.exit193

if.end.i191:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %b.i175 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %b.i175, align 1
  %conv12.i190 = zext i8 %143 to i32
  br label %cx24123_i2c_readreg.exit193

cx24123_i2c_readreg.exit193:                      ; preds = %if.end.i191, %do.end.i189
  %retval.0.i192 = phi i32 [ %call.i185, %do.end.i189 ], [ %conv12.i190, %if.end.i191 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i176) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i175) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i174)
  %and49 = and i32 %retval.0.i192, 251
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i194) #8
  %144 = getelementptr inbounds [2 x i8], ptr %buf.i194, i32 0, i32 1
  %145 = ptrtoint ptr %buf.i194 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 42, ptr %buf.i194, align 1
  %conv1.i196 = trunc i32 %and49 to i8
  %146 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv1.i196, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i195) #8
  %147 = getelementptr inbounds i8, ptr %msg.i195, i32 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 196607, ptr %147, align 4
  %149 = ptrtoint ptr %msg.i195 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv.i177, ptr %msg.i195, align 4
  %flags.i198 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 0, i32 1
  %150 = ptrtoint ptr %flags.i198 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %flags.i198, align 2
  %buf3.i200 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 0, i32 3
  %151 = ptrtoint ptr %buf3.i200 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %buf.i194, ptr %buf3.i200, align 4
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 8
  %call.i201 = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %msg.i195, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i201)
  %cmp.not.i202 = icmp eq i32 %call.i201, 1
  br i1 %cmp.not.i202, label %cx24123_i2c_readreg.exit193.cx24123_i2c_writereg.exit206_crit_edge, label %do.end.i204

cx24123_i2c_readreg.exit193.cx24123_i2c_writereg.exit206_crit_edge: ; preds = %cx24123_i2c_readreg.exit193
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit206

do.end.i204:                                      ; preds = %cx24123_i2c_readreg.exit193
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i201, i32 noundef 42, i32 noundef %and49) #12
  br label %cx24123_i2c_writereg.exit206

cx24123_i2c_writereg.exit206:                     ; preds = %do.end.i204, %cx24123_i2c_readreg.exit193.cx24123_i2c_writereg.exit206_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i195) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i194) #8
  br i1 %tobool10.not, label %cx24123_i2c_writereg.exit206.cleanup_crit_edge, label %if.then53

cx24123_i2c_writereg.exit206.cleanup_crit_edge:   ; preds = %cx24123_i2c_writereg.exit206
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %cx24123_i2c_writereg.exit206
  %154 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %config, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %155, align 4
  %and56 = and i32 %retval.0.i, -65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i207) #8
  %158 = getelementptr inbounds [2 x i8], ptr %buf.i207, i32 0, i32 1
  %159 = ptrtoint ptr %buf.i207 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 41, ptr %buf.i207, align 1
  %conv1.i209 = trunc i32 %and56 to i8
  %160 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv1.i209, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i208) #8
  %161 = getelementptr inbounds i8, ptr %msg.i208, i32 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 196607, ptr %161, align 4
  %conv2.i210 = zext i8 %157 to i16
  %163 = ptrtoint ptr %msg.i208 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv2.i210, ptr %msg.i208, align 4
  %flags.i211 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i208, i32 0, i32 1
  %164 = ptrtoint ptr %flags.i211 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %flags.i211, align 2
  %buf3.i213 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i208, i32 0, i32 3
  %165 = ptrtoint ptr %buf3.i213 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %buf.i207, ptr %buf3.i213, align 4
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 8
  %call.i214 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %msg.i208, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i214)
  %cmp.not.i215 = icmp eq i32 %call.i214, 1
  br i1 %cmp.not.i215, label %if.then53.cx24123_i2c_writereg.exit219_crit_edge, label %do.end.i217

if.then53.cx24123_i2c_writereg.exit219_crit_edge: ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit219

do.end.i217:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i214, i32 noundef 41, i32 noundef %and56) #12
  br label %cx24123_i2c_writereg.exit219

cx24123_i2c_writereg.exit219:                     ; preds = %do.end.i217, %if.then53.cx24123_i2c_writereg.exit219_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i208) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i207) #8
  br label %cleanup

cleanup:                                          ; preds = %cx24123_i2c_writereg.exit219, %cx24123_i2c_writereg.exit206.cleanup_crit_edge, %cx24123_i2c_readreg.exit147.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %cx24123_i2c_readreg.exit147.cleanup_crit_edge ], [ 0, %cx24123_i2c_writereg.exit219 ], [ 0, %cx24123_i2c_writereg.exit206.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #2 align 64 {
entry:
  %buf.i61 = alloca [2 x i8], align 1
  %msg.i62 = alloca %struct.i2c_msg, align 4
  %buf.i53 = alloca [2 x i8], align 1
  %msg.i54 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @cx24123_wait_for_diseqc(ptr noundef %1)
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 41, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.i, ptr %buf5.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %21 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %23 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv = and i32 %retval.0.i, 175
  %24 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %tone, label %do.end39 [
    i32 0, label %do.body
    i32 1, label %do.body15
  ]

do.body:                                          ; preds = %cx24123_i2c_readreg.exit
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.158) #12
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %26 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %or = or i32 %conv, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #8
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 41, ptr %buf.i53, align 1
  %conv1.i = trunc i32 %or to i8
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1.i, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i54) #8
  %33 = getelementptr inbounds i8, ptr %msg.i54, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 196607, ptr %33, align 4
  %conv2.i = zext i8 %29 to i16
  %35 = ptrtoint ptr %msg.i54 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv2.i, ptr %msg.i54, align 4
  %flags.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i55 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i55, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 3
  %37 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i53, ptr %buf3.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %call.i57 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i54, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i57)
  %cmp.not.i58 = icmp eq i32 %call.i57, 1
  br i1 %cmp.not.i58, label %do.end9.cx24123_i2c_writereg.exit_crit_edge, label %do.end.i59

do.end9.cx24123_i2c_writereg.exit_crit_edge:      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit

do.end.i59:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i57, i32 noundef 41, i32 noundef %or) #12
  br label %cx24123_i2c_writereg.exit

cx24123_i2c_writereg.exit:                        ; preds = %do.end.i59, %do.end9.cx24123_i2c_writereg.exit_crit_edge
  %retval.0.i60 = phi i32 [ %call.i57, %do.end.i59 ], [ 0, %do.end9.cx24123_i2c_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #8
  br label %cleanup

do.body15:                                        ; preds = %cx24123_i2c_readreg.exit
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool16.not = icmp eq i32 %40, 0
  br i1 %tobool16.not, label %do.body15.do.end30_crit_edge, label %do.end20

do.body15.do.end30_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.158) #12
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165) #12
  br label %do.end30

do.end30:                                         ; preds = %do.end20, %do.body15.do.end30_crit_edge
  %41 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i61) #8
  %45 = getelementptr inbounds [2 x i8], ptr %buf.i61, i32 0, i32 1
  %46 = ptrtoint ptr %buf.i61 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 41, ptr %buf.i61, align 1
  %conv1.i63 = trunc i32 %conv to i8
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv1.i63, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62) #8
  %48 = getelementptr inbounds i8, ptr %msg.i62, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 196607, ptr %48, align 4
  %conv2.i64 = zext i8 %44 to i16
  %50 = ptrtoint ptr %msg.i62 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv2.i64, ptr %msg.i62, align 4
  %flags.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i65 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i65, align 2
  %buf3.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 3
  %52 = ptrtoint ptr %buf3.i67 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buf.i61, ptr %buf3.i67, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %call.i68 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i62, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i68)
  %cmp.not.i69 = icmp eq i32 %call.i68, 1
  br i1 %cmp.not.i69, label %do.end30.cx24123_i2c_writereg.exit73_crit_edge, label %do.end.i71

do.end30.cx24123_i2c_writereg.exit73_crit_edge:   ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit73

do.end.i71:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i68, i32 noundef 41, i32 noundef %conv) #12
  br label %cx24123_i2c_writereg.exit73

cx24123_i2c_writereg.exit73:                      ; preds = %do.end.i71, %do.end30.cx24123_i2c_writereg.exit73_crit_edge
  %retval.0.i72 = phi i32 [ %call.i68, %do.end.i71 ], [ 0, %do.end30.cx24123_i2c_writereg.exit73_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i61) #8
  br label %cleanup

do.end39:                                         ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %tone) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %cx24123_i2c_writereg.exit73, %cx24123_i2c_writereg.exit
  %retval.0 = phi i32 [ -22, %do.end39 ], [ %retval.0.i72, %cx24123_i2c_writereg.exit73 ], [ %retval.0.i60, %cx24123_i2c_writereg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24123_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  %buf.i52 = alloca [2 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %buf.i44 = alloca [2 x i8], align 1
  %msg.i45 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 41, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.i, ptr %buf5.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %21 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %23 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv = and i32 %retval.0.i, 63
  %24 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %voltage, label %sw.default [
    i32 0, label %do.body
    i32 1, label %do.body16
    i32 2, label %cx24123_i2c_readreg.exit.cleanup_crit_edge
  ]

cx24123_i2c_readreg.exit.cleanup_crit_edge:       ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %cx24123_i2c_readreg.exit
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.170) #12
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %26 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i44) #8
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i44, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 41, ptr %buf.i44, align 1
  %conv1.i = trunc i32 %conv to i8
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1.i, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i45) #8
  %33 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 196607, ptr %33, align 4
  %conv2.i = zext i8 %29 to i16
  %35 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv2.i, ptr %msg.i45, align 4
  %flags.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i46 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i46, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %37 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i44, ptr %buf3.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %call.i48 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i45, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i48)
  %cmp.not.i49 = icmp eq i32 %call.i48, 1
  br i1 %cmp.not.i49, label %do.end9.cx24123_i2c_writereg.exit_crit_edge, label %do.end.i50

do.end9.cx24123_i2c_writereg.exit_crit_edge:      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit

do.end.i50:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i48, i32 noundef 41, i32 noundef %conv) #12
  br label %cx24123_i2c_writereg.exit

cx24123_i2c_writereg.exit:                        ; preds = %do.end.i50, %do.end9.cx24123_i2c_writereg.exit_crit_edge
  %retval.0.i51 = phi i32 [ %call.i48, %do.end.i50 ], [ 0, %do.end9.cx24123_i2c_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i45) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i44) #8
  br label %cleanup

do.body16:                                        ; preds = %cx24123_i2c_readreg.exit
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool17.not = icmp eq i32 %40, 0
  br i1 %tobool17.not, label %do.body16.do.end31_crit_edge, label %do.end21

do.body16.do.end31_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.170) #12
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177) #12
  br label %do.end31

do.end31:                                         ; preds = %do.end21, %do.body16.do.end31_crit_edge
  %41 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %45 = or i32 %conv, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #8
  %46 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %47 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 41, ptr %buf.i52, align 1
  %conv1.i54 = trunc i32 %45 to i8
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv1.i54, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #8
  %49 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 196607, ptr %49, align 4
  %conv2.i55 = zext i8 %44 to i16
  %51 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv2.i55, ptr %msg.i53, align 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i56, align 2
  %buf3.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %53 = ptrtoint ptr %buf3.i58 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i52, ptr %buf3.i58, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %call.i59 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i53, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 1
  br i1 %cmp.not.i60, label %do.end31.cx24123_i2c_writereg.exit64_crit_edge, label %do.end.i62

do.end31.cx24123_i2c_writereg.exit64_crit_edge:   ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit64

do.end.i62:                                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i59, i32 noundef 41, i32 noundef %45) #12
  br label %cx24123_i2c_writereg.exit64

cx24123_i2c_writereg.exit64:                      ; preds = %do.end.i62, %do.end31.cx24123_i2c_writereg.exit64_crit_edge
  %retval.0.i63 = phi i32 [ %call.i59, %do.end.i62 ], [ 0, %do.end31.cx24123_i2c_writereg.exit64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #8
  br label %cleanup

sw.default:                                       ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %cx24123_i2c_writereg.exit64, %cx24123_i2c_writereg.exit, %cx24123_i2c_readreg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %retval.0.i63, %cx24123_i2c_writereg.exit64 ], [ %retval.0.i51, %cx24123_i2c_writereg.exit ], [ 0, %cx24123_i2c_readreg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24123_pll_writereg(ptr nocapture noundef readonly %fe, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %buf.i140 = alloca [2 x i8], align 1
  %msg.i141 = alloca %struct.i2c_msg, align 4
  %reg.addr.i120 = alloca i8, align 1
  %b.i121 = alloca i8, align 1
  %msg.i122 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i107 = alloca [2 x i8], align 1
  %msg.i108 = alloca %struct.i2c_msg, align 4
  %reg.addr.i87 = alloca i8, align 1
  %b.i88 = alloca i8, align 1
  %msg.i89 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i67 = alloca i8, align 1
  %b.i68 = alloca i8, align 1
  %msg.i69 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i54 = alloca [2 x i8], align 1
  %msg.i55 = alloca %struct.i2c_msg, align 4
  %reg.addr.i34 = alloca i8, align 1
  %b.i35 = alloca i8, align 1
  %msg.i36 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i21 = alloca [2 x i8], align 1
  %msg.i22 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i13 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1 = alloca [2 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.108) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %data) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %shl = shl i32 %data, 3
  %config = getelementptr inbounds %struct.cx24123_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %7 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 33, ptr %buf.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 21, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %10, align 4
  %conv2.i = zext i8 %6 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf3.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end8.cx24123_i2c_writereg.exit_crit_edge, label %do.end.i

do.end8.cx24123_i2c_writereg.exit_crit_edge:      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit

do.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i, i32 noundef 33, i32 noundef 21) #12
  br label %cx24123_i2c_writereg.exit

cx24123_i2c_writereg.exit:                        ; preds = %do.end.i, %do.end8.cx24123_i2c_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %17, 4
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  %shr = lshr i32 %shl, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #8
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i1, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 34, ptr %buf.i1, align 1
  %conv1.i = trunc i32 %shr to i8
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #8
  %25 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %conv2.i3 = zext i8 %21 to i16
  %27 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv2.i3, ptr %msg.i2, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i4, align 2
  %buf3.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %29 = ptrtoint ptr %buf3.i6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i1, ptr %buf3.i6, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %call.i7 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7)
  %cmp.not.i8 = icmp eq i32 %call.i7, 1
  br i1 %cmp.not.i8, label %cx24123_i2c_writereg.exit.cx24123_i2c_writereg.exit12_crit_edge, label %do.end.i10

cx24123_i2c_writereg.exit.cx24123_i2c_writereg.exit12_crit_edge: ; preds = %cx24123_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit12

do.end.i10:                                       ; preds = %cx24123_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %shr, 255
  %call5.i9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i7, i32 noundef 34, i32 noundef %and) #12
  br label %cx24123_i2c_writereg.exit12

cx24123_i2c_writereg.exit12:                      ; preds = %do.end.i10, %cx24123_i2c_writereg.exit.cx24123_i2c_writereg.exit12_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #8
  %32 = getelementptr inbounds i8, ptr %msg.i13, i32 4
  %flags.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 1
  %buf.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1, i32 1
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1, i32 2
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %cx24123_i2c_writereg.exit12
  %33 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %37 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 32, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %38 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i13) #8
  %39 = call ptr @memset(ptr %32, i32 255, i32 16)
  %conv.i = zext i8 %36 to i16
  %40 = ptrtoint ptr %msg.i13 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %msg.i13, align 4
  %41 = ptrtoint ptr %flags.i14 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i14, align 2
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %32, align 4
  %43 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %reg.addr.i, ptr %buf.i16, align 4
  %44 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %45 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %flags3.i, align 2
  %46 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %len4.i, align 4
  %47 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %b.i, ptr %buf5.i, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %call.i17 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i13, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i17)
  %cmp.not.i18 = icmp eq i32 %call.i17, 2
  br i1 %cmp.not.i18, label %if.end.i, label %do.end.i19

do.end.i19:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %51 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i17) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %53 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i19
  %retval.0.i20 = phi i32 [ %call.i17, %do.end.i19 ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %and17 = and i32 %retval.0.i20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp = icmp eq i32 %and17, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %cx24123_i2c_readreg.exit
  %sub = sub i32 %add, %54
  %cmp18 = icmp slt i32 %sub, 0
  br i1 %cmp18, label %do.end23, label %if.end28

do.end23:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.108) #12
  br label %cleanup

if.end28:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 10) #8
  br label %while.cond

while.end:                                        ; preds = %cx24123_i2c_readreg.exit
  %add30 = add i32 %54, 4
  %55 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 4
  %shr33 = lshr i32 %shl, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i21) #8
  %59 = getelementptr inbounds [2 x i8], ptr %buf.i21, i32 0, i32 1
  %60 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 34, ptr %buf.i21, align 1
  %conv1.i23 = trunc i32 %shr33 to i8
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv1.i23, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22) #8
  %62 = getelementptr inbounds i8, ptr %msg.i22, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 196607, ptr %62, align 4
  %conv2.i24 = zext i8 %58 to i16
  %64 = ptrtoint ptr %msg.i22 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv2.i24, ptr %msg.i22, align 4
  %flags.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i25 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i25, align 2
  %buf3.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 3
  %66 = ptrtoint ptr %buf3.i27 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf.i21, ptr %buf3.i27, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %call.i28 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i22, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i28)
  %cmp.not.i29 = icmp eq i32 %call.i28, 1
  br i1 %cmp.not.i29, label %while.end.cx24123_i2c_writereg.exit33_crit_edge, label %do.end.i31

while.end.cx24123_i2c_writereg.exit33_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit33

do.end.i31:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %and34 = and i32 %shr33, 255
  %call5.i30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i28, i32 noundef 34, i32 noundef %and34) #12
  br label %cx24123_i2c_writereg.exit33

cx24123_i2c_writereg.exit33:                      ; preds = %do.end.i31, %while.end.cx24123_i2c_writereg.exit33_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i21) #8
  %69 = getelementptr inbounds i8, ptr %msg.i36, i32 4
  %flags.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 1
  %buf.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 3
  %arrayinit.element.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 1
  %flags3.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 1, i32 1
  %len4.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 1, i32 2
  %buf5.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 1, i32 3
  br label %while.cond36

while.cond36:                                     ; preds = %if.end54, %cx24123_i2c_writereg.exit33
  %70 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %config, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i34)
  %74 = ptrtoint ptr %reg.addr.i34 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 32, ptr %reg.addr.i34, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i35) #8
  %75 = ptrtoint ptr %b.i35 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %b.i35, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i36) #8
  %76 = call ptr @memset(ptr %69, i32 255, i32 16)
  %conv.i37 = zext i8 %73 to i16
  %77 = ptrtoint ptr %msg.i36 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i37, ptr %msg.i36, align 4
  %78 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i38, align 2
  %79 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %69, align 4
  %80 = ptrtoint ptr %buf.i40 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %reg.addr.i34, ptr %buf.i40, align 4
  %81 = ptrtoint ptr %arrayinit.element.i41 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i37, ptr %arrayinit.element.i41, align 4
  %82 = ptrtoint ptr %flags3.i42 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %flags3.i42, align 2
  %83 = ptrtoint ptr %len4.i43 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %len4.i43, align 4
  %84 = ptrtoint ptr %buf5.i44 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %b.i35, ptr %buf5.i44, align 4
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %call.i45 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %msg.i36, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i45)
  %cmp.not.i46 = icmp eq i32 %call.i45, 2
  br i1 %cmp.not.i46, label %if.end.i51, label %do.end.i49

do.end.i49:                                       ; preds = %while.cond36
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %reg.addr.i34 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %reg.addr.i34, align 1
  %conv8.i47 = zext i8 %88 to i32
  %call9.i48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i47, i32 noundef %call.i45) #12
  br label %cx24123_i2c_readreg.exit53

if.end.i51:                                       ; preds = %while.cond36
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %b.i35 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %b.i35, align 1
  %conv12.i50 = zext i8 %90 to i32
  br label %cx24123_i2c_readreg.exit53

cx24123_i2c_readreg.exit53:                       ; preds = %if.end.i51, %do.end.i49
  %retval.0.i52 = phi i32 [ %call.i45, %do.end.i49 ], [ %conv12.i50, %if.end.i51 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i36) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i35) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i34)
  %and40 = and i32 %retval.0.i52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %cmp41 = icmp eq i32 %and40, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  br i1 %cmp41, label %while.body42, label %while.end55

while.body42:                                     ; preds = %cx24123_i2c_readreg.exit53
  %sub43 = sub i32 %add30, %91
  %cmp44 = icmp slt i32 %sub43, 0
  br i1 %cmp44, label %do.end49, label %if.end54

do.end49:                                         ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.108) #12
  br label %cleanup

if.end54:                                         ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 10) #8
  br label %while.cond36

while.end55:                                      ; preds = %cx24123_i2c_readreg.exit53
  %add57 = add i32 %91, 4
  %92 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %config, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i54) #8
  %96 = getelementptr inbounds [2 x i8], ptr %buf.i54, i32 0, i32 1
  %97 = ptrtoint ptr %buf.i54 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 34, ptr %buf.i54, align 1
  %conv1.i56 = trunc i32 %shl to i8
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv1.i56, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i55) #8
  %99 = getelementptr inbounds i8, ptr %msg.i55, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %99, align 4
  %conv2.i57 = zext i8 %95 to i16
  %101 = ptrtoint ptr %msg.i55 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv2.i57, ptr %msg.i55, align 4
  %flags.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i58 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i58, align 2
  %buf3.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55, i32 0, i32 3
  %103 = ptrtoint ptr %buf3.i60 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %buf.i54, ptr %buf3.i60, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 8
  %call.i61 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msg.i55, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i61)
  %cmp.not.i62 = icmp eq i32 %call.i61, 1
  br i1 %cmp.not.i62, label %while.end55.cx24123_i2c_writereg.exit66_crit_edge, label %do.end.i64

while.end55.cx24123_i2c_writereg.exit66_crit_edge: ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit66

do.end.i64:                                       ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #10
  %and60 = and i32 %shl, 248
  %call5.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i61, i32 noundef 34, i32 noundef %and60) #12
  br label %cx24123_i2c_writereg.exit66

cx24123_i2c_writereg.exit66:                      ; preds = %do.end.i64, %while.end55.cx24123_i2c_writereg.exit66_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i54) #8
  %106 = getelementptr inbounds i8, ptr %msg.i69, i32 4
  %flags.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 1
  %buf.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 3
  %arrayinit.element.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1
  %flags3.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 1
  %len4.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 2
  %buf5.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 3
  br label %while.cond62

while.cond62:                                     ; preds = %if.end80, %cx24123_i2c_writereg.exit66
  %107 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %config, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i67)
  %111 = ptrtoint ptr %reg.addr.i67 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 32, ptr %reg.addr.i67, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i68) #8
  %112 = ptrtoint ptr %b.i68 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %b.i68, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i69) #8
  %113 = call ptr @memset(ptr %106, i32 255, i32 16)
  %conv.i70 = zext i8 %110 to i16
  %114 = ptrtoint ptr %msg.i69 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i70, ptr %msg.i69, align 4
  %115 = ptrtoint ptr %flags.i71 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i71, align 2
  %116 = ptrtoint ptr %106 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %106, align 4
  %117 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %reg.addr.i67, ptr %buf.i73, align 4
  %118 = ptrtoint ptr %arrayinit.element.i74 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i70, ptr %arrayinit.element.i74, align 4
  %119 = ptrtoint ptr %flags3.i75 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1, ptr %flags3.i75, align 2
  %120 = ptrtoint ptr %len4.i76 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %len4.i76, align 4
  %121 = ptrtoint ptr %buf5.i77 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %b.i68, ptr %buf5.i77, align 4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 8
  %call.i78 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i69, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i78)
  %cmp.not.i79 = icmp eq i32 %call.i78, 2
  br i1 %cmp.not.i79, label %if.end.i84, label %do.end.i82

do.end.i82:                                       ; preds = %while.cond62
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %reg.addr.i67 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %reg.addr.i67, align 1
  %conv8.i80 = zext i8 %125 to i32
  %call9.i81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i80, i32 noundef %call.i78) #12
  br label %cx24123_i2c_readreg.exit86

if.end.i84:                                       ; preds = %while.cond62
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %b.i68 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %b.i68, align 1
  %conv12.i83 = zext i8 %127 to i32
  br label %cx24123_i2c_readreg.exit86

cx24123_i2c_readreg.exit86:                       ; preds = %if.end.i84, %do.end.i82
  %retval.0.i85 = phi i32 [ %call.i78, %do.end.i82 ], [ %conv12.i83, %if.end.i84 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i69) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i68) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i67)
  %and66 = and i32 %retval.0.i85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %while.end81, label %while.body68

while.body68:                                     ; preds = %cx24123_i2c_readreg.exit86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %128 = load volatile i32, ptr @jiffies, align 128
  %sub69 = sub i32 %add57, %128
  %cmp70 = icmp slt i32 %sub69, 0
  br i1 %cmp70, label %do.end75, label %if.end80

do.end75:                                         ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.108) #12
  br label %cleanup

if.end80:                                         ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 10) #8
  br label %while.cond62

while.end81:                                      ; preds = %cx24123_i2c_readreg.exit86
  %129 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %config, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %130, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i87)
  %133 = ptrtoint ptr %reg.addr.i87 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 32, ptr %reg.addr.i87, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i88) #8
  %134 = ptrtoint ptr %b.i88 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %b.i88, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i89) #8
  %135 = getelementptr inbounds i8, ptr %msg.i89, i32 4
  %136 = call ptr @memset(ptr %135, i32 255, i32 16)
  %conv.i90 = zext i8 %132 to i16
  %137 = ptrtoint ptr %msg.i89 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv.i90, ptr %msg.i89, align 4
  %flags.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i91 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i91, align 2
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 1, ptr %135, align 4
  %buf.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 3
  %140 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %reg.addr.i87, ptr %buf.i93, align 4
  %arrayinit.element.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 1
  %141 = ptrtoint ptr %arrayinit.element.i94 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv.i90, ptr %arrayinit.element.i94, align 4
  %flags3.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 1, i32 1
  %142 = ptrtoint ptr %flags3.i95 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %flags3.i95, align 2
  %len4.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 1, i32 2
  %143 = ptrtoint ptr %len4.i96 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 1, ptr %len4.i96, align 4
  %buf5.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 1, i32 3
  %144 = ptrtoint ptr %buf5.i97 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %b.i88, ptr %buf5.i97, align 4
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 8
  %call.i98 = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %msg.i89, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i98)
  %cmp.not.i99 = icmp eq i32 %call.i98, 2
  br i1 %cmp.not.i99, label %if.end.i104, label %do.end.i102

do.end.i102:                                      ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %reg.addr.i87 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %reg.addr.i87, align 1
  %conv8.i100 = zext i8 %148 to i32
  %call9.i101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i100, i32 noundef %call.i98) #12
  br label %cx24123_i2c_readreg.exit106

if.end.i104:                                      ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %b.i88 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %b.i88, align 1
  %conv12.i103 = zext i8 %150 to i32
  br label %cx24123_i2c_readreg.exit106

cx24123_i2c_readreg.exit106:                      ; preds = %if.end.i104, %do.end.i102
  %retval.0.i105 = phi i32 [ %call.i98, %do.end.i102 ], [ %conv12.i103, %if.end.i104 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i89) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i88) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i87)
  %or = or i32 %retval.0.i105, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i107) #8
  %151 = getelementptr inbounds [2 x i8], ptr %buf.i107, i32 0, i32 1
  %152 = ptrtoint ptr %buf.i107 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 32, ptr %buf.i107, align 1
  %conv1.i109 = trunc i32 %or to i8
  %153 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv1.i109, ptr %151, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i108) #8
  %154 = getelementptr inbounds i8, ptr %msg.i108, i32 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 196607, ptr %154, align 4
  %156 = ptrtoint ptr %msg.i108 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv.i90, ptr %msg.i108, align 4
  %flags.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i108, i32 0, i32 1
  %157 = ptrtoint ptr %flags.i111 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %flags.i111, align 2
  %buf3.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i108, i32 0, i32 3
  %158 = ptrtoint ptr %buf3.i113 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %buf.i107, ptr %buf3.i113, align 4
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 8
  %call.i114 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %msg.i108, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i114)
  %cmp.not.i115 = icmp eq i32 %call.i114, 1
  br i1 %cmp.not.i115, label %cx24123_i2c_readreg.exit106.cx24123_i2c_writereg.exit119_crit_edge, label %do.end.i117

cx24123_i2c_readreg.exit106.cx24123_i2c_writereg.exit119_crit_edge: ; preds = %cx24123_i2c_readreg.exit106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit119

do.end.i117:                                      ; preds = %cx24123_i2c_readreg.exit106
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i114, i32 noundef 32, i32 noundef %or) #12
  br label %cx24123_i2c_writereg.exit119

cx24123_i2c_writereg.exit119:                     ; preds = %do.end.i117, %cx24123_i2c_readreg.exit106.cx24123_i2c_writereg.exit119_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i108) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i107) #8
  %161 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %config, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %162, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i120)
  %165 = ptrtoint ptr %reg.addr.i120 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 32, ptr %reg.addr.i120, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i121) #8
  %166 = ptrtoint ptr %b.i121 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %b.i121, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i122) #8
  %167 = getelementptr inbounds i8, ptr %msg.i122, i32 4
  %168 = call ptr @memset(ptr %167, i32 255, i32 16)
  %conv.i123 = zext i8 %164 to i16
  %169 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv.i123, ptr %msg.i122, align 4
  %flags.i124 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 1
  %170 = ptrtoint ptr %flags.i124 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %flags.i124, align 2
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 1, ptr %167, align 4
  %buf.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 3
  %172 = ptrtoint ptr %buf.i126 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %reg.addr.i120, ptr %buf.i126, align 4
  %arrayinit.element.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1
  %173 = ptrtoint ptr %arrayinit.element.i127 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %conv.i123, ptr %arrayinit.element.i127, align 4
  %flags3.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1, i32 1
  %174 = ptrtoint ptr %flags3.i128 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 1, ptr %flags3.i128, align 2
  %len4.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1, i32 2
  %175 = ptrtoint ptr %len4.i129 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 1, ptr %len4.i129, align 4
  %buf5.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 1, i32 3
  %176 = ptrtoint ptr %buf5.i130 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %b.i121, ptr %buf5.i130, align 4
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 8
  %call.i131 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %msg.i122, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i131)
  %cmp.not.i132 = icmp eq i32 %call.i131, 2
  br i1 %cmp.not.i132, label %if.end.i137, label %do.end.i135

do.end.i135:                                      ; preds = %cx24123_i2c_writereg.exit119
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %reg.addr.i120 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %reg.addr.i120, align 1
  %conv8.i133 = zext i8 %180 to i32
  %call9.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i133, i32 noundef %call.i131) #12
  br label %cx24123_i2c_readreg.exit139

if.end.i137:                                      ; preds = %cx24123_i2c_writereg.exit119
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %b.i121 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %b.i121, align 1
  %conv12.i136 = zext i8 %182 to i32
  br label %cx24123_i2c_readreg.exit139

cx24123_i2c_readreg.exit139:                      ; preds = %if.end.i137, %do.end.i135
  %retval.0.i138 = phi i32 [ %call.i131, %do.end.i135 ], [ %conv12.i136, %if.end.i137 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i122) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i121) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i120)
  %and93 = and i32 %retval.0.i138, 253
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i140) #8
  %183 = getelementptr inbounds [2 x i8], ptr %buf.i140, i32 0, i32 1
  %184 = ptrtoint ptr %buf.i140 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 32, ptr %buf.i140, align 1
  %conv1.i142 = trunc i32 %and93 to i8
  %185 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv1.i142, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i141) #8
  %186 = getelementptr inbounds i8, ptr %msg.i141, i32 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 196607, ptr %186, align 4
  %188 = ptrtoint ptr %msg.i141 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv.i123, ptr %msg.i141, align 4
  %flags.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 0, i32 1
  %189 = ptrtoint ptr %flags.i144 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 0, ptr %flags.i144, align 2
  %buf3.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i141, i32 0, i32 3
  %190 = ptrtoint ptr %buf3.i146 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %buf.i140, ptr %buf3.i146, align 4
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 8
  %call.i147 = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %msg.i141, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i147)
  %cmp.not.i148 = icmp eq i32 %call.i147, 1
  br i1 %cmp.not.i148, label %cx24123_i2c_readreg.exit139.cx24123_i2c_writereg.exit152_crit_edge, label %do.end.i150

cx24123_i2c_readreg.exit139.cx24123_i2c_writereg.exit152_crit_edge: ; preds = %cx24123_i2c_readreg.exit139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24123_i2c_writereg.exit152

do.end.i150:                                      ; preds = %cx24123_i2c_readreg.exit139
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call.i147, i32 noundef 32, i32 noundef %and93) #12
  br label %cx24123_i2c_writereg.exit152

cx24123_i2c_writereg.exit152:                     ; preds = %do.end.i150, %cx24123_i2c_readreg.exit139.cx24123_i2c_writereg.exit152_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i141) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i140) #8
  br label %cleanup

cleanup:                                          ; preds = %cx24123_i2c_writereg.exit152, %do.end75, %do.end49, %do.end23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24123_wait_for_diseqc(ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 20
  %config = getelementptr inbounds %struct.cx24123_state, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 41, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = call ptr @memset(ptr %1, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %1, align 4
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %14 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags3.i, align 2
  %15 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len4.i, align 4
  %16 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b.i, ptr %buf5.i, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %20 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv8.i, i32 noundef %call.i) #12
  br label %cx24123_i2c_readreg.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %cx24123_i2c_readreg.exit

cx24123_i2c_readreg.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %and = and i32 %retval.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body, label %cx24123_i2c_readreg.exit.while.end_crit_edge

cx24123_i2c_readreg.exit.while.end_crit_edge:     ; preds = %cx24123_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %cx24123_i2c_readreg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %23
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154) #12
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 10) #8
  br label %while.cond

while.end:                                        ; preds = %do.end, %cx24123_i2c_readreg.exit.while.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !51, !52, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !85, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !114, !115, !116, !118, !119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !143, !144, !145, !146, !147, !149, !150, !151, !152, !153, !155, !156, !157, !158, !159, !161, !162, !163, !164, !165, !167, !168, !169, !170, !171, !172, !174, !175, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !189, !191, !193, !195, !196, !197, !198, !199, !200, !202, !203, !204, !206, !207, !209, !210, !211, !213, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !231, !232, !234, !235, !236, !237, !238, !240, !241, !242, !243, !244, !245, !247, !248, !249, !250, !251, !252, !254, !255, !256, !257, !258, !259, !261, !262, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !275, !276, !278, !279, !280, !281, !282, !283, !285, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297, !298, !299, !300, !302, !303, !304, !305}
!llvm.module.flags = !{!306, !307, !308, !309, !310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !{ptr @__param_force_band, !1, !"__param_force_band", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_bandtype290, !1, !"__UNIQUE_ID_force_bandtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_band291, !4, !"__UNIQUE_ID_force_band291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 25, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype292, !6, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug293, !9, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 30, i32 1}
!10 = !{ptr @__ksymtab_cx24123_get_tuner_i2c_adapter, !11, !"__ksymtab_cx24123_get_tuner_i2c_adapter", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1037, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1048, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cx24123_attach._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @cx24123_attach._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cx24123_attach._entry.3, !13, !"_entry", i1 false, i1 false}
!20 = !{ptr @cx24123_attach._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1050, i32 3}
!23 = !{ptr @cx24123_attach._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cx24123_attach._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1062, i32 3}
!27 = !{ptr @cx24123_attach._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cx24123_attach._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1065, i32 3}
!31 = !{ptr @cx24123_attach._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cx24123_attach._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1068, i32 3}
!35 = !{ptr @cx24123_attach._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cx24123_attach._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1081, i32 41}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1088, i32 3}
!41 = !{ptr @cx24123_attach._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cx24123_attach._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_cx24123_attach, !44, !"__ksymtab_cx24123_attach", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1099, i32 1}
!45 = !{ptr @__UNIQUE_ID_description294, !46, !"__UNIQUE_ID_description294", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1135, i32 1}
!47 = !{ptr @__UNIQUE_ID_author295, !48, !"__UNIQUE_ID_author295", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1137, i32 1}
!49 = !{ptr @__UNIQUE_ID_file296, !50, !"__UNIQUE_ID_file296", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1138, i32 1}
!51 = !{ptr @__UNIQUE_ID_license297, !50, !"__UNIQUE_ID_license297", i1 false, i1 false}
!52 = !{ptr @force_band, !53, !"force_band", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 23, i32 12}
!54 = !{ptr @debug, !55, !"debug", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 28, i32 12}
!56 = !{ptr @__param_str_force_band, !1, !"__param_str_force_band", i1 false, i1 false}
!57 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 265, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cx24123_i2c_readreg._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cx24123_i2c_readreg._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 245, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cx24123_i2c_writereg._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cx24123_i2c_writereg._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @cx24123_tuner_i2c_algo, !69, !"cx24123_tuner_i2c_algo", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1026, i32 35}
!70 = !{ptr @cx24123_ops, !71, !"cx24123_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1101, i32 38}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 1007, i32 2}
!74 = !{ptr @cx24123_release._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cx24123_release._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @cx24123_release._entry.27, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @cx24123_release._entry_ptr.28, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 691, i32 2}
!80 = !{ptr @cx24123_initfe._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cx24123_initfe._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @cx24123_initfe._entry.30, !79, !"_entry", i1 false, i1 false}
!84 = !{ptr @cx24123_initfe._entry_ptr.32, !79, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @cx24123_regdata, !86, !"cx24123_regdata", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 187, i32 3}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 905, i32 2}
!89 = !{ptr @cx24123_set_frontend._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cx24123_set_frontend._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @cx24123_set_frontend._entry.34, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @cx24123_set_frontend._entry_ptr.35, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 922, i32 3}
!95 = !{ptr @cx24123_set_frontend._entry.36, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cx24123_set_frontend._entry_ptr.38, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 287, i32 3}
!99 = !{ptr @cx24123_set_inversion._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cx24123_set_inversion._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cx24123_set_inversion._entry.40, !98, !"_entry", i1 false, i1 false}
!103 = !{ptr @cx24123_set_inversion._entry_ptr.42, !98, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @cx24123_set_inversion._entry.43, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 292, i32 3}
!106 = !{ptr @cx24123_set_inversion._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cx24123_set_inversion._entry.45, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @cx24123_set_inversion._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @cx24123_set_inversion._entry.48, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 297, i32 3}
!112 = !{ptr @cx24123_set_inversion._entry_ptr.49, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cx24123_set_inversion._entry.50, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @cx24123_set_inversion._entry_ptr.52, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 342, i32 3}
!118 = !{ptr @cx24123_set_fec._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cx24123_set_fec._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cx24123_set_fec._entry.54, !117, !"_entry", i1 false, i1 false}
!122 = !{ptr @cx24123_set_fec._entry_ptr.56, !117, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @cx24123_set_fec._entry.57, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 347, i32 3}
!125 = !{ptr @cx24123_set_fec._entry_ptr.58, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cx24123_set_fec._entry.59, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @cx24123_set_fec._entry_ptr.61, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @cx24123_set_fec._entry.62, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 352, i32 3}
!131 = !{ptr @cx24123_set_fec._entry_ptr.63, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @cx24123_set_fec._entry.64, !130, !"_entry", i1 false, i1 false}
!134 = !{ptr @cx24123_set_fec._entry_ptr.66, !130, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @cx24123_set_fec._entry.67, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 357, i32 3}
!137 = !{ptr @cx24123_set_fec._entry_ptr.68, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @cx24123_set_fec._entry.69, !136, !"_entry", i1 false, i1 false}
!140 = !{ptr @cx24123_set_fec._entry_ptr.71, !136, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @cx24123_set_fec._entry.72, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 362, i32 3}
!143 = !{ptr @cx24123_set_fec._entry_ptr.73, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @cx24123_set_fec._entry.74, !142, !"_entry", i1 false, i1 false}
!146 = !{ptr @cx24123_set_fec._entry_ptr.76, !142, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @cx24123_set_fec._entry.77, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 367, i32 3}
!149 = !{ptr @cx24123_set_fec._entry_ptr.78, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.80, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @cx24123_set_fec._entry.79, !148, !"_entry", i1 false, i1 false}
!152 = !{ptr @cx24123_set_fec._entry_ptr.81, !148, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @cx24123_set_fec._entry.82, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 372, i32 3}
!155 = !{ptr @cx24123_set_fec._entry_ptr.83, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.85, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @cx24123_set_fec._entry.84, !154, !"_entry", i1 false, i1 false}
!158 = !{ptr @cx24123_set_fec._entry_ptr.86, !154, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @cx24123_set_fec._entry.87, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 377, i32 3}
!161 = !{ptr @cx24123_set_fec._entry_ptr.88, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @cx24123_set_fec._entry.89, !160, !"_entry", i1 false, i1 false}
!164 = !{ptr @cx24123_set_fec._entry_ptr.91, !160, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.92, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 491, i32 2}
!167 = !{ptr @cx24123_set_symbolrate._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cx24123_set_symbolrate._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.94, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @cx24123_set_symbolrate._entry.93, !166, !"_entry", i1 false, i1 false}
!171 = !{ptr @cx24123_set_symbolrate._entry_ptr.95, !166, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.96, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 640, i32 2}
!174 = !{ptr @cx24123_pll_tune._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @cx24123_pll_tune._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.98, !173, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @cx24123_pll_tune._entry.97, !173, !"_entry", i1 false, i1 false}
!178 = !{ptr @cx24123_pll_tune._entry_ptr.99, !173, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.101, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 643, i32 3}
!181 = !{ptr @cx24123_pll_tune._entry.100, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @cx24123_pll_tune._entry_ptr.102, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @cx24123_pll_tune._entry.103, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 660, i32 2}
!185 = !{ptr @cx24123_pll_tune._entry_ptr.104, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.106, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @cx24123_pll_tune._entry.105, !184, !"_entry", i1 false, i1 false}
!188 = !{ptr @cx24123_pll_tune._entry_ptr.107, !184, !"_entry_ptr", i1 false, i1 false}
!189 = distinct !{null, !190, !"cx24123_AGC_vals", i1 false, i1 false}
!190 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 72, i32 3}
!191 = !{ptr @cx24123_bandselect_vals, !192, !"cx24123_bandselect_vals", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 109, i32 3}
!193 = !{ptr @.str.108, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 582, i32 2}
!195 = !{ptr @cx24123_pll_writereg._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @cx24123_pll_writereg._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.110, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @cx24123_pll_writereg._entry.109, !194, !"_entry", i1 false, i1 false}
!199 = !{ptr @cx24123_pll_writereg._entry_ptr.111, !194, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.113, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 595, i32 4}
!202 = !{ptr @cx24123_pll_writereg._entry.112, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @cx24123_pll_writereg._entry_ptr.114, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @cx24123_pll_writereg._entry.115, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 607, i32 4}
!206 = !{ptr @cx24123_pll_writereg._entry_ptr.116, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.118, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 620, i32 4}
!209 = !{ptr @cx24123_pll_writereg._entry.117, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @cx24123_pll_writereg._entry_ptr.119, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.120, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 940, i32 2}
!213 = !{ptr @cx24123_get_frontend._entry, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @cx24123_get_frontend._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @cx24123_get_frontend._entry.121, !212, !"_entry", i1 false, i1 false}
!216 = !{ptr @cx24123_get_frontend._entry_ptr.122, !212, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.124, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 943, i32 3}
!219 = !{ptr @cx24123_get_frontend._entry.123, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @cx24123_get_frontend._entry_ptr.125, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.127, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 947, i32 3}
!223 = !{ptr @cx24123_get_frontend._entry.126, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @cx24123_get_frontend._entry_ptr.128, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.129, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 315, i32 3}
!227 = !{ptr @cx24123_get_inversion._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @cx24123_get_inversion._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.131, !226, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @cx24123_get_inversion._entry.130, !226, !"_entry", i1 false, i1 false}
!231 = !{ptr @cx24123_get_inversion._entry_ptr.132, !226, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @cx24123_get_inversion._entry.133, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 318, i32 3}
!234 = !{ptr @cx24123_get_inversion._entry_ptr.134, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.136, !233, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @cx24123_get_inversion._entry.135, !233, !"_entry", i1 false, i1 false}
!237 = !{ptr @cx24123_get_inversion._entry_ptr.137, !233, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.138, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 868, i32 2}
!240 = !{ptr @cx24123_read_ber._entry, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @cx24123_read_ber._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.140, !239, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @cx24123_read_ber._entry.139, !239, !"_entry", i1 false, i1 false}
!244 = !{ptr @cx24123_read_ber._entry_ptr.141, !239, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.142, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 881, i32 2}
!247 = !{ptr @cx24123_read_signal_strength._entry, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @cx24123_read_signal_strength._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.144, !246, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @cx24123_read_signal_strength._entry.143, !246, !"_entry", i1 false, i1 false}
!251 = !{ptr @cx24123_read_signal_strength._entry_ptr.145, !246, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.146, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 895, i32 2}
!254 = !{ptr @cx24123_read_snr._entry, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @cx24123_read_snr._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.148, !253, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @cx24123_read_snr._entry.147, !253, !"_entry", i1 false, i1 false}
!258 = !{ptr @cx24123_read_snr._entry_ptr.149, !253, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.150, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 754, i32 2}
!261 = !{ptr @cx24123_send_diseqc_msg._entry, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @cx24123_send_diseqc_msg._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @cx24123_send_diseqc_msg._entry.151, !260, !"_entry", i1 false, i1 false}
!264 = !{ptr @cx24123_send_diseqc_msg._entry_ptr.152, !260, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.153, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 740, i32 4}
!267 = !{ptr @.str.154, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @cx24123_wait_for_diseqc._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @cx24123_wait_for_diseqc._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.155, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 790, i32 2}
!272 = !{ptr @cx24123_diseqc_send_burst._entry, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @cx24123_diseqc_send_burst._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @cx24123_diseqc_send_burst._entry.156, !271, !"_entry", i1 false, i1 false}
!275 = !{ptr @cx24123_diseqc_send_burst._entry_ptr.157, !271, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.158, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 968, i32 3}
!278 = !{ptr @cx24123_set_tone._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @cx24123_set_tone._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.160, !277, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @cx24123_set_tone._entry.159, !277, !"_entry", i1 false, i1 false}
!282 = !{ptr @cx24123_set_tone._entry_ptr.161, !277, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @cx24123_set_tone._entry.162, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 971, i32 3}
!285 = !{ptr @cx24123_set_tone._entry_ptr.163, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.165, !284, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @cx24123_set_tone._entry.164, !284, !"_entry", i1 false, i1 false}
!288 = !{ptr @cx24123_set_tone._entry_ptr.166, !284, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.168, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 974, i32 3}
!291 = !{ptr @cx24123_set_tone._entry.167, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @cx24123_set_tone._entry_ptr.169, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.170, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 719, i32 3}
!295 = !{ptr @cx24123_set_voltage._entry, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @cx24123_set_voltage._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.172, !294, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @cx24123_set_voltage._entry.171, !294, !"_entry", i1 false, i1 false}
!299 = !{ptr @cx24123_set_voltage._entry_ptr.173, !294, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @cx24123_set_voltage._entry.174, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/media/dvb-frontends/cx24123.c", i32 722, i32 3}
!302 = !{ptr @cx24123_set_voltage._entry_ptr.175, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.177, !301, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @cx24123_set_voltage._entry.176, !301, !"_entry", i1 false, i1 false}
!305 = !{ptr @cx24123_set_voltage._entry_ptr.178, !301, !"_entry_ptr", i1 false, i1 false}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 1, !"min_enum_size", i32 4}
!308 = !{i32 8, !"branch-target-enforcement", i32 0}
!309 = !{i32 8, !"sign-return-address", i32 0}
!310 = !{i32 8, !"sign-return-address-all", i32 0}
!311 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!312 = !{i32 7, !"uwtable", i32 1}
!313 = !{i32 7, !"frame-pointer", i32 2}
!314 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!315 = !{!"branch_weights", i32 2000, i32 1}
!316 = !{i64 2148457516, i64 2148457796, i64 2148458130, i64 2148458464}
