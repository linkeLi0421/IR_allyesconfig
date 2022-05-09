; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/max2165.c_pt.bc'
source_filename = "../drivers/media/tuners/max2165.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+max2165_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_max2165_attach\09\09\09\09"
module asm "\09.long\09__crc_max2165_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max2165_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22max2165_attach\22\09\09\09\09\09"
module asm "__kstrtabns_max2165_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.max2165_priv = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.max2165_config = type { i8, i8 }

@__param_str_debug = internal constant [14 x i8] c"max2165.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"max2165.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [56 x i8] c"max2165.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@max2165_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017max2165: %s(%d-%04x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max2165_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/tuners/max2165.c\00", [33 x i8] zeroinitializer }, align 32
@max2165_attach._entry_ptr = internal global ptr @max2165_attach._entry, section ".printk_index", align 4
@max2165_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Maxim MAX2165\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 862000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @max2165_release, ptr @max2165_init, ptr @max2165_sleep, ptr null, ptr null, ptr @max2165_set_params, ptr null, ptr null, ptr @max2165_get_frequency, ptr @max2165_get_bandwidth, ptr null, ptr @max2165_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_max2165_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_max2165_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_max2165_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max2165_attach to i32), ptr @__kstrtab_max2165_attach, ptr @__kstrtabns_max2165_attach }, section "___ksymtab+max2165_attach", align 4
@__UNIQUE_ID_author292 = internal constant [56 x i8] c"max2165.author=David T. L. Wong <davidtlwong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [55 x i8] c"max2165.description=Maxim MAX2165 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [42 x i8] c"max2165.file=drivers/media/tuners/max2165\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"max2165.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@max2165_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017max2165: %s()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max2165_release\00", [16 x i8] zeroinitializer }, align 32
@max2165_release._entry_ptr = internal global ptr @max2165_release._entry, section ".printk_index", align 4
@max2165_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.5, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max2165_sleep\00", [18 x i8] zeroinitializer }, align 32
@max2165_sleep._entry_ptr = internal global ptr @max2165_sleep._entry, section ".printk_index", align 4
@max2165_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016MAX2165: bandwidth %d Hz not supported.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max2165_set_params\00", [45 x i8] zeroinitializer }, align 32
@max2165_set_params._entry_ptr = internal global ptr @max2165_set_params._entry, section ".printk_index", align 4
@max2165_set_params._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017max2165: %s() frequency=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@max2165_set_params._entry_ptr.10 = internal global ptr @max2165_set_params._entry.8, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@max2165_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017max2165: %s: error reg=0x%x, ret=%i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max2165_read_reg\00", [47 x i8] zeroinitializer }, align 32
@max2165_read_reg._entry_ptr = internal global ptr @max2165_read_reg._entry, section ".printk_index", align 4
@max2165_read_reg._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017max2165: %s: reg=0x%02X, data=0x%02X\0A\00", [56 x i8] zeroinitializer }, align 32
@max2165_read_reg._entry_ptr.15 = internal global ptr @max2165_read_reg._entry.13, section ".printk_index", align 4
@max2165_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max2165_write_reg\00", [46 x i8] zeroinitializer }, align 32
@max2165_write_reg._entry_ptr = internal global ptr @max2165_write_reg._entry, section ".printk_index", align 4
@max2165_write_reg._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017max2165: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", [46 x i8] zeroinitializer }, align 32
@max2165_write_reg._entry_ptr.19 = internal global ptr @max2165_write_reg._entry.17, section ".printk_index", align 4
@max2165_set_rf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017max2165: tf = %X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max2165_set_rf\00", [17 x i8] zeroinitializer }, align 32
@max2165_set_rf._entry_ptr = internal global ptr @max2165_set_rf._entry, section ".printk_index", align 4
@max2165_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.22, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max2165_get_frequency\00", [42 x i8] zeroinitializer }, align 32
@max2165_get_frequency._entry_ptr = internal global ptr @max2165_get_frequency._entry, section ".printk_index", align 4
@max2165_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.23, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max2165_get_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@max2165_get_bandwidth._entry_ptr = internal global ptr @max2165_get_bandwidth._entry, section ".printk_index", align 4
@max2165_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.24, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max2165_get_status\00", [45 x i8] zeroinitializer }, align 32
@max2165_get_status._entry_ptr = internal global ptr @max2165_get_status._entry, section ".printk_index", align 4
@max2165_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.25, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max2165_init\00", [19 x i8] zeroinitializer }, align 32
@max2165_init._entry_ptr = internal global ptr @max2165_init._entry, section ".printk_index", align 4
@max2165_read_rom_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017max2165: tf_ntch_low_cfg = 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max2165_read_rom_table\00", [41 x i8] zeroinitializer }, align 32
@max2165_read_rom_table._entry_ptr = internal global ptr @max2165_read_rom_table._entry, section ".printk_index", align 4
@max2165_read_rom_table._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017max2165: tf_ntch_hi_cfg = 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@max2165_read_rom_table._entry_ptr.30 = internal global ptr @max2165_read_rom_table._entry.28, section ".printk_index", align 4
@max2165_read_rom_table._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017max2165: tf_balun_low_ref = 0x%X\0A\00", [60 x i8] zeroinitializer }, align 32
@max2165_read_rom_table._entry_ptr.33 = internal global ptr @max2165_read_rom_table._entry.31, section ".printk_index", align 4
@max2165_read_rom_table._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017max2165: tf_balun_hi_ref = 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@max2165_read_rom_table._entry_ptr.36 = internal global ptr @max2165_read_rom_table._entry.34, section ".printk_index", align 4
@max2165_read_rom_table._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017max2165: bb_filter_7mhz_cfg = 0x%X\0A\00", [58 x i8] zeroinitializer }, align 32
@max2165_read_rom_table._entry_ptr.39 = internal global ptr @max2165_read_rom_table._entry.37, section ".printk_index", align 4
@max2165_read_rom_table._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.27, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017max2165: bb_filter_8mhz_cfg = 0x%X\0A\00", [58 x i8] zeroinitializer }, align 32
@max2165_read_rom_table._entry_ptr.42 = internal global ptr @max2165_read_rom_table._entry.40, section ".printk_index", align 4
@max2165_debug_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017max2165: auto VCO active: %d, auto VCO success: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max2165_debug_status\00", [43 x i8] zeroinitializer }, align 32
@max2165_debug_status._entry_ptr = internal global ptr @max2165_debug_status._entry, section ".printk_index", align 4
@max2165_debug_status._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017max2165: PLL locked: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@max2165_debug_status._entry_ptr.47 = internal global ptr @max2165_debug_status._entry.45, section ".printk_index", align 4
@max2165_debug_status._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017max2165: DC offset low: %d, DC offset high: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@max2165_debug_status._entry_ptr.50 = internal global ptr @max2165_debug_status._entry.48, section ".printk_index", align 4
@max2165_debug_status._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017max2165: Signal lvl over threshold: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@max2165_debug_status._entry_ptr.53 = internal global ptr @max2165_debug_status._entry.51, section ".printk_index", align 4
@max2165_debug_status._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017max2165: VCO: %d, VCO Sub-band: %d, ADC: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@max2165_debug_status._entry_ptr.56 = internal global ptr @max2165_debug_status._entry.54, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7000000, i64 8000000]
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 28, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 393, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"max2165_tuner_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 368, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 362, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 321, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 261, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 266, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 66, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 72, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 41, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 46, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 209, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 286, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 294, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 305, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 328, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 111, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 112, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 113, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 114, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 115, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 116, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 240, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 242, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 243, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 245, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private constant [34 x i8] c"../drivers/media/tuners/max2165.c\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 246, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_max2165_attach, ptr @__param_debug, ptr @max2165_attach._entry, ptr @max2165_attach._entry_ptr, ptr @max2165_debug_status._entry, ptr @max2165_debug_status._entry.45, ptr @max2165_debug_status._entry.48, ptr @max2165_debug_status._entry.51, ptr @max2165_debug_status._entry.54, ptr @max2165_debug_status._entry_ptr, ptr @max2165_debug_status._entry_ptr.47, ptr @max2165_debug_status._entry_ptr.50, ptr @max2165_debug_status._entry_ptr.53, ptr @max2165_debug_status._entry_ptr.56, ptr @max2165_get_bandwidth._entry, ptr @max2165_get_bandwidth._entry_ptr, ptr @max2165_get_frequency._entry, ptr @max2165_get_frequency._entry_ptr, ptr @max2165_get_status._entry, ptr @max2165_get_status._entry_ptr, ptr @max2165_init._entry, ptr @max2165_init._entry_ptr, ptr @max2165_read_reg._entry, ptr @max2165_read_reg._entry.13, ptr @max2165_read_reg._entry_ptr, ptr @max2165_read_reg._entry_ptr.15, ptr @max2165_read_rom_table._entry, ptr @max2165_read_rom_table._entry.28, ptr @max2165_read_rom_table._entry.31, ptr @max2165_read_rom_table._entry.34, ptr @max2165_read_rom_table._entry.37, ptr @max2165_read_rom_table._entry.40, ptr @max2165_read_rom_table._entry_ptr, ptr @max2165_read_rom_table._entry_ptr.30, ptr @max2165_read_rom_table._entry_ptr.33, ptr @max2165_read_rom_table._entry_ptr.36, ptr @max2165_read_rom_table._entry_ptr.39, ptr @max2165_read_rom_table._entry_ptr.42, ptr @max2165_release._entry, ptr @max2165_release._entry_ptr, ptr @max2165_set_params._entry, ptr @max2165_set_params._entry.8, ptr @max2165_set_params._entry_ptr, ptr @max2165_set_params._entry_ptr.10, ptr @max2165_set_rf._entry, ptr @max2165_set_rf._entry_ptr, ptr @max2165_sleep._entry, ptr @max2165_sleep._entry_ptr, ptr @max2165_write_reg._entry, ptr @max2165_write_reg._entry.17, ptr @max2165_write_reg._entry_ptr, ptr @max2165_write_reg._entry_ptr.19, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @max2165_tuner_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_set_params._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_read_reg._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_write_reg._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_set_rf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_read_rom_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_read_rom_table._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_read_rom_table._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_read_rom_table._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_read_rom_table._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_read_rom_table._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_debug_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_debug_status._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_debug_status._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_debug_status._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2165_debug_status._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @max2165_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %i2c, null
  br i1 %tobool2.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %1 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %tobool3.not = icmp eq ptr %cfg, null
  br i1 %tobool3.not, label %cond.end.cond.end6_crit_edge, label %cond.true4

cond.end.cond.end6_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end6

cond.true4:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cfg, align 1
  %conv = zext i8 %4 to i32
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true4, %cond.end.cond.end6_crit_edge
  %cond7 = phi i32 [ %conv, %cond.true4 ], [ -1, %cond.end.cond.end6_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %cond, i32 noundef %cond7) #8
  br label %do.end10

do.end10:                                         ; preds = %cond.end6, %entry.do.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 24) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %6 = call ptr @memcpy(ptr %tuner_ops, ptr @max2165_tuner_ops, i32 220)
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cfg, ptr %call7.i.i, align 8
  %i2c15 = getelementptr inbounds %struct.max2165_priv, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %i2c15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c, ptr %i2c15, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %9 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %call16 = tail call i32 @max2165_init(ptr noundef %fe)
  tail call fastcc void @max2165_debug_status(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end14 ], [ null, %do.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2165_init(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i223 = alloca [2 x i8], align 1
  %msg.i.i224 = alloca %struct.i2c_msg, align 4
  %dat.i = alloca [3 x i8], align 1
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %v.i.i = alloca i8, align 1
  %buf.i203 = alloca [2 x i8], align 1
  %msg.i204 = alloca %struct.i2c_msg, align 4
  %buf.i184 = alloca [2 x i8], align 1
  %msg.i185 = alloca %struct.i2c_msg, align 4
  %buf.i165 = alloca [2 x i8], align 1
  %msg.i166 = alloca %struct.i2c_msg, align 4
  %buf.i146 = alloca [2 x i8], align 1
  %msg.i147 = alloca %struct.i2c_msg, align 4
  %buf.i127 = alloca [2 x i8], align 1
  %msg.i128 = alloca %struct.i2c_msg, align 4
  %buf.i108 = alloca [2 x i8], align 1
  %msg.i109 = alloca %struct.i2c_msg, align 4
  %buf.i89 = alloca [2 x i8], align 1
  %msg.i90 = alloca %struct.i2c_msg, align 4
  %buf.i70 = alloca [2 x i8], align 1
  %msg.i71 = alloca %struct.i2c_msg, align 4
  %buf.i51 = alloca [2 x i8], align 1
  %msg.i52 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end3.if.end9_crit_edge, label %if.then5

do.end3.if.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end3.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i, ptr %buf1.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %msg.i, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp sgt i32 %17, 1
  br i1 %cmp.i, label %do.end.i, label %if.end9.if.end10.i_crit_edge

if.end9.if.end10.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef 24) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.end9.if.end10.i_crit_edge
  %i2c.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c.i, align 4
  %call11.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %cmp12.not.i = icmp eq i32 %call11.i, 1
  br i1 %cmp12.not.i, label %if.end10.i.max2165_write_reg.exit_crit_edge, label %do.body15.i

if.end10.i.max2165_write_reg.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit

do.body15.i:                                      ; preds = %if.end10.i
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not.i = icmp eq i32 %20, 0
  br i1 %tobool16.not.i, label %do.body15.i.max2165_write_reg.exit_crit_edge, label %do.end20.i

do.body15.i.max2165_write_reg.exit_crit_edge:     ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit

do.end20.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef 24, i32 noundef %call11.i) #8
  br label %max2165_write_reg.exit

max2165_write_reg.exit:                           ; preds = %do.end20.i, %do.body15.i.max2165_write_reg.exit_crit_edge, %if.end10.i.max2165_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i51) #5
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i51, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %buf.i51, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i52) #5
  %24 = getelementptr inbounds i8, ptr %msg.i52, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i53, align 2
  %buf1.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 3
  %27 = ptrtoint ptr %buf1.i55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i51, ptr %buf1.i55, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i56 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i52 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i56, ptr %msg.i52, align 4
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i57 = icmp sgt i32 %33, 1
  br i1 %cmp.i57, label %do.end.i59, label %max2165_write_reg.exit.if.end10.i63_crit_edge

max2165_write_reg.exit.if.end10.i63_crit_edge:    ; preds = %max2165_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i63

do.end.i59:                                       ; preds = %max2165_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 5, i32 noundef 1) #8
  br label %if.end10.i63

if.end10.i63:                                     ; preds = %do.end.i59, %max2165_write_reg.exit.if.end10.i63_crit_edge
  %34 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i, align 4
  %call11.i61 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i52, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i61)
  %cmp12.not.i62 = icmp eq i32 %call11.i61, 1
  br i1 %cmp12.not.i62, label %if.end10.i63.max2165_write_reg.exit69_crit_edge, label %do.body15.i65

if.end10.i63.max2165_write_reg.exit69_crit_edge:  ; preds = %if.end10.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit69

do.body15.i65:                                    ; preds = %if.end10.i63
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool16.not.i64 = icmp eq i32 %36, 0
  br i1 %tobool16.not.i64, label %do.body15.i65.max2165_write_reg.exit69_crit_edge, label %do.end20.i67

do.body15.i65.max2165_write_reg.exit69_crit_edge: ; preds = %do.body15.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit69

do.end20.i67:                                     ; preds = %do.body15.i65
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 5, i32 noundef 1, i32 noundef %call11.i61) #8
  br label %max2165_write_reg.exit69

max2165_write_reg.exit69:                         ; preds = %do.end20.i67, %do.body15.i65.max2165_write_reg.exit69_crit_edge, %if.end10.i63.max2165_write_reg.exit69_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i52) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i51) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i70) #5
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i70, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i70 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 6, ptr %buf.i70, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 122, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i71) #5
  %40 = getelementptr inbounds i8, ptr %msg.i71, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %flags.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i71, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i72, align 2
  %buf1.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i71, i32 0, i32 3
  %43 = ptrtoint ptr %buf1.i74 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf.i70, ptr %buf1.i74, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %conv.i75 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i71 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i75, ptr %msg.i71, align 4
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i76 = icmp sgt i32 %49, 1
  br i1 %cmp.i76, label %do.end.i78, label %max2165_write_reg.exit69.if.end10.i82_crit_edge

max2165_write_reg.exit69.if.end10.i82_crit_edge:  ; preds = %max2165_write_reg.exit69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i82

do.end.i78:                                       ; preds = %max2165_write_reg.exit69
  call void @__sanitizer_cov_trace_pc() #7
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 6, i32 noundef 122) #8
  br label %if.end10.i82

if.end10.i82:                                     ; preds = %do.end.i78, %max2165_write_reg.exit69.if.end10.i82_crit_edge
  %50 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c.i, align 4
  %call11.i80 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i71, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i80)
  %cmp12.not.i81 = icmp eq i32 %call11.i80, 1
  br i1 %cmp12.not.i81, label %if.end10.i82.max2165_write_reg.exit88_crit_edge, label %do.body15.i84

if.end10.i82.max2165_write_reg.exit88_crit_edge:  ; preds = %if.end10.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit88

do.body15.i84:                                    ; preds = %if.end10.i82
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool16.not.i83 = icmp eq i32 %52, 0
  br i1 %tobool16.not.i83, label %do.body15.i84.max2165_write_reg.exit88_crit_edge, label %do.end20.i86

do.body15.i84.max2165_write_reg.exit88_crit_edge: ; preds = %do.body15.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit88

do.end20.i86:                                     ; preds = %do.body15.i84
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 6, i32 noundef 122, i32 noundef %call11.i80) #8
  br label %max2165_write_reg.exit88

max2165_write_reg.exit88:                         ; preds = %do.end20.i86, %do.body15.i84.max2165_write_reg.exit88_crit_edge, %if.end10.i82.max2165_write_reg.exit88_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i71) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i70) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i89) #5
  %53 = getelementptr inbounds [2 x i8], ptr %buf.i89, i32 0, i32 1
  %54 = ptrtoint ptr %buf.i89 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 7, ptr %buf.i89, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 8, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i90) #5
  %56 = getelementptr inbounds i8, ptr %msg.i90, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 196607, ptr %56, align 4
  %flags.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i91 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i91, align 2
  %buf1.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 3
  %59 = ptrtoint ptr %buf1.i93 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf.i89, ptr %buf1.i93, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv.i94 = zext i8 %63 to i16
  %64 = ptrtoint ptr %msg.i90 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i94, ptr %msg.i90, align 4
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i95 = icmp sgt i32 %65, 1
  br i1 %cmp.i95, label %do.end.i97, label %max2165_write_reg.exit88.if.end10.i101_crit_edge

max2165_write_reg.exit88.if.end10.i101_crit_edge: ; preds = %max2165_write_reg.exit88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i101

do.end.i97:                                       ; preds = %max2165_write_reg.exit88
  call void @__sanitizer_cov_trace_pc() #7
  %call.i96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 7, i32 noundef 8) #8
  br label %if.end10.i101

if.end10.i101:                                    ; preds = %do.end.i97, %max2165_write_reg.exit88.if.end10.i101_crit_edge
  %66 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i2c.i, align 4
  %call11.i99 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i90, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i99)
  %cmp12.not.i100 = icmp eq i32 %call11.i99, 1
  br i1 %cmp12.not.i100, label %if.end10.i101.max2165_write_reg.exit107_crit_edge, label %do.body15.i103

if.end10.i101.max2165_write_reg.exit107_crit_edge: ; preds = %if.end10.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit107

do.body15.i103:                                   ; preds = %if.end10.i101
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool16.not.i102 = icmp eq i32 %68, 0
  br i1 %tobool16.not.i102, label %do.body15.i103.max2165_write_reg.exit107_crit_edge, label %do.end20.i105

do.body15.i103.max2165_write_reg.exit107_crit_edge: ; preds = %do.body15.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit107

do.end20.i105:                                    ; preds = %do.body15.i103
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 7, i32 noundef 8, i32 noundef %call11.i99) #8
  br label %max2165_write_reg.exit107

max2165_write_reg.exit107:                        ; preds = %do.end20.i105, %do.body15.i103.max2165_write_reg.exit107_crit_edge, %if.end10.i101.max2165_write_reg.exit107_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i90) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i89) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i108) #5
  %69 = getelementptr inbounds [2 x i8], ptr %buf.i108, i32 0, i32 1
  %70 = ptrtoint ptr %buf.i108 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 8, ptr %buf.i108, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 64, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i109) #5
  %72 = getelementptr inbounds i8, ptr %msg.i109, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 196607, ptr %72, align 4
  %flags.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i110, align 2
  %buf1.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 3
  %75 = ptrtoint ptr %buf1.i112 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %buf.i108, ptr %buf1.i112, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  %conv.i113 = zext i8 %79 to i16
  %80 = ptrtoint ptr %msg.i109 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i113, ptr %msg.i109, align 4
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i114 = icmp sgt i32 %81, 1
  br i1 %cmp.i114, label %do.end.i116, label %max2165_write_reg.exit107.if.end10.i120_crit_edge

max2165_write_reg.exit107.if.end10.i120_crit_edge: ; preds = %max2165_write_reg.exit107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i120

do.end.i116:                                      ; preds = %max2165_write_reg.exit107
  call void @__sanitizer_cov_trace_pc() #7
  %call.i115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 64) #8
  br label %if.end10.i120

if.end10.i120:                                    ; preds = %do.end.i116, %max2165_write_reg.exit107.if.end10.i120_crit_edge
  %82 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c.i, align 4
  %call11.i118 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i109, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i118)
  %cmp12.not.i119 = icmp eq i32 %call11.i118, 1
  br i1 %cmp12.not.i119, label %if.end10.i120.max2165_write_reg.exit126_crit_edge, label %do.body15.i122

if.end10.i120.max2165_write_reg.exit126_crit_edge: ; preds = %if.end10.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit126

do.body15.i122:                                   ; preds = %if.end10.i120
  %84 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool16.not.i121 = icmp eq i32 %84, 0
  br i1 %tobool16.not.i121, label %do.body15.i122.max2165_write_reg.exit126_crit_edge, label %do.end20.i124

do.body15.i122.max2165_write_reg.exit126_crit_edge: ; preds = %do.body15.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit126

do.end20.i124:                                    ; preds = %do.body15.i122
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 64, i32 noundef %call11.i118) #8
  br label %max2165_write_reg.exit126

max2165_write_reg.exit126:                        ; preds = %do.end20.i124, %do.body15.i122.max2165_write_reg.exit126_crit_edge, %if.end10.i120.max2165_write_reg.exit126_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i108) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i127) #5
  %85 = getelementptr inbounds [2 x i8], ptr %buf.i127, i32 0, i32 1
  %86 = ptrtoint ptr %buf.i127 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 9, ptr %buf.i127, align 1
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -124, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i128) #5
  %88 = getelementptr inbounds i8, ptr %msg.i128, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 196607, ptr %88, align 4
  %flags.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i128, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i129, align 2
  %buf1.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i128, i32 0, i32 3
  %91 = ptrtoint ptr %buf1.i131 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %buf.i127, ptr %buf1.i131, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  %conv.i132 = zext i8 %95 to i16
  %96 = ptrtoint ptr %msg.i128 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i132, ptr %msg.i128, align 4
  %97 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp.i133 = icmp sgt i32 %97, 1
  br i1 %cmp.i133, label %do.end.i135, label %max2165_write_reg.exit126.if.end10.i139_crit_edge

max2165_write_reg.exit126.if.end10.i139_crit_edge: ; preds = %max2165_write_reg.exit126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i139

do.end.i135:                                      ; preds = %max2165_write_reg.exit126
  call void @__sanitizer_cov_trace_pc() #7
  %call.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 9, i32 noundef 132) #8
  br label %if.end10.i139

if.end10.i139:                                    ; preds = %do.end.i135, %max2165_write_reg.exit126.if.end10.i139_crit_edge
  %98 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c.i, align 4
  %call11.i137 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i128, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i137)
  %cmp12.not.i138 = icmp eq i32 %call11.i137, 1
  br i1 %cmp12.not.i138, label %if.end10.i139.max2165_write_reg.exit145_crit_edge, label %do.body15.i141

if.end10.i139.max2165_write_reg.exit145_crit_edge: ; preds = %if.end10.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit145

do.body15.i141:                                   ; preds = %if.end10.i139
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool16.not.i140 = icmp eq i32 %100, 0
  br i1 %tobool16.not.i140, label %do.body15.i141.max2165_write_reg.exit145_crit_edge, label %do.end20.i143

do.body15.i141.max2165_write_reg.exit145_crit_edge: ; preds = %do.body15.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit145

do.end20.i143:                                    ; preds = %do.body15.i141
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 9, i32 noundef 132, i32 noundef %call11.i137) #8
  br label %max2165_write_reg.exit145

max2165_write_reg.exit145:                        ; preds = %do.end20.i143, %do.body15.i141.max2165_write_reg.exit145_crit_edge, %if.end10.i139.max2165_write_reg.exit145_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i128) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i127) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i146) #5
  %101 = getelementptr inbounds [2 x i8], ptr %buf.i146, i32 0, i32 1
  %102 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 10, ptr %buf.i146, align 1
  %103 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -61, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i147) #5
  %104 = getelementptr inbounds i8, ptr %msg.i147, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 196607, ptr %104, align 4
  %flags.i148 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i148 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i148, align 2
  %buf1.i150 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 3
  %107 = ptrtoint ptr %buf1.i150 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i146, ptr %buf1.i150, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 1
  %conv.i151 = zext i8 %111 to i16
  %112 = ptrtoint ptr %msg.i147 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i151, ptr %msg.i147, align 4
  %113 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp.i152 = icmp sgt i32 %113, 1
  br i1 %cmp.i152, label %do.end.i154, label %max2165_write_reg.exit145.if.end10.i158_crit_edge

max2165_write_reg.exit145.if.end10.i158_crit_edge: ; preds = %max2165_write_reg.exit145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i158

do.end.i154:                                      ; preds = %max2165_write_reg.exit145
  call void @__sanitizer_cov_trace_pc() #7
  %call.i153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 10, i32 noundef 195) #8
  br label %if.end10.i158

if.end10.i158:                                    ; preds = %do.end.i154, %max2165_write_reg.exit145.if.end10.i158_crit_edge
  %114 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i2c.i, align 4
  %call11.i156 = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %msg.i147, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i156)
  %cmp12.not.i157 = icmp eq i32 %call11.i156, 1
  br i1 %cmp12.not.i157, label %if.end10.i158.max2165_write_reg.exit164_crit_edge, label %do.body15.i160

if.end10.i158.max2165_write_reg.exit164_crit_edge: ; preds = %if.end10.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit164

do.body15.i160:                                   ; preds = %if.end10.i158
  %116 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool16.not.i159 = icmp eq i32 %116, 0
  br i1 %tobool16.not.i159, label %do.body15.i160.max2165_write_reg.exit164_crit_edge, label %do.end20.i162

do.body15.i160.max2165_write_reg.exit164_crit_edge: ; preds = %do.body15.i160
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit164

do.end20.i162:                                    ; preds = %do.body15.i160
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 10, i32 noundef 195, i32 noundef %call11.i156) #8
  br label %max2165_write_reg.exit164

max2165_write_reg.exit164:                        ; preds = %do.end20.i162, %do.body15.i160.max2165_write_reg.exit164_crit_edge, %if.end10.i158.max2165_write_reg.exit164_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i147) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i146) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i165) #5
  %117 = getelementptr inbounds [2 x i8], ptr %buf.i165, i32 0, i32 1
  %118 = ptrtoint ptr %buf.i165 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 11, ptr %buf.i165, align 1
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 117, ptr %117, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i166) #5
  %120 = getelementptr inbounds i8, ptr %msg.i166, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 196607, ptr %120, align 4
  %flags.i167 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 1
  %122 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %flags.i167, align 2
  %buf1.i169 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 3
  %123 = ptrtoint ptr %buf1.i169 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %buf.i165, ptr %buf1.i169, align 4
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 1
  %conv.i170 = zext i8 %127 to i16
  %128 = ptrtoint ptr %msg.i166 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv.i170, ptr %msg.i166, align 4
  %129 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp.i171 = icmp sgt i32 %129, 1
  br i1 %cmp.i171, label %do.end.i173, label %max2165_write_reg.exit164.if.end10.i177_crit_edge

max2165_write_reg.exit164.if.end10.i177_crit_edge: ; preds = %max2165_write_reg.exit164
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i177

do.end.i173:                                      ; preds = %max2165_write_reg.exit164
  call void @__sanitizer_cov_trace_pc() #7
  %call.i172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 11, i32 noundef 117) #8
  br label %if.end10.i177

if.end10.i177:                                    ; preds = %do.end.i173, %max2165_write_reg.exit164.if.end10.i177_crit_edge
  %130 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %i2c.i, align 4
  %call11.i175 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %msg.i166, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i175)
  %cmp12.not.i176 = icmp eq i32 %call11.i175, 1
  br i1 %cmp12.not.i176, label %if.end10.i177.max2165_write_reg.exit183_crit_edge, label %do.body15.i179

if.end10.i177.max2165_write_reg.exit183_crit_edge: ; preds = %if.end10.i177
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit183

do.body15.i179:                                   ; preds = %if.end10.i177
  %132 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool16.not.i178 = icmp eq i32 %132, 0
  br i1 %tobool16.not.i178, label %do.body15.i179.max2165_write_reg.exit183_crit_edge, label %do.end20.i181

do.body15.i179.max2165_write_reg.exit183_crit_edge: ; preds = %do.body15.i179
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit183

do.end20.i181:                                    ; preds = %do.body15.i179
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 11, i32 noundef 117, i32 noundef %call11.i175) #8
  br label %max2165_write_reg.exit183

max2165_write_reg.exit183:                        ; preds = %do.end20.i181, %do.body15.i179.max2165_write_reg.exit183_crit_edge, %if.end10.i177.max2165_write_reg.exit183_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i166) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i165) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i184) #5
  %133 = getelementptr inbounds [2 x i8], ptr %buf.i184, i32 0, i32 1
  %134 = ptrtoint ptr %buf.i184 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 12, ptr %buf.i184, align 1
  %135 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %133, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i185) #5
  %136 = getelementptr inbounds i8, ptr %msg.i185, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 196607, ptr %136, align 4
  %flags.i186 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i186 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i186, align 2
  %buf1.i188 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185, i32 0, i32 3
  %139 = ptrtoint ptr %buf1.i188 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %buf.i184, ptr %buf1.i188, align 4
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %141, align 1
  %conv.i189 = zext i8 %143 to i16
  %144 = ptrtoint ptr %msg.i185 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv.i189, ptr %msg.i185, align 4
  %145 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp.i190 = icmp sgt i32 %145, 1
  br i1 %cmp.i190, label %do.end.i192, label %max2165_write_reg.exit183.if.end10.i196_crit_edge

max2165_write_reg.exit183.if.end10.i196_crit_edge: ; preds = %max2165_write_reg.exit183
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i196

do.end.i192:                                      ; preds = %max2165_write_reg.exit183
  call void @__sanitizer_cov_trace_pc() #7
  %call.i191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 12, i32 noundef 0) #8
  br label %if.end10.i196

if.end10.i196:                                    ; preds = %do.end.i192, %max2165_write_reg.exit183.if.end10.i196_crit_edge
  %146 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i2c.i, align 4
  %call11.i194 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %msg.i185, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i194)
  %cmp12.not.i195 = icmp eq i32 %call11.i194, 1
  br i1 %cmp12.not.i195, label %if.end10.i196.max2165_write_reg.exit202_crit_edge, label %do.body15.i198

if.end10.i196.max2165_write_reg.exit202_crit_edge: ; preds = %if.end10.i196
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit202

do.body15.i198:                                   ; preds = %if.end10.i196
  %148 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool16.not.i197 = icmp eq i32 %148, 0
  br i1 %tobool16.not.i197, label %do.body15.i198.max2165_write_reg.exit202_crit_edge, label %do.end20.i200

do.body15.i198.max2165_write_reg.exit202_crit_edge: ; preds = %do.body15.i198
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit202

do.end20.i200:                                    ; preds = %do.body15.i198
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 12, i32 noundef 0, i32 noundef %call11.i194) #8
  br label %max2165_write_reg.exit202

max2165_write_reg.exit202:                        ; preds = %do.end20.i200, %do.body15.i198.max2165_write_reg.exit202_crit_edge, %if.end10.i196.max2165_write_reg.exit202_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i185) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i184) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i203) #5
  %149 = getelementptr inbounds [2 x i8], ptr %buf.i203, i32 0, i32 1
  %150 = ptrtoint ptr %buf.i203 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 13, ptr %buf.i203, align 1
  %151 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %149, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i204) #5
  %152 = getelementptr inbounds i8, ptr %msg.i204, i32 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 196607, ptr %152, align 4
  %flags.i205 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204, i32 0, i32 1
  %154 = ptrtoint ptr %flags.i205 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %flags.i205, align 2
  %buf1.i207 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204, i32 0, i32 3
  %155 = ptrtoint ptr %buf1.i207 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %buf.i203, ptr %buf1.i207, align 4
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %157, align 1
  %conv.i208 = zext i8 %159 to i16
  %160 = ptrtoint ptr %msg.i204 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv.i208, ptr %msg.i204, align 4
  %161 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %161)
  %cmp.i209 = icmp sgt i32 %161, 1
  br i1 %cmp.i209, label %do.end.i211, label %max2165_write_reg.exit202.if.end10.i215_crit_edge

max2165_write_reg.exit202.if.end10.i215_crit_edge: ; preds = %max2165_write_reg.exit202
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i215

do.end.i211:                                      ; preds = %max2165_write_reg.exit202
  call void @__sanitizer_cov_trace_pc() #7
  %call.i210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef 0) #8
  br label %if.end10.i215

if.end10.i215:                                    ; preds = %do.end.i211, %max2165_write_reg.exit202.if.end10.i215_crit_edge
  %162 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %i2c.i, align 4
  %call11.i213 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %msg.i204, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i213)
  %cmp12.not.i214 = icmp eq i32 %call11.i213, 1
  br i1 %cmp12.not.i214, label %if.end10.i215.max2165_write_reg.exit221_crit_edge, label %do.body15.i217

if.end10.i215.max2165_write_reg.exit221_crit_edge: ; preds = %if.end10.i215
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit221

do.body15.i217:                                   ; preds = %if.end10.i215
  %164 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool16.not.i216 = icmp eq i32 %164, 0
  br i1 %tobool16.not.i216, label %do.body15.i217.max2165_write_reg.exit221_crit_edge, label %do.end20.i219

do.body15.i217.max2165_write_reg.exit221_crit_edge: ; preds = %do.body15.i217
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit221

do.end20.i219:                                    ; preds = %do.body15.i217
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef 0, i32 noundef %call11.i213) #8
  br label %max2165_write_reg.exit221

max2165_write_reg.exit221:                        ; preds = %do.end20.i219, %do.body15.i217.max2165_write_reg.exit221_crit_edge, %if.end10.i215.max2165_write_reg.exit221_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i204) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i203) #5
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 4
  %osc_clk = getelementptr inbounds %struct.max2165_config, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %osc_clk to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %osc_clk, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i.i) #5
  %169 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 -1, ptr %v.i.i, align 1, !annotation !136
  %call.i.i = call fastcc i32 @max2165_read_reg(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %v.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %max2165_write_reg.exit221.max2165_set_osc.exit_crit_edge

max2165_write_reg.exit221.max2165_set_osc.exit_crit_edge: ; preds = %max2165_write_reg.exit221
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_set_osc.exit

if.end.i.i:                                       ; preds = %max2165_write_reg.exit221
  %170 = lshr i8 %168, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %170)
  %cmp.i222 = icmp eq i8 %170, 2
  %.op.i = and i8 %170, 7
  %and1.i.i = select i1 %cmp.i222, i8 7, i8 %.op.i
  %171 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %v.i.i, align 1
  %and6.i.i = and i8 %172, -8
  %or2.i.i = or i8 %and6.i.i, %and1.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #5
  %173 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 6, ptr %buf.i.i, align 1
  %175 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %or2.i.i, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %176 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 196607, ptr %176, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %178 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %179 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %1, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %181, align 1
  %conv.i.i = zext i8 %183 to i16
  %184 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %185 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %185)
  %cmp.i.i = icmp sgt i32 %185, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i.i = zext i8 %or2.i.i to i32
  %call.i1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 6, i32 noundef %conv7.i.i) #8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %do.end.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %186 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %i2c.i, align 4
  %call11.i2.i = call i32 @i2c_transfer(ptr noundef %187, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i2.i)
  %cmp12.not.i.i = icmp eq i32 %call11.i2.i, 1
  br i1 %cmp12.not.i.i, label %if.end10.i.i.max2165_write_reg.exit.i_crit_edge, label %do.body15.i.i

if.end10.i.i.max2165_write_reg.exit.i_crit_edge:  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.i

do.body15.i.i:                                    ; preds = %if.end10.i.i
  %188 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool16.not.i.i = icmp eq i32 %188, 0
  br i1 %tobool16.not.i.i, label %do.body15.i.i.max2165_write_reg.exit.i_crit_edge, label %do.end20.i.i

do.body15.i.i.max2165_write_reg.exit.i_crit_edge: ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.i

do.end20.i.i:                                     ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i.i = zext i8 %or2.i.i to i32
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 6, i32 noundef %conv23.i.i, i32 noundef %call11.i2.i) #8
  br label %max2165_write_reg.exit.i

max2165_write_reg.exit.i:                         ; preds = %do.end20.i.i, %do.body15.i.i.max2165_write_reg.exit.i_crit_edge, %if.end10.i.i.max2165_write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #5
  br label %max2165_set_osc.exit

max2165_set_osc.exit:                             ; preds = %max2165_write_reg.exit.i, %max2165_write_reg.exit221.max2165_set_osc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat.i) #5
  %189 = ptrtoint ptr %dat.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -1, ptr %dat.i, align 1, !annotation !136
  %190 = getelementptr inbounds [3 x i8], ptr %dat.i, i32 0, i32 1
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -1, ptr %190, align 1, !annotation !136
  %192 = getelementptr inbounds [3 x i8], ptr %dat.i, i32 0, i32 2
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -1, ptr %192, align 1, !annotation !136
  %194 = getelementptr inbounds [2 x i8], ptr %buf.i.i223, i32 0, i32 1
  %195 = getelementptr inbounds i8, ptr %msg.i.i224, i32 4
  %flags.i.i225 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i224, i32 0, i32 1
  %buf1.i.i226 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i224, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i223) #5
  %196 = ptrtoint ptr %buf.i.i223 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 13, ptr %buf.i.i223, align 1
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %194, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i224) #5
  %198 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 196607, ptr %195, align 4
  %199 = ptrtoint ptr %flags.i.i225 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %flags.i.i225, align 2
  %200 = ptrtoint ptr %buf1.i.i226 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %buf.i.i223, ptr %buf1.i.i226, align 4
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %202, align 1
  %conv.i.i228 = zext i8 %204 to i16
  %205 = ptrtoint ptr %msg.i.i224 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv.i.i228, ptr %msg.i.i224, align 4
  %206 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %206)
  %cmp.i.i229 = icmp sgt i32 %206, 1
  br i1 %cmp.i.i229, label %do.end.i.i231, label %max2165_set_osc.exit.if.end10.i.i233_crit_edge

max2165_set_osc.exit.if.end10.i.i233_crit_edge:   ; preds = %max2165_set_osc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.i233

do.end.i.i231:                                    ; preds = %max2165_set_osc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef 1) #8
  br label %if.end10.i.i233

if.end10.i.i233:                                  ; preds = %do.end.i.i231, %max2165_set_osc.exit.if.end10.i.i233_crit_edge
  %207 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %i2c.i, align 4
  %call11.i.i = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %msg.i.i224, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i.i)
  %cmp12.not.i.i232 = icmp eq i32 %call11.i.i, 1
  br i1 %cmp12.not.i.i232, label %if.end10.i.i233.max2165_write_reg.exit.i238_crit_edge, label %do.body15.i.i235

if.end10.i.i233.max2165_write_reg.exit.i238_crit_edge: ; preds = %if.end10.i.i233
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.i238

do.body15.i.i235:                                 ; preds = %if.end10.i.i233
  %209 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool16.not.i.i234 = icmp eq i32 %209, 0
  br i1 %tobool16.not.i.i234, label %do.body15.i.i235.max2165_write_reg.exit.i238_crit_edge, label %do.end20.i.i237

do.body15.i.i235.max2165_write_reg.exit.i238_crit_edge: ; preds = %do.body15.i.i235
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.i238

do.end20.i.i237:                                  ; preds = %do.body15.i.i235
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i.i236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef 1, i32 noundef %call11.i.i) #8
  br label %max2165_write_reg.exit.i238

max2165_write_reg.exit.i238:                      ; preds = %do.end20.i.i237, %do.body15.i.i235.max2165_write_reg.exit.i238_crit_edge, %if.end10.i.i233.max2165_write_reg.exit.i238_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i224) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i223) #5
  %call1.i = call fastcc i32 @max2165_read_reg(ptr noundef %1, i8 noundef zeroext 16, ptr noundef nonnull %dat.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i223) #5
  %210 = ptrtoint ptr %buf.i.i223 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 13, ptr %buf.i.i223, align 1
  %211 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 2, ptr %194, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i224) #5
  %212 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 196607, ptr %195, align 4
  %213 = ptrtoint ptr %flags.i.i225 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 0, ptr %flags.i.i225, align 2
  %214 = ptrtoint ptr %buf1.i.i226 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %buf.i.i223, ptr %buf1.i.i226, align 4
  %215 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %1, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %216, align 1
  %conv.i.1.i = zext i8 %218 to i16
  %219 = ptrtoint ptr %msg.i.i224 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv.i.1.i, ptr %msg.i.i224, align 4
  %220 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %220)
  %cmp.i.1.i = icmp sgt i32 %220, 1
  br i1 %cmp.i.1.i, label %do.end.i.1.i, label %max2165_write_reg.exit.i238.if.end10.i.1.i_crit_edge

max2165_write_reg.exit.i238.if.end10.i.1.i_crit_edge: ; preds = %max2165_write_reg.exit.i238
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.1.i

do.end.i.1.i:                                     ; preds = %max2165_write_reg.exit.i238
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef 2) #8
  br label %if.end10.i.1.i

if.end10.i.1.i:                                   ; preds = %do.end.i.1.i, %max2165_write_reg.exit.i238.if.end10.i.1.i_crit_edge
  %221 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %i2c.i, align 4
  %call11.i.1.i = call i32 @i2c_transfer(ptr noundef %222, ptr noundef nonnull %msg.i.i224, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i.1.i)
  %cmp12.not.i.1.i = icmp eq i32 %call11.i.1.i, 1
  br i1 %cmp12.not.i.1.i, label %if.end10.i.1.i.max2165_write_reg.exit.1.i_crit_edge, label %do.body15.i.1.i

if.end10.i.1.i.max2165_write_reg.exit.1.i_crit_edge: ; preds = %if.end10.i.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.1.i

do.body15.i.1.i:                                  ; preds = %if.end10.i.1.i
  %223 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool16.not.i.1.i = icmp eq i32 %223, 0
  br i1 %tobool16.not.i.1.i, label %do.body15.i.1.i.max2165_write_reg.exit.1.i_crit_edge, label %do.end20.i.1.i

do.body15.i.1.i.max2165_write_reg.exit.1.i_crit_edge: ; preds = %do.body15.i.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.1.i

do.end20.i.1.i:                                   ; preds = %do.body15.i.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef 2, i32 noundef %call11.i.1.i) #8
  br label %max2165_write_reg.exit.1.i

max2165_write_reg.exit.1.i:                       ; preds = %do.end20.i.1.i, %do.body15.i.1.i.max2165_write_reg.exit.1.i_crit_edge, %if.end10.i.1.i.max2165_write_reg.exit.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i224) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i223) #5
  %call1.1.i = call fastcc i32 @max2165_read_reg(ptr noundef %1, i8 noundef zeroext 16, ptr noundef %190) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i223) #5
  %224 = ptrtoint ptr %buf.i.i223 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 13, ptr %buf.i.i223, align 1
  %225 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 3, ptr %194, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i224) #5
  %226 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 196607, ptr %195, align 4
  %227 = ptrtoint ptr %flags.i.i225 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %flags.i.i225, align 2
  %228 = ptrtoint ptr %buf1.i.i226 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %buf.i.i223, ptr %buf1.i.i226, align 4
  %229 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %1, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %230, align 1
  %conv.i.2.i = zext i8 %232 to i16
  %233 = ptrtoint ptr %msg.i.i224 to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %conv.i.2.i, ptr %msg.i.i224, align 4
  %234 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %234)
  %cmp.i.2.i = icmp sgt i32 %234, 1
  br i1 %cmp.i.2.i, label %do.end.i.2.i, label %max2165_write_reg.exit.1.i.if.end10.i.2.i_crit_edge

max2165_write_reg.exit.1.i.if.end10.i.2.i_crit_edge: ; preds = %max2165_write_reg.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.2.i

do.end.i.2.i:                                     ; preds = %max2165_write_reg.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef 3) #8
  br label %if.end10.i.2.i

if.end10.i.2.i:                                   ; preds = %do.end.i.2.i, %max2165_write_reg.exit.1.i.if.end10.i.2.i_crit_edge
  %235 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %i2c.i, align 4
  %call11.i.2.i = call i32 @i2c_transfer(ptr noundef %236, ptr noundef nonnull %msg.i.i224, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i.2.i)
  %cmp12.not.i.2.i = icmp eq i32 %call11.i.2.i, 1
  br i1 %cmp12.not.i.2.i, label %if.end10.i.2.i.max2165_write_reg.exit.2.i_crit_edge, label %do.body15.i.2.i

if.end10.i.2.i.max2165_write_reg.exit.2.i_crit_edge: ; preds = %if.end10.i.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.2.i

do.body15.i.2.i:                                  ; preds = %if.end10.i.2.i
  %237 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool16.not.i.2.i = icmp eq i32 %237, 0
  br i1 %tobool16.not.i.2.i, label %do.body15.i.2.i.max2165_write_reg.exit.2.i_crit_edge, label %do.end20.i.2.i

do.body15.i.2.i.max2165_write_reg.exit.2.i_crit_edge: ; preds = %do.body15.i.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.2.i

do.end20.i.2.i:                                   ; preds = %do.body15.i.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef 3, i32 noundef %call11.i.2.i) #8
  br label %max2165_write_reg.exit.2.i

max2165_write_reg.exit.2.i:                       ; preds = %do.end20.i.2.i, %do.body15.i.2.i.max2165_write_reg.exit.2.i_crit_edge, %if.end10.i.2.i.max2165_write_reg.exit.2.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i224) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i223) #5
  %call1.2.i = call fastcc i32 @max2165_read_reg(ptr noundef %1, i8 noundef zeroext 16, ptr noundef %192) #5
  %238 = ptrtoint ptr %dat.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %dat.i, align 1
  %240 = lshr i8 %239, 4
  %tf_ntch_low_cfg.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 4
  %241 = ptrtoint ptr %tf_ntch_low_cfg.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %240, ptr %tf_ntch_low_cfg.i, align 4
  %242 = and i8 %239, 15
  %tf_ntch_hi_cfg.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 5
  %243 = ptrtoint ptr %tf_ntch_hi_cfg.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %tf_ntch_hi_cfg.i, align 1
  %244 = ptrtoint ptr %190 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %190, align 1
  %246 = and i8 %245, 15
  %tf_balun_low_ref.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 6
  %247 = ptrtoint ptr %tf_balun_low_ref.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %tf_balun_low_ref.i, align 2
  %248 = lshr i8 %245, 4
  %tf_balun_hi_ref.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 7
  %249 = ptrtoint ptr %tf_balun_hi_ref.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %tf_balun_hi_ref.i, align 1
  %250 = ptrtoint ptr %192 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %192, align 1
  %252 = and i8 %251, 15
  %bb_filter_7mhz_cfg.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 8
  %253 = ptrtoint ptr %bb_filter_7mhz_cfg.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %bb_filter_7mhz_cfg.i, align 4
  %254 = lshr i8 %251, 4
  %bb_filter_8mhz_cfg.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 9
  %255 = ptrtoint ptr %bb_filter_8mhz_cfg.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %bb_filter_8mhz_cfg.i, align 1
  %256 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool.not.i = icmp eq i32 %256, 0
  br i1 %tobool.not.i, label %max2165_write_reg.exit.2.i.max2165_read_rom_table.exit_crit_edge, label %do.body30.i

max2165_write_reg.exit.2.i.max2165_read_rom_table.exit_crit_edge: ; preds = %max2165_write_reg.exit.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_read_rom_table.exit

do.body30.i:                                      ; preds = %max2165_write_reg.exit.2.i
  %conv26.i = zext i8 %240 to i32
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv26.i) #8
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool31.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool31.not.i, label %do.body30.i.max2165_read_rom_table.exit_crit_edge, label %do.body43.i

do.body30.i.max2165_read_rom_table.exit_crit_edge: ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_read_rom_table.exit

do.body43.i:                                      ; preds = %do.body30.i
  %257 = ptrtoint ptr %tf_ntch_hi_cfg.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %tf_ntch_hi_cfg.i, align 1
  %conv38.i = zext i8 %258 to i32
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv38.i) #8
  %.pr2.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2.i)
  %tobool44.not.i = icmp eq i32 %.pr2.i, 0
  br i1 %tobool44.not.i, label %do.body43.i.max2165_read_rom_table.exit_crit_edge, label %do.body56.i

do.body43.i.max2165_read_rom_table.exit_crit_edge: ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_read_rom_table.exit

do.body56.i:                                      ; preds = %do.body43.i
  %259 = ptrtoint ptr %tf_balun_low_ref.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %tf_balun_low_ref.i, align 2
  %conv51.i = zext i8 %260 to i32
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv51.i) #8
  %.pr4.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr4.pr.i)
  %tobool57.not.i = icmp eq i32 %.pr4.pr.i, 0
  br i1 %tobool57.not.i, label %do.body56.i.max2165_read_rom_table.exit_crit_edge, label %do.body69.i

do.body56.i.max2165_read_rom_table.exit_crit_edge: ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_read_rom_table.exit

do.body69.i:                                      ; preds = %do.body56.i
  %261 = ptrtoint ptr %tf_balun_hi_ref.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %tf_balun_hi_ref.i, align 1
  %conv64.i = zext i8 %262 to i32
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv64.i) #8
  %.pr6.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr6.i)
  %tobool70.not.i = icmp eq i32 %.pr6.i, 0
  br i1 %tobool70.not.i, label %do.body69.i.max2165_read_rom_table.exit_crit_edge, label %do.body82.i

do.body69.i.max2165_read_rom_table.exit_crit_edge: ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_read_rom_table.exit

do.body82.i:                                      ; preds = %do.body69.i
  %263 = ptrtoint ptr %bb_filter_7mhz_cfg.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %bb_filter_7mhz_cfg.i, align 4
  %conv77.i = zext i8 %264 to i32
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv77.i) #8
  %.pr8.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr8.pr.pr.i)
  %tobool83.not.i = icmp eq i32 %.pr8.pr.pr.i, 0
  br i1 %tobool83.not.i, label %do.body82.i.max2165_read_rom_table.exit_crit_edge, label %do.end87.i

do.body82.i.max2165_read_rom_table.exit_crit_edge: ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_read_rom_table.exit

do.end87.i:                                       ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #7
  %265 = ptrtoint ptr %bb_filter_8mhz_cfg.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %bb_filter_8mhz_cfg.i, align 1
  %conv90.i = zext i8 %266 to i32
  %call91.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %conv90.i) #8
  br label %max2165_read_rom_table.exit

max2165_read_rom_table.exit:                      ; preds = %do.end87.i, %do.body82.i.max2165_read_rom_table.exit_crit_edge, %do.body69.i.max2165_read_rom_table.exit_crit_edge, %do.body56.i.max2165_read_rom_table.exit_crit_edge, %do.body43.i.max2165_read_rom_table.exit_crit_edge, %do.body30.i.max2165_read_rom_table.exit_crit_edge, %max2165_write_reg.exit.2.i.max2165_read_rom_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat.i) #5
  call fastcc void @max2165_set_bandwidth(ptr noundef %1, i32 noundef 8000000)
  %267 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool25.not = icmp eq ptr %268, null
  br i1 %tobool25.not, label %max2165_read_rom_table.exit.if.end30_crit_edge, label %if.then26

max2165_read_rom_table.exit.if.end30_crit_edge:   ; preds = %max2165_read_rom_table.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then26:                                        ; preds = %max2165_read_rom_table.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = call i32 %268(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %max2165_read_rom_table.exit.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max2165_debug_status(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %status = alloca i8, align 1
  %autotune = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %autotune) #5
  %1 = ptrtoint ptr %autotune to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %autotune, align 1, !annotation !136
  %call = call fastcc i32 @max2165_read_reg(ptr noundef %priv, i8 noundef zeroext 17, ptr noundef nonnull %status)
  %call1 = call fastcc i32 @max2165_read_reg(ptr noundef %priv, i8 noundef zeroext 18, ptr noundef nonnull %autotune)
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 1
  %4 = lshr i8 %3, 4
  %and9 = and i8 %4, 1
  %5 = lshr i8 %3, 3
  %and13 = and i8 %5, 1
  %6 = lshr i8 %3, 2
  %and17 = and i8 %6, 1
  %7 = and i8 %3, 1
  %8 = ptrtoint ptr %autotune to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %autotune, align 1
  %10 = lshr i8 %9, 6
  %11 = lshr i8 %9, 3
  %and27 = and i8 %11, 7
  %12 = and i8 %9, 7
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.do.end88_crit_edge, label %do.body38

entry.do.end88_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

do.body38:                                        ; preds = %entry
  %14 = lshr i8 %3, 5
  %and5 = and i8 %14, 1
  %15 = lshr i8 %3, 6
  %and = and i8 %15, 1
  %conv33 = zext i8 %and5 to i32
  %conv34 = zext i8 %and to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv33, i32 noundef %conv34) #8
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool39.not = icmp eq i32 %.pr, 0
  br i1 %tobool39.not, label %do.body38.do.end88_crit_edge, label %do.body50

do.body38.do.end88_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

do.body50:                                        ; preds = %do.body38
  %conv45 = zext i8 %and9 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv45) #8
  %.pr91 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr91)
  %tobool51.not = icmp eq i32 %.pr91, 0
  br i1 %tobool51.not, label %do.body50.do.end88_crit_edge, label %do.body63

do.body50.do.end88_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

do.body63:                                        ; preds = %do.body50
  %conv57 = zext i8 %and13 to i32
  %conv58 = zext i8 %and17 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %conv57, i32 noundef %conv58) #8
  %.pr93.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr93.pr)
  %tobool64.not = icmp eq i32 %.pr93.pr, 0
  br i1 %tobool64.not, label %do.body63.do.end88_crit_edge, label %do.body75

do.body63.do.end88_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

do.body75:                                        ; preds = %do.body63
  %conv70 = zext i8 %7 to i32
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %conv70) #8
  %.pr95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr95)
  %tobool76.not = icmp eq i32 %.pr95, 0
  br i1 %tobool76.not, label %do.body75.do.end88_crit_edge, label %do.end80

do.body75.do.end88_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

do.end80:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  %conv82 = zext i8 %10 to i32
  %conv83 = zext i8 %and27 to i32
  %conv84 = zext i8 %12 to i32
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv82, i32 noundef %conv83, i32 noundef %conv84) #8
  br label %do.end88

do.end88:                                         ; preds = %do.end80, %do.body75.do.end88_crit_edge, %do.body63.do.end88_crit_edge, %do.body50.do.end88_crit_edge, %do.body38.do.end88_crit_edge, %entry.do.end88_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %autotune) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max2165_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2165_sleep(ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2165_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i126.i = alloca [2 x i8], align 1
  %msg.i127.i = alloca %struct.i2c_msg, align 4
  %buf.i105.i = alloca [2 x i8], align 1
  %msg.i106.i = alloca %struct.i2c_msg, align 4
  %buf.i84.i = alloca [2 x i8], align 1
  %msg.i85.i = alloca %struct.i2c_msg, align 4
  %buf.i63.i = alloca [2 x i8], align 1
  %msg.i64.i = alloca %struct.i2c_msg, align 4
  %v.i.i = alloca i8, align 1
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 7000000, label %entry.sw.bb_crit_edge
    i32 8000000, label %entry.sw.bb_crit_edge52
  ]

entry.sw.bb_crit_edge52:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge52
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtv_property_cache, align 4
  %frequency1 = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %frequency1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %frequency1, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %sw.bb.do.end11_crit_edge, label %do.end6

sw.bb.do.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %3) #8
  br label %cleanup

do.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtv_property_cache, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %10) #8
  br label %do.end11

do.end11:                                         ; preds = %do.end6, %sw.bb.do.end11_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %do.end11.if.end17_crit_edge, label %if.then13

do.end11.if.end17_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 %12(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %do.end11.if.end17_crit_edge
  %13 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bandwidth_hz, align 4
  tail call fastcc void @max2165_set_bandwidth(ptr noundef %1, i32 noundef %14)
  %15 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frequency1, align 4
  %div.i = udiv i32 %16, 1000
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %osc_clk.i = getelementptr inbounds %struct.max2165_config, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %osc_clk.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %osc_clk.i, align 1
  %conv.i = zext i8 %20 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 1000
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 0
  br i1 %cmp.i.i, label %if.end17.while.body.preheader_crit_edge, label %if.end.i.i

if.end17.while.body.preheader_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

if.end.i.i:                                       ; preds = %if.end17
  %div.i.i = udiv i32 %div.i, %mul.i
  %mul.i.i = mul i32 %div.i.i, %mul.i
  %sub.i.i = sub i32 %div.i, %mul.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %i.023.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %f.022.i.i = phi i32 [ 0, %if.end.i.i ], [ %shl6.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %remainder.021.i.i = phi i32 [ %sub.i.i, %if.end.i.i ], [ %remainder.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl i32 %remainder.021.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %mul.i)
  %cmp2.not.i.i = icmp ult i32 %shl.i.i, %mul.i
  %sub4.i.i = select i1 %cmp2.not.i.i, i32 0, i32 %mul.i
  %remainder.1.i.i = sub i32 %shl.i.i, %sub4.i.i
  %not.cmp2.not.i.i = xor i1 %cmp2.not.i.i, true
  %add.i.i = zext i1 %not.cmp2.not.i.i to i32
  %f.1.i.i = or i32 %f.022.i.i, %add.i.i
  %shl6.i.i = shl i32 %f.1.i.i, 1
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 31
  br i1 %exitcond.not.i.i, label %if.end.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.body.i.i
  %shr.i = lshr i32 %shl6.i.i, 12
  %conv2.i = trunc i32 %div.i.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #5
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %buf.i.i, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv2.i, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %24 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %18, align 1
  %conv.i.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i59.i = icmp sgt i32 %31, 1
  br i1 %cmp.i59.i, label %do.end.i.i, label %if.end.i.if.end10.i.i_crit_edge

if.end.i.if.end10.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i.i = and i32 %div.i.i, 255
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef %conv7.i.i) #8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %do.end.i.i, %if.end.i.if.end10.i.i_crit_edge
  %i2c.i.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c.i.i, align 4
  %call11.i.i = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i.i)
  %cmp12.not.i.i = icmp eq i32 %call11.i.i, 1
  br i1 %cmp12.not.i.i, label %if.end10.i.i.max2165_write_reg.exit.i_crit_edge, label %do.body15.i.i

if.end10.i.i.max2165_write_reg.exit.i_crit_edge:  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.i

do.body15.i.i:                                    ; preds = %if.end10.i.i
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool16.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool16.not.i.i, label %do.body15.i.i.max2165_write_reg.exit.i_crit_edge, label %do.end20.i.i

do.body15.i.i.max2165_write_reg.exit.i_crit_edge: ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit.i

do.end20.i.i:                                     ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i.i = and i32 %div.i.i, 255
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef %conv23.i.i, i32 noundef %call11.i.i) #8
  br label %max2165_write_reg.exit.i

max2165_write_reg.exit.i:                         ; preds = %do.end20.i.i, %do.body15.i.i.max2165_write_reg.exit.i_crit_edge, %if.end10.i.i.max2165_write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i.i) #5
  %35 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %v.i.i, align 1, !annotation !136
  %call.i60.i = call fastcc i32 @max2165_read_reg(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %v.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %cmp.not.i.i = icmp eq i32 %call.i60.i, 0
  br i1 %cmp.not.i.i, label %if.end.i62.i, label %max2165_write_reg.exit.i.max2165_mask_write_reg.exit.i_crit_edge

max2165_write_reg.exit.i.max2165_mask_write_reg.exit.i_crit_edge: ; preds = %max2165_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_mask_write_reg.exit.i

if.end.i62.i:                                     ; preds = %max2165_write_reg.exit.i
  %shr4.i = lshr i32 %shl6.i.i, 28
  %conv5.i = trunc i32 %shr4.i to i8
  %36 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %v.i.i, align 1
  %and6.i.i = and i8 %37, -16
  %or2.i.i = or i8 %and6.i.i, %conv5.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i126.i) #5
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i126.i, i32 0, i32 1
  %39 = ptrtoint ptr %buf.i126.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %buf.i126.i, align 1
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %or2.i.i, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i127.i) #5
  %41 = getelementptr inbounds i8, ptr %msg.i127.i, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %flags.i128.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i128.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i128.i, align 2
  %buf1.i130.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf1.i130.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buf.i126.i, ptr %buf1.i130.i, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv.i131.i = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i127.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i131.i, ptr %msg.i127.i, align 4
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i132.i = icmp sgt i32 %50, 1
  br i1 %cmp.i132.i, label %do.end.i135.i, label %if.end.i62.i.if.end10.i139.i_crit_edge

if.end.i62.i.if.end10.i139.i_crit_edge:           ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i139.i

do.end.i135.i:                                    ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i133.i = zext i8 %or2.i.i to i32
  %call.i134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %conv7.i133.i) #8
  br label %if.end10.i139.i

if.end10.i139.i:                                  ; preds = %do.end.i135.i, %if.end.i62.i.if.end10.i139.i_crit_edge
  %51 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c.i.i, align 4
  %call11.i137.i = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i127.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i137.i)
  %cmp12.not.i138.i = icmp eq i32 %call11.i137.i, 1
  br i1 %cmp12.not.i138.i, label %if.end10.i139.i.max2165_write_reg.exit146.i_crit_edge, label %do.body15.i141.i

if.end10.i139.i.max2165_write_reg.exit146.i_crit_edge: ; preds = %if.end10.i139.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit146.i

do.body15.i141.i:                                 ; preds = %if.end10.i139.i
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool16.not.i140.i = icmp eq i32 %53, 0
  br i1 %tobool16.not.i140.i, label %do.body15.i141.i.max2165_write_reg.exit146.i_crit_edge, label %do.end20.i144.i

do.body15.i141.i.max2165_write_reg.exit146.i_crit_edge: ; preds = %do.body15.i141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit146.i

do.end20.i144.i:                                  ; preds = %do.body15.i141.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i142.i = zext i8 %or2.i.i to i32
  %call24.i143.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %conv23.i142.i, i32 noundef %call11.i137.i) #8
  br label %max2165_write_reg.exit146.i

max2165_write_reg.exit146.i:                      ; preds = %do.end20.i144.i, %do.body15.i141.i.max2165_write_reg.exit146.i_crit_edge, %if.end10.i139.i.max2165_write_reg.exit146.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i127.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i126.i) #5
  br label %max2165_mask_write_reg.exit.i

max2165_mask_write_reg.exit.i:                    ; preds = %max2165_write_reg.exit146.i, %max2165_write_reg.exit.i.max2165_mask_write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i.i) #5
  %shr7.i = lshr i32 %shl6.i.i, 20
  %conv8.i = trunc i32 %shr7.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i63.i) #5
  %54 = getelementptr inbounds [2 x i8], ptr %buf.i63.i, i32 0, i32 1
  %55 = ptrtoint ptr %buf.i63.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %buf.i63.i, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv8.i, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i64.i) #5
  %57 = getelementptr inbounds i8, ptr %msg.i64.i, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 196607, ptr %57, align 4
  %flags.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i65.i, align 2
  %buf1.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i, i32 0, i32 3
  %60 = ptrtoint ptr %buf1.i67.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %buf.i63.i, ptr %buf1.i67.i, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  %conv.i68.i = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg.i64.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i68.i, ptr %msg.i64.i, align 4
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i69.i = icmp sgt i32 %66, 1
  br i1 %cmp.i69.i, label %do.end.i72.i, label %max2165_mask_write_reg.exit.i.if.end10.i76.i_crit_edge

max2165_mask_write_reg.exit.i.if.end10.i76.i_crit_edge: ; preds = %max2165_mask_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i76.i

do.end.i72.i:                                     ; preds = %max2165_mask_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i70.i = and i32 %shr7.i, 255
  %call.i71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef %conv7.i70.i) #8
  br label %if.end10.i76.i

if.end10.i76.i:                                   ; preds = %do.end.i72.i, %max2165_mask_write_reg.exit.i.if.end10.i76.i_crit_edge
  %67 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c.i.i, align 4
  %call11.i74.i = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i64.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i74.i)
  %cmp12.not.i75.i = icmp eq i32 %call11.i74.i, 1
  br i1 %cmp12.not.i75.i, label %if.end10.i76.i.max2165_write_reg.exit83.i_crit_edge, label %do.body15.i78.i

if.end10.i76.i.max2165_write_reg.exit83.i_crit_edge: ; preds = %if.end10.i76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit83.i

do.body15.i78.i:                                  ; preds = %if.end10.i76.i
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool16.not.i77.i = icmp eq i32 %69, 0
  br i1 %tobool16.not.i77.i, label %do.body15.i78.i.max2165_write_reg.exit83.i_crit_edge, label %do.end20.i81.i

do.body15.i78.i.max2165_write_reg.exit83.i_crit_edge: ; preds = %do.body15.i78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit83.i

do.end20.i81.i:                                   ; preds = %do.body15.i78.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i79.i = and i32 %shr7.i, 255
  %call24.i80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef %conv23.i79.i, i32 noundef %call11.i74.i) #8
  br label %max2165_write_reg.exit83.i

max2165_write_reg.exit83.i:                       ; preds = %do.end20.i81.i, %do.body15.i78.i.max2165_write_reg.exit83.i_crit_edge, %if.end10.i76.i.max2165_write_reg.exit83.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i63.i) #5
  %conv10.i = trunc i32 %shr.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i84.i) #5
  %70 = getelementptr inbounds [2 x i8], ptr %buf.i84.i, i32 0, i32 1
  %71 = ptrtoint ptr %buf.i84.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 3, ptr %buf.i84.i, align 1
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv10.i, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i85.i) #5
  %73 = getelementptr inbounds i8, ptr %msg.i85.i, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 196607, ptr %73, align 4
  %flags.i86.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i85.i, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i86.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i86.i, align 2
  %buf1.i88.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i85.i, i32 0, i32 3
  %76 = ptrtoint ptr %buf1.i88.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %buf.i84.i, ptr %buf1.i88.i, align 4
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  %conv.i89.i = zext i8 %80 to i16
  %81 = ptrtoint ptr %msg.i85.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i89.i, ptr %msg.i85.i, align 4
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i90.i = icmp sgt i32 %82, 1
  br i1 %cmp.i90.i, label %do.end.i93.i, label %max2165_write_reg.exit83.i.if.end10.i97.i_crit_edge

max2165_write_reg.exit83.i.if.end10.i97.i_crit_edge: ; preds = %max2165_write_reg.exit83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i97.i

do.end.i93.i:                                     ; preds = %max2165_write_reg.exit83.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i91.i = and i32 %shr.i, 255
  %call.i92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 3, i32 noundef %conv7.i91.i) #8
  br label %if.end10.i97.i

if.end10.i97.i:                                   ; preds = %do.end.i93.i, %max2165_write_reg.exit83.i.if.end10.i97.i_crit_edge
  %83 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c.i.i, align 4
  %call11.i95.i = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg.i85.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i95.i)
  %cmp12.not.i96.i = icmp eq i32 %call11.i95.i, 1
  br i1 %cmp12.not.i96.i, label %if.end10.i97.i.max2165_write_reg.exit104.i_crit_edge, label %do.body15.i99.i

if.end10.i97.i.max2165_write_reg.exit104.i_crit_edge: ; preds = %if.end10.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit104.i

do.body15.i99.i:                                  ; preds = %if.end10.i97.i
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool16.not.i98.i = icmp eq i32 %85, 0
  br i1 %tobool16.not.i98.i, label %do.body15.i99.i.max2165_write_reg.exit104.i_crit_edge, label %do.end20.i102.i

do.body15.i99.i.max2165_write_reg.exit104.i_crit_edge: ; preds = %do.body15.i99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit104.i

do.end20.i102.i:                                  ; preds = %do.body15.i99.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i100.i = and i32 %shr.i, 255
  %call24.i101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 3, i32 noundef %conv23.i100.i, i32 noundef %call11.i95.i) #8
  br label %max2165_write_reg.exit104.i

max2165_write_reg.exit104.i:                      ; preds = %do.end20.i102.i, %do.body15.i99.i.max2165_write_reg.exit104.i_crit_edge, %if.end10.i97.i.max2165_write_reg.exit104.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i85.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i84.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 725000000, i32 %16)
  %cmp12.i = icmp ult i32 %16, 725000000
  %tf_ntch_low_cfg.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 4
  %tf_ntch_hi_cfg.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 5
  %cond.in.in.i = select i1 %cmp12.i, ptr %tf_ntch_low_cfg.i, ptr %tf_ntch_hi_cfg.i
  %86 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %cond.in58.i = load i8, ptr %cond.in.in.i, align 1
  %tf_balun_low_ref.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 6
  %87 = ptrtoint ptr %tf_balun_low_ref.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %tf_balun_low_ref.i, align 2
  %conv17.i = zext i8 %88 to i32
  %tf_balun_hi_ref.i = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 7
  %89 = ptrtoint ptr %tf_balun_hi_ref.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tf_balun_hi_ref.i, align 1
  %conv18.i = zext i8 %90 to i32
  %sub.i = sub nsw i32 %conv18.i, %conv17.i
  %sub22.i = add nsw i32 %div.i, -470000
  %mul23.i = mul i32 %sub.i, %sub22.i
  %div24.i = udiv i32 %mul23.i, 310000
  %91 = trunc i32 %div24.i to i8
  %conv25.i = add i8 %88, %91
  %92 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i, label %max2165_write_reg.exit104.i.do.end32.i_crit_edge, label %do.end.i

max2165_write_reg.exit104.i.do.end32.i_crit_edge: ; preds = %max2165_write_reg.exit104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32.i

do.end.i:                                         ; preds = %max2165_write_reg.exit104.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv28.i = zext i8 %conv25.i to i32
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv28.i) #8
  br label %do.end32.i

do.end32.i:                                       ; preds = %do.end.i, %max2165_write_reg.exit104.i.do.end32.i_crit_edge
  %shl.i = shl i8 %cond.in58.i, 4
  %or.i = or i8 %conv25.i, %shl.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i105.i) #5
  %93 = getelementptr inbounds [2 x i8], ptr %buf.i105.i, i32 0, i32 1
  %94 = ptrtoint ptr %buf.i105.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 4, ptr %buf.i105.i, align 1
  %95 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %or.i, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i106.i) #5
  %96 = getelementptr inbounds i8, ptr %msg.i106.i, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 196607, ptr %96, align 4
  %flags.i107.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i106.i, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i107.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i107.i, align 2
  %buf1.i109.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i106.i, i32 0, i32 3
  %99 = ptrtoint ptr %buf1.i109.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %buf.i105.i, ptr %buf1.i109.i, align 4
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 1
  %conv.i110.i = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i106.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i110.i, ptr %msg.i106.i, align 4
  %105 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp.i111.i = icmp sgt i32 %105, 1
  br i1 %cmp.i111.i, label %do.end.i114.i, label %do.end32.i.if.end10.i118.i_crit_edge

do.end32.i.if.end10.i118.i_crit_edge:             ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i118.i

do.end.i114.i:                                    ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i112.i = zext i8 %or.i to i32
  %call.i113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef %conv7.i112.i) #8
  br label %if.end10.i118.i

if.end10.i118.i:                                  ; preds = %do.end.i114.i, %do.end32.i.if.end10.i118.i_crit_edge
  %106 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i2c.i.i, align 4
  %call11.i116.i = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i106.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i116.i)
  %cmp12.not.i117.i = icmp eq i32 %call11.i116.i, 1
  br i1 %cmp12.not.i117.i, label %if.end10.i118.i.max2165_write_reg.exit125.i_crit_edge, label %do.body15.i120.i

if.end10.i118.i.max2165_write_reg.exit125.i_crit_edge: ; preds = %if.end10.i118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit125.i

do.body15.i120.i:                                 ; preds = %if.end10.i118.i
  %108 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool16.not.i119.i = icmp eq i32 %108, 0
  br i1 %tobool16.not.i119.i, label %do.body15.i120.i.max2165_write_reg.exit125.i_crit_edge, label %do.end20.i123.i

do.body15.i120.i.max2165_write_reg.exit125.i_crit_edge: ; preds = %do.body15.i120.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit125.i

do.end20.i123.i:                                  ; preds = %do.body15.i120.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i121.i = zext i8 %or.i to i32
  %call24.i122.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef %conv23.i121.i, i32 noundef %call11.i116.i) #8
  br label %max2165_write_reg.exit125.i

max2165_write_reg.exit125.i:                      ; preds = %do.end20.i123.i, %do.body15.i120.i.max2165_write_reg.exit125.i_crit_edge, %if.end10.i118.i.max2165_write_reg.exit125.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i106.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i105.i) #5
  br label %while.body.preheader

while.body.preheader:                             ; preds = %max2165_write_reg.exit125.i, %if.end17.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.051 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %while.body.preheader ]
  %dec = add nsw i32 %__ms.051, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 214748000) #5
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call fastcc void @max2165_debug_status(ptr noundef %1)
  %110 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool25.not = icmp eq ptr %111, null
  br i1 %tobool25.not, label %while.end.if.end30_crit_edge, label %if.then26

while.end.if.end30_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then26:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = call i32 %111(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %while.end.if.end30_crit_edge
  %. = select i1 %cmp.i.i, i32 -121, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %., %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2165_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.22) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %frequency = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frequency, align 4
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %freq, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2165_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %bandwidth = getelementptr inbounds %struct.max2165_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bandwidth, align 4
  %5 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bw, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2165_get_status(ptr noundef %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end3.if.end9_crit_edge, label %if.then5

do.end3.if.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end3.if.end9_crit_edge
  tail call fastcc void @max2165_debug_status(ptr noundef %1)
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end9.if.end17_crit_edge, label %if.then13

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 %7(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end9.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max2165_set_bandwidth(ptr nocapture noundef readonly %priv, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %v.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %bw)
  %cmp = icmp eq i32 %bw, 8000000
  %bb_filter_8mhz_cfg = getelementptr inbounds %struct.max2165_priv, ptr %priv, i32 0, i32 9
  %bb_filter_7mhz_cfg = getelementptr inbounds %struct.max2165_priv, ptr %priv, i32 0, i32 8
  %val.0.in = select i1 %cmp, ptr %bb_filter_8mhz_cfg, ptr %bb_filter_7mhz_cfg
  %0 = ptrtoint ptr %val.0.in to i32
  call void @__asan_load1_noabort(i32 %0)
  %val.0 = load i8, ptr %val.0.in, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i) #5
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %v.i, align 1, !annotation !136
  %call.i = call fastcc i32 @max2165_read_reg(ptr noundef %priv, i8 noundef zeroext 10, ptr noundef nonnull %v.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.max2165_mask_write_reg.exit_crit_edge

entry.max2165_mask_write_reg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_mask_write_reg.exit

if.end.i:                                         ; preds = %entry
  %shl = shl i8 %val.0, 4
  %2 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %v.i, align 1
  %and6.i = and i8 %3, 15
  %or2.i = or i8 %and6.i, %shl
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or2.i, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf.i, ptr %buf1.i, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %msg.i, align 4
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp sgt i32 %16, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i = zext i8 %or2.i to i32
  %call.i1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 10, i32 noundef %conv7.i) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.end.i.if.end10.i_crit_edge
  %i2c.i = getelementptr inbounds %struct.max2165_priv, ptr %priv, i32 0, i32 1
  %17 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i, align 4
  %call11.i2 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i2)
  %cmp12.not.i = icmp eq i32 %call11.i2, 1
  br i1 %cmp12.not.i, label %if.end10.i.max2165_write_reg.exit_crit_edge, label %do.body15.i

if.end10.i.max2165_write_reg.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit

do.body15.i:                                      ; preds = %if.end10.i
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not.i = icmp eq i32 %19, 0
  br i1 %tobool16.not.i, label %do.body15.i.max2165_write_reg.exit_crit_edge, label %do.end20.i

do.body15.i.max2165_write_reg.exit_crit_edge:     ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max2165_write_reg.exit

do.end20.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i = zext i8 %or2.i to i32
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 10, i32 noundef %conv23.i, i32 noundef %call11.i2) #8
  br label %max2165_write_reg.exit

max2165_write_reg.exit:                           ; preds = %do.end20.i, %do.body15.i.max2165_write_reg.exit_crit_edge, %if.end10.i.max2165_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %max2165_mask_write_reg.exit

max2165_mask_write_reg.exit:                      ; preds = %max2165_write_reg.exit, %entry.max2165_mask_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2165_read_reg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %p_data) unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #5
  %4 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %reg, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #5
  %5 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #5
  %6 = getelementptr inbounds i8, ptr %msg, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %conv = zext i8 %3 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %13 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %14 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %15 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b1, ptr %buf6, align 4
  %i2c = getelementptr inbounds %struct.max2165_priv, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end16, label %do.body

do.body:                                          ; preds = %entry
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv12 = zext i8 %reg to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %conv12, i32 noundef %call) #8
  br label %cleanup

if.end16:                                         ; preds = %entry
  %19 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b1, align 1
  %21 = ptrtoint ptr %p_data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %p_data, align 1
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp17 = icmp sgt i32 %22, 1
  br i1 %cmp17, label %do.end25, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %conv27 = zext i8 %reg to i32
  %conv29 = zext i8 %20 to i32
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %conv27, i32 noundef %conv29) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end16.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %do.end25 ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/max2165.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/max2165.c", i32 30, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/max2165.c", i32 393, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @max2165_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @max2165_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_max2165_attach, !12, !"__ksymtab_max2165_attach", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/max2165.c", i32 413, i32 1}
!13 = !{ptr @__UNIQUE_ID_author292, !14, !"__UNIQUE_ID_author292", i1 false, i1 false}
!14 = !{!"../drivers/media/tuners/max2165.c", i32 415, i32 1}
!15 = !{ptr @__UNIQUE_ID_description293, !16, !"__UNIQUE_ID_description293", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/max2165.c", i32 416, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/max2165.c", i32 417, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/max2165.c", i32 28, i32 12}
!22 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!23 = !{ptr @max2165_tuner_ops, !24, !"max2165_tuner_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/tuners/max2165.c", i32 368, i32 35}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/tuners/max2165.c", i32 362, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @max2165_release._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @max2165_release._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/max2165.c", i32 321, i32 2}
!32 = !{ptr @max2165_sleep._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @max2165_sleep._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/max2165.c", i32 261, i32 3}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @max2165_set_params._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @max2165_set_params._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/tuners/max2165.c", i32 266, i32 2}
!41 = !{ptr @max2165_set_params._entry.8, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @max2165_set_params._entry_ptr.10, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/max2165.c", i32 66, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @max2165_read_reg._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @max2165_read_reg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/max2165.c", i32 72, i32 3}
!50 = !{ptr @max2165_read_reg._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @max2165_read_reg._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/max2165.c", i32 41, i32 3}
!54 = !{ptr @max2165_write_reg._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @max2165_write_reg._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/max2165.c", i32 46, i32 3}
!58 = !{ptr @max2165_write_reg._entry.17, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @max2165_write_reg._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/tuners/max2165.c", i32 209, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @max2165_set_rf._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @max2165_set_rf._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/tuners/max2165.c", i32 286, i32 2}
!67 = !{ptr @max2165_get_frequency._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @max2165_get_frequency._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/max2165.c", i32 294, i32 2}
!71 = !{ptr @max2165_get_bandwidth._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @max2165_get_bandwidth._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/tuners/max2165.c", i32 305, i32 2}
!75 = !{ptr @max2165_get_status._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @max2165_get_status._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/tuners/max2165.c", i32 328, i32 2}
!79 = !{ptr @max2165_init._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @max2165_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/tuners/max2165.c", i32 111, i32 2}
!83 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @max2165_read_rom_table._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @max2165_read_rom_table._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/max2165.c", i32 112, i32 2}
!88 = !{ptr @max2165_read_rom_table._entry.28, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @max2165_read_rom_table._entry_ptr.30, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/tuners/max2165.c", i32 113, i32 2}
!92 = !{ptr @max2165_read_rom_table._entry.31, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @max2165_read_rom_table._entry_ptr.33, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/tuners/max2165.c", i32 114, i32 2}
!96 = !{ptr @max2165_read_rom_table._entry.34, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @max2165_read_rom_table._entry_ptr.36, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/tuners/max2165.c", i32 115, i32 2}
!100 = !{ptr @max2165_read_rom_table._entry.37, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @max2165_read_rom_table._entry_ptr.39, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/tuners/max2165.c", i32 116, i32 2}
!104 = !{ptr @max2165_read_rom_table._entry.40, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @max2165_read_rom_table._entry_ptr.42, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/tuners/max2165.c", i32 240, i32 2}
!108 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @max2165_debug_status._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @max2165_debug_status._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/tuners/max2165.c", i32 242, i32 2}
!113 = !{ptr @max2165_debug_status._entry.45, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @max2165_debug_status._entry_ptr.47, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/tuners/max2165.c", i32 243, i32 2}
!117 = !{ptr @max2165_debug_status._entry.48, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @max2165_debug_status._entry_ptr.50, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/tuners/max2165.c", i32 245, i32 2}
!121 = !{ptr @max2165_debug_status._entry.51, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @max2165_debug_status._entry_ptr.53, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/tuners/max2165.c", i32 246, i32 2}
!125 = !{ptr @max2165_debug_status._entry.54, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @max2165_debug_status._entry_ptr.56, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"auto-init"}
