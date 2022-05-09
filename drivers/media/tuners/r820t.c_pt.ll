; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/r820t.c_pt.bc'
source_filename = "../drivers/media/tuners/r820t.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+r820t_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_r820t_attach\09\09\09\09"
module asm "\09.long\09__crc_r820t_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_r820t_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22r820t_attach\22\09\09\09\09\09"
module asm "__kstrtabns_r820t_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.r820t_freq_range = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.r820t_priv = type { %struct.list_head, ptr, %struct.tuner_i2c_props, %struct.mutex, [27 x i8], [28 x i8], i32, i16, i32, i8, i8, i8, i8, [5 x %struct.r820t_sect_type], i32, i32, i64, i32 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.r820t_sect_type = type { i8, i8, i16 }
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
%struct.r820t_config = type { i8, i32, i32, i32, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [12 x i8] c"r820t.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [25 x i8] c"r820t.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [47 x i8] c"r820t.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_no_imr_cal = internal constant [17 x i8] c"r820t.no_imr_cal\00", align 1
@no_imr_cal = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_imr_cal = internal constant %struct.kernel_param { ptr @__param_str_no_imr_cal, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @no_imr_cal } }, section "__param", align 4
@__UNIQUE_ID_no_imr_caltype292 = internal constant [30 x i8] c"r820t.parmtype=no_imr_cal:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_imr_cal293 = internal constant [61 x i8] c"r820t.parm=no_imr_cal:Disable IMR calibration at module init\00", section ".modinfo", align 1
@r820t_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @r820t_list_mutex, i64 52), ptr getelementptr (i8, ptr @r820t_list_mutex, i64 52) }, ptr @r820t_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hybrid_tuner_instance_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, [24 x i8] zeroinitializer }, align 32
@r820t_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r820t_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/tuners/r820t.c\00", [35 x i8] zeroinitializer }, align 32
@r820t_attach._entry_ptr = internal global ptr @r820t_attach._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"r820t\00", [26 x i8] zeroinitializer }, align 32
@r820t_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 2347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", [59 x i8] zeroinitializer }, align 32
@r820t_attach._entry_ptr.6 = internal global ptr @r820t_attach._entry.4, section ".printk_index", align 4
@r820t_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@r820t_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 2380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016%s %d-%04x: Rafael Micro r820t successfully identified, chip type: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@r820t_attach._entry_ptr.10 = internal global ptr @r820t_attach._entry.8, section ".printk_index", align 4
@r820t_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Rafael Micro R820T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 42000000, i32 1002000000, i32 0, i32 0, i32 0, i32 0 }, ptr @r820t_release, ptr @r820t_init, ptr @r820t_sleep, ptr null, ptr null, ptr @r820t_set_params, ptr @r820t_set_analog_freq, ptr null, ptr null, ptr null, ptr @r820t_get_if_frequency, ptr null, ptr @r820t_signal, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@r820t_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 2398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016r820t: %s: failed=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@r820t_attach._entry_ptr.13 = internal global ptr @r820t_attach._entry.11, section ".printk_index", align 4
@__kstrtab_r820t_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_r820t_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_r820t_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @r820t_attach to i32), ptr @__kstrtab_r820t_attach, ptr @__kstrtabns_r820t_attach }, section "___ksymtab_gpl+r820t_attach", align 4
@__UNIQUE_ID_description294 = internal constant [58 x i8] c"r820t.description=Rafael Micro r820t silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [35 x i8] c"r820t.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [38 x i8] c"r820t.file=drivers/media/tuners/r820t\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [21 x i8] c"r820t.license=GPL v2\00", section ".modinfo", align 1
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"r820t_list_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r820t_list_mutex\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@r820t_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s %d-%04x: %s: i2c rd failed=%d reg=%02x len=%d: %*ph\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r820t_read\00", [21 x i8] zeroinitializer }, align 32
@r820t_read._entry_ptr = internal global ptr @r820t_read._entry, section ".printk_index", align 4
@r820t_read._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s %d-%04x: %s: i2c rd reg=%02x len=%d: %*ph\0A\00", [48 x i8] zeroinitializer }, align 32
@r820t_read._entry_ptr.20 = internal global ptr @r820t_read._entry.18, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@r820t_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 2178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s %d-%04x: %s:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r820t_sleep\00", [20 x i8] zeroinitializer }, align 32
@r820t_sleep._entry_ptr = internal global ptr @r820t_sleep._entry, section ".printk_index", align 4
@r820t_sleep._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 2190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s %d-%04x: %s: failed=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@r820t_sleep._entry_ptr.25 = internal global ptr @r820t_sleep._entry.23, section ".printk_index", align 4
@r820t_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s %d-%04x: %s: i2c wr failed=%d reg=%02x len=%d: %*ph\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r820t_write\00", [20 x i8] zeroinitializer }, align 32
@r820t_write._entry_ptr = internal global ptr @r820t_write._entry, section ".printk_index", align 4
@r820t_write._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s %d-%04x: %s: i2c wr reg=%02x len=%d: %*ph\0A\00", [48 x i8] zeroinitializer }, align 32
@r820t_write._entry_ptr.30 = internal global ptr @r820t_write._entry.28, section ".printk_index", align 4
@shadow_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s %d-%04x: %s: prev  reg=%02x len=%d: %*ph\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"shadow_store\00", [19 x i8] zeroinitializer }, align 32
@shadow_store._entry_ptr = internal global ptr @shadow_store._entry, section ".printk_index", align 4
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"R820T\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"R620D\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"R828D\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R828\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"R828S\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"R820C\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@r820t_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.40, ptr @.str.2, i32 2149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r820t_init\00", [21 x i8] zeroinitializer }, align 32
@r820t_init._entry_ptr = internal global ptr @r820t_init._entry, section ".printk_index", align 4
@r820t_init_array = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\832u\C0@\D6l\F5cuhl\83\80\00\0F\00\C00H\CC`\00T\AEJ\C0", [37 x i8] zeroinitializer }, align 32
@r820t_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.40, ptr @.str.2, i32 2169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r820t_init._entry_ptr.42 = internal global ptr @r820t_init._entry.41, section ".printk_index", align 4
@r820t_xtal_capacitor = internal constant { [5 x [2 x i32]], [56 x i8] } { [5 x [2 x i32]] [[2 x i32] [i32 11, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 3], [2 x i32] [i32 16, i32 4]], [56 x i8] zeroinitializer }, align 32
@freq_ranges = internal constant { [21 x %struct.r820t_freq_range], [36 x i8] } { [21 x %struct.r820t_freq_range] [%struct.r820t_freq_range { i32 0, i8 8, i8 2, i8 -33, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 50, i8 8, i8 2, i8 -66, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 55, i8 8, i8 2, i8 -117, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 60, i8 8, i8 2, i8 123, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 65, i8 8, i8 2, i8 105, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 70, i8 8, i8 2, i8 88, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 75, i8 0, i8 2, i8 68, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 80, i8 0, i8 2, i8 68, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 90, i8 0, i8 2, i8 52, i8 1, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 100, i8 0, i8 2, i8 52, i8 1, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 110, i8 0, i8 2, i8 36, i8 1, i8 1, i8 0, i8 1 }, %struct.r820t_freq_range { i32 120, i8 0, i8 2, i8 36, i8 1, i8 1, i8 0, i8 1 }, %struct.r820t_freq_range { i32 140, i8 0, i8 2, i8 20, i8 1, i8 1, i8 0, i8 1 }, %struct.r820t_freq_range { i32 180, i8 0, i8 2, i8 19, i8 0, i8 0, i8 0, i8 1 }, %struct.r820t_freq_range { i32 220, i8 0, i8 2, i8 19, i8 0, i8 0, i8 0, i8 2 }, %struct.r820t_freq_range { i32 250, i8 0, i8 2, i8 17, i8 0, i8 0, i8 0, i8 2 }, %struct.r820t_freq_range { i32 280, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 2 }, %struct.r820t_freq_range { i32 310, i8 0, i8 65, i8 0, i8 0, i8 0, i8 0, i8 2 }, %struct.r820t_freq_range { i32 450, i8 0, i8 65, i8 0, i8 0, i8 0, i8 0, i8 3 }, %struct.r820t_freq_range { i32 588, i8 0, i8 64, i8 0, i8 0, i8 0, i8 0, i8 3 }, %struct.r820t_freq_range { i32 650, i8 0, i8 64, i8 0, i8 0, i8 0, i8 0, i8 4 }], [36 x i8] zeroinitializer }, align 32
@r820t_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s %d-%04x: set r820t range#%d for frequency %d MHz\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r820t_set_mux\00", [18 x i8] zeroinitializer }, align 32
@r820t_set_mux._entry_ptr = internal global ptr @r820t_set_mux._entry, section ".printk_index", align 4
@r820t_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s %d-%04x: mix_div=%d div_num=%d vco_fine_tune=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r820t_set_pll\00", [18 x i8] zeroinitializer }, align 32
@r820t_set_pll._entry_ptr = internal global ptr @r820t_set_pll._entry, section ".printk_index", align 4
@r820t_set_pll._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s %d-%04x: freq %d kHz, pll ref %d%s, sdm=0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@r820t_set_pll._entry_ptr.49 = internal global ptr @r820t_set_pll._entry.47, section ".printk_index", align 4
@.str.51 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@r820t_set_pll._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.46, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s %d-%04x: tuner has lock at frequency %d kHz\0A\00", [46 x i8] zeroinitializer }, align 32
@r820t_set_pll._entry_ptr.54 = internal global ptr @r820t_set_pll._entry.52, section ".printk_index", align 4
@r820t_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s %d-%04x: %s: delivery_system=%d frequency=%d bandwidth_hz=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r820t_set_params\00", [47 x i8] zeroinitializer }, align 32
@r820t_set_params._entry_ptr = internal global ptr @r820t_set_params._entry, section ".printk_index", align 4
@r820t_set_params._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.56, ptr @.str.2, i32 2252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r820t_set_params._entry_ptr.58 = internal global ptr @r820t_set_params._entry.57, section ".printk_index", align 4
@generic_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s %d-%04x: should set frequency to %d kHz, bw %d MHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"generic_set_freq\00", [47 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr = internal global ptr @generic_set_freq._entry, section ".printk_index", align 4
@generic_set_freq._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s %d-%04x: %s: PLL locked on frequency %d Hz, gain=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr.63 = internal global ptr @generic_set_freq._entry.61, section ".printk_index", align 4
@generic_set_freq._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.60, ptr @.str.2, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr.65 = internal global ptr @generic_set_freq._entry.64, section ".printk_index", align 4
@r820t_set_tv_standard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s %d-%04x: selecting the delivery system\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"r820t_set_tv_standard\00", [42 x i8] zeroinitializer }, align 32
@r820t_set_tv_standard._entry_ptr = internal global ptr @r820t_set_tv_standard._entry, section ".printk_index", align 4
@r820t_set_tv_standard._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s %d-%04x: calibrating the tuner\0A\00", [59 x i8] zeroinitializer }, align 32
@r820t_set_tv_standard._entry_ptr.70 = internal global ptr @r820t_set_tv_standard._entry.68, section ".printk_index", align 4
@r820t_sysfreq_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s %d-%04x: adjusting tuner parameters for the standard\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"r820t_sysfreq_sel\00", [46 x i8] zeroinitializer }, align 32
@r820t_sysfreq_sel._entry_ptr = internal global ptr @r820t_sysfreq_sel._entry, section ".printk_index", align 4
@r820t_sysfreq_sel._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s %d-%04x: adjusting LNA parameters\0A\00", [56 x i8] zeroinitializer }, align 32
@r820t_sysfreq_sel._entry_ptr.75 = internal global ptr @r820t_sysfreq_sel._entry.73, section ".printk_index", align 4
@r820t_set_analog_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 2201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s %d-%04x: %s called\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"r820t_set_analog_freq\00", [42 x i8] zeroinitializer }, align 32
@r820t_set_analog_freq._entry_ptr = internal global ptr @r820t_set_analog_freq._entry, section ".printk_index", align 4
@r820t_get_if_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.78, ptr @.str.2, i32 2295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"r820t_get_if_frequency\00", [41 x i8] zeroinitializer }, align 32
@r820t_get_if_frequency._entry_ptr = internal global ptr @r820t_get_if_frequency._entry, section ".printk_index", align 4
@r820t_signal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 2286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d-%04x: %s: %s, gain=%d strength=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r820t_signal\00", [19 x i8] zeroinitializer }, align 32
@r820t_signal._entry_ptr = internal global ptr @r820t_signal._entry, section ".printk_index", align 4
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PLL locked\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no signal\00", [22 x i8] zeroinitializer }, align 32
@r820t_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.83, ptr @.str.2, i32 2306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r820t_release\00", [18 x i8] zeroinitializer }, align 32
@r820t_release._entry_ptr = internal global ptr @r820t_release._entry, section ".printk_index", align 4
@r820t_release._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 2311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", [61 x i8] zeroinitializer }, align 32
@r820t_release._entry_ptr.86 = internal global ptr @r820t_release._entry.84, section ".printk_index", align 4
@switch.table.r820t_attach = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 18]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 15]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 8]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 506000000, i64 666000000, i64 818000000]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 44, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"no_imr_cal\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 48, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"r820t_list_mutex\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"hybrid_tuner_instance_list\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 113, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2344, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2356, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2378, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"r820t_tuner_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2318, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2398, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 114, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 449, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 460, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2178, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2190, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 392, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 398, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 366, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 333, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 335, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 337, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 339, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 341, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 343, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 345, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2149, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"r820t_init_array\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 117, i32 17 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2169, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [21 x i8] c"r820t_xtal_capacitor\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 321, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant [12 x i8] c"freq_ranges\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 128, i32 38 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 484, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 614, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 676, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 710, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2233, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2252, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1315, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1339, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1345, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 960, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1097, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 727, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 863, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2201, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2295, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2283, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2306, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.385 = private constant [32 x i8] c"../drivers/media/tuners/r820t.c\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2311, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [26 x i8] c"switch.table.r820t_attach\00", align 1
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_no_imr_cal293, ptr @__UNIQUE_ID_no_imr_caltype292, ptr @__ksymtab_r820t_attach, ptr @__param_debug, ptr @__param_no_imr_cal, ptr @generic_set_freq._entry, ptr @generic_set_freq._entry.61, ptr @generic_set_freq._entry.64, ptr @generic_set_freq._entry_ptr, ptr @generic_set_freq._entry_ptr.63, ptr @generic_set_freq._entry_ptr.65, ptr @r820t_attach._entry, ptr @r820t_attach._entry.11, ptr @r820t_attach._entry.4, ptr @r820t_attach._entry.8, ptr @r820t_attach._entry_ptr, ptr @r820t_attach._entry_ptr.10, ptr @r820t_attach._entry_ptr.13, ptr @r820t_attach._entry_ptr.6, ptr @r820t_get_if_frequency._entry, ptr @r820t_get_if_frequency._entry_ptr, ptr @r820t_init._entry, ptr @r820t_init._entry.41, ptr @r820t_init._entry_ptr, ptr @r820t_init._entry_ptr.42, ptr @r820t_read._entry, ptr @r820t_read._entry.18, ptr @r820t_read._entry_ptr, ptr @r820t_read._entry_ptr.20, ptr @r820t_release._entry, ptr @r820t_release._entry.84, ptr @r820t_release._entry_ptr, ptr @r820t_release._entry_ptr.86, ptr @r820t_set_analog_freq._entry, ptr @r820t_set_analog_freq._entry_ptr, ptr @r820t_set_mux._entry, ptr @r820t_set_mux._entry_ptr, ptr @r820t_set_params._entry, ptr @r820t_set_params._entry.57, ptr @r820t_set_params._entry_ptr, ptr @r820t_set_params._entry_ptr.58, ptr @r820t_set_pll._entry, ptr @r820t_set_pll._entry.47, ptr @r820t_set_pll._entry.52, ptr @r820t_set_pll._entry_ptr, ptr @r820t_set_pll._entry_ptr.49, ptr @r820t_set_pll._entry_ptr.54, ptr @r820t_set_tv_standard._entry, ptr @r820t_set_tv_standard._entry.68, ptr @r820t_set_tv_standard._entry_ptr, ptr @r820t_set_tv_standard._entry_ptr.70, ptr @r820t_signal._entry, ptr @r820t_signal._entry_ptr, ptr @r820t_sleep._entry, ptr @r820t_sleep._entry.23, ptr @r820t_sleep._entry_ptr, ptr @r820t_sleep._entry_ptr.25, ptr @r820t_sysfreq_sel._entry, ptr @r820t_sysfreq_sel._entry.73, ptr @r820t_sysfreq_sel._entry_ptr, ptr @r820t_sysfreq_sel._entry_ptr.75, ptr @r820t_write._entry, ptr @r820t_write._entry.28, ptr @r820t_write._entry_ptr, ptr @r820t_write._entry_ptr.30, ptr @shadow_store._entry, ptr @shadow_store._entry_ptr, ptr @debug, ptr @no_imr_cal, ptr @r820t_list_mutex, ptr @hybrid_tuner_instance_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @r820t_attach.__key, ptr @.str.7, ptr @.str.9, ptr @r820t_tuner_ops, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @r820t_init_array, ptr @r820t_xtal_capacitor, ptr @freq_ranges, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @switch.table.r820t_attach], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_imr_cal to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybrid_tuner_instance_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_read._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_sleep._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_write._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_init_array to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_xtal_capacitor to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_ranges to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_set_pll._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_set_pll._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_set_params._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_set_tv_standard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_set_tv_standard._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_sysfreq_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_sysfreq_sel._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_set_analog_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_get_if_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_signal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r820t_release._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r820t_attach to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r820t_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  %data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data) #6
  %0 = call ptr @memset(ptr %data, i32 255, i32 5)
  tail call void @mutex_lock_nested(ptr noundef nonnull @r820t_list_mutex, i32 noundef 0) #6
  %priv.0229 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %cmp.not230 = icmp eq ptr %priv.0229, @hybrid_tuner_instance_list
  br i1 %cmp.not230, label %entry.if.then39_crit_edge, label %for.body.lr.ph

entry.if.then39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %i2c, null
  %nr.i218 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %priv.0231 = phi ptr [ %priv.0229, %for.body.lr.ph ], [ %priv.0, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %priv.0231, i32 0, i32 2
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %priv.0231, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adap, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true2

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true2:                                   ; preds = %land.lhs.true
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr.i, align 4
  %5 = ptrtoint ptr %nr.i218 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i218, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp6 = icmp eq i32 %4, %6
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true2.for.inc_crit_edge

land.lhs.true2.for.inc_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cfg, align 4
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp10 = icmp eq i8 %8, %10
  br i1 %cmp10, label %for.end, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true2.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %priv.0231 to i32
  call void @__asan_load4_noabort(i32 %11)
  %priv.0 = load ptr, ptr %priv.0231, align 4
  %cmp.not = icmp eq ptr %priv.0, @hybrid_tuner_instance_list
  br i1 %cmp.not, label %for.inc.if.then39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

for.end:                                          ; preds = %land.lhs.true7
  %name = getelementptr inbounds %struct.r820t_priv, ptr %priv.0231, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %conv24 = zext i8 %8 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %4, i32 noundef %conv24) #9
  %count = getelementptr inbounds %struct.r820t_priv, ptr %priv.0231, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp37 = icmp eq i32 %inc, 0
  br i1 %cmp37, label %for.end.if.then39_crit_edge, label %for.end.__fail_crit_edge

for.end.__fail_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__fail

for.end.if.then39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then39:                                        ; preds = %for.end.if.then39_crit_edge, %for.inc.if.then39_crit_edge, %entry.if.then39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 240) #10
  %tobool41.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool41.not, label %if.then39.sw.epilog_crit_edge, label %if.end43

if.then39.sw.epilog_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end43:                                         ; preds = %if.then39
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cfg, align 4
  %i2c_props45 = getelementptr inbounds %struct.r820t_priv, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %i2c_props45 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %i2c_props45, align 4
  %adap48 = getelementptr inbounds %struct.r820t_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %adap48 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %i2c, ptr %adap48, align 8
  %name50 = getelementptr inbounds %struct.r820t_priv, ptr %call7.i.i, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %name50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.3, ptr %name50, align 8
  %tobool61.not = icmp eq ptr %i2c, null
  br i1 %tobool61.not, label %if.end43.cond.end67_crit_edge, label %cond.true62

if.end43.cond.end67_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end67

cond.true62:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i220 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %22 = ptrtoint ptr %nr.i220 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr.i220, align 4
  br label %cond.end67

cond.end67:                                       ; preds = %cond.true62, %if.end43.cond.end67_crit_edge
  %cond68 = phi i32 [ %23, %cond.true62 ], [ -1, %if.end43.cond.end67_crit_edge ]
  %conv71 = zext i8 %18 to i32
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %cond68, i32 noundef %conv71) #9
  %24 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %24, ptr noundef nonnull @hybrid_tuner_instance_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %cond.end67.list_add_tail.exit_crit_edge

cond.end67.list_add_tail.exit_crit_edge:          ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hybrid_tuner_instance_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end67.list_add_tail.exit_crit_edge
  %count79 = getelementptr inbounds %struct.r820t_priv, ptr %call7.i.i, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %count79 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count79, align 4
  %inc80 = add i32 %29, 1
  store i32 %inc80, ptr %count79, align 4
  br label %__fail

__fail:                                           ; preds = %list_add_tail.exit, %for.end.__fail_crit_edge
  %__ret.1 = phi i32 [ %inc80, %list_add_tail.exit ], [ %inc, %for.end.__fail_crit_edge ]
  %priv.1 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ %priv.0231, %for.end.__fail_crit_edge ]
  %30 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %__fail.sw.epilog_crit_edge [
    i32 0, label %__fail.err_no_gate_crit_edge
    i32 1, label %sw.bb85
    i32 2, label %__fail.sw.epilog.sink.split_crit_edge
  ]

__fail.sw.epilog.sink.split_crit_edge:            ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

__fail.err_no_gate_crit_edge:                     ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_no_gate

__fail.sw.epilog_crit_edge:                       ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb85:                                          ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #8
  %cfg86 = getelementptr inbounds %struct.r820t_priv, ptr %priv.1, i32 0, i32 1
  %31 = ptrtoint ptr %cfg86 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cfg, ptr %cfg86, align 8
  %lock = getelementptr inbounds %struct.r820t_priv, ptr %priv.1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @r820t_attach.__key) #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb85, %__fail.sw.epilog.sink.split_crit_edge
  %tuner_priv91 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %32 = ptrtoint ptr %tuner_priv91 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %priv.1, ptr %tuner_priv91, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %__fail.sw.epilog_crit_edge, %if.then39.sw.epilog_crit_edge
  %priv.1226 = phi ptr [ %priv.1, %__fail.sw.epilog_crit_edge ], [ null, %if.then39.sw.epilog_crit_edge ], [ %priv.1, %sw.epilog.sink.split ]
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %33 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool92.not = icmp eq ptr %34, null
  br i1 %tobool92.not, label %sw.epilog.if.end97_crit_edge, label %if.then93

sw.epilog.if.end97_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then93:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = tail call i32 %34(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %sw.epilog.if.end97_crit_edge
  %call98 = call fastcc i32 @r820t_read(ptr noundef %priv.1226, ptr noundef nonnull %data, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.end97.err_crit_edge, label %if.end102

if.end97.err_crit_edge:                           ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end102:                                        ; preds = %if.end97
  %call103 = call i32 @r820t_sleep(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end102.err_crit_edge, label %do.end112

if.end102.err_crit_edge:                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

do.end112:                                        ; preds = %if.end102
  %i2c_props114 = getelementptr inbounds %struct.r820t_priv, ptr %priv.1226, i32 0, i32 2
  %name115 = getelementptr inbounds %struct.r820t_priv, ptr %priv.1226, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %name115 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name115, align 4
  %adap117 = getelementptr inbounds %struct.r820t_priv, ptr %priv.1226, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %adap117 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adap117, align 4
  %tobool118.not = icmp eq ptr %38, null
  br i1 %tobool118.not, label %do.end112.cond.end124_crit_edge, label %cond.true119

do.end112.cond.end124_crit_edge:                  ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end124

cond.true119:                                     ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i221 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %nr.i221 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr.i221, align 4
  br label %cond.end124

cond.end124:                                      ; preds = %cond.true119, %do.end112.cond.end124_crit_edge
  %cond125 = phi i32 [ %40, %cond.true119 ], [ -1, %do.end112.cond.end124_crit_edge ]
  %41 = ptrtoint ptr %i2c_props114 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %i2c_props114, align 4
  %conv128 = zext i8 %42 to i32
  %rafael_chip = getelementptr inbounds %struct.r820t_config, ptr %cfg, i32 0, i32 2
  %43 = ptrtoint ptr %rafael_chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rafael_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %45 = icmp ult i32 %44, 6
  br i1 %45, label %switch.lookup, label %cond.end124.r820t_chip_enum_to_str.exit_crit_edge

cond.end124.r820t_chip_enum_to_str.exit_crit_edge: ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_chip_enum_to_str.exit

switch.lookup:                                    ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.r820t_attach, i32 0, i32 %44
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %r820t_chip_enum_to_str.exit

r820t_chip_enum_to_str.exit:                      ; preds = %switch.lookup, %cond.end124.r820t_chip_enum_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.39, %cond.end124.r820t_chip_enum_to_str.exit_crit_edge ]
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %36, i32 noundef %cond125, i32 noundef %conv128, ptr noundef nonnull %retval.0.i) #9
  %47 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool137.not = icmp eq ptr %48, null
  br i1 %tobool137.not, label %r820t_chip_enum_to_str.exit.if.end142_crit_edge, label %if.then138

r820t_chip_enum_to_str.exit.if.end142_crit_edge:  ; preds = %r820t_chip_enum_to_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

if.then138:                                       ; preds = %r820t_chip_enum_to_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call141 = call i32 %48(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end142

if.end142:                                        ; preds = %if.then138, %r820t_chip_enum_to_str.exit.if.end142_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @r820t_list_mutex) #6
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %49 = call ptr @memcpy(ptr %tuner_ops, ptr @r820t_tuner_ops, i32 220)
  br label %cleanup

err:                                              ; preds = %if.end102.err_crit_edge, %if.end97.err_crit_edge
  %rc.0 = phi i32 [ %call98, %if.end97.err_crit_edge ], [ %call103, %if.end102.err_crit_edge ]
  %50 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool146.not = icmp eq ptr %51, null
  br i1 %tobool146.not, label %err.err_no_gate_crit_edge, label %if.then147

err.err_no_gate_crit_edge:                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_no_gate

if.then147:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %call150 = call i32 %51(ptr noundef %fe, i32 noundef 0) #6
  br label %err_no_gate

err_no_gate:                                      ; preds = %if.then147, %err.err_no_gate_crit_edge, %__fail.err_no_gate_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.then147 ], [ %rc.0, %err.err_no_gate_crit_edge ], [ -19, %__fail.err_no_gate_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @r820t_list_mutex) #6
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef %rc.1) #9
  call void @r820t_release(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %err_no_gate, %if.end142
  %retval.0 = phi ptr [ null, %err_no_gate ], [ %fe, %if.end142 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef %val, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 5
  %arrayidx = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %3 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i2c_props, align 4
  %conv.i = zext i8 %4 to i16
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags.i, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %1, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %9 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %10 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %conv8.i = trunc i32 %len to i16
  %11 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv8.i, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %12 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %buf9.i, align 4
  %adap.i = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  %ilen.call.i = select i1 %cmp.i, i32 %len, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %ilen.call.i, i32 %len)
  %cmp.not = icmp eq i32 %ilen.call.i, %len
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp222 = icmp sgt i32 %len, 0
  br i1 %cmp222, label %for.cond.preheader.cond.end50_crit_edge, label %for.cond.preheader.do.body54_crit_edge

for.cond.preheader.do.body54_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

for.cond.preheader.cond.end50_crit_edge:          ; preds = %for.cond.preheader
  br label %cond.end50

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %17 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap.i, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %20, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %21 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %22 to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %16, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.17, i32 noundef %ilen.call.i, i32 noundef 0, i32 noundef %len, i32 noundef %len, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ilen.call.i)
  %cmp18 = icmp slt i32 %ilen.call.i, 0
  %call. = select i1 %cmp18, i32 %ilen.call.i, i32 -121
  br label %cleanup

cond.end50:                                       ; preds = %cond.end50.cond.end50_crit_edge, %for.cond.preheader.cond.end50_crit_edge
  %i.03 = phi i32 [ %inc, %cond.end50.cond.end50_crit_edge ], [ 0, %for.cond.preheader.cond.end50_crit_edge ]
  %arrayidx24 = getelementptr i8, ptr %arrayidx, i32 %i.03
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx24, align 1
  %idxprom.i = zext i8 %24 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  %arrayidx53 = getelementptr i8, ptr %val, i32 %i.03
  %27 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx53, align 1
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %cond.end50.do.body54_crit_edge, label %cond.end50.cond.end50_crit_edge

cond.end50.cond.end50_crit_edge:                  ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end50

cond.end50.do.body54_crit_edge:                   ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

do.body54:                                        ; preds = %cond.end50.do.body54_crit_edge, %for.cond.preheader.do.body54_crit_edge
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool55.not = icmp eq i32 %28, 0
  br i1 %tobool55.not, label %do.body54.cleanup_crit_edge, label %do.end60

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end60:                                         ; preds = %do.body54
  %name63 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %name63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name63, align 4
  %31 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap.i, align 4
  %tobool66.not = icmp eq ptr %32, null
  br i1 %tobool66.not, label %do.end60.cond.end72_crit_edge, label %cond.true67

do.end60.cond.end72_crit_edge:                    ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end72

cond.true67:                                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i1 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %nr.i1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i1, align 4
  br label %cond.end72

cond.end72:                                       ; preds = %cond.true67, %do.end60.cond.end72_crit_edge
  %cond73 = phi i32 [ %34, %cond.true67 ], [ -1, %do.end60.cond.end72_crit_edge ]
  %35 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i2c_props, align 4
  %conv76 = zext i8 %36 to i32
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %30, i32 noundef %cond73, i32 noundef %conv76, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %len, i32 noundef %len, ptr noundef %val) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end72, %do.body54.cleanup_crit_edge, %cond.end
  %retval.0 = phi i32 [ %call., %cond.end ], [ 0, %cond.end72 ], [ 0, %do.body54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r820t_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %tmp.i90.i = alloca i8, align 1
  %tmp.i88.i = alloca i8, align 1
  %tmp.i86.i = alloca i8, align 1
  %tmp.i84.i = alloca i8, align 1
  %tmp.i82.i = alloca i8, align 1
  %tmp.i80.i = alloca i8, align 1
  %tmp.i78.i = alloca i8, align 1
  %tmp.i76.i = alloca i8, align 1
  %tmp.i74.i = alloca i8, align 1
  %tmp.i72.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.22) #9
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %lock = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %do.end12.if.end18_crit_edge, label %if.then14

do.end12.if.end18_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 %12(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %do.end12.if.end18_crit_edge
  %init_done.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %init_done.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %init_done.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end18.r820t_standby.exit_crit_edge, label %if.end.i

if.end18.r820t_standby.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end.i:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -79, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.i.r820t_standby.exit_crit_edge, label %if.end2.i

if.end.i.r820t_standby.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i72.i) #6
  %16 = ptrtoint ptr %tmp.i72.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %tmp.i72.i, align 1
  %call.i73.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull %tmp.i72.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i72.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp4.i = icmp slt i32 %call.i73.i, 0
  br i1 %cmp4.i, label %if.end2.i.r820t_standby.exit_crit_edge, label %if.end6.i

if.end2.i.r820t_standby.exit_crit_edge:           ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end6.i:                                        ; preds = %if.end2.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i74.i) #6
  %17 = ptrtoint ptr %tmp.i74.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 58, ptr %tmp.i74.i, align 1
  %call.i75.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 7, ptr noundef nonnull %tmp.i74.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i74.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %cmp8.i = icmp slt i32 %call.i75.i, 0
  br i1 %cmp8.i, label %if.end6.i.r820t_standby.exit_crit_edge, label %if.end10.i

if.end6.i.r820t_standby.exit_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end10.i:                                       ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i76.i) #6
  %18 = ptrtoint ptr %tmp.i76.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 64, ptr %tmp.i76.i, align 1
  %call.i77.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %tmp.i76.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i76.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %cmp12.i = icmp slt i32 %call.i77.i, 0
  br i1 %cmp12.i, label %if.end10.i.r820t_standby.exit_crit_edge, label %if.end14.i

if.end10.i.r820t_standby.exit_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end14.i:                                       ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i78.i) #6
  %19 = ptrtoint ptr %tmp.i78.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -64, ptr %tmp.i78.i, align 1
  %call.i79.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 9, ptr noundef nonnull %tmp.i78.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i78.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %cmp16.i = icmp slt i32 %call.i79.i, 0
  br i1 %cmp16.i, label %if.end14.i.r820t_standby.exit_crit_edge, label %if.end18.i

if.end14.i.r820t_standby.exit_crit_edge:          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end18.i:                                       ; preds = %if.end14.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i80.i) #6
  %20 = ptrtoint ptr %tmp.i80.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 54, ptr %tmp.i80.i, align 1
  %call.i81.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 10, ptr noundef nonnull %tmp.i80.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i80.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %cmp20.i = icmp slt i32 %call.i81.i, 0
  br i1 %cmp20.i, label %if.end18.i.r820t_standby.exit_crit_edge, label %if.end22.i

if.end18.i.r820t_standby.exit_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end22.i:                                       ; preds = %if.end18.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i82.i) #6
  %21 = ptrtoint ptr %tmp.i82.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 53, ptr %tmp.i82.i, align 1
  %call.i83.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i82.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i82.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %cmp24.i = icmp slt i32 %call.i83.i, 0
  br i1 %cmp24.i, label %if.end22.i.r820t_standby.exit_crit_edge, label %if.end26.i

if.end22.i.r820t_standby.exit_crit_edge:          ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end26.i:                                       ; preds = %if.end22.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i84.i) #6
  %22 = ptrtoint ptr %tmp.i84.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 104, ptr %tmp.i84.i, align 1
  %call.i85.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 15, ptr noundef nonnull %tmp.i84.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i84.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %cmp28.i = icmp slt i32 %call.i85.i, 0
  br i1 %cmp28.i, label %if.end26.i.r820t_standby.exit_crit_edge, label %if.end30.i

if.end26.i.r820t_standby.exit_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end30.i:                                       ; preds = %if.end26.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i86.i) #6
  %23 = ptrtoint ptr %tmp.i86.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %tmp.i86.i, align 1
  %call.i87.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 17, ptr noundef nonnull %tmp.i86.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i86.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %cmp32.i = icmp slt i32 %call.i87.i, 0
  br i1 %cmp32.i, label %if.end30.i.r820t_standby.exit_crit_edge, label %if.end34.i

if.end30.i.r820t_standby.exit_crit_edge:          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end34.i:                                       ; preds = %if.end30.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i88.i) #6
  %24 = ptrtoint ptr %tmp.i88.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -12, ptr %tmp.i88.i, align 1
  %call.i89.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 23, ptr noundef nonnull %tmp.i88.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i88.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i)
  %cmp36.i = icmp slt i32 %call.i89.i, 0
  br i1 %cmp36.i, label %if.end34.i.r820t_standby.exit_crit_edge, label %if.end38.i

if.end34.i.r820t_standby.exit_crit_edge:          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_standby.exit

if.end38.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i90.i) #6
  %25 = ptrtoint ptr %tmp.i90.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 12, ptr %tmp.i90.i, align 1
  %call.i91.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 25, ptr noundef nonnull %tmp.i90.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i90.i) #6
  %type.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %type.i, align 8
  br label %r820t_standby.exit

r820t_standby.exit:                               ; preds = %if.end38.i, %if.end34.i.r820t_standby.exit_crit_edge, %if.end30.i.r820t_standby.exit_crit_edge, %if.end26.i.r820t_standby.exit_crit_edge, %if.end22.i.r820t_standby.exit_crit_edge, %if.end18.i.r820t_standby.exit_crit_edge, %if.end14.i.r820t_standby.exit_crit_edge, %if.end10.i.r820t_standby.exit_crit_edge, %if.end6.i.r820t_standby.exit_crit_edge, %if.end2.i.r820t_standby.exit_crit_edge, %if.end.i.r820t_standby.exit_crit_edge, %if.end18.r820t_standby.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i91.i, %if.end38.i ], [ 0, %if.end18.r820t_standby.exit_crit_edge ], [ %call.i.i, %if.end.i.r820t_standby.exit_crit_edge ], [ %call.i73.i, %if.end2.i.r820t_standby.exit_crit_edge ], [ %call.i75.i, %if.end6.i.r820t_standby.exit_crit_edge ], [ %call.i77.i, %if.end10.i.r820t_standby.exit_crit_edge ], [ %call.i79.i, %if.end14.i.r820t_standby.exit_crit_edge ], [ %call.i81.i, %if.end18.i.r820t_standby.exit_crit_edge ], [ %call.i83.i, %if.end22.i.r820t_standby.exit_crit_edge ], [ %call.i85.i, %if.end26.i.r820t_standby.exit_crit_edge ], [ %call.i87.i, %if.end30.i.r820t_standby.exit_crit_edge ], [ %call.i89.i, %if.end34.i.r820t_standby.exit_crit_edge ]
  %27 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool22.not = icmp eq ptr %28, null
  br i1 %tobool22.not, label %r820t_standby.exit.if.end27_crit_edge, label %if.then23

r820t_standby.exit.if.end27_crit_edge:            ; preds = %r820t_standby.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then23:                                        ; preds = %r820t_standby.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = call i32 %28(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %r820t_standby.exit.if.end27_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool30.not = icmp eq i32 %29, 0
  br i1 %tobool30.not, label %if.end27.do.end57_crit_edge, label %do.end35

if.end27.do.end57_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57

do.end35:                                         ; preds = %if.end27
  %i2c_props37 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name38 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name38, align 4
  %adap40 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %adap40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adap40, align 4
  %tobool41.not = icmp eq ptr %33, null
  br i1 %tobool41.not, label %do.end35.cond.end47_crit_edge, label %cond.true42

do.end35.cond.end47_crit_edge:                    ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end47

cond.true42:                                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i78 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %nr.i78 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr.i78, align 4
  br label %cond.end47

cond.end47:                                       ; preds = %cond.true42, %do.end35.cond.end47_crit_edge
  %cond48 = phi i32 [ %35, %cond.true42 ], [ -1, %do.end35.cond.end47_crit_edge ]
  %36 = ptrtoint ptr %i2c_props37 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_props37, align 4
  %conv51 = zext i8 %37 to i32
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %31, i32 noundef %cond48, i32 noundef %conv51, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i) #9
  br label %do.end57

do.end57:                                         ; preds = %cond.end47, %if.end27.do.end57_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r820t_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.83) #9
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @r820t_list_mutex, i32 noundef 0) #6
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %do.end12.if.end50_crit_edge, label %if.then14

do.end12.if.end50_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then14:                                        ; preds = %do.end12
  %i2c_props15 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %count = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %do.end26, label %if.then14.if.end50_crit_edge

if.then14.if.end50_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end26:                                         ; preds = %if.then14
  %name29 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name29, align 4
  %adap31 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap31, align 4
  %tobool32.not = icmp eq ptr %16, null
  br i1 %tobool32.not, label %do.end26.cond.end38_crit_edge, label %cond.true33

do.end26.cond.end38_crit_edge:                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end38

cond.true33:                                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i68 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %nr.i68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i68, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true33, %do.end26.cond.end38_crit_edge
  %cond39 = phi i32 [ %18, %cond.true33 ], [ -1, %do.end26.cond.end38_crit_edge ]
  %19 = ptrtoint ptr %i2c_props15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i2c_props15, align 4
  %conv42 = zext i8 %20 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %14, i32 noundef %cond39, i32 noundef %conv42) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %cond.end38.list_del.exit_crit_edge

cond.end38.list_del.exit_crit_edge:               ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end38.list_del.exit_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %if.end50

if.end50:                                         ; preds = %list_del.exit, %if.then14.if.end50_crit_edge, %do.end12.if.end50_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @r820t_list_mutex) #6
  %29 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext %reg, ptr noundef %val, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %reg to i32
  %sub.i = add nsw i32 %conv.i, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %reg)
  %cmp.i = icmp ult i8 %reg, 5
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %sub.i
  %add.i = select i1 %cmp.i, i32 %sub.i, i32 0
  %spec.select43.i = add i32 %add.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select43.i)
  %cmp2.i = icmp slt i32 %spec.select43.i, 1
  br i1 %cmp2.i, label %entry.shadow_store.exit_crit_edge, label %if.end5.i

entry.shadow_store.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %shadow_store.exit

if.end5.i:                                        ; preds = %entry
  %sub6.i = sub nsw i32 27, %spec.select.i
  %0 = tail call i32 @llvm.smin.i32(i32 %spec.select43.i, i32 %sub6.i) #6
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end5.i.do.end27.i_crit_edge, label %do.end.i

if.end5.i.do.end27.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27.i

do.end.i:                                         ; preds = %if.end5.i
  %i2c_props.i = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %adap.i = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap.i, align 4
  %tobool16.not.i = icmp eq ptr %5, null
  br i1 %tobool16.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %8 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_props.i, align 4
  %conv20.i = zext i8 %9 to i32
  %add21.i = add nsw i32 %spec.select.i, 5
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %3, i32 noundef %cond.i, i32 noundef %conv20.i, ptr noundef nonnull @.str.32, i32 noundef %add21.i, i32 noundef %0, i32 noundef %0, ptr noundef %val) #9
  br label %do.end27.i

do.end27.i:                                       ; preds = %cond.end.i, %if.end5.i.do.end27.i_crit_edge
  %arrayidx.i = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 %spec.select.i
  %10 = call ptr @memcpy(ptr %arrayidx.i, ptr %val, i32 %0)
  br label %shadow_store.exit

shadow_store.exit:                                ; preds = %do.end27.i, %entry.shadow_store.exit_crit_edge
  %cfg = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 1
  %buf = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 5
  %arrayidx5 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 5, i32 1
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %adap.i116 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 1
  %name42 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 3
  br label %do.body

do.body:                                          ; preds = %do.end64.do.body_crit_edge, %shadow_store.exit
  %len.addr.0 = phi i32 [ %len, %shadow_store.exit ], [ %sub68, %do.end64.do.body_crit_edge ]
  %pos.0 = phi i32 [ 0, %shadow_store.exit ], [ %add69, %do.end64.do.body_crit_edge ]
  %reg.addr.0 = phi i8 [ %reg, %shadow_store.exit ], [ %conv67, %do.end64.do.body_crit_edge ]
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg, align 8
  %max_i2c_msg_len = getelementptr inbounds %struct.r820t_config, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %max_i2c_msg_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_i2c_msg_len, align 4
  %sub = add i32 %15, -1
  %16 = call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %sub)
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %reg.addr.0, ptr %buf, align 1
  %arrayidx6 = getelementptr i8, ptr %val, i32 %pos.0
  %18 = call ptr @memcpy(ptr %arrayidx5, ptr %arrayidx6, i32 %16)
  %add = add i32 %16, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %11, align 4
  %20 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_props, align 4
  %conv.i115 = zext i8 %21 to i16
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i115, ptr %msg.i, align 4
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i, align 2
  %conv3.i = trunc i32 %add to i16
  store i16 %conv3.i, ptr %11, align 4
  %24 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf, ptr %buf4.i, align 4
  %25 = ptrtoint ptr %adap.i116 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap.i116, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i117 = icmp eq i32 %call.i, 1
  %len.call.i = select i1 %cmp.i117, i32 %add, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %len.call.i, i32 %add)
  %cmp9.not = icmp eq i32 %len.call.i, %add
  br i1 %cmp9.not, label %do.body33, label %do.end

do.end:                                           ; preds = %do.body
  %27 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name42, align 4
  %29 = ptrtoint ptr %adap.i116 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adap.i116, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %33 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %34 to i32
  %conv20 = zext i8 %reg.addr.0 to i32
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %28, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.27, i32 noundef %len.call.i, i32 noundef %conv20, i32 noundef %16, i32 noundef %16, ptr noundef %arrayidx5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.call.i)
  %cmp28 = icmp slt i32 %len.call.i, 0
  %call. = select i1 %cmp28, i32 %len.call.i, i32 -121
  br label %cleanup

do.body33:                                        ; preds = %do.body
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool34.not = icmp eq i32 %35, 0
  br i1 %tobool34.not, label %do.body33.do.end64_crit_edge, label %do.end39

do.body33.do.end64_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

do.end39:                                         ; preds = %do.body33
  %36 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name42, align 4
  %38 = ptrtoint ptr %adap.i116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adap.i116, align 4
  %tobool45.not = icmp eq ptr %39, null
  br i1 %tobool45.not, label %do.end39.cond.end51_crit_edge, label %cond.true46

do.end39.cond.end51_crit_edge:                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end51

cond.true46:                                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i118 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nr.i118 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i118, align 4
  br label %cond.end51

cond.end51:                                       ; preds = %cond.true46, %do.end39.cond.end51_crit_edge
  %cond52 = phi i32 [ %41, %cond.true46 ], [ -1, %do.end39.cond.end51_crit_edge ]
  %42 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %i2c_props, align 4
  %conv55 = zext i8 %43 to i32
  %conv56 = zext i8 %reg.addr.0 to i32
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %37, i32 noundef %cond52, i32 noundef %conv55, ptr noundef nonnull @.str.27, i32 noundef %conv56, i32 noundef %16, i32 noundef %16, ptr noundef %arrayidx5) #9
  br label %do.end64

do.end64:                                         ; preds = %cond.end51, %do.body33.do.end64_crit_edge
  %44 = trunc i32 %16 to i8
  %conv67 = add i8 %reg.addr.0, %44
  %sub68 = sub i32 %len.addr.0, %16
  %add69 = add i32 %16, %pos.0
  %cmp71 = icmp sgt i32 %sub68, 0
  br i1 %cmp71, label %do.end64.do.body_crit_edge, label %do.end64.cleanup_crit_edge

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end64.do.body_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.end64.cleanup_crit_edge, %cond.end
  %retval.0 = phi i32 [ %call., %cond.end ], [ 0, %do.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r820t_init(ptr noundef %fe) #0 align 64 {
entry:
  %tmp.i100.i.i = alloca i8, align 1
  %tmp.i95.i.i = alloca i8, align 1
  %tmp.i90.i.i = alloca i8, align 1
  %tmp.i85.i.i = alloca i8, align 1
  %tmp.i81.i.i = alloca i8, align 1
  %tmp.i76.i.i = alloca i8, align 1
  %tmp.i71.i.i = alloca i8, align 1
  %tmp.i66.i.i = alloca i8, align 1
  %tmp.i62.i.i = alloca i8, align 1
  %tmp.i.i98.i = alloca i8, align 1
  %tmp.i96.i.i = alloca i8, align 1
  %tmp.i92.i.i = alloca i8, align 1
  %tmp.i87.i.i = alloca i8, align 1
  %tmp.i83.i.i = alloca i8, align 1
  %tmp.i.i.i = alloca i8, align 1
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.40) #9
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %lock = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %do.end12.if.end18_crit_edge, label %if.then14

do.end12.if.end18_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 %12(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %do.end12.if.end18_crit_edge
  %init_done.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %init_done.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %init_done.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end.i:                                         ; preds = %if.end18
  %cfg.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %rafael_chip.i = getelementptr inbounds %struct.r820t_config, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %rafael_chip.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rafael_chip.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %18, label %if.else.i [
    i32 0, label %if.end.i.if.end23.i_crit_edge
    i32 4, label %if.end.i.if.end23.i_crit_edge108
    i32 5, label %if.end.i.if.end23.i_crit_edge109
  ]

if.end.i.if.end23.i_crit_edge109:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end.i.if.end23.i_crit_edge108:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end.i
  %call.i = tail call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull @r820t_init_array, i32 noundef 27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  br i1 %cmp9.i, label %if.else.i.err_crit_edge, label %for.cond.preheader.i

if.else.i.err_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.cond.preheader.i:                             ; preds = %if.else.i
  %20 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %regs.i.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 4
  %arrayidx.i.i.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 11
  %arrayidx.i.i84.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 21
  %arrayidx.i.i88.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %r820t_xtal_check.exit.i.for.body.i_crit_edge, %for.cond.preheader.i
  %xtal_cap.0120.i = phi i32 [ 0, %for.cond.preheader.i ], [ %xtal_cap.1.i, %r820t_xtal_check.exit.i.for.body.i_crit_edge ]
  %i.0119.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %r820t_xtal_check.exit.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #6
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %data.i.i, align 1, !annotation !205
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %20, align 1, !annotation !205
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %21, align 1, !annotation !205
  %25 = call ptr @memcpy(ptr %regs.i.i, ptr @r820t_init_array, i32 27)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #6
  %26 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 111, ptr %tmp.i.i.i, align 1
  %call7.i.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 16, ptr noundef nonnull %tmp.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.r820t_xtal_check.exit.thread.i_crit_edge, label %if.end.i.i

for.body.i.r820t_xtal_check.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_xtal_check.exit.thread.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i83.i.i) #6
  %27 = ptrtoint ptr %arrayidx.i.i84.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i84.i.i, align 1
  %and.i85.i.i = and i8 %28, -13
  %29 = ptrtoint ptr %tmp.i83.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %and.i85.i.i, ptr %tmp.i83.i.i, align 1
  %call7.i86.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 26, ptr noundef nonnull %tmp.i83.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i83.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i86.i.i)
  %cmp2.i.i = icmp slt i32 %call7.i86.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.r820t_xtal_check.exit.thread.i_crit_edge, label %if.end4.i.i

if.end.i.i.r820t_xtal_check.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_xtal_check.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i87.i.i) #6
  %30 = ptrtoint ptr %arrayidx.i.i88.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i88.i.i, align 1
  %conv6.i90.i.i = or i8 %31, 127
  %32 = ptrtoint ptr %tmp.i87.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv6.i90.i.i, ptr %tmp.i87.i.i, align 1
  %call7.i91.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 19, ptr noundef nonnull %tmp.i87.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i87.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i91.i.i)
  %cmp6.i.i = icmp slt i32 %call7.i91.i.i, 0
  br i1 %cmp6.i.i, label %if.end4.i.i.r820t_xtal_check.exit.thread.i_crit_edge, label %if.end8.i.i

if.end4.i.i.r820t_xtal_check.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_xtal_check.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i92.i.i) #6
  %33 = ptrtoint ptr %arrayidx.i.i88.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i88.i.i, align 1
  %and.i94.i.i = and i8 %34, -65
  %35 = ptrtoint ptr %tmp.i92.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %and.i94.i.i, ptr %tmp.i92.i.i, align 1
  %call7.i95.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 19, ptr noundef nonnull %tmp.i92.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i92.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i95.i.i)
  %cmp10.i.i = icmp slt i32 %call7.i95.i.i, 0
  br i1 %cmp10.i.i, label %if.end8.i.i.r820t_xtal_check.exit.thread.i_crit_edge, label %if.end8.i.i.for.body.i.i_crit_edge

if.end8.i.i.for.body.i.i_crit_edge:               ; preds = %if.end8.i.i
  br label %for.body.i.i

if.end8.i.i.r820t_xtal_check.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_xtal_check.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end8.i.i.for.body.i.i_crit_edge
  %i.0105.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end8.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [5 x [2 x i32]], ptr @r820t_xtal_capacitor, i32 0, i32 %i.0105.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %conv.i.i = trunc i32 %37 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i96.i.i) #6
  %38 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %and.i98.i.i = and i8 %39, -28
  %and514.i.i.i = and i8 %conv.i.i, 27
  %conv6.i99.i.i = or i8 %and.i98.i.i, %and514.i.i.i
  %40 = ptrtoint ptr %tmp.i96.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv6.i99.i.i, ptr %tmp.i96.i.i, align 1
  %call7.i100.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 16, ptr noundef nonnull %tmp.i96.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i96.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i100.i.i)
  %cmp16.i.i = icmp slt i32 %call7.i100.i.i, 0
  br i1 %cmp16.i.i, label %for.body.i.i.r820t_xtal_check.exit.thread.i_crit_edge, label %if.end19.i.i

for.body.i.i.r820t_xtal_check.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_xtal_check.exit.thread.i

if.end19.i.i:                                     ; preds = %for.body.i.i
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %call21.i.i = call fastcc i32 @r820t_read(ptr noundef %1, ptr noundef nonnull %data.i.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %if.end19.i.i.r820t_xtal_check.exit.thread.i_crit_edge, label %if.end25.i.i

if.end19.i.i.r820t_xtal_check.exit.thread.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_xtal_check.exit.thread.i

if.end25.i.i:                                     ; preds = %if.end19.i.i
  %41 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %21, align 1
  %43 = and i8 %42, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i, label %if.end25.i.i.for.inc.i.i_crit_edge, label %if.end29.i.i

if.end25.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end29.i.i:                                     ; preds = %if.end25.i.i
  %44 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i, align 8
  %xtal.i.i = getelementptr inbounds %struct.r820t_config, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %xtal.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xtal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %47)
  %cmp34.i.i = icmp ne i32 %47, 16000000
  %and32.i.i = and i8 %42, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %and32.i.i)
  %cmp45.not.old.i.i = icmp eq i8 %and32.i.i, 63
  %or.cond.i.i = select i1 %cmp34.i.i, i1 %cmp45.not.old.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end29.i.i.for.inc.i.i_crit_edge, label %r820t_xtal_check.exit.i

if.end29.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end29.i.i.for.inc.i.i_crit_edge, %if.end25.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0105.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %for.inc.i.i.r820t_xtal_check.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.r820t_xtal_check.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_xtal_check.exit.thread.i

r820t_xtal_check.exit.thread.i:                   ; preds = %for.inc.i.i.r820t_xtal_check.exit.thread.i_crit_edge, %if.end19.i.i.r820t_xtal_check.exit.thread.i_crit_edge, %for.body.i.i.r820t_xtal_check.exit.thread.i_crit_edge, %if.end8.i.i.r820t_xtal_check.exit.thread.i_crit_edge, %if.end4.i.i.r820t_xtal_check.exit.thread.i_crit_edge, %if.end.i.i.r820t_xtal_check.exit.thread.i_crit_edge, %for.body.i.r820t_xtal_check.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %for.inc.i.i.r820t_xtal_check.exit.thread.i_crit_edge ], [ %call7.i100.i.i, %for.body.i.i.r820t_xtal_check.exit.thread.i_crit_edge ], [ %call21.i.i, %if.end19.i.i.r820t_xtal_check.exit.thread.i_crit_edge ], [ %call7.i95.i.i, %if.end8.i.i.r820t_xtal_check.exit.thread.i_crit_edge ], [ %call7.i91.i.i, %if.end4.i.i.r820t_xtal_check.exit.thread.i_crit_edge ], [ %call7.i86.i.i, %if.end.i.i.r820t_xtal_check.exit.thread.i_crit_edge ], [ %call7.i.i.i, %for.body.i.r820t_xtal_check.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #6
  br label %err

r820t_xtal_check.exit.i:                          ; preds = %if.end29.i.i
  %arrayidx54.i.i = getelementptr [5 x [2 x i32]], ptr @r820t_xtal_capacitor, i32 0, i32 %i.0105.i.i, i32 1
  %48 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx54.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0119.i)
  %tobool17.not.i = icmp eq i32 %i.0119.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %xtal_cap.0120.i)
  %cmp19.i = icmp sgt i32 %49, %xtal_cap.0120.i
  %or.cond.i = select i1 %tobool17.not.i, i1 true, i1 %cmp19.i
  %xtal_cap.1.i = select i1 %or.cond.i, i32 %49, i32 %xtal_cap.0120.i
  %inc.i = add nuw nsw i32 %i.0119.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %r820t_xtal_check.exit.i.if.end23.i_crit_edge, label %r820t_xtal_check.exit.i.for.body.i_crit_edge

r820t_xtal_check.exit.i.for.body.i_crit_edge:     ; preds = %r820t_xtal_check.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

r820t_xtal_check.exit.i.if.end23.i_crit_edge:     ; preds = %r820t_xtal_check.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %r820t_xtal_check.exit.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge108, %if.end.i.if.end23.i_crit_edge109
  %xtal_cap.1.lcssa.sink.i = phi i32 [ 4, %if.end.i.if.end23.i_crit_edge ], [ 4, %if.end.i.if.end23.i_crit_edge108 ], [ 4, %if.end.i.if.end23.i_crit_edge109 ], [ %xtal_cap.1.i, %r820t_xtal_check.exit.i.if.end23.i_crit_edge ]
  %xtal_cap_sel22.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 6
  %50 = ptrtoint ptr %xtal_cap_sel22.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %xtal_cap.1.lcssa.sink.i, ptr %xtal_cap_sel22.i, align 8
  %51 = load i32, ptr @no_imr_cal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool24.not.i = icmp eq i32 %51, 0
  br i1 %tobool24.not.i, label %if.end27.i, label %if.end23.i.if.end22.sink.split_crit_edge

if.end23.i.if.end22.sink.split_crit_edge:         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.sink.split

if.end27.i:                                       ; preds = %if.end23.i
  %call28.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull @r820t_init_array, i32 noundef 27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end27.i.err_crit_edge, label %if.end31.i

if.end27.i.err_crit_edge:                         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end31.i:                                       ; preds = %if.end27.i
  %regs.i99.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4
  %52 = call ptr @memcpy(ptr %regs.i99.i, ptr @r820t_init_array, i32 27)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i98.i) #6
  %53 = ptrtoint ptr %tmp.i.i98.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -93, ptr %tmp.i.i98.i, align 1
  %call7.i.i100.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull %tmp.i.i98.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i98.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i100.i)
  %cmp.i101.i = icmp slt i32 %call7.i.i100.i, 0
  br i1 %cmp.i101.i, label %if.end31.i.err_crit_edge, label %if.end.i103.i

if.end31.i.err_crit_edge:                         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end.i103.i:                                    ; preds = %if.end31.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i62.i.i) #6
  %arrayidx.i.i63.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %arrayidx.i.i63.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i63.i.i, align 1
  %and.i64.i.i = and i8 %55, -17
  %56 = ptrtoint ptr %tmp.i62.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %and.i64.i.i, ptr %tmp.i62.i.i, align 1
  %call7.i65.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 7, ptr noundef nonnull %tmp.i62.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i62.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i65.i.i)
  %cmp2.i102.i = icmp slt i32 %call7.i65.i.i, 0
  br i1 %cmp2.i102.i, label %if.end.i103.i.err_crit_edge, label %if.end4.i105.i

if.end.i103.i.err_crit_edge:                      ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end4.i105.i:                                   ; preds = %if.end.i103.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i66.i.i) #6
  %arrayidx.i.i67.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 5
  %57 = ptrtoint ptr %arrayidx.i.i67.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i67.i.i, align 1
  %conv6.i69.i.i = or i8 %58, 15
  %59 = ptrtoint ptr %tmp.i66.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv6.i69.i.i, ptr %tmp.i66.i.i, align 1
  %call7.i70.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 10, ptr noundef nonnull %tmp.i66.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i66.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i70.i.i)
  %cmp6.i104.i = icmp slt i32 %call7.i70.i.i, 0
  br i1 %cmp6.i104.i, label %if.end4.i105.i.err_crit_edge, label %if.end8.i107.i

if.end4.i105.i.err_crit_edge:                     ; preds = %if.end4.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end8.i107.i:                                   ; preds = %if.end4.i105.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i71.i.i) #6
  %arrayidx.i.i72.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 6
  %60 = ptrtoint ptr %arrayidx.i.i72.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i.i72.i.i, align 1
  %and.i73.i.i = and i8 %61, -112
  %conv6.i74.i.i = or i8 %and.i73.i.i, 96
  %62 = ptrtoint ptr %tmp.i71.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv6.i74.i.i, ptr %tmp.i71.i.i, align 1
  %call7.i75.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 11, ptr noundef nonnull %tmp.i71.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i71.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i75.i.i)
  %cmp10.i106.i = icmp slt i32 %call7.i75.i.i, 0
  br i1 %cmp10.i106.i, label %if.end8.i107.i.err_crit_edge, label %if.end12.i.i

if.end8.i107.i.err_crit_edge:                     ; preds = %if.end8.i107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end12.i.i:                                     ; preds = %if.end8.i107.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i76.i.i) #6
  %arrayidx.i.i77.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 7
  %63 = ptrtoint ptr %arrayidx.i.i77.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.i77.i.i, align 1
  %and.i78.i.i = and i8 %64, 96
  %conv6.i79.i.i = or i8 %and.i78.i.i, 11
  %65 = ptrtoint ptr %tmp.i76.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv6.i79.i.i, ptr %tmp.i76.i.i, align 1
  %call7.i80.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i76.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i76.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i80.i.i)
  %cmp14.i.i = icmp slt i32 %call7.i80.i.i, 0
  br i1 %cmp14.i.i, label %if.end12.i.i.err_crit_edge, label %if.end16.i.i

if.end12.i.i.err_crit_edge:                       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end16.i.i:                                     ; preds = %if.end12.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i81.i.i) #6
  %arrayidx.i.i82.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 10
  %66 = ptrtoint ptr %arrayidx.i.i82.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.i82.i.i, align 1
  %and.i83.i.i = and i8 %67, -9
  %68 = ptrtoint ptr %tmp.i81.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %and.i83.i.i, ptr %tmp.i81.i.i, align 1
  %call7.i84.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 15, ptr noundef nonnull %tmp.i81.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i81.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i84.i.i)
  %cmp18.i.i = icmp slt i32 %call7.i84.i.i, 0
  br i1 %cmp18.i.i, label %if.end16.i.i.err_crit_edge, label %if.end20.i.i

if.end16.i.i.err_crit_edge:                       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end20.i.i:                                     ; preds = %if.end16.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i85.i.i) #6
  %arrayidx.i.i86.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 19
  %69 = ptrtoint ptr %arrayidx.i.i86.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.i86.i.i, align 1
  %conv6.i88.i.i = or i8 %70, 16
  %71 = ptrtoint ptr %tmp.i85.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv6.i88.i.i, ptr %tmp.i85.i.i, align 1
  %call7.i89.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 24, ptr noundef nonnull %tmp.i85.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i85.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i89.i.i)
  %cmp22.i108.i = icmp slt i32 %call7.i89.i.i, 0
  br i1 %cmp22.i108.i, label %if.end20.i.i.err_crit_edge, label %if.end24.i.i

if.end20.i.i.err_crit_edge:                       ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end24.i.i:                                     ; preds = %if.end20.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i90.i.i) #6
  %arrayidx.i.i91.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 23
  %72 = ptrtoint ptr %arrayidx.i.i91.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i91.i.i, align 1
  %conv6.i93.i.i = or i8 %73, 2
  %74 = ptrtoint ptr %tmp.i90.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv6.i93.i.i, ptr %tmp.i90.i.i, align 1
  %call7.i94.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 28, ptr noundef nonnull %tmp.i90.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i90.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i94.i.i)
  %cmp26.i.i = icmp slt i32 %call7.i94.i.i, 0
  br i1 %cmp26.i.i, label %if.end24.i.i.err_crit_edge, label %if.end28.i.i

if.end24.i.i.err_crit_edge:                       ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end28.i.i:                                     ; preds = %if.end24.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i95.i.i) #6
  %arrayidx.i.i96.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 25
  %75 = ptrtoint ptr %arrayidx.i.i96.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i96.i.i, align 1
  %conv6.i98.i.i = or i8 %76, -128
  %77 = ptrtoint ptr %tmp.i95.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv6.i98.i.i, ptr %tmp.i95.i.i, align 1
  %call7.i99.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 30, ptr noundef nonnull %tmp.i95.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i95.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i99.i.i)
  %cmp30.i.i = icmp slt i32 %call7.i99.i.i, 0
  br i1 %cmp30.i.i, label %if.end28.i.i.err_crit_edge, label %r820t_imr_prepare.exit.i

if.end28.i.i.err_crit_edge:                       ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

r820t_imr_prepare.exit.i:                         ; preds = %if.end28.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i100.i.i) #6
  %arrayidx.i.i101.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %arrayidx.i.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.i101.i.i, align 1
  %conv6.i103.i.i = or i8 %79, 32
  %80 = ptrtoint ptr %tmp.i100.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv6.i103.i.i, ptr %tmp.i100.i.i, align 1
  %call7.i104.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %tmp.i100.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i100.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i104.i.i)
  %cmp33.i = icmp slt i32 %call7.i104.i.i, 0
  br i1 %cmp33.i, label %r820t_imr_prepare.exit.i.err_crit_edge, label %if.end35.i

r820t_imr_prepare.exit.i.err_crit_edge:           ; preds = %r820t_imr_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end35.i:                                       ; preds = %r820t_imr_prepare.exit.i
  %call36.i = call fastcc i32 @r820t_imr(ptr noundef %1, i32 noundef 3, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end35.i.err_crit_edge, label %if.end39.i

if.end35.i.err_crit_edge:                         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end39.i:                                       ; preds = %if.end35.i
  %call40.i = call fastcc i32 @r820t_imr(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %if.end39.i.err_crit_edge, label %if.end43.i

if.end39.i.err_crit_edge:                         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end43.i:                                       ; preds = %if.end39.i
  %call44.i = call fastcc i32 @r820t_imr(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end43.i.err_crit_edge, label %if.end47.i

if.end43.i.err_crit_edge:                         ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end47.i:                                       ; preds = %if.end43.i
  %call48.i = call fastcc i32 @r820t_imr(ptr noundef %1, i32 noundef 2, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.end47.i.err_crit_edge, label %if.end51.i

if.end47.i.err_crit_edge:                         ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end51.i:                                       ; preds = %if.end47.i
  %call52.i = call fastcc i32 @r820t_imr(ptr noundef %1, i32 noundef 4, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %if.end51.i.err_crit_edge, label %if.end55.i

if.end51.i.err_crit_edge:                         ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end55.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %init_done.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %init_done.i, align 1
  %imr_done.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 10
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.end55.i, %if.end23.i.if.end22.sink.split_crit_edge
  %imr_done.i.sink = phi ptr [ %imr_done.i, %if.end55.i ], [ %init_done.i, %if.end23.i.if.end22.sink.split_crit_edge ]
  %82 = ptrtoint ptr %imr_done.i.sink to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %imr_done.i.sink, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.end18.if.end22_crit_edge
  %call23 = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull @r820t_init_array, i32 noundef 27)
  br label %err

err:                                              ; preds = %if.end22, %if.end51.i.err_crit_edge, %if.end47.i.err_crit_edge, %if.end43.i.err_crit_edge, %if.end39.i.err_crit_edge, %if.end35.i.err_crit_edge, %r820t_imr_prepare.exit.i.err_crit_edge, %if.end28.i.i.err_crit_edge, %if.end24.i.i.err_crit_edge, %if.end20.i.i.err_crit_edge, %if.end16.i.i.err_crit_edge, %if.end12.i.i.err_crit_edge, %if.end8.i107.i.err_crit_edge, %if.end4.i105.i.err_crit_edge, %if.end.i103.i.err_crit_edge, %if.end31.i.err_crit_edge, %if.end27.i.err_crit_edge, %r820t_xtal_check.exit.thread.i, %if.else.i.err_crit_edge
  %rc.0 = phi i32 [ %call23, %if.end22 ], [ %call7.i.i100.i, %if.end31.i.err_crit_edge ], [ %call7.i65.i.i, %if.end.i103.i.err_crit_edge ], [ %call7.i70.i.i, %if.end4.i105.i.err_crit_edge ], [ %call7.i75.i.i, %if.end8.i107.i.err_crit_edge ], [ %call7.i80.i.i, %if.end12.i.i.err_crit_edge ], [ %call7.i84.i.i, %if.end16.i.i.err_crit_edge ], [ %call7.i89.i.i, %if.end20.i.i.err_crit_edge ], [ %call7.i94.i.i, %if.end24.i.i.err_crit_edge ], [ %call7.i99.i.i, %if.end28.i.i.err_crit_edge ], [ %retval.0.i.ph.i, %r820t_xtal_check.exit.thread.i ], [ %call52.i, %if.end51.i.err_crit_edge ], [ %call48.i, %if.end47.i.err_crit_edge ], [ %call44.i, %if.end43.i.err_crit_edge ], [ %call40.i, %if.end39.i.err_crit_edge ], [ %call36.i, %if.end35.i.err_crit_edge ], [ %call7.i104.i.i, %r820t_imr_prepare.exit.i.err_crit_edge ], [ %call28.i, %if.end27.i.err_crit_edge ], [ %call.i, %if.else.i.err_crit_edge ]
  %83 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool26.not = icmp eq ptr %84, null
  br i1 %tobool26.not, label %err.if.end31_crit_edge, label %if.then27

err.if.end31_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then27:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = call i32 %84(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %err.if.end31_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp33 = icmp slt i32 %rc.0, 0
  br i1 %cmp33, label %do.body36, label %if.end31.if.end65_crit_edge

if.end31.if.end65_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

do.body36:                                        ; preds = %if.end31
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool37.not = icmp eq i32 %85, 0
  br i1 %tobool37.not, label %do.body36.if.end65_crit_edge, label %do.end42

do.body36.if.end65_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

do.end42:                                         ; preds = %do.body36
  %i2c_props44 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name45 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %86 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name45, align 4
  %adap47 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %adap47 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adap47, align 4
  %tobool48.not = icmp eq ptr %89, null
  br i1 %tobool48.not, label %do.end42.cond.end54_crit_edge, label %cond.true49

do.end42.cond.end54_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end54

cond.true49:                                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i89 = getelementptr inbounds %struct.i2c_adapter, ptr %89, i32 0, i32 11
  %90 = ptrtoint ptr %nr.i89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nr.i89, align 4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.true49, %do.end42.cond.end54_crit_edge
  %cond55 = phi i32 [ %91, %cond.true49 ], [ -1, %do.end42.cond.end54_crit_edge ]
  %92 = ptrtoint ptr %i2c_props44 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %i2c_props44, align 4
  %conv58 = zext i8 %93 to i32
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %87, i32 noundef %cond55, i32 noundef %conv58, ptr noundef nonnull @.str.40, i32 noundef %rc.0) #9
  br label %if.end65

if.end65:                                         ; preds = %cond.end54, %do.body36.if.end65_crit_edge, %if.end31.if.end65_crit_edge
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r820t_set_params(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %10 to i32
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %11 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delivery_system, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %15 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bandwidth_hz, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.56, i32 noundef %12, i32 noundef %14, i32 noundef %16) #9
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %lock = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %do.end12.if.end18_crit_edge, label %if.then14

do.end12.if.end18_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 %18(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %do.end12.if.end18_crit_edge
  %bandwidth_hz19 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %bandwidth_hz19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_hz19, align 4
  %add = add i32 %20, 500000
  %div = udiv i32 %add, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %add)
  %21 = icmp ult i32 %add, 1000000
  %spec.store.select = select i1 %21, i32 8, i32 %div
  %22 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dtv_property_cache, align 4
  %delivery_system24 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %24 = ptrtoint ptr %delivery_system24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delivery_system24, align 4
  %call25 = tail call fastcc i32 @generic_set_freq(ptr noundef %fe, i32 noundef %23, i32 noundef %spec.store.select, i32 noundef 3, i64 noundef 0, i32 noundef %25)
  %26 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool28.not = icmp eq ptr %27, null
  br i1 %tobool28.not, label %if.end18.if.end33_crit_edge, label %if.then29

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 %27(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end18.if.end33_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool35.not = icmp eq i32 %call25, 0
  br i1 %tobool35.not, label %if.end33.if.end66_crit_edge, label %do.body37

if.end33.if.end66_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.body37:                                        ; preds = %if.end33
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool38.not = icmp eq i32 %28, 0
  br i1 %tobool38.not, label %do.body37.if.end66_crit_edge, label %do.end43

do.body37.if.end66_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end43:                                         ; preds = %do.body37
  %i2c_props45 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name46 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name46, align 4
  %adap48 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %adap48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap48, align 4
  %tobool49.not = icmp eq ptr %32, null
  br i1 %tobool49.not, label %do.end43.cond.end55_crit_edge, label %cond.true50

do.end43.cond.end55_crit_edge:                    ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end55

cond.true50:                                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i95 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %nr.i95 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i95, align 4
  br label %cond.end55

cond.end55:                                       ; preds = %cond.true50, %do.end43.cond.end55_crit_edge
  %cond56 = phi i32 [ %34, %cond.true50 ], [ -1, %do.end43.cond.end55_crit_edge ]
  %35 = ptrtoint ptr %i2c_props45 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i2c_props45, align 4
  %conv59 = zext i8 %36 to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %30, i32 noundef %cond56, i32 noundef %conv59, ptr noundef nonnull @.str.56, i32 noundef %call25) #9
  br label %if.end66

if.end66:                                         ; preds = %cond.end55, %do.body37.if.end66_crit_edge, %if.end33.if.end66_crit_edge
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r820t_set_analog_freq(ptr noundef %fe, ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.77) #9
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %std = getelementptr inbounds %struct.analog_parameters, ptr %p, i32 0, i32 3
  %11 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool13.not = icmp eq i64 %12, 0
  br i1 %tobool13.not, label %if.then14, label %do.end12.if.end16_crit_edge

do.end12.if.end16_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 46848, ptr %std, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.end12.if.end16_crit_edge
  %14 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %15)
  %switch.selectcmp.case1 = icmp eq i64 %15, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 45056, i64 %15)
  %switch.selectcmp.case2 = icmp eq i64 %15, 45056
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %16 = select i1 %switch.selectcmp, i32 6, i32 8
  %lock = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %if.end16.if.end29_crit_edge, label %if.then25

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 %18(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end16.if.end29_crit_edge
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p, align 8
  %mul = mul i32 %20, 62500
  %21 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %std, align 8
  %call31 = tail call fastcc i32 @generic_set_freq(ptr noundef %fe, i32 noundef %mul, i32 noundef %16, i32 noundef 2, i64 noundef %22, i32 noundef 0)
  %23 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool34.not = icmp eq ptr %24, null
  br i1 %tobool34.not, label %if.end29.if.end39_crit_edge, label %if.then35

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 %24(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end29.if.end39_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r820t_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.78) #9
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %int_freq = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %int_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %int_freq, align 8
  %13 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r820t_signal(ptr noundef %fe, ptr nocapture noundef %strength) #0 align 64 {
entry:
  %data.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %lock = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %has_lock = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %has_lock to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_lock, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data.i, align 4
  %call.i = call fastcc i32 @r820t_read(ptr noundef %1, ptr noundef nonnull %data.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %r820t_read_gain.exit.thread, label %r820t_read_gain.exit

r820t_read_gain.exit.thread:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  br label %err

r820t_read_gain.exit:                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %7 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i32
  %and.i = shl nuw nsw i32 %conv.i, 1
  %shl.i = and i32 %and.i, 16
  %10 = lshr i32 %conv.i, 4
  %add.i = or i32 %shl.i, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  %11 = trunc i32 %add.i to i16
  %12 = mul nsw i16 %11, -16
  %13 = add nsw i16 %12, 720
  %conv = or i16 %13, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %13)
  %cmp9 = icmp ult i16 %13, 256
  %spec.store.select = select i1 %cmp9, i16 0, i16 %conv
  %14 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.store.select, ptr %strength, align 2
  br label %err

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %strength, align 2
  br label %err

err:                                              ; preds = %if.else, %r820t_read_gain.exit, %r820t_read_gain.exit.thread
  %rc.0 = phi i32 [ 0, %if.else ], [ %add.i, %r820t_read_gain.exit ], [ %call.i, %r820t_read_gain.exit.thread ]
  %16 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %err.if.end21_crit_edge, label %if.then17

err.if.end21_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then17:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 %17(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %err.if.end21_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  br i1 %tobool23.not, label %if.end21.do.end44_crit_edge, label %do.end

if.end21.do.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.end:                                           ; preds = %if.end21
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap, align 4
  %tobool28.not = icmp eq ptr %22, null
  br i1 %tobool28.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %24, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %25 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i2c_props, align 4
  %conv33 = zext i8 %26 to i32
  %27 = ptrtoint ptr %has_lock to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_lock, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool35.not = icmp eq i8 %28, 0
  %cond37 = select i1 %tobool35.not, ptr @.str.82, ptr @.str.81
  %29 = ptrtoint ptr %strength to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %strength, align 2
  %conv38 = zext i16 %30 to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %20, i32 noundef %cond, i32 noundef %conv33, ptr noundef nonnull @.str.80, ptr noundef nonnull %cond37, i32 noundef %rc.0, i32 noundef %conv38) #9
  br label %do.end44

do.end44:                                         ; preds = %cond.end, %if.end21.do.end44_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_imr(ptr noundef %priv, i32 noundef %imr_mem, i1 noundef zeroext %im_flag) unnamed_addr #0 align 64 {
entry:
  %tmp.i120.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %tmp.i136.i.i = alloca i8, align 1
  %tmp.i.i.i = alloca i8, align 1
  %cross.i.i = alloca [5 x %struct.r820t_sect_type], align 4
  %compare_iq.i = alloca [3 x %struct.r820t_sect_type], align 4
  %tmp.i280 = alloca i8, align 1
  %tmp.i278 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %imr_point = alloca %struct.r820t_sect_type, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imr_point) #6
  %0 = getelementptr inbounds %struct.r820t_sect_type, ptr %imr_point, i32 0, i32 1
  %1 = getelementptr inbounds %struct.r820t_sect_type, ptr %imr_point, i32 0, i32 2
  %cfg = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %imr_point to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %imr_point, align 4
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 8
  %xtal = getelementptr inbounds %struct.r820t_config, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xtal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %6)
  %cmp = icmp ugt i32 %6, 24000000
  %ring_ref.0.v = select i1 %cmp, i32 2000, i32 1000
  %ring_ref.0 = udiv i32 %6, %ring_ref.0.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 24218, i32 %ring_ref.0)
  %cmp10 = icmp ugt i32 %ring_ref.0, 24218
  br i1 %cmp10, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %entry
  %mul9.1 = mul nuw nsw i32 %ring_ref.0, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.1)
  %cmp10.1 = icmp ugt i32 %mul9.1, 3099999
  br i1 %cmp10.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %mul9.2 = mul nuw nsw i32 %ring_ref.0, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.2)
  %cmp10.2 = icmp ugt i32 %mul9.2, 3099999
  br i1 %cmp10.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %mul9.3 = mul nuw nsw i32 %ring_ref.0, 152
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.3)
  %cmp10.3 = icmp ugt i32 %mul9.3, 3099999
  br i1 %cmp10.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %mul9.4 = mul nuw nsw i32 %ring_ref.0, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.4)
  %cmp10.4 = icmp ugt i32 %mul9.4, 3099999
  br i1 %cmp10.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %mul9.5 = mul nuw nsw i32 %ring_ref.0, 168
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.5)
  %cmp10.5 = icmp ugt i32 %mul9.5, 3099999
  br i1 %cmp10.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %mul9.6 = mul nuw nsw i32 %ring_ref.0, 176
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.6)
  %cmp10.6 = icmp ugt i32 %mul9.6, 3099999
  br i1 %cmp10.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %mul9.7 = mul nuw nsw i32 %ring_ref.0, 184
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.7)
  %cmp10.7 = icmp ugt i32 %mul9.7, 3099999
  br i1 %cmp10.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %mul9.8 = mul nuw nsw i32 %ring_ref.0, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.8)
  %cmp10.8 = icmp ugt i32 %mul9.8, 3099999
  br i1 %cmp10.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %mul9.9 = mul nuw nsw i32 %ring_ref.0, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.9)
  %cmp10.9 = icmp ugt i32 %mul9.9, 3099999
  br i1 %cmp10.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %mul9.10 = mul nuw nsw i32 %ring_ref.0, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.10)
  %cmp10.10 = icmp ugt i32 %mul9.10, 3099999
  br i1 %cmp10.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %mul9.11 = mul nuw nsw i32 %ring_ref.0, 216
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.11)
  %cmp10.11 = icmp ugt i32 %mul9.11, 3099999
  br i1 %cmp10.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %mul9.12 = mul nuw nsw i32 %ring_ref.0, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.12)
  %cmp10.12 = icmp ugt i32 %mul9.12, 3099999
  br i1 %cmp10.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %mul9.13 = mul nuw nsw i32 %ring_ref.0, 232
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.13)
  %cmp10.13 = icmp ugt i32 %mul9.13, 3099999
  br i1 %cmp10.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #8
  %mul9.14 = mul nuw nsw i32 %ring_ref.0, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %mul9.14)
  %cmp10.14 = icmp ugt i32 %mul9.14, 3099999
  %spec.select = select i1 %cmp10.14, i32 14, i32 15
  br label %for.end

for.end:                                          ; preds = %for.inc.13, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %n_ring.0 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ %spec.select, %for.inc.13 ]
  %arrayidx.i = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 19
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %arrayidx.i274 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 20
  %9 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i274, align 1
  %arrayidx.i276 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 26
  %11 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i276, align 1
  %13 = and i8 %8, -48
  %and = zext i8 %13 to i32
  %add18 = shl nuw nsw i32 %n_ring.0, 3
  %mul19 = or i32 %add18, 128
  %mul20 = mul nuw nsw i32 %mul19, %ring_ref.0
  %and21 = or i32 %n_ring.0, %and
  %14 = and i8 %10, -4
  %15 = and i8 %12, -4
  %16 = zext i32 %imr_mem to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %imr_mem, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb33
    i32 3, label %sw.bb38
    i32 4, label %sw.bb43
  ]

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %div24 = udiv i32 %mul20, 48
  %or25 = or i32 %and21, 32
  %or26 = or i8 %10, 3
  %or27 = or i8 %15, 2
  br label %sw.epilog

sw.bb28:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %div29272 = lshr i32 %mul20, 4
  %or31 = or i8 %14, 2
  br label %sw.epilog

sw.bb33:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %div34271 = lshr exact i32 %mul20, 3
  %or36 = or i8 %14, 1
  %or37 = or i8 %12, 3
  br label %sw.epilog

sw.bb38:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %div39 = udiv i32 %mul20, 6
  %or40 = or i32 %and21, 32
  %or42 = or i8 %12, 3
  br label %sw.epilog

sw.bb43:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %div44270 = lshr exact i32 %mul20, 2
  %or47 = or i8 %15, 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %div48273 = lshr exact i32 %mul20, 2
  %or51 = or i8 %15, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb43, %sw.bb38, %sw.bb33, %sw.bb28, %sw.bb
  %ring_freq.0 = phi i32 [ %div48273, %sw.default ], [ %div44270, %sw.bb43 ], [ %div39, %sw.bb38 ], [ %div34271, %sw.bb33 ], [ %div29272, %sw.bb28 ], [ %div24, %sw.bb ]
  %reg18.0 = phi i32 [ %and21, %sw.default ], [ %and21, %sw.bb43 ], [ %or40, %sw.bb38 ], [ %and21, %sw.bb33 ], [ %and21, %sw.bb28 ], [ %or25, %sw.bb ]
  %reg19.0 = phi i8 [ %14, %sw.default ], [ %14, %sw.bb43 ], [ %14, %sw.bb38 ], [ %or36, %sw.bb33 ], [ %or31, %sw.bb28 ], [ %or26, %sw.bb ]
  %reg1f.0 = phi i8 [ %or51, %sw.default ], [ %or47, %sw.bb43 ], [ %or42, %sw.bb38 ], [ %or37, %sw.bb33 ], [ %15, %sw.bb28 ], [ %or27, %sw.bb ]
  %conv52 = trunc i32 %reg18.0 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv52, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 24, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp54 = icmp slt i32 %call.i, 0
  br i1 %cmp54, label %sw.epilog.cleanup_crit_edge, label %if.end57

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i278) #6
  %18 = ptrtoint ptr %tmp.i278 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %reg19.0, ptr %tmp.i278, align 1
  %call.i279 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 25, ptr noundef nonnull %tmp.i278, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i278) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %cmp60 = icmp slt i32 %call.i279, 0
  br i1 %cmp60, label %if.end57.cleanup_crit_edge, label %if.end63

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i280) #6
  %19 = ptrtoint ptr %tmp.i280 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %reg1f.0, ptr %tmp.i280, align 1
  %call.i281 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 31, ptr noundef nonnull %tmp.i280, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i280) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %cmp66 = icmp slt i32 %call.i281, 0
  br i1 %cmp66, label %if.end63.cleanup_crit_edge, label %if.end69

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end69:                                         ; preds = %if.end63
  %20 = mul i32 %ring_freq.0, 1000
  %mul70 = add i32 %20, -5300000
  %call71 = call fastcc i32 @r820t_set_mux(ptr noundef %priv, i32 noundef %mul70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end69.cleanup_crit_edge, label %if.end75

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end69
  %call78 = call fastcc i32 @r820t_set_pll(ptr noundef %priv, i32 noundef %mul70)
  %has_lock = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 11
  %21 = ptrtoint ptr %has_lock to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_lock, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  %spec.store.select = select i1 %tobool.not, i32 -22, i32 %call78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp81 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp81, label %if.end75.cleanup_crit_edge, label %if.end84

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end84:                                         ; preds = %if.end75
  br i1 %im_flag, label %if.then86, label %if.else88

if.then86:                                        ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %compare_iq.i) #6
  %23 = getelementptr inbounds %struct.r820t_sect_type, ptr %compare_iq.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.r820t_sect_type, ptr %compare_iq.i, i32 0, i32 2
  %25 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq.i, i32 0, i32 1
  %26 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq.i, i32 0, i32 1, i32 1
  %27 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq.i, i32 0, i32 1, i32 2
  %28 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq.i, i32 0, i32 2
  %29 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq.i, i32 0, i32 2, i32 1
  %30 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq.i, i32 0, i32 2, i32 2
  %31 = call ptr @memset(ptr %compare_iq.i, i32 255, i32 12)
  call fastcc void @r820t_vga_adjust(ptr noundef %priv) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cross.i.i) #6
  %32 = getelementptr inbounds %struct.r820t_sect_type, ptr %cross.i.i, i32 0, i32 1
  %33 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 1
  %34 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 1, i32 1
  %35 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 2
  %36 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 2, i32 1
  %37 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 3
  %38 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 3, i32 1
  %39 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 4
  %arrayidx.i.i.i = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 3
  %40 = call ptr @memset(ptr %cross.i.i, i32 255, i32 20)
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i = and i8 %42, -64
  %arrayidx.i134.i.i = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %arrayidx.i134.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i134.i.i, align 1
  %conv3.i.i = and i8 %44, -64
  %45 = or i8 %conv.i.i, 1
  %46 = or i8 %conv3.i.i, 33
  %47 = or i8 %conv3.i.i, 1
  %48 = or i8 %conv.i.i, 33
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then86
  %i.0141.i.i = phi i32 [ 0, %if.then86 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %tmp.sroa.0.0140.i.i = phi i8 [ 0, %if.then86 ], [ %tmp.sroa.0.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %tmp.sroa.8.0139.i.i = phi i16 [ 255, %if.then86 ], [ %tmp.sroa.8.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %49 = zext i32 %i.0141.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %i.0141.i.i, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb8.i.i
    i32 2, label %sw.bb15.i.i
    i32 3, label %sw.bb23.i.i
  ]

sw.bb.i.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i.i, ptr %32, align 1
  %51 = ptrtoint ptr %cross.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv3.i.i, ptr %cross.i.i, align 4
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i.i, ptr %34, align 1
  %53 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %47, ptr %33, align 4
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i.i, ptr %36, align 1
  %55 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %46, ptr %35, align 4
  br label %sw.epilog.i.i

sw.bb23.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %45, ptr %38, align 1
  %57 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv3.i.i, ptr %37, align 4
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx35.i.i = getelementptr [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 %i.0141.i.i
  %gain_x36.i.i = getelementptr [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 %i.0141.i.i, i32 1
  %58 = ptrtoint ptr %gain_x36.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %48, ptr %gain_x36.i.i, align 1
  %59 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv3.i.i, ptr %arrayidx35.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb23.i.i, %sw.bb15.i.i, %sw.bb8.i.i, %sw.bb.i.i
  %arrayidx39.i.i = getelementptr [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 %i.0141.i.i
  %gain_x40.i.i = getelementptr [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 %i.0141.i.i, i32 1
  %60 = ptrtoint ptr %gain_x40.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %gain_x40.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #6
  %62 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %tmp.i.i.i, align 1
  %call.i.i.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %tmp.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp42.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp42.i.i, label %sw.epilog.i.i.r820t_imr_cross.exit.thread.i_crit_edge, label %if.end.i.i

sw.epilog.i.i.r820t_imr_cross.exit.thread.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_imr_cross.exit.thread.i

if.end.i.i:                                       ; preds = %sw.epilog.i.i
  %63 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx39.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i136.i.i) #6
  %65 = ptrtoint ptr %tmp.i136.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %tmp.i136.i.i, align 1
  %call.i137.i.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 9, ptr noundef nonnull %tmp.i136.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i136.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.i.i)
  %cmp47.i.i = icmp slt i32 %call.i137.i.i, 0
  br i1 %cmp47.i.i, label %if.end.i.i.r820t_imr_cross.exit.thread.i_crit_edge, label %if.end50.i.i

if.end.i.i.r820t_imr_cross.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_imr_cross.exit.thread.i

if.end50.i.i:                                     ; preds = %if.end.i.i
  %call51.i.i = call fastcc i32 @r820t_multi_read(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %cmp52.i.i = icmp slt i32 %call51.i.i, 0
  br i1 %cmp52.i.i, label %if.end50.i.i.r820t_imr_cross.exit.thread.i_crit_edge, label %if.end55.i.i

if.end50.i.i.r820t_imr_cross.exit.thread.i_crit_edge: ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_imr_cross.exit.thread.i

if.end55.i.i:                                     ; preds = %if.end50.i.i
  %conv56.i.i = trunc i32 %call51.i.i to i16
  %value58.i.i = getelementptr [5 x %struct.r820t_sect_type], ptr %cross.i.i, i32 0, i32 %i.0141.i.i, i32 2
  %66 = ptrtoint ptr %value58.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv56.i.i, ptr %value58.i.i, align 2
  %conv61.i.i = and i32 %call51.i.i, 65535
  %conv63.i.i = zext i16 %tmp.sroa.8.0139.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv61.i.i, i32 %conv63.i.i)
  %cmp64.i.i = icmp ult i32 %conv61.i.i, %conv63.i.i
  br i1 %cmp64.i.i, label %if.then66.i.i, label %if.end55.i.i.for.inc.i.i_crit_edge

if.end55.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then66.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %tmp.sroa.8.0.arrayidx67.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx39.i.i, i32 2
  %67 = ptrtoint ptr %tmp.sroa.8.0.arrayidx67.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %tmp.sroa.8.0.copyload.i.i = load i16, ptr %tmp.sroa.8.0.arrayidx67.sroa_idx.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then66.i.i, %if.end55.i.i.for.inc.i.i_crit_edge
  %tmp.sroa.8.1.i.i = phi i16 [ %tmp.sroa.8.0.copyload.i.i, %if.then66.i.i ], [ %tmp.sroa.8.0139.i.i, %if.end55.i.i.for.inc.i.i_crit_edge ]
  %tmp.sroa.0.1.i.i = phi i8 [ %64, %if.then66.i.i ], [ %tmp.sroa.0.0140.i.i, %if.end55.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.0141.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %68 = and i8 %tmp.sroa.0.1.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp72.i.i = icmp eq i8 %68, 1
  %69 = ptrtoint ptr %cross.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.sink.i.i = load i32, ptr %cross.i.i, align 4
  %70 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.sink.i.i, ptr %compare_iq.i, align 4
  %71 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.val.i = load i32, ptr %33, align 4
  %72 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.val127.i = load i32, ptr %37, align 4
  %73 = select i1 %cmp72.i.i, i32 %.val.i, i32 %.val127.i
  %74 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %25, align 4
  %75 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.val128.i = load i32, ptr %35, align 4
  %76 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.val129.i = load i32, ptr %39, align 4
  %77 = select i1 %cmp72.i.i, i32 %.val128.i, i32 %.val129.i
  %78 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cross.i.i) #6
  %..i = select i1 %cmp72.i.i, i8 9, i8 8
  %.73.i = select i1 %cmp72.i.i, i8 8, i8 9
  %79 = trunc i32 %.sink.i.i to i16
  %80 = trunc i32 %77 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %79, i16 %80)
  %cmp4.i.i = icmp ugt i16 %79, %80
  br i1 %cmp4.i.i, label %do.body.i.i, label %for.end.i.i.for.inc.i74.i_crit_edge

for.end.i.i.for.inc.i74.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i74.i

r820t_imr_cross.exit.thread.i:                    ; preds = %if.end50.i.i.r820t_imr_cross.exit.thread.i_crit_edge, %if.end.i.i.r820t_imr_cross.exit.thread.i_crit_edge, %sw.epilog.i.i.r820t_imr_cross.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i, %sw.epilog.i.i.r820t_imr_cross.exit.thread.i_crit_edge ], [ %call.i137.i.i, %if.end.i.i.r820t_imr_cross.exit.thread.i_crit_edge ], [ %call51.i.i, %if.end50.i.i.r820t_imr_cross.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cross.i.i) #6
  br label %r820t_iq.exit

do.body.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %__tmp.sroa.0.0.copyload.i.i = load i8, ptr %compare_iq.i, align 4
  %82 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %82)
  %__tmp.sroa.5.0.copyload.i.i = load i8, ptr %23, align 1
  store i32 %77, ptr %compare_iq.i, align 4
  %83 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %__tmp.sroa.0.0.copyload.i.i, ptr %28, align 4
  %84 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %__tmp.sroa.5.0.copyload.i.i, ptr %29, align 1
  %85 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %79, ptr %30, align 2
  br label %for.inc.i74.i

for.inc.i74.i:                                    ; preds = %do.body.i.i, %for.end.i.i.for.inc.i74.i_crit_edge
  %86 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %24, align 2
  %88 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %27, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %89)
  %cmp4.1.i.i = icmp ugt i16 %87, %89
  br i1 %cmp4.1.i.i, label %do.body.1.i.i, label %for.inc.i74.i.r820t_compre_cor.exit.i_crit_edge

for.inc.i74.i.r820t_compre_cor.exit.i_crit_edge:  ; preds = %for.inc.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_compre_cor.exit.i

do.body.1.i.i:                                    ; preds = %for.inc.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %__tmp.sroa.0.0.copyload.1.i.i = load i8, ptr %compare_iq.i, align 4
  %91 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %91)
  %__tmp.sroa.5.0.copyload.1.i.i = load i8, ptr %23, align 1
  store i32 %73, ptr %compare_iq.i, align 4
  %92 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %__tmp.sroa.0.0.copyload.1.i.i, ptr %25, align 4
  %93 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %__tmp.sroa.5.0.copyload.1.i.i, ptr %26, align 1
  %94 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %87, ptr %27, align 2
  br label %r820t_compre_cor.exit.i

r820t_compre_cor.exit.i:                          ; preds = %do.body.1.i.i, %for.inc.i74.i.r820t_compre_cor.exit.i_crit_edge
  %call8.i = call fastcc i32 @r820t_compre_step(ptr noundef %priv, ptr noundef nonnull %compare_iq.i, i8 noundef zeroext %..i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %r820t_compre_cor.exit.i.r820t_iq.exit_crit_edge, label %if.end12.i

r820t_compre_cor.exit.i.r820t_iq.exit_crit_edge:  ; preds = %r820t_compre_cor.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_iq.exit

if.end12.i:                                       ; preds = %r820t_compre_cor.exit.i
  %95 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %23, align 1
  %97 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %compare_iq.i, align 4
  %call15.i = call fastcc i32 @r820t_iq_tree(ptr noundef %priv, ptr noundef nonnull %compare_iq.i, i8 noundef zeroext %96, i8 noundef zeroext %98, i8 noundef zeroext %..i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end12.i.r820t_iq.exit_crit_edge, label %if.end19.i

if.end12.i.r820t_iq.exit_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_iq.exit

if.end19.i:                                       ; preds = %if.end12.i
  %99 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %24, align 2
  %101 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %30, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %102)
  %cmp4.i78.i = icmp ugt i16 %100, %102
  br i1 %cmp4.i78.i, label %do.body.i85.i, label %if.end19.i.for.inc.i88.i_crit_edge

if.end19.i.for.inc.i88.i_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i88.i

do.body.i85.i:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %__tmp.sroa.0.0.copyload.i80.i = load i8, ptr %compare_iq.i, align 4
  %104 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %104)
  %__tmp.sroa.5.0.copyload.i81.i = load i8, ptr %23, align 1
  %105 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %28, align 4
  store i32 %106, ptr %compare_iq.i, align 4
  store i8 %__tmp.sroa.0.0.copyload.i80.i, ptr %28, align 4
  %107 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %__tmp.sroa.5.0.copyload.i81.i, ptr %29, align 1
  %108 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %100, ptr %30, align 2
  br label %for.inc.i88.i

for.inc.i88.i:                                    ; preds = %do.body.i85.i, %if.end19.i.for.inc.i88.i_crit_edge
  %109 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %24, align 2
  %111 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %27, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %112)
  %cmp4.1.i87.i = icmp ugt i16 %110, %112
  br i1 %cmp4.1.i87.i, label %do.body.1.i95.i, label %for.inc.i88.i.r820t_compre_cor.exit96.i_crit_edge

for.inc.i88.i.r820t_compre_cor.exit96.i_crit_edge: ; preds = %for.inc.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_compre_cor.exit96.i

do.body.1.i95.i:                                  ; preds = %for.inc.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %__tmp.sroa.0.0.copyload.1.i90.i = load i8, ptr %compare_iq.i, align 4
  %114 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %114)
  %__tmp.sroa.5.0.copyload.1.i91.i = load i8, ptr %23, align 1
  %115 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %25, align 4
  store i32 %116, ptr %compare_iq.i, align 4
  store i8 %__tmp.sroa.0.0.copyload.1.i90.i, ptr %25, align 4
  %117 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %__tmp.sroa.5.0.copyload.1.i91.i, ptr %26, align 1
  %118 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %110, ptr %27, align 2
  br label %r820t_compre_cor.exit96.i

r820t_compre_cor.exit96.i:                        ; preds = %do.body.1.i95.i, %for.inc.i88.i.r820t_compre_cor.exit96.i_crit_edge
  %call22.i = call fastcc i32 @r820t_compre_step(ptr noundef %priv, ptr noundef nonnull %compare_iq.i, i8 noundef zeroext %.73.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %r820t_compre_cor.exit96.i.r820t_iq.exit_crit_edge, label %if.end26.i

r820t_compre_cor.exit96.i.r820t_iq.exit_crit_edge: ; preds = %r820t_compre_cor.exit96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_iq.exit

if.end26.i:                                       ; preds = %r820t_compre_cor.exit96.i
  %119 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %23, align 1
  %121 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %compare_iq.i, align 4
  %call32.i = call fastcc i32 @r820t_iq_tree(ptr noundef %priv, ptr noundef nonnull %compare_iq.i, i8 noundef zeroext %120, i8 noundef zeroext %122, i8 noundef zeroext %.73.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end26.i.r820t_iq.exit_crit_edge, label %if.end36.i

if.end26.i.r820t_iq.exit_crit_edge:               ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_iq.exit

if.end36.i:                                       ; preds = %if.end26.i
  %123 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %24, align 2
  %125 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %30, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %124, i16 %126)
  %cmp4.i100.i = icmp ugt i16 %124, %126
  br i1 %cmp4.i100.i, label %do.body.i107.i, label %if.end36.i.for.inc.i110.i_crit_edge

if.end36.i.for.inc.i110.i_crit_edge:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i110.i

do.body.i107.i:                                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %__tmp.sroa.0.0.copyload.i102.i = load i8, ptr %compare_iq.i, align 4
  %128 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %128)
  %__tmp.sroa.5.0.copyload.i103.i = load i8, ptr %23, align 1
  %129 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %28, align 4
  store i32 %130, ptr %compare_iq.i, align 4
  store i8 %__tmp.sroa.0.0.copyload.i102.i, ptr %28, align 4
  %131 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %__tmp.sroa.5.0.copyload.i103.i, ptr %29, align 1
  %132 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %124, ptr %30, align 2
  br label %for.inc.i110.i

for.inc.i110.i:                                   ; preds = %do.body.i107.i, %if.end36.i.for.inc.i110.i_crit_edge
  %133 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %24, align 2
  %135 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %27, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %134, i16 %136)
  %cmp4.1.i109.i = icmp ugt i16 %134, %136
  br i1 %cmp4.1.i109.i, label %do.body.1.i117.i, label %for.inc.i110.i.r820t_compre_cor.exit118.i_crit_edge

for.inc.i110.i.r820t_compre_cor.exit118.i_crit_edge: ; preds = %for.inc.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_compre_cor.exit118.i

do.body.1.i117.i:                                 ; preds = %for.inc.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %__tmp.sroa.0.0.copyload.1.i112.i = load i8, ptr %compare_iq.i, align 4
  %138 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %138)
  %__tmp.sroa.5.0.copyload.1.i113.i = load i8, ptr %23, align 1
  %139 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %25, align 4
  store i32 %140, ptr %compare_iq.i, align 4
  store i8 %__tmp.sroa.0.0.copyload.1.i112.i, ptr %25, align 4
  %141 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %__tmp.sroa.5.0.copyload.1.i113.i, ptr %26, align 1
  %142 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %134, ptr %27, align 2
  br label %r820t_compre_cor.exit118.i

r820t_compre_cor.exit118.i:                       ; preds = %do.body.1.i117.i, %for.inc.i110.i.r820t_compre_cor.exit118.i_crit_edge
  %call39.i = call fastcc i32 @r820t_section(ptr noundef %priv, ptr noundef nonnull %compare_iq.i) #6
  %143 = ptrtoint ptr %compare_iq.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %compare_iq.i, align 4
  %145 = ptrtoint ptr %imr_point to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %imr_point, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %146 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i.i.i, align 1
  %and.i.i = and i8 %147, -64
  %148 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %and.i.i, ptr %tmp.i.i, align 1
  %call7.i.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp42.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp42.i, label %r820t_compre_cor.exit118.i.r820t_iq.exit_crit_edge, label %if.end45.i

r820t_compre_cor.exit118.i.r820t_iq.exit_crit_edge: ; preds = %r820t_compre_cor.exit118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_iq.exit

if.end45.i:                                       ; preds = %r820t_compre_cor.exit118.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i120.i) #6
  %149 = ptrtoint ptr %arrayidx.i134.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.i134.i.i, align 1
  %and.i122.i = and i8 %150, -64
  %151 = ptrtoint ptr %tmp.i120.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %and.i122.i, ptr %tmp.i120.i, align 1
  %call7.i123.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 9, ptr noundef nonnull %tmp.i120.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i120.i) #6
  br label %r820t_iq.exit

r820t_iq.exit:                                    ; preds = %if.end45.i, %r820t_compre_cor.exit118.i.r820t_iq.exit_crit_edge, %if.end26.i.r820t_iq.exit_crit_edge, %r820t_compre_cor.exit96.i.r820t_iq.exit_crit_edge, %if.end12.i.r820t_iq.exit_crit_edge, %r820t_compre_cor.exit.i.r820t_iq.exit_crit_edge, %r820t_imr_cross.exit.thread.i
  %retval.0.i = phi i32 [ %call7.i123.i, %if.end45.i ], [ %call8.i, %r820t_compre_cor.exit.i.r820t_iq.exit_crit_edge ], [ %call15.i, %if.end12.i.r820t_iq.exit_crit_edge ], [ %call22.i, %r820t_compre_cor.exit96.i.r820t_iq.exit_crit_edge ], [ %call32.i, %if.end26.i.r820t_iq.exit_crit_edge ], [ %call7.i.i, %r820t_compre_cor.exit118.i.r820t_iq.exit_crit_edge ], [ %retval.0.i.ph.i, %r820t_imr_cross.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %compare_iq.i) #6
  br label %if.end97

if.else88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 3
  %gain_x = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 3, i32 1
  %152 = ptrtoint ptr %gain_x to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %gain_x, align 1
  %154 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %0, align 1
  %155 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx, align 4
  %157 = ptrtoint ptr %imr_point to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %imr_point, align 4
  %value = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 3, i32 2
  %158 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %value, align 2
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %1, align 2
  call fastcc void @r820t_vga_adjust(ptr noundef %priv) #6
  %call1.i = call fastcc i32 @r820t_section(ptr noundef %priv, ptr noundef nonnull %imr_point) #6
  %161 = call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #6
  br label %if.end97

if.end97:                                         ; preds = %if.else88, %r820t_iq.exit
  %rc.0 = phi i32 [ %retval.0.i, %r820t_iq.exit ], [ %161, %if.else88 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp98 = icmp slt i32 %rc.0, 0
  br i1 %cmp98, label %if.end97.cleanup_crit_edge, label %if.end101

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end101:                                        ; preds = %if.end97
  %162 = zext i32 %imr_mem to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %imr_mem, label %sw.default167 [
    i32 0, label %sw.bb102
    i32 1, label %sw.bb115
    i32 2, label %sw.bb128
    i32 3, label %sw.bb141
    i32 4, label %sw.bb154
  ]

sw.bb102:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %163 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %0, align 1
  %imr_data104 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 13
  %gain_x106 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 0, i32 1
  %165 = ptrtoint ptr %gain_x106 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %gain_x106, align 1
  %166 = ptrtoint ptr %imr_point to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %imr_point, align 4
  %168 = ptrtoint ptr %imr_data104 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %imr_data104, align 8
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %1, align 2
  %value114 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 0, i32 2
  %171 = ptrtoint ptr %value114 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %value114, align 2
  br label %cleanup

sw.bb115:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %0, align 1
  %arrayidx118 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 1
  %gain_x119 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 1, i32 1
  %174 = ptrtoint ptr %gain_x119 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %gain_x119, align 1
  %175 = ptrtoint ptr %imr_point to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %imr_point, align 4
  %177 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx118, align 4
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %1, align 2
  %value127 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 1, i32 2
  %180 = ptrtoint ptr %value127 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %value127, align 2
  br label %cleanup

sw.bb128:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %0, align 1
  %arrayidx131 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 2
  %gain_x132 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 2, i32 1
  %183 = ptrtoint ptr %gain_x132 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %gain_x132, align 1
  %184 = ptrtoint ptr %imr_point to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %imr_point, align 4
  %186 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %arrayidx131, align 8
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %1, align 2
  %value140 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 2, i32 2
  %189 = ptrtoint ptr %value140 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %188, ptr %value140, align 2
  br label %cleanup

sw.bb141:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %190 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %0, align 1
  %arrayidx144 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 3
  %gain_x145 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 3, i32 1
  %192 = ptrtoint ptr %gain_x145 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %gain_x145, align 1
  %193 = ptrtoint ptr %imr_point to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %imr_point, align 4
  %195 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %arrayidx144, align 4
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %1, align 2
  %value153 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 3, i32 2
  %198 = ptrtoint ptr %value153 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %197, ptr %value153, align 2
  br label %cleanup

sw.bb154:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %199 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %0, align 1
  %arrayidx157 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 4
  %gain_x158 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 4, i32 1
  %201 = ptrtoint ptr %gain_x158 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %gain_x158, align 1
  %202 = ptrtoint ptr %imr_point to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %imr_point, align 4
  %204 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %arrayidx157, align 8
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %1, align 2
  %value166 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 4, i32 2
  %207 = ptrtoint ptr %value166 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %206, ptr %value166, align 2
  br label %cleanup

sw.default167:                                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %208 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %0, align 1
  %arrayidx170 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 4
  %gain_x171 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 4, i32 1
  %210 = ptrtoint ptr %gain_x171 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %gain_x171, align 1
  %211 = ptrtoint ptr %imr_point to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %imr_point, align 4
  %213 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %arrayidx170, align 8
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %1, align 2
  %value179 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 4, i32 2
  %216 = ptrtoint ptr %value179 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %value179, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.default167, %sw.bb154, %sw.bb141, %sw.bb128, %sw.bb115, %sw.bb102, %if.end97.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog.cleanup_crit_edge ], [ %call.i279, %if.end57.cleanup_crit_edge ], [ %call.i281, %if.end63.cleanup_crit_edge ], [ %call71, %if.end69.cleanup_crit_edge ], [ %spec.store.select, %if.end75.cleanup_crit_edge ], [ %rc.0, %if.end97.cleanup_crit_edge ], [ 0, %sw.default167 ], [ 0, %sw.bb154 ], [ 0, %sw.bb141 ], [ 0, %sw.bb128 ], [ 0, %sw.bb115 ], [ 0, %sw.bb102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imr_point) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_set_mux(ptr noundef %priv, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  %tmp.i128 = alloca i8, align 1
  %tmp.i122 = alloca i8, align 1
  %tmp.i116 = alloca i8, align 1
  %tmp.i115 = alloca i8, align 1
  %tmp.i109 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %freq, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %freq)
  %cmp2 = icmp ult i32 %freq, 50000000
  br i1 %cmp2, label %entry.for.end_crit_edge, label %for.cond.1

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.1:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 55000000, i32 %freq)
  %cmp2.1 = icmp ult i32 %freq, 55000000
  br i1 %cmp2.1, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000000, i32 %freq)
  %cmp2.2 = icmp ult i32 %freq, 60000000
  br i1 %cmp2.2, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000000, i32 %freq)
  %cmp2.3 = icmp ult i32 %freq, 65000000
  br i1 %cmp2.3, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000000, i32 %freq)
  %cmp2.4 = icmp ult i32 %freq, 70000000
  br i1 %cmp2.4, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75000000, i32 %freq)
  %cmp2.5 = icmp ult i32 %freq, 75000000
  br i1 %cmp2.5, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %freq)
  %cmp2.6 = icmp ult i32 %freq, 80000000
  br i1 %cmp2.6, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %freq)
  %cmp2.7 = icmp ult i32 %freq, 90000000
  br i1 %cmp2.7, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %freq)
  %cmp2.8 = icmp ult i32 %freq, 100000000
  br i1 %cmp2.8, label %for.cond.8.for.end_crit_edge, label %for.cond.9

for.cond.8.for.end_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.9:                                       ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 110000000, i32 %freq)
  %cmp2.9 = icmp ult i32 %freq, 110000000
  br i1 %cmp2.9, label %for.cond.9.for.end_crit_edge, label %for.cond.10

for.cond.9.for.end_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.10:                                      ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000000, i32 %freq)
  %cmp2.10 = icmp ult i32 %freq, 120000000
  br i1 %cmp2.10, label %for.cond.10.for.end_crit_edge, label %for.cond.11

for.cond.10.for.end_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.11:                                      ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 140000000, i32 %freq)
  %cmp2.11 = icmp ult i32 %freq, 140000000
  br i1 %cmp2.11, label %for.cond.11.for.end_crit_edge, label %for.cond.12

for.cond.11.for.end_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.12:                                      ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 180000000, i32 %freq)
  %cmp2.12 = icmp ult i32 %freq, 180000000
  br i1 %cmp2.12, label %for.cond.12.for.end_crit_edge, label %for.cond.13

for.cond.12.for.end_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.13:                                      ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 220000000, i32 %freq)
  %cmp2.13 = icmp ult i32 %freq, 220000000
  br i1 %cmp2.13, label %for.cond.13.for.end_crit_edge, label %for.cond.14

for.cond.13.for.end_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.14:                                      ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %freq)
  %cmp2.14 = icmp ult i32 %freq, 250000000
  br i1 %cmp2.14, label %for.cond.14.for.end_crit_edge, label %for.cond.15

for.cond.14.for.end_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.15:                                      ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 280000000, i32 %freq)
  %cmp2.15 = icmp ult i32 %freq, 280000000
  br i1 %cmp2.15, label %for.cond.15.for.end_crit_edge, label %for.cond.16

for.cond.15.for.end_crit_edge:                    ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.16:                                      ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_const_cmp4(i32 310000000, i32 %freq)
  %cmp2.16 = icmp ult i32 %freq, 310000000
  br i1 %cmp2.16, label %for.cond.16.for.end_crit_edge, label %for.cond.17

for.cond.16.for.end_crit_edge:                    ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.17:                                      ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_const_cmp4(i32 450000000, i32 %freq)
  %cmp2.17 = icmp ult i32 %freq, 450000000
  br i1 %cmp2.17, label %for.cond.17.for.end_crit_edge, label %for.cond.18

for.cond.17.for.end_crit_edge:                    ; preds = %for.cond.17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.18:                                      ; preds = %for.cond.17
  call void @__sanitizer_cov_trace_const_cmp4(i32 588000000, i32 %freq)
  %cmp2.18 = icmp ult i32 %freq, 588000000
  br i1 %cmp2.18, label %for.cond.18.for.end_crit_edge, label %for.cond.19

for.cond.18.for.end_crit_edge:                    ; preds = %for.cond.18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.19:                                      ; preds = %for.cond.18
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 650000000, i32 %freq)
  %cmp2.19 = icmp ult i32 %freq, 650000000
  %spec.select = select i1 %cmp2.19, i32 19, i32 20
  br label %for.end

for.end:                                          ; preds = %for.cond.19, %for.cond.18.for.end_crit_edge, %for.cond.17.for.end_crit_edge, %for.cond.16.for.end_crit_edge, %for.cond.15.for.end_crit_edge, %for.cond.14.for.end_crit_edge, %for.cond.13.for.end_crit_edge, %for.cond.12.for.end_crit_edge, %for.cond.11.for.end_crit_edge, %for.cond.10.for.end_crit_edge, %for.cond.9.for.end_crit_edge, %for.cond.8.for.end_crit_edge, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.cond.1.for.end_crit_edge ], [ 2, %for.cond.2.for.end_crit_edge ], [ 3, %for.cond.3.for.end_crit_edge ], [ 4, %for.cond.4.for.end_crit_edge ], [ 5, %for.cond.5.for.end_crit_edge ], [ 6, %for.cond.6.for.end_crit_edge ], [ 7, %for.cond.7.for.end_crit_edge ], [ 8, %for.cond.8.for.end_crit_edge ], [ 9, %for.cond.9.for.end_crit_edge ], [ 10, %for.cond.10.for.end_crit_edge ], [ 11, %for.cond.11.for.end_crit_edge ], [ 12, %for.cond.12.for.end_crit_edge ], [ 13, %for.cond.13.for.end_crit_edge ], [ 14, %for.cond.14.for.end_crit_edge ], [ 15, %for.cond.15.for.end_crit_edge ], [ 16, %for.cond.16.for.end_crit_edge ], [ 17, %for.cond.17.for.end_crit_edge ], [ 18, %for.cond.18.for.end_crit_edge ], [ %spec.select, %for.cond.19 ]
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.end.do.end17_crit_edge, label %do.end

for.end.do.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end:                                           ; preds = %for.end
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %7 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %8 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %2, i32 noundef %cond, i32 noundef %conv, i32 noundef %i.0.lcssa, i32 noundef %div) #9
  br label %do.end17

do.end17:                                         ; preds = %cond.end, %for.end.do.end17_crit_edge
  %open_d = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %i.0.lcssa, i32 1
  %9 = ptrtoint ptr %open_d to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %open_d, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %arrayidx.i.i = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 18
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %and.i = and i8 %12, -9
  %and514.i = and i8 %10, 8
  %conv6.i = or i8 %and.i, %and514.i
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6.i, ptr %tmp.i, align 1
  %call7.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 23, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp19 = icmp slt i32 %call7.i, 0
  br i1 %cmp19, label %do.end17.cleanup_crit_edge, label %if.end22

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %do.end17
  %rf_mux_ploy = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %i.0.lcssa, i32 2
  %14 = ptrtoint ptr %rf_mux_ploy to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rf_mux_ploy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i109) #6
  %arrayidx.i.i110 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 21
  %16 = ptrtoint ptr %arrayidx.i.i110 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i110, align 1
  %and.i111 = and i8 %17, 60
  %and514.i112 = and i8 %15, -61
  %conv6.i113 = or i8 %and.i111, %and514.i112
  %18 = ptrtoint ptr %tmp.i109 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv6.i113, ptr %tmp.i109, align 1
  %call7.i114 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 26, ptr noundef nonnull %tmp.i109, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i114)
  %cmp24 = icmp slt i32 %call7.i114, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %tf_c = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %i.0.lcssa, i32 3
  %19 = ptrtoint ptr %tf_c to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tf_c, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i115) #6
  %21 = ptrtoint ptr %tmp.i115 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %tmp.i115, align 1
  %call.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 27, ptr noundef nonnull %tmp.i115, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i115) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp29 = icmp slt i32 %call.i, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %xtal_cap_sel = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 6
  %22 = ptrtoint ptr %xtal_cap_sel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xtal_cap_sel, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %23, label %sw.bb43 [
    i32 0, label %if.end32.sw.bb_crit_edge
    i32 1, label %if.end32.sw.bb_crit_edge135
    i32 2, label %sw.bb35
    i32 4, label %sw.bb39
  ]

if.end32.sw.bb_crit_edge135:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end32.sw.bb_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end32.sw.bb_crit_edge, %if.end32.sw.bb_crit_edge135
  %xtal_cap20p = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %i.0.lcssa, i32 4
  %25 = ptrtoint ptr %xtal_cap20p to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %xtal_cap20p, align 1
  %27 = or i8 %26, 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %xtal_cap10p = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %i.0.lcssa, i32 5
  %28 = ptrtoint ptr %xtal_cap10p to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %xtal_cap10p, align 4
  %30 = or i8 %29, 8
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %xtal_cap0p = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %i.0.lcssa, i32 6
  %31 = ptrtoint ptr %xtal_cap0p to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %xtal_cap0p, align 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %xtal_cap0p44 = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %i.0.lcssa, i32 6
  %33 = ptrtoint ptr %xtal_cap0p44 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %xtal_cap0p44, align 1
  %35 = or i8 %34, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb39, %sw.bb35, %sw.bb
  %val.0 = phi i8 [ %35, %sw.bb43 ], [ %32, %sw.bb39 ], [ %30, %sw.bb35 ], [ %27, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i116) #6
  %arrayidx.i.i117 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 11
  %36 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i117, align 1
  %and.i118 = and i8 %37, -12
  %and514.i119 = and i8 %val.0, 11
  %conv6.i120 = or i8 %and.i118, %and514.i119
  %38 = ptrtoint ptr %tmp.i116 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv6.i120, ptr %tmp.i116, align 1
  %call7.i121 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 16, ptr noundef nonnull %tmp.i116, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i116) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i121)
  %cmp49 = icmp slt i32 %call7.i121, 0
  br i1 %cmp49, label %sw.epilog.cleanup_crit_edge, label %if.end52

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %sw.epilog
  %imr_done = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 10
  %39 = ptrtoint ptr %imr_done to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %imr_done, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool53.not = icmp eq i8 %40, 0
  br i1 %tobool53.not, label %if.end52.if.end60_crit_edge, label %if.then54

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %imr_mem = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %i.0.lcssa, i32 7
  %41 = ptrtoint ptr %imr_mem to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %imr_mem, align 2
  %idxprom = zext i8 %42 to i32
  %arrayidx55 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 %idxprom
  %gain_x = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 13, i32 %idxprom, i32 1
  %43 = ptrtoint ptr %gain_x to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %gain_x, align 1
  %45 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx55, align 4
  %phi.bo = and i8 %44, 63
  %phi.bo134 = and i8 %46, 63
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %if.end52.if.end60_crit_edge
  %reg08.0 = phi i8 [ %phi.bo, %if.then54 ], [ 0, %if.end52.if.end60_crit_edge ]
  %reg09.0 = phi i8 [ %phi.bo134, %if.then54 ], [ 0, %if.end52.if.end60_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i122) #6
  %arrayidx.i.i123 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i123, align 1
  %and.i124 = and i8 %48, -64
  %conv6.i126 = or i8 %and.i124, %reg08.0
  %49 = ptrtoint ptr %tmp.i122 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv6.i126, ptr %tmp.i122, align 1
  %call7.i127 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %tmp.i122, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i122) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i127)
  %cmp62 = icmp slt i32 %call7.i127, 0
  br i1 %cmp62, label %if.end60.cleanup_crit_edge, label %if.end65

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i128) #6
  %arrayidx.i.i129 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 4
  %50 = ptrtoint ptr %arrayidx.i.i129 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i129, align 1
  %and.i130 = and i8 %51, -64
  %conv6.i132 = or i8 %and.i130, %reg09.0
  %52 = ptrtoint ptr %tmp.i128 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv6.i132, ptr %tmp.i128, align 1
  %call7.i133 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 9, ptr noundef nonnull %tmp.i128, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i128) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end60.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i133, %if.end65 ], [ %call7.i, %do.end17.cleanup_crit_edge ], [ %call7.i114, %if.end22.cleanup_crit_edge ], [ %call.i, %if.end27.cleanup_crit_edge ], [ %call7.i121, %sw.epilog.cleanup_crit_edge ], [ %call7.i127, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_set_pll(ptr noundef %priv, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  %tmp.i37 = alloca i8, align 1
  %tmp.i31 = alloca i8, align 1
  %tmp.i29 = alloca i8, align 1
  %tmp.i27 = alloca i8, align 1
  %tmp.i21 = alloca i8, align 1
  %tmp.i20 = alloca i8, align 1
  %tmp.i15 = alloca i8, align 1
  %tmp.i11 = alloca i8, align 1
  %tmp.i7 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data) #6
  %0 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 2
  %1 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 4
  %div = udiv i32 %freq, 1000
  %cfg = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 1
  %2 = call ptr @memset(ptr %data, i32 255, i32 5)
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 8
  %xtal = getelementptr inbounds %struct.r820t_config, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xtal, align 4
  %div1 = udiv i32 %6, 1000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %arrayidx.i.i = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 11
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %and.i = and i8 %8, -17
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and.i, ptr %tmp.i, align 1
  %call7.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 16, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp = icmp slt i32 %call7.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i7) #6
  %arrayidx.i.i8 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 21
  %10 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i8, align 1
  %and.i9 = and i8 %11, -13
  %12 = ptrtoint ptr %tmp.i7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %and.i9, ptr %tmp.i7, align 1
  %call7.i10 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 26, ptr noundef nonnull %tmp.i7, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i10)
  %cmp3 = icmp slt i32 %call7.i10, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i11) #6
  %arrayidx.i.i12 = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 13
  %13 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i12, align 1
  %and.i13 = and i8 %14, 31
  %conv6.i = or i8 %and.i13, -128
  %15 = ptrtoint ptr %tmp.i11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6.i, ptr %tmp.i11, align 1
  %call7.i14 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 18, ptr noundef nonnull %tmp.i11, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i14)
  %cmp7 = icmp slt i32 %call7.i14, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %while.body.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %if.end5
  %mul13 = shl nuw nsw i32 %div, 1
  %16 = add nsw i32 %mul13, -1770000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1770000, i32 %16)
  %17 = icmp ult i32 %16, 1770000
  br i1 %17, label %while.body.preheader.while.end31_crit_edge, label %if.end28

while.body.preheader.while.end31_crit_edge:       ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end31

while.body25.preheader:                           ; preds = %if.end28.4.while.body25.preheader_crit_edge, %if.end28.3.while.body25.preheader_crit_edge, %if.end28.2.while.body25.preheader_crit_edge, %if.end28.1.while.body25.preheader_crit_edge, %if.end28.while.body25.preheader_crit_edge
  %conv50.lcssa.ph = phi i32 [ 64, %if.end28.4.while.body25.preheader_crit_edge ], [ 32, %if.end28.3.while.body25.preheader_crit_edge ], [ 16, %if.end28.2.while.body25.preheader_crit_edge ], [ 8, %if.end28.1.while.body25.preheader_crit_edge ], [ 4, %if.end28.while.body25.preheader_crit_edge ]
  %mix_div.048.lcssa.ph = phi i8 [ 64, %if.end28.4.while.body25.preheader_crit_edge ], [ 32, %if.end28.3.while.body25.preheader_crit_edge ], [ 16, %if.end28.2.while.body25.preheader_crit_edge ], [ 8, %if.end28.1.while.body25.preheader_crit_edge ], [ 4, %if.end28.while.body25.preheader_crit_edge ]
  br label %while.body25

while.body25:                                     ; preds = %while.body25.while.body25_crit_edge, %while.body25.preheader
  %div_num.053 = phi i8 [ %inc, %while.body25.while.body25_crit_edge ], [ 0, %while.body25.preheader ]
  %div_buf.052 = phi i8 [ %18, %while.body25.while.body25_crit_edge ], [ %mix_div.048.lcssa.ph, %while.body25.preheader ]
  %18 = lshr i8 %div_buf.052, 1
  %inc = add nuw nsw i8 %div_num.053, 1
  %cmp23 = icmp ugt i8 %div_buf.052, 5
  br i1 %cmp23, label %while.body25.while.body25_crit_edge, label %while.body25.while.end31_crit_edge

while.body25.while.end31_crit_edge:               ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end31

while.body25.while.body25_crit_edge:              ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body25

if.end28:                                         ; preds = %while.body.preheader
  %mul13.1 = shl nuw nsw i32 %div, 2
  %19 = add nsw i32 %mul13.1, -1770000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1770000, i32 %19)
  %20 = icmp ult i32 %19, 1770000
  br i1 %20, label %if.end28.while.body25.preheader_crit_edge, label %if.end28.1

if.end28.while.body25.preheader_crit_edge:        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body25.preheader

if.end28.1:                                       ; preds = %if.end28
  %mul13.2 = shl nuw nsw i32 %div, 3
  %21 = add nsw i32 %mul13.2, -1770000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1770000, i32 %21)
  %22 = icmp ult i32 %21, 1770000
  br i1 %22, label %if.end28.1.while.body25.preheader_crit_edge, label %if.end28.2

if.end28.1.while.body25.preheader_crit_edge:      ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body25.preheader

if.end28.2:                                       ; preds = %if.end28.1
  %mul13.3 = shl nuw nsw i32 %div, 4
  %23 = add nsw i32 %mul13.3, -1770000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1770000, i32 %23)
  %24 = icmp ult i32 %23, 1770000
  br i1 %24, label %if.end28.2.while.body25.preheader_crit_edge, label %if.end28.3

if.end28.2.while.body25.preheader_crit_edge:      ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body25.preheader

if.end28.3:                                       ; preds = %if.end28.2
  %mul13.4 = shl nuw nsw i32 %div, 5
  %25 = add nsw i32 %mul13.4, -1770000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1770000, i32 %25)
  %26 = icmp ult i32 %25, 1770000
  br i1 %26, label %if.end28.3.while.body25.preheader_crit_edge, label %if.end28.4

if.end28.3.while.body25.preheader_crit_edge:      ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body25.preheader

if.end28.4:                                       ; preds = %if.end28.3
  %mul13.5 = shl nuw nsw i32 %div, 6
  %27 = add nsw i32 %mul13.5, -1770000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1770000, i32 %27)
  %28 = icmp ult i32 %27, 1770000
  br i1 %28, label %if.end28.4.while.body25.preheader_crit_edge, label %if.end28.4.while.end31_crit_edge

if.end28.4.while.end31_crit_edge:                 ; preds = %if.end28.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end31

if.end28.4.while.body25.preheader_crit_edge:      ; preds = %if.end28.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body25.preheader

while.end31:                                      ; preds = %if.end28.4.while.end31_crit_edge, %while.body25.while.end31_crit_edge, %while.body.preheader.while.end31_crit_edge
  %conv46 = phi i32 [ 2, %while.body.preheader.while.end31_crit_edge ], [ 128, %if.end28.4.while.end31_crit_edge ], [ %conv50.lcssa.ph, %while.body25.while.end31_crit_edge ]
  %div_num.1 = phi i8 [ 0, %while.body.preheader.while.end31_crit_edge ], [ 0, %if.end28.4.while.end31_crit_edge ], [ %inc, %while.body25.while.end31_crit_edge ]
  %call32 = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %while.end31.cleanup_crit_edge, label %if.end36

while.end31.cleanup_crit_edge:                    ; preds = %while.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %while.end31
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %31 = lshr i8 %30, 4
  %32 = and i8 %31, 3
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %if.end36.do.end58_crit_edge, label %do.end

if.end36.do.end58_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

do.end:                                           ; preds = %if.end36
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adap, align 4
  %tobool44.not = icmp eq ptr %37, null
  br i1 %tobool44.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %39, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %40 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_props, align 4
  %conv49 = zext i8 %41 to i32
  %conv51 = zext i8 %div_num.1 to i32
  %conv52 = zext i8 %32 to i32
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %35, i32 noundef %cond, i32 noundef %conv49, i32 noundef %conv46, i32 noundef %conv51, i32 noundef %conv52) #9
  br label %do.end58

do.end58:                                         ; preds = %cond.end, %if.end36.do.end58_crit_edge
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg, align 8
  %rafael_chip = getelementptr inbounds %struct.r820t_config, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %rafael_chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rafael_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp60.not = icmp eq i32 %45, 2
  br i1 %cmp60.not, label %do.end58.if.end77_crit_edge, label %if.then62

do.end58.if.end77_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then62:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp64 = icmp eq i8 %32, 3
  br i1 %cmp64, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i8 %div_num.1, -1
  br label %if.end77

if.else:                                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp70 = icmp ult i8 %32, 2
  %add = zext i1 %cmp70 to i8
  %spec.select = add i8 %div_num.1, %add
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then66, %do.end58.if.end77_crit_edge
  %div_num.2 = phi i8 [ %sub, %if.then66 ], [ %div_num.1, %do.end58.if.end77_crit_edge ], [ %spec.select, %if.else ]
  %shl79 = shl i8 %div_num.2, 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i15) #6
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i, align 1
  %and.i17 = and i8 %47, 31
  %conv6.i18 = or i8 %and.i17, %shl79
  %48 = ptrtoint ptr %tmp.i15 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv6.i18, ptr %tmp.i15, align 1
  %call7.i19 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 16, ptr noundef nonnull %tmp.i15, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i19)
  %cmp82 = icmp slt i32 %call7.i19, 0
  br i1 %cmp82, label %if.end77.cleanup_crit_edge, label %if.end85

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %if.end77
  %mul87 = mul nuw nsw i32 %conv46, %div
  %mul88 = shl nuw nsw i32 %div1, 1
  %div89 = udiv i32 %mul87, %mul88
  %conv92 = and i32 %div89, 255
  %mul93 = mul nuw i32 %conv92, %mul88
  %sub94 = sub i32 %mul87, %mul93
  %div95 = udiv i32 %6, 64000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub94, i32 %div95)
  %cmp96 = icmp ult i32 %sub94, %div95
  br i1 %cmp96, label %if.end85.if.end131_crit_edge, label %if.else99

if.end85.if.end131_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.else99:                                        ; preds = %if.end85
  %mul100 = mul nuw nsw i32 %div1, 127
  %div1011 = lshr i32 %mul100, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub94, i32 %div1011)
  %cmp102 = icmp ugt i32 %sub94, %div1011
  br i1 %cmp102, label %if.then104, label %if.else106

if.then104:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #8
  %inc105 = add nuw i32 %div89, 1
  br label %if.end131

if.else106:                                       ; preds = %if.else99
  %div1082 = lshr i32 %mul100, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub94, i32 %div1082)
  %cmp109 = icmp ugt i32 %sub94, %div1082
  call void @__sanitizer_cov_trace_cmp4(i32 %sub94, i32 %div1)
  %cmp112 = icmp ult i32 %sub94, %div1
  %or.cond5 = select i1 %cmp109, i1 %cmp112, i1 false
  br i1 %or.cond5, label %if.else106.if.end131_crit_edge, label %if.else117

if.else106.if.end131_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.else117:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_cmp4(i32 %sub94, i32 %div1)
  %cmp118 = icmp ugt i32 %sub94, %div1
  br i1 %cmp118, label %land.lhs.true120, label %if.else117.if.end131_crit_edge

if.else117.if.end131_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

land.lhs.true120:                                 ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #8
  %mul121 = mul nuw nsw i32 %div1, 129
  %div1224 = lshr i32 %mul121, 7
  %49 = call i32 @llvm.umax.i32(i32 %sub94, i32 %div1224)
  br label %if.end131

if.end131:                                        ; preds = %land.lhs.true120, %if.else117.if.end131_crit_edge, %if.else106.if.end131_crit_edge, %if.then104, %if.end85.if.end131_crit_edge
  %vco_fra.0 = phi i32 [ 0, %if.then104 ], [ %sub94, %if.else117.if.end131_crit_edge ], [ 0, %if.end85.if.end131_crit_edge ], [ %div1082, %if.else106.if.end131_crit_edge ], [ %49, %land.lhs.true120 ]
  %nint.0 = phi i32 [ %inc105, %if.then104 ], [ %div89, %if.else117.if.end131_crit_edge ], [ %div89, %if.end85.if.end131_crit_edge ], [ %div89, %if.else106.if.end131_crit_edge ], [ %div89, %land.lhs.true120 ]
  %50 = trunc i32 %nint.0 to i16
  %51 = and i16 %50, 255
  %div134.lhs.trunc = add nsw i16 %51, -13
  %div13442 = sdiv i16 %div134.lhs.trunc, 4
  %div134.sext43 = zext i16 %div13442 to i32
  %conv141 = shl i32 %nint.0, 6
  %conv143 = add i32 %conv141, 192
  %add145 = add i32 %conv143, %div134.sext43
  %conv146 = trunc i32 %add145 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i20) #6
  %52 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv146, ptr %tmp.i20, align 1
  %call.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 20, ptr noundef nonnull %tmp.i20, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp148 = icmp slt i32 %call.i, 0
  br i1 %cmp148, label %if.end131.cleanup_crit_edge, label %if.end151

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end151:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vco_fra.0)
  %tobool152.not = icmp eq i32 %vco_fra.0, 0
  %. = select i1 %tobool152.not, i8 8, i8 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i21) #6
  %53 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i12, align 1
  %and.i23 = and i8 %54, -9
  %conv6.i24 = or i8 %and.i23, %.
  %55 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv6.i24, ptr %tmp.i21, align 1
  %call7.i25 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 18, ptr noundef nonnull %tmp.i21, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i25)
  %cmp157 = icmp slt i32 %call7.i25, 0
  br i1 %cmp157, label %if.end151.cleanup_crit_edge, label %while.cond161.preheader

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond161.preheader:                          ; preds = %if.end151
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vco_fra.0)
  %cmp16254 = icmp ugt i32 %vco_fra.0, 1
  br i1 %cmp16254, label %while.cond161.preheader.while.body164_crit_edge, label %while.cond161.preheader.do.body191_crit_edge

while.cond161.preheader.do.body191_crit_edge:     ; preds = %while.cond161.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body191

while.cond161.preheader.while.body164_crit_edge:  ; preds = %while.cond161.preheader
  br label %while.body164

while.body164:                                    ; preds = %if.end186.while.body164_crit_edge, %while.cond161.preheader.while.body164_crit_edge
  %sdm.057 = phi i16 [ %sdm.1, %if.end186.while.body164_crit_edge ], [ 0, %while.cond161.preheader.while.body164_crit_edge ]
  %n_sdm.056 = phi i32 [ %shl188, %if.end186.while.body164_crit_edge ], [ 2, %while.cond161.preheader.while.body164_crit_edge ]
  %vco_fra.155 = phi i32 [ %vco_fra.2, %if.end186.while.body164_crit_edge ], [ %vco_fra.0, %while.cond161.preheader.while.body164_crit_edge ]
  %conv166 = and i32 %n_sdm.056, 65534
  %div167 = udiv i32 %mul88, %conv166
  call void @__sanitizer_cov_trace_cmp4(i32 %vco_fra.155, i32 %div167)
  %cmp168 = icmp ugt i32 %vco_fra.155, %div167
  br i1 %cmp168, label %if.then170, label %while.body164.if.end186_crit_edge

while.body164.if.end186_crit_edge:                ; preds = %while.body164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then170:                                       ; preds = %while.body164
  %div1733 = lshr exact i32 %conv166, 1
  %div174 = udiv i32 32768, %div1733
  %56 = trunc i32 %div174 to i16
  %conv176 = add i16 %sdm.057, %56
  %sub180 = sub i32 %vco_fra.155, %div167
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %conv166)
  %cmp182 = icmp ugt i32 %conv166, 32767
  br i1 %cmp182, label %if.then170.do.body191_crit_edge, label %if.then170.if.end186_crit_edge

if.then170.if.end186_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then170.do.body191_crit_edge:                  ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body191

if.end186:                                        ; preds = %if.then170.if.end186_crit_edge, %while.body164.if.end186_crit_edge
  %vco_fra.2 = phi i32 [ %sub180, %if.then170.if.end186_crit_edge ], [ %vco_fra.155, %while.body164.if.end186_crit_edge ]
  %sdm.1 = phi i16 [ %conv176, %if.then170.if.end186_crit_edge ], [ %sdm.057, %while.body164.if.end186_crit_edge ]
  %shl188 = shl nuw nsw i32 %conv166, 1
  %cmp162 = icmp ugt i32 %vco_fra.2, 1
  br i1 %cmp162, label %if.end186.while.body164_crit_edge, label %if.end186.do.body191_crit_edge

if.end186.do.body191_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body191

if.end186.while.body164_crit_edge:                ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body164

do.body191:                                       ; preds = %if.end186.do.body191_crit_edge, %if.then170.do.body191_crit_edge, %while.cond161.preheader.do.body191_crit_edge
  %sdm.2 = phi i16 [ 0, %while.cond161.preheader.do.body191_crit_edge ], [ %sdm.1, %if.end186.do.body191_crit_edge ], [ %conv176, %if.then170.do.body191_crit_edge ]
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool192.not = icmp eq i32 %57, 0
  br i1 %tobool192.not, label %do.body191.do.end223_crit_edge, label %do.end197

do.body191.do.end223_crit_edge:                   ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end223

do.end197:                                        ; preds = %do.body191
  %i2c_props199 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2
  %name200 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %name200 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name200, align 4
  %adap202 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %adap202 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adap202, align 4
  %tobool203.not = icmp eq ptr %61, null
  br i1 %tobool203.not, label %do.end197.cond.end209_crit_edge, label %cond.true204

do.end197.cond.end209_crit_edge:                  ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end209

cond.true204:                                     ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i26 = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %nr.i26 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr.i26, align 4
  br label %cond.end209

cond.end209:                                      ; preds = %cond.true204, %do.end197.cond.end209_crit_edge
  %cond210 = phi i32 [ %63, %cond.true204 ], [ -1, %do.end197.cond.end209_crit_edge ]
  %64 = ptrtoint ptr %i2c_props199 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %i2c_props199, align 4
  %conv213 = zext i8 %65 to i32
  %conv217 = zext i16 %sdm.2 to i32
  %call218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %59, i32 noundef %cond210, i32 noundef %conv213, i32 noundef %div, i32 noundef %div1, ptr noundef nonnull @.str.51, i32 noundef %conv217) #9
  br label %do.end223

do.end223:                                        ; preds = %cond.end209, %do.body191.do.end223_crit_edge
  %66 = lshr i16 %sdm.2, 8
  %conv226 = trunc i16 %66 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i27) #6
  %67 = ptrtoint ptr %tmp.i27 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv226, ptr %tmp.i27, align 1
  %call.i28 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 22, ptr noundef nonnull %tmp.i27, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp228 = icmp slt i32 %call.i28, 0
  br i1 %cmp228, label %do.end223.cleanup_crit_edge, label %if.end231

do.end223.cleanup_crit_edge:                      ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end231:                                        ; preds = %do.end223
  %conv234 = trunc i16 %sdm.2 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i29) #6
  %68 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv234, ptr %tmp.i29, align 1
  %call.i30 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 21, ptr noundef nonnull %tmp.i29, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp236 = icmp slt i32 %call.i30, 0
  br i1 %cmp236, label %if.end231.cleanup_crit_edge, label %for.body.preheader

if.end231.cleanup_crit_edge:                      ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end231
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %call244 = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %cmp245 = icmp slt i32 %call244, 0
  br i1 %cmp245, label %for.body.preheader.cleanup_crit_edge, label %if.end248

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end248:                                        ; preds = %for.body.preheader
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %0, align 1
  %71 = and i8 %70, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool252.not = icmp eq i8 %71, 0
  br i1 %tobool252.not, label %if.then256, label %if.end248.for.end_crit_edge

if.end248.for.end_crit_edge:                      ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then256:                                       ; preds = %if.end248
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i31) #6
  %72 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i12, align 1
  %and.i33 = and i8 %73, 31
  %conv6.i34 = or i8 %and.i33, 96
  %74 = ptrtoint ptr %tmp.i31 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv6.i34, ptr %tmp.i31, align 1
  %call7.i35 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 18, ptr noundef nonnull %tmp.i31, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i35)
  %cmp258 = icmp slt i32 %call7.i35, 0
  br i1 %cmp258, label %if.then256.cleanup_crit_edge, label %for.inc

if.then256.cleanup_crit_edge:                     ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.then256
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %call244.1 = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244.1)
  %cmp245.1 = icmp slt i32 %call244.1, 0
  br i1 %cmp245.1, label %for.inc.cleanup_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end248.for.end_crit_edge
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %0, align 1
  %77 = and i8 %76, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool267.not = icmp eq i8 %77, 0
  %has_lock = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 11
  br i1 %tobool267.not, label %if.then268, label %if.end269

if.then268:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %has_lock to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %has_lock, align 2
  br label %cleanup

if.end269:                                        ; preds = %for.end
  %79 = ptrtoint ptr %has_lock to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %has_lock, align 2
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool272.not = icmp eq i32 %80, 0
  br i1 %tobool272.not, label %if.end269.do.end299_crit_edge, label %do.end277

if.end269.do.end299_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end299

do.end277:                                        ; preds = %if.end269
  %i2c_props279 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2
  %name280 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 3
  %81 = ptrtoint ptr %name280 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name280, align 4
  %adap282 = getelementptr inbounds %struct.r820t_priv, ptr %priv, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %adap282 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adap282, align 4
  %tobool283.not = icmp eq ptr %84, null
  br i1 %tobool283.not, label %do.end277.cond.end289_crit_edge, label %cond.true284

do.end277.cond.end289_crit_edge:                  ; preds = %do.end277
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end289

cond.true284:                                     ; preds = %do.end277
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i36 = getelementptr inbounds %struct.i2c_adapter, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %nr.i36 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nr.i36, align 4
  br label %cond.end289

cond.end289:                                      ; preds = %cond.true284, %do.end277.cond.end289_crit_edge
  %cond290 = phi i32 [ %86, %cond.true284 ], [ -1, %do.end277.cond.end289_crit_edge ]
  %87 = ptrtoint ptr %i2c_props279 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %i2c_props279, align 4
  %conv293 = zext i8 %88 to i32
  %call294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %82, i32 noundef %cond290, i32 noundef %conv293, i32 noundef %div) #9
  br label %do.end299

do.end299:                                        ; preds = %cond.end289, %if.end269.do.end299_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i37) #6
  %89 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.i8, align 1
  %conv6.i40 = or i8 %90, 8
  %91 = ptrtoint ptr %tmp.i37 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv6.i40, ptr %tmp.i37, align 1
  %call7.i41 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 26, ptr noundef nonnull %tmp.i37, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i37) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end299, %if.then268, %for.inc.cleanup_crit_edge, %if.then256.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end231.cleanup_crit_edge, %do.end223.cleanup_crit_edge, %if.end151.cleanup_crit_edge, %if.end131.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %while.end31.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i41, %do.end299 ], [ 0, %if.then268 ], [ %call7.i, %entry.cleanup_crit_edge ], [ %call7.i10, %if.end.cleanup_crit_edge ], [ %call7.i14, %if.end5.cleanup_crit_edge ], [ %call32, %while.end31.cleanup_crit_edge ], [ %call7.i19, %if.end77.cleanup_crit_edge ], [ %call.i, %if.end131.cleanup_crit_edge ], [ %call7.i25, %if.end151.cleanup_crit_edge ], [ %call.i28, %do.end223.cleanup_crit_edge ], [ %call.i30, %if.end231.cleanup_crit_edge ], [ %call244, %for.body.preheader.cleanup_crit_edge ], [ %call7.i35, %if.then256.cleanup_crit_edge ], [ %call244.1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r820t_vga_adjust(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.r820t_priv, ptr %priv, i32 0, i32 4, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i.i, align 1
  %and.i = and i8 %1, -16
  %conv6.i = or i8 %and.i, 12
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv6.i, ptr %tmp.i, align 1
  %call7.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp2 = icmp slt i32 %call7.i, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.1 = and i8 %4, -16
  %conv6.i.1 = or i8 %and.i.1, 13
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv6.i.1, ptr %tmp.i, align 1
  %call7.i.1 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.1)
  %cmp2.1 = icmp slt i32 %call7.i.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %if.end.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %call4.1 = call fastcc i32 @r820t_multi_read(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %call4.1)
  %6 = icmp ugt i32 %call4.1, 160
  br i1 %6, label %if.end.1.cleanup_crit_edge, label %for.cond.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %if.end.1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.2 = and i8 %8, -16
  %conv6.i.2 = or i8 %and.i.2, 14
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6.i.2, ptr %tmp.i, align 1
  %call7.i.2 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.2)
  %cmp2.2 = icmp slt i32 %call7.i.2, 0
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %if.end.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %call4.2 = call fastcc i32 @r820t_multi_read(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %call4.2)
  %10 = icmp ugt i32 %call4.2, 160
  br i1 %10, label %if.end.2.cleanup_crit_edge, label %for.cond.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %if.end.2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv6.i.3 = or i8 %12, 15
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6.i.3, ptr %tmp.i, align 1
  %call7.i.3 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.3)
  %cmp2.3 = icmp slt i32 %call7.i.3, 0
  br i1 %cmp2.3, label %for.cond.2.cleanup_crit_edge, label %if.end.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %call4.3 = call fastcc i32 @r820t_multi_read(ptr noundef %priv)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %call4 = call fastcc i32 @r820t_multi_read(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %call4)
  %14 = icmp ugt i32 %call4, 160
  br i1 %14, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.3, %for.cond.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_compre_step(ptr noundef %priv, ptr nocapture noundef %iq, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %tmp.i74 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iq, align 2
  %gain_x = getelementptr inbounds %struct.r820t_sect_type, ptr %iq, i32 0, i32 1
  %2 = ptrtoint ptr %gain_x to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gain_x, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %reg)
  %cmp12 = icmp eq i8 %reg, 8
  %inc = zext i1 %cmp12 to i8
  %4 = and i8 %3, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %4)
  %cmp76 = icmp ult i8 %4, 9
  %5 = and i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %cmp977 = icmp ult i8 %5, 9
  %or.cond78 = select i1 %cmp76, i1 %cmp977, i1 false
  br i1 %or.cond78, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %not.cmp12 = xor i1 %cmp12, true
  %inc16 = zext i1 %not.cmp12 to i8
  %value37 = getelementptr inbounds %struct.r820t_sect_type, ptr %iq, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.then41.while.body_crit_edge, %while.body.lr.ph
  %tmp.sroa.0.080 = phi i8 [ %1, %while.body.lr.ph ], [ %tmp.sroa.0.1, %if.then41.while.body_crit_edge ]
  %tmp.sroa.9.079 = phi i8 [ %3, %while.body.lr.ph ], [ %tmp.sroa.9.1, %if.then41.while.body_crit_edge ]
  %tmp.sroa.9.1 = add i8 %tmp.sroa.9.079, %inc
  %tmp.sroa.0.1 = add i8 %tmp.sroa.0.080, %inc16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %tmp.sroa.9.1, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 8, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18 = icmp slt i32 %call.i, 0
  br i1 %cmp18, label %while.body.cleanup_crit_edge, label %if.end21

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i74) #6
  %7 = ptrtoint ptr %tmp.i74 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tmp.sroa.0.1, ptr %tmp.i74, align 1
  %call.i75 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext 9, ptr noundef nonnull %tmp.i74, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i74) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp24 = icmp slt i32 %call.i75, 0
  br i1 %cmp24, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call28 = call fastcc i32 @r820t_multi_read(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %conv35 = and i32 %call28, 65535
  %8 = ptrtoint ptr %value37 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %value37, align 2
  %conv38 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35, i32 %conv38)
  %cmp39.not = icmp ugt i32 %conv35, %conv38
  br i1 %cmp39.not, label %if.end32.cleanup_crit_edge, label %if.then41

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %if.end32
  %conv33 = trunc i32 %call28 to i16
  %10 = ptrtoint ptr %gain_x to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %tmp.sroa.9.1, ptr %gain_x, align 1
  %11 = ptrtoint ptr %iq to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %tmp.sroa.0.1, ptr %iq, align 2
  %12 = ptrtoint ptr %value37 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv33, ptr %value37, align 2
  %13 = and i8 %tmp.sroa.9.1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %13)
  %cmp = icmp ult i8 %13, 9
  %14 = and i8 %tmp.sroa.0.1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %14)
  %cmp9 = icmp ult i8 %14, 9
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then41.while.body_crit_edge, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41.while.body_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.then41.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then41.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call.i75, %if.end21.cleanup_crit_edge ], [ %call.i, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_iq_tree(ptr noundef %priv, ptr nocapture noundef writeonly %iq, i8 noundef zeroext %fix_val, i8 noundef zeroext %var_val, i8 noundef zeroext %fix_reg) unnamed_addr #0 align 64 {
entry:
  %tmp.i109 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %fix_reg)
  %cmp = icmp eq i8 %fix_reg, 8
  %. = select i1 %cmp, i8 9, i8 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0112 = phi i32 [ 0, %entry ], [ %inc68, %for.inc.for.body_crit_edge ]
  %var_val.addr.0111 = phi i8 [ %var_val, %entry ], [ %var_val.addr.1, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %fix_val, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext %fix_reg, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %if.end7

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i109) #6
  %1 = ptrtoint ptr %tmp.i109 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %var_val.addr.0111, ptr %tmp.i109, align 1
  %call.i110 = call fastcc i32 @r820t_write(ptr noundef %priv, i8 noundef zeroext %., ptr noundef nonnull %tmp.i109, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp9 = icmp slt i32 %call.i110, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = call fastcc i32 @r820t_multi_read(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %conv18 = trunc i32 %call13 to i16
  %arrayidx = getelementptr %struct.r820t_sect_type, ptr %iq, i32 %i.0112
  %value = getelementptr %struct.r820t_sect_type, ptr %iq, i32 %i.0112, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv18, ptr %value, align 2
  br i1 %cmp, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %gain_x = getelementptr %struct.r820t_sect_type, ptr %iq, i32 %i.0112, i32 1
  %3 = ptrtoint ptr %gain_x to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %fix_val, ptr %gain_x, align 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %var_val.addr.0111, ptr %arrayidx, align 2
  br label %if.end30

if.else25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %fix_val, ptr %arrayidx, align 2
  %gain_x29 = getelementptr %struct.r820t_sect_type, ptr %iq, i32 %i.0112, i32 1
  %6 = ptrtoint ptr %gain_x29 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %var_val.addr.0111, ptr %gain_x29, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then22
  %7 = zext i32 %i.0112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %i.0112, label %if.end30.for.inc_crit_edge [
    i32 0, label %if.then33
    i32 1, label %if.then37
  ]

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i8 %var_val.addr.0111, 1
  br label %for.inc

if.then37:                                        ; preds = %if.end30
  %conv38 = zext i8 %var_val.addr.0111 to i32
  %and = and i32 %conv38, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp39 = icmp ult i32 %and, 2
  br i1 %cmp39, label %if.then41, label %if.else61

if.then41:                                        ; preds = %if.then37
  %8 = trunc i32 %and to i8
  %conv44 = sub nuw nsw i8 2, %8
  %and46 = and i32 %conv38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool.not = icmp eq i32 %and46, 0
  br i1 %tobool.not, label %if.else54, label %if.then47

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %and49 = and i8 %var_val.addr.0111, -64
  %or108 = or i8 %conv44, %and49
  br label %for.inc

if.else54:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %9 = or i8 %var_val.addr.0111, %conv44
  %or58107 = or i8 %9, 32
  br label %for.inc

if.else61:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %sub63 = add i8 %var_val.addr.0111, -2
  br label %for.inc

for.inc:                                          ; preds = %if.else61, %if.else54, %if.then47, %if.then33, %if.end30.for.inc_crit_edge
  %var_val.addr.1 = phi i8 [ %inc, %if.then33 ], [ %or108, %if.then47 ], [ %or58107, %if.else54 ], [ %sub63, %if.else61 ], [ %var_val.addr.0111, %if.end30.for.inc_crit_edge ]
  %inc68 = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc68, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %for.body.cleanup_crit_edge ], [ %call.i110, %if.end7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_section(ptr noundef %priv, ptr nocapture noundef %iq_point) unnamed_addr #0 align 64 {
entry:
  %compare_iq = alloca [3 x %struct.r820t_sect_type], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %compare_iq) #6
  %0 = getelementptr inbounds %struct.r820t_sect_type, ptr %compare_iq, i32 0, i32 1
  %1 = getelementptr inbounds %struct.r820t_sect_type, ptr %compare_iq, i32 0, i32 2
  %2 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq, i32 0, i32 1
  %3 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq, i32 0, i32 2
  %6 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq, i32 0, i32 2, i32 1
  %7 = getelementptr inbounds [3 x %struct.r820t_sect_type], ptr %compare_iq, i32 0, i32 2, i32 2
  %gain_x = getelementptr inbounds %struct.r820t_sect_type, ptr %iq_point, i32 0, i32 1
  %8 = call ptr @memset(ptr %compare_iq, i32 255, i32 12)
  %9 = ptrtoint ptr %gain_x to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gain_x, align 1
  %11 = and i8 %10, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %and3 = and i8 %10, -33
  %add = add nuw nsw i8 %and3, 1
  %sub = add i8 %10, -1
  %storemerge = select i1 %tobool.not, i8 %add, i8 %sub
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %storemerge, ptr %0, align 1
  %13 = ptrtoint ptr %iq_point to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %iq_point, align 2
  %15 = ptrtoint ptr %compare_iq to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %compare_iq, align 4
  %call = call fastcc i32 @r820t_iq_tree(ptr noundef %priv, ptr noundef nonnull %compare_iq, i8 noundef zeroext %storemerge, i8 noundef zeroext %14, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end19

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %entry
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 2
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp4.i = icmp ugt i16 %17, %19
  br i1 %cmp4.i, label %do.body.i, label %if.end19.for.inc.i_crit_edge

if.end19.for.inc.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.body.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %compare_iq to i32
  call void @__asan_load1_noabort(i32 %20)
  %__tmp.sroa.0.0.copyload.i = load i8, ptr %compare_iq, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %__tmp.sroa.5.0.copyload.i = load i8, ptr %0, align 1
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %5, align 4
  store i32 %23, ptr %compare_iq, align 4
  store i8 %__tmp.sroa.0.0.copyload.i, ptr %5, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %__tmp.sroa.5.0.copyload.i, ptr %6, align 1
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %17, ptr %7, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i, %if.end19.for.inc.i_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 2
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp4.1.i = icmp ugt i16 %27, %29
  br i1 %cmp4.1.i, label %do.body.1.i, label %for.inc.i.r820t_compre_cor.exit_crit_edge

for.inc.i.r820t_compre_cor.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_compre_cor.exit

do.body.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %compare_iq to i32
  call void @__asan_load1_noabort(i32 %30)
  %__tmp.sroa.0.0.copyload.1.i = load i8, ptr %compare_iq, align 4
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %31)
  %__tmp.sroa.5.0.copyload.1.i = load i8, ptr %0, align 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %2, align 4
  store i32 %33, ptr %compare_iq, align 4
  store i8 %__tmp.sroa.0.0.copyload.1.i, ptr %2, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %__tmp.sroa.5.0.copyload.1.i, ptr %3, align 1
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %27, ptr %4, align 2
  br label %r820t_compre_cor.exit

r820t_compre_cor.exit:                            ; preds = %do.body.1.i, %for.inc.i.r820t_compre_cor.exit_crit_edge
  %36 = ptrtoint ptr %compare_iq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %compare_iq, align 4
  %compare_bet.sroa.0.sroa.12.0.extract.trunc = trunc i32 %37 to i16
  %38 = ptrtoint ptr %gain_x to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %gain_x, align 1
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %0, align 1
  %41 = ptrtoint ptr %iq_point to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %iq_point, align 2
  store i8 %42, ptr %compare_iq, align 4
  %call34 = call fastcc i32 @r820t_iq_tree(ptr noundef %priv, ptr noundef nonnull %compare_iq, i8 noundef zeroext %39, i8 noundef zeroext %42, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %r820t_compre_cor.exit.cleanup_crit_edge, label %if.end38

r820t_compre_cor.exit.cleanup_crit_edge:          ; preds = %r820t_compre_cor.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %r820t_compre_cor.exit
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 2
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %46)
  %cmp4.i103 = icmp ugt i16 %44, %46
  br i1 %cmp4.i103, label %do.body.i110, label %if.end38.for.inc.i113_crit_edge

if.end38.for.inc.i113_crit_edge:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i113

do.body.i110:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %compare_iq to i32
  call void @__asan_load1_noabort(i32 %47)
  %__tmp.sroa.0.0.copyload.i105 = load i8, ptr %compare_iq, align 4
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %48)
  %__tmp.sroa.5.0.copyload.i106 = load i8, ptr %0, align 1
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %5, align 4
  store i32 %50, ptr %compare_iq, align 4
  store i8 %__tmp.sroa.0.0.copyload.i105, ptr %5, align 4
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %__tmp.sroa.5.0.copyload.i106, ptr %6, align 1
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %44, ptr %7, align 2
  br label %for.inc.i113

for.inc.i113:                                     ; preds = %do.body.i110, %if.end38.for.inc.i113_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %1, align 2
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %56)
  %cmp4.1.i112 = icmp ugt i16 %54, %56
  br i1 %cmp4.1.i112, label %do.body.1.i120, label %for.inc.i113.r820t_compre_cor.exit121_crit_edge

for.inc.i113.r820t_compre_cor.exit121_crit_edge:  ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_compre_cor.exit121

do.body.1.i120:                                   ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %compare_iq to i32
  call void @__asan_load1_noabort(i32 %57)
  %__tmp.sroa.0.0.copyload.1.i115 = load i8, ptr %compare_iq, align 4
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %58)
  %__tmp.sroa.5.0.copyload.1.i116 = load i8, ptr %0, align 1
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %2, align 4
  store i32 %60, ptr %compare_iq, align 4
  store i8 %__tmp.sroa.0.0.copyload.1.i115, ptr %2, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %__tmp.sroa.5.0.copyload.1.i116, ptr %3, align 1
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %54, ptr %4, align 2
  br label %r820t_compre_cor.exit121

r820t_compre_cor.exit121:                         ; preds = %do.body.1.i120, %for.inc.i113.r820t_compre_cor.exit121_crit_edge
  %63 = ptrtoint ptr %compare_iq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %compare_iq, align 4
  %compare_bet.sroa.17.sroa.8.0.extract.trunc = trunc i32 %64 to i16
  %65 = ptrtoint ptr %gain_x to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %gain_x, align 1
  %67 = and i8 %66, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp45 = icmp eq i8 %67, 0
  %or = or i8 %66, 32
  %storemerge99.in = select i1 %cmp45, i8 %or, i8 %66
  %storemerge99 = add i8 %storemerge99.in, 1
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %storemerge99, ptr %0, align 1
  %69 = ptrtoint ptr %iq_point to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %iq_point, align 2
  %71 = ptrtoint ptr %compare_iq to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %compare_iq, align 4
  %call70 = call fastcc i32 @r820t_iq_tree(ptr noundef %priv, ptr noundef nonnull %compare_iq, i8 noundef zeroext %storemerge99, i8 noundef zeroext %70, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %r820t_compre_cor.exit121.cleanup_crit_edge, label %if.end74

r820t_compre_cor.exit121.cleanup_crit_edge:       ; preds = %r820t_compre_cor.exit121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end74:                                         ; preds = %r820t_compre_cor.exit121
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %1, align 2
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %75)
  %cmp4.i125 = icmp ugt i16 %73, %75
  br i1 %cmp4.i125, label %do.body.i132, label %if.end74.for.inc.i135_crit_edge

if.end74.for.inc.i135_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i135

do.body.i132:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %5, align 4
  %78 = ptrtoint ptr %compare_iq to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %compare_iq, align 4
  br label %for.inc.i135

for.inc.i135:                                     ; preds = %do.body.i132, %if.end74.for.inc.i135_crit_edge
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %1, align 2
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %82)
  %cmp4.1.i134 = icmp ugt i16 %80, %82
  br i1 %cmp4.1.i134, label %do.body.1.i142, label %for.inc.i135.r820t_compre_cor.exit143_crit_edge

for.inc.i135.r820t_compre_cor.exit143_crit_edge:  ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_compre_cor.exit143

do.body.1.i142:                                   ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %2, align 4
  %85 = ptrtoint ptr %compare_iq to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %compare_iq, align 4
  br label %r820t_compre_cor.exit143

r820t_compre_cor.exit143:                         ; preds = %do.body.1.i142, %for.inc.i135.r820t_compre_cor.exit143_crit_edge
  %86 = ptrtoint ptr %compare_iq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %compare_iq, align 4
  %compare_bet.sroa.26.10.extract.trunc = trunc i32 %87 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %compare_bet.sroa.0.sroa.12.0.extract.trunc, i16 %compare_bet.sroa.26.10.extract.trunc)
  %cmp4.i147 = icmp ugt i16 %compare_bet.sroa.0.sroa.12.0.extract.trunc, %compare_bet.sroa.26.10.extract.trunc
  %88 = call i16 @llvm.umin.i16(i16 %compare_bet.sroa.0.sroa.12.0.extract.trunc, i16 %compare_bet.sroa.26.10.extract.trunc)
  %spec.select190 = select i1 %cmp4.i147, i32 %87, i32 %37
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %compare_bet.sroa.17.sroa.8.0.extract.trunc)
  %cmp4.1.i156 = icmp ugt i16 %88, %compare_bet.sroa.17.sroa.8.0.extract.trunc
  %89 = call i16 @llvm.umin.i16(i16 %88, i16 %compare_bet.sroa.17.sroa.8.0.extract.trunc)
  %compare_bet.sroa.0.sroa.9.1.in.in = select i1 %cmp4.1.i156, i32 %64, i32 %spec.select190
  %compare_bet.sroa.0.sroa.0.1.in = and i32 %compare_bet.sroa.0.sroa.9.1.in.in, -16777216
  %compare_bet.sroa.0.sroa.12.0.insert.ext = zext i16 %89 to i32
  %compare_bet.sroa.0.sroa.9.0.insert.ext = and i32 %compare_bet.sroa.0.sroa.9.1.in.in, 16711680
  %compare_bet.sroa.0.sroa.9.0.insert.insert = or i32 %compare_bet.sroa.0.sroa.9.0.insert.ext, %compare_bet.sroa.0.sroa.12.0.insert.ext
  %compare_bet.sroa.0.sroa.0.0.insert.insert = or i32 %compare_bet.sroa.0.sroa.9.0.insert.insert, %compare_bet.sroa.0.sroa.0.1.in
  %90 = ptrtoint ptr %iq_point to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %compare_bet.sroa.0.sroa.0.0.insert.insert, ptr %iq_point, align 2
  br label %cleanup

cleanup:                                          ; preds = %r820t_compre_cor.exit143, %r820t_compre_cor.exit121.cleanup_crit_edge, %r820t_compre_cor.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %r820t_compre_cor.exit143 ], [ %call, %entry.cleanup_crit_edge ], [ %call34, %r820t_compre_cor.exit.cleanup_crit_edge ], [ %call70, %r820t_compre_cor.exit121.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %compare_iq) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_multi_read(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !205
  %1 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !205
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %call = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  %call.1 = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %call.2 = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %call.3 = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %call.4 = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp1.4 = icmp slt i32 %call.4, 0
  br i1 %cmp1.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %call.5 = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp1.5 = icmp slt i32 %call.5, 0
  br i1 %cmp1.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %4 to i32
  %conv.1 = zext i8 %6 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %conv.2 = zext i8 %8 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %conv.3 = zext i8 %10 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %conv.4 = zext i8 %12 to i32
  %add.4 = add nuw nsw i32 %add.3, %conv.4
  %13 = call i8 @llvm.umax.i8(i8 %6, i8 %4)
  %14 = call i8 @llvm.umax.i8(i8 %8, i8 %13)
  %15 = call i8 @llvm.umax.i8(i8 %10, i8 %14)
  %16 = call i8 @llvm.umax.i8(i8 %12, i8 %15)
  %17 = call i8 @llvm.umin.i8(i8 %6, i8 %4)
  %18 = call i8 @llvm.umin.i8(i8 %8, i8 %17)
  %19 = call i8 @llvm.umin.i8(i8 %10, i8 %18)
  %20 = call i8 @llvm.umin.i8(i8 %12, i8 %19)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  %conv.5 = zext i8 %22 to i32
  %add.5 = add nuw nsw i32 %add.4, %conv.5
  %23 = call i8 @llvm.umin.i8(i8 %22, i8 %20)
  %24 = call i8 @llvm.umax.i8(i8 %22, i8 %16)
  %conv21 = zext i8 %24 to i32
  %conv22 = zext i8 %23 to i32
  %25 = add nuw nsw i32 %conv22, %conv21
  %sub23 = sub nsw i32 %add.5, %25
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub23, %if.end.5 ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %if.end.cleanup_crit_edge ], [ %call.2, %if.end.1.cleanup_crit_edge ], [ %call.3, %if.end.2.cleanup_crit_edge ], [ %call.4, %if.end.3.cleanup_crit_edge ], [ %call.5, %if.end.4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_set_freq(ptr nocapture noundef readonly %fe, i32 noundef %freq, i32 noundef %bw, i32 noundef %type, i64 noundef %std, i32 noundef %delsys) unnamed_addr #0 align 64 {
entry:
  %tmp.i102.i = alloca i8, align 1
  %tmp.i98.i = alloca i8, align 1
  %tmp.i93.i = alloca i8, align 1
  %tmp.i88.i = alloca i8, align 1
  %tmp.i83.i = alloca i8, align 1
  %tmp.i79.i = alloca i8, align 1
  %tmp.i74.i = alloca i8, align 1
  %tmp.i69.i = alloca i8, align 1
  %tmp.i64.i = alloca i8, align 1
  %tmp.i59.i = alloca i8, align 1
  %tmp.i54.i = alloca i8, align 1
  %tmp.i50.i = alloca i8, align 1
  %tmp.i46.i = alloca i8, align 1
  %tmp.i42.i = alloca i8, align 1
  %tmp.i36.i = alloca i8, align 1
  %tmp.i30.i = alloca i8, align 1
  %tmp.i24.i = alloca i8, align 1
  %tmp.i20.i = alloca i8, align 1
  %tmp.i14.i = alloca i8, align 1
  %tmp.i12.i = alloca i8, align 1
  %tmp.i11.i = alloca i8, align 1
  %tmp.i6.i = alloca i8, align 1
  %tmp.i1.i = alloca i8, align 1
  %tmp.i.i142 = alloca i8, align 1
  %tmp.i433.i = alloca i8, align 1
  %tmp.i427.i = alloca i8, align 1
  %tmp.i423.i = alloca i8, align 1
  %tmp.i419.i = alloca i8, align 1
  %tmp.i413.i = alloca i8, align 1
  %tmp.i408.i = alloca i8, align 1
  %tmp.i404.i = alloca i8, align 1
  %tmp.i398.i = alloca i8, align 1
  %tmp.i392.i = alloca i8, align 1
  %tmp.i388.i = alloca i8, align 1
  %tmp.i384.i = alloca i8, align 1
  %tmp.i379.i = alloca i8, align 1
  %tmp.i375.i = alloca i8, align 1
  %tmp.i370.i = alloca i8, align 1
  %tmp.i364.i = alloca i8, align 1
  %tmp.i359.i = alloca i8, align 1
  %tmp.i354.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %data.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end12.thread, label %do.end

do.end12.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data.i) #6
  %3 = getelementptr inbounds [5 x i8], ptr %data.i, i32 0, i32 4
  %4 = call ptr @memset(ptr %data.i, i32 255, i32 5)
  br label %do.end12.i

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %do.end.do.end12_crit_edge, label %cond.true

do.end.do.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  br label %do.end12

do.end12:                                         ; preds = %cond.true, %do.end.do.end12_crit_edge
  %cond = phi i32 [ %10, %cond.true ], [ -1, %do.end.do.end12_crit_edge ]
  %11 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %12 to i32
  %div = udiv i32 %freq, 1000
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %6, i32 noundef %cond, i32 noundef %conv, i32 noundef %div, i32 noundef %bw) #9
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data.i) #6
  %13 = getelementptr inbounds [5 x i8], ptr %data.i, i32 0, i32 4
  %14 = call ptr @memset(ptr %data.i, i32 255, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %do.end12.do.end12.i_crit_edge, label %do.end.i

do.end12.do.end12.i_crit_edge:                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end.i:                                         ; preds = %do.end12
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap, align 4
  %tobool4.not.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %20, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %21 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_props, align 4
  %conv.i = zext i8 %22 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %16, i32 noundef %cond.i, i32 noundef %conv.i) #9
  br label %do.end12.i

do.end12.i:                                       ; preds = %cond.end.i, %do.end12.do.end12.i_crit_edge, %do.end12.thread
  %23 = phi ptr [ %3, %do.end12.thread ], [ %13, %cond.end.i ], [ %13, %do.end12.do.end12.i_crit_edge ]
  %24 = zext i32 %delsys to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %delsys, label %if.else22.i [
    i32 8, label %do.end12.i.if.end35.i_crit_edge
    i32 1, label %if.then17.i
    i32 18, label %if.then21.i
  ]

do.end12.i.if.end35.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then17.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then21.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.else22.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %bw)
  %cmp23.i = icmp ult i32 %bw, 7
  br i1 %cmp23.i, label %if.else22.i.if.end35.i_crit_edge, label %if.else26.i

if.else22.i.if.end35.i_crit_edge:                 ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.else26.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %bw)
  %cmp27.i = icmp eq i32 %bw, 7
  %..i = select i1 %cmp27.i, i32 63000000, i32 68500000
  %.353.i = select i1 %cmp27.i, i8 42, i8 11
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else26.i, %if.else22.i.if.end35.i_crit_edge, %if.then21.i, %if.then17.i, %do.end12.i.if.end35.i_crit_edge
  %if_khz.0.i = phi i32 [ 5070000, %if.then17.i ], [ 4063000, %if.then21.i ], [ 4063000, %do.end12.i.if.end35.i_crit_edge ], [ 3570000, %if.else22.i.if.end35.i_crit_edge ], [ 4570000, %if.else26.i ]
  %filt_cal_lo.0.i = phi i32 [ 73500000, %if.then17.i ], [ 55000000, %if.then21.i ], [ 59000000, %do.end12.i.if.end35.i_crit_edge ], [ 56000000, %if.else22.i.if.end35.i_crit_edge ], [ %..i, %if.else26.i ]
  %hp_cor.0.i = phi i8 [ 11, %if.then17.i ], [ 106, %if.then21.i ], [ 106, %do.end12.i.if.end35.i_crit_edge ], [ 107, %if.else22.i.if.end35.i_crit_edge ], [ %.353.i, %if.else26.i ]
  %ext_enable.0.i = phi i8 [ 64, %if.then17.i ], [ 64, %if.then21.i ], [ 64, %do.end12.i.if.end35.i_crit_edge ], [ 96, %if.else22.i.if.end35.i_crit_edge ], [ 96, %if.else26.i ]
  %flt_ext_widest.0.i = phi i8 [ 0, %if.then17.i ], [ -128, %if.then21.i ], [ -128, %do.end12.i.if.end35.i_crit_edge ], [ 0, %if.else22.i.if.end35.i_crit_edge ], [ 0, %if.else26.i ]
  %regs.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %regs.i, ptr @r820t_init_array, i32 27)
  %imr_done.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %imr_done.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %imr_done.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool36.not.i = icmp eq i8 %27, 0
  br i1 %tobool36.not.i, label %if.end35.i.if.end40.i_crit_edge, label %if.then37.i

if.end35.i.if.end40.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %xtal_cap_sel.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %xtal_cap_sel.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xtal_cap_sel.i, align 8
  %.tr.i = trunc i32 %29 to i8
  %30 = shl i8 %.tr.i, 1
  %conv38.i = and i8 %30, 14
  %phi.bo.i = or i8 %conv38.i, 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end40.i_crit_edge
  %val.0.i = phi i8 [ %phi.bo.i, %if.then37.i ], [ 0, %if.end35.i.if.end40.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %arrayidx.i.i.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 7
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i.i, align 1
  %and.i.i = and i8 %32, -16
  %conv6.i.i = or i8 %and.i.i, %val.0.i
  %33 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv6.i.i, ptr %tmp.i.i, align 1
  %call7.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp42.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp42.i, label %if.end40.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end45.i

if.end40.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end45.i:                                       ; preds = %if.end40.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i354.i) #6
  %arrayidx.i.i355.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 14
  %34 = ptrtoint ptr %arrayidx.i.i355.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i355.i, align 1
  %and.i356.i = and i8 %35, -64
  %conv6.i357.i = or i8 %and.i356.i, 49
  %36 = ptrtoint ptr %tmp.i354.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv6.i357.i, ptr %tmp.i354.i, align 1
  %call7.i358.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 19, ptr noundef nonnull %tmp.i354.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i354.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i358.i)
  %cmp47.i = icmp slt i32 %call7.i358.i, 0
  br i1 %cmp47.i, label %if.end45.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end50.i

if.end45.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end50.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp51.not.i = icmp eq i32 %type, 2
  br i1 %cmp51.not.i, label %if.end50.i.if.end59.i_crit_edge, label %if.then53.i

if.end50.i.if.end59.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i359.i) #6
  %arrayidx.i.i360.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 24
  %37 = ptrtoint ptr %arrayidx.i.i360.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i360.i, align 1
  %and.i361.i = and i8 %38, -57
  %39 = ptrtoint ptr %tmp.i359.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %and.i361.i, ptr %tmp.i359.i, align 1
  %call7.i362.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 29, ptr noundef nonnull %tmp.i359.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i359.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i362.i)
  %cmp55.i = icmp slt i32 %call7.i362.i, 0
  br i1 %cmp55.i, label %if.then53.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end58.i

if.then53.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end58.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end58.i, %if.end50.i.if.end59.i_crit_edge
  %int_freq.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %int_freq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %if_khz.0.i, ptr %int_freq.i, align 8
  %type60.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 15
  %41 = ptrtoint ptr %type60.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type60.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %type)
  %cmp61.not.i = icmp eq i32 %42, %type
  br i1 %cmp61.not.i, label %if.else64.i, label %if.end59.i.do.body88.i_crit_edge

if.end59.i.do.body88.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body88.i

if.else64.i:                                      ; preds = %if.end59.i
  %43 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %type, label %if.else64.i.if.end182.i_crit_edge [
    i32 2, label %land.lhs.true.i
    i32 3, label %land.lhs.true74.i
  ]

if.else64.i.if.end182.i_crit_edge:                ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182.i

land.lhs.true.i:                                  ; preds = %if.else64.i
  %std67.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 16
  %44 = ptrtoint ptr %std67.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %std67.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %std)
  %cmp68.not.i = icmp eq i64 %45, %std
  br i1 %cmp68.not.i, label %land.lhs.true.i.if.end182.i_crit_edge, label %land.lhs.true.i.do.body88.i_crit_edge

land.lhs.true.i.do.body88.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body88.i

land.lhs.true.i.if.end182.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182.i

land.lhs.true74.i:                                ; preds = %if.else64.i
  %delsys75.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 14
  %46 = ptrtoint ptr %delsys75.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %delsys75.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %delsys)
  %cmp76.not.i = icmp eq i32 %47, %delsys
  br i1 %cmp76.not.i, label %lor.lhs.false.i, label %land.lhs.true74.i.do.body88.i_crit_edge

land.lhs.true74.i.do.body88.i_crit_edge:          ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body88.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true74.i
  %bw78.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 17
  %48 = ptrtoint ptr %bw78.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bw78.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %bw)
  %cmp79.not.i = icmp eq i32 %49, %bw
  br i1 %cmp79.not.i, label %lor.lhs.false.i.if.end182.i_crit_edge, label %lor.lhs.false.i.do.body88.i_crit_edge

lor.lhs.false.i.do.body88.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body88.i

lor.lhs.false.i.if.end182.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182.i

do.body88.i:                                      ; preds = %lor.lhs.false.i.do.body88.i_crit_edge, %land.lhs.true74.i.do.body88.i_crit_edge, %land.lhs.true.i.do.body88.i_crit_edge, %if.end59.i.do.body88.i_crit_edge
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool89.not.i = icmp eq i32 %50, 0
  br i1 %tobool89.not.i, label %do.body88.i.do.end116.i_crit_edge, label %do.end94.i

do.body88.i.do.end116.i_crit_edge:                ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end116.i

do.end94.i:                                       ; preds = %do.body88.i
  %i2c_props96.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name97.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %name97.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name97.i, align 4
  %adap99.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %adap99.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adap99.i, align 4
  %tobool100.not.i = icmp eq ptr %54, null
  br i1 %tobool100.not.i, label %do.end94.i.cond.end106.i_crit_edge, label %cond.true101.i

do.end94.i.cond.end106.i_crit_edge:               ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end106.i

cond.true101.i:                                   ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i363.i = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %nr.i363.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr.i363.i, align 4
  br label %cond.end106.i

cond.end106.i:                                    ; preds = %cond.true101.i, %do.end94.i.cond.end106.i_crit_edge
  %cond107.i = phi i32 [ %56, %cond.true101.i ], [ -1, %do.end94.i.cond.end106.i_crit_edge ]
  %57 = ptrtoint ptr %i2c_props96.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %i2c_props96.i, align 4
  %conv110.i = zext i8 %58 to i32
  %call111.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %52, i32 noundef %cond107.i, i32 noundef %conv110.i) #9
  br label %do.end116.i

do.end116.i:                                      ; preds = %cond.end106.i, %do.body88.i.do.end116.i_crit_edge
  %arrayidx.i.i365.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 6
  %and514.i367.i = and i8 %hp_cor.0.i, 96
  %arrayidx.i.i371.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 10
  %arrayidx.i.i376.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 11
  %has_lock.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 11
  %fil_cal_code.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end116.i
  %cmp117.i = phi i1 [ true, %do.end116.i ], [ false, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i364.i) #6
  %59 = ptrtoint ptr %arrayidx.i.i365.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i365.i, align 1
  %and.i366.i = and i8 %60, -97
  %conv6.i368.i = or i8 %and.i366.i, %and514.i367.i
  %61 = ptrtoint ptr %tmp.i364.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv6.i368.i, ptr %tmp.i364.i, align 1
  %call7.i369.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 11, ptr noundef nonnull %tmp.i364.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i364.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i369.i)
  %cmp120.i = icmp slt i32 %call7.i369.i, 0
  br i1 %cmp120.i, label %for.body.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end123.i

for.body.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end123.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i370.i) #6
  %62 = ptrtoint ptr %arrayidx.i.i371.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i371.i, align 1
  %conv6.i373.i = or i8 %63, 4
  %64 = ptrtoint ptr %tmp.i370.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv6.i373.i, ptr %tmp.i370.i, align 1
  %call7.i374.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 15, ptr noundef nonnull %tmp.i370.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i370.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i374.i)
  %cmp125.i = icmp slt i32 %call7.i374.i, 0
  br i1 %cmp125.i, label %if.end123.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end128.i

if.end123.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end128.i:                                      ; preds = %if.end123.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i375.i) #6
  %65 = ptrtoint ptr %arrayidx.i.i376.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i376.i, align 1
  %and.i377.i = and i8 %66, -4
  %67 = ptrtoint ptr %tmp.i375.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %and.i377.i, ptr %tmp.i375.i, align 1
  %call7.i378.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 16, ptr noundef nonnull %tmp.i375.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i375.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i378.i)
  %cmp130.i = icmp slt i32 %call7.i378.i, 0
  br i1 %cmp130.i, label %if.end128.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end133.i

if.end128.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end133.i:                                      ; preds = %if.end128.i
  %call135.i = call fastcc i32 @r820t_set_pll(ptr noundef %1, i32 noundef %filt_cal_lo.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i)
  %cmp136.i = icmp slt i32 %call135.i, 0
  br i1 %cmp136.i, label %if.end133.i.r820t_set_tv_standard.exit.thread_crit_edge, label %lor.lhs.false138.i

if.end133.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

lor.lhs.false138.i:                               ; preds = %if.end133.i
  %68 = ptrtoint ptr %has_lock.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %has_lock.i, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool139.not.i = icmp eq i8 %69, 0
  br i1 %tobool139.not.i, label %lor.lhs.false138.i.if.end16_crit_edge, label %if.end141.i

lor.lhs.false138.i.if.end16_crit_edge:            ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end141.i:                                      ; preds = %lor.lhs.false138.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i379.i) #6
  %70 = ptrtoint ptr %arrayidx.i.i365.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i365.i, align 1
  %conv6.i382.i = or i8 %71, 16
  %72 = ptrtoint ptr %tmp.i379.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv6.i382.i, ptr %tmp.i379.i, align 1
  %call7.i383.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 11, ptr noundef nonnull %tmp.i379.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i379.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i383.i)
  %cmp143.i = icmp slt i32 %call7.i383.i, 0
  br i1 %cmp143.i, label %if.end141.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end146.i

if.end141.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end146.i:                                      ; preds = %if.end141.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i384.i) #6
  %73 = ptrtoint ptr %arrayidx.i.i365.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i365.i, align 1
  %and.i386.i = and i8 %74, -17
  %75 = ptrtoint ptr %tmp.i384.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %and.i386.i, ptr %tmp.i384.i, align 1
  %call7.i387.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 11, ptr noundef nonnull %tmp.i384.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i384.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i387.i)
  %cmp148.i = icmp slt i32 %call7.i387.i, 0
  br i1 %cmp148.i, label %if.end146.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end151.i

if.end146.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end151.i:                                      ; preds = %if.end146.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i388.i) #6
  %76 = ptrtoint ptr %arrayidx.i.i371.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i371.i, align 1
  %and.i390.i = and i8 %77, -5
  %78 = ptrtoint ptr %tmp.i388.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %and.i390.i, ptr %tmp.i388.i, align 1
  %call7.i391.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 15, ptr noundef nonnull %tmp.i388.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i388.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i391.i)
  %cmp153.i = icmp slt i32 %call7.i391.i, 0
  br i1 %cmp153.i, label %if.end151.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end156.i

if.end151.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end156.i:                                      ; preds = %if.end151.i
  %call158.i = call fastcc i32 @r820t_read(ptr noundef %1, ptr noundef nonnull %data.i, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i)
  %cmp159.i = icmp slt i32 %call158.i, 0
  br i1 %cmp159.i, label %if.end156.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end162.i

if.end156.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end162.i:                                      ; preds = %if.end156.i
  %79 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %23, align 1
  %81 = and i8 %80, 15
  %82 = ptrtoint ptr %fil_cal_code.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %fil_cal_code.i, align 4
  %trunc.i = trunc i8 %80 to i4
  %83 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.95)
  switch i4 %trunc.i, label %if.end162.i.for.end.i_crit_edge [
    i4 0, label %if.end162.i.for.inc.i_crit_edge
    i4 -1, label %if.end162.i.for.inc.i_crit_edge188
  ]

if.end162.i.for.inc.i_crit_edge188:               ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end162.i.for.inc.i_crit_edge:                  ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end162.i.for.end.i_crit_edge:                  ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end162.i.for.inc.i_crit_edge, %if.end162.i.for.inc.i_crit_edge188
  br i1 %cmp117.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end162.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %81)
  %cmp177.i = icmp eq i8 %81, 15
  br i1 %cmp177.i, label %if.then179.i, label %for.end.i.if.end182.i_crit_edge

for.end.i.if.end182.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182.i

if.then179.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %fil_cal_code.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %fil_cal_code.i, align 4
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then179.i, %for.end.i.if.end182.i_crit_edge, %lor.lhs.false.i.if.end182.i_crit_edge, %land.lhs.true.i.if.end182.i_crit_edge, %if.else64.i.if.end182.i_crit_edge
  %fil_cal_code184.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 9
  %85 = ptrtoint ptr %fil_cal_code184.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %fil_cal_code184.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i392.i) #6
  %arrayidx.i.i393.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 5
  %87 = ptrtoint ptr %arrayidx.i.i393.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i.i393.i, align 1
  %and.i394.i = and i8 %88, -32
  %89 = and i8 %86, 15
  %and514.i395.i = or i8 %89, %and.i394.i
  %conv6.i396.i = or i8 %and514.i395.i, 16
  %90 = ptrtoint ptr %tmp.i392.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv6.i396.i, ptr %tmp.i392.i, align 1
  %call7.i397.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 10, ptr noundef nonnull %tmp.i392.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i392.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i397.i)
  %cmp189.i = icmp slt i32 %call7.i397.i, 0
  br i1 %cmp189.i, label %if.end182.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end192.i

if.end182.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end192.i:                                      ; preds = %if.end182.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i398.i) #6
  %arrayidx.i.i399.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 6
  %91 = ptrtoint ptr %arrayidx.i.i399.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i.i399.i, align 1
  %and.i400.i = and i8 %92, 16
  %conv6.i402.i = or i8 %and.i400.i, %hp_cor.0.i
  %93 = ptrtoint ptr %tmp.i398.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv6.i402.i, ptr %tmp.i398.i, align 1
  %call7.i403.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 11, ptr noundef nonnull %tmp.i398.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i398.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i403.i)
  %cmp194.i = icmp slt i32 %call7.i403.i, 0
  br i1 %cmp194.i, label %if.end192.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end197.i

if.end192.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end197.i:                                      ; preds = %if.end192.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i404.i) #6
  %arrayidx.i.i405.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 2
  %94 = ptrtoint ptr %arrayidx.i.i405.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i.i405.i, align 1
  %and.i406.i = and i8 %95, 127
  %96 = ptrtoint ptr %tmp.i404.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %and.i406.i, ptr %tmp.i404.i, align 1
  %call7.i407.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 7, ptr noundef nonnull %tmp.i404.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i404.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i407.i)
  %cmp199.i = icmp slt i32 %call7.i407.i, 0
  br i1 %cmp199.i, label %if.end197.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end202.i

if.end197.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end202.i:                                      ; preds = %if.end197.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i408.i) #6
  %arrayidx.i.i409.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %arrayidx.i.i409.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i.i409.i, align 1
  %and.i410.i = and i8 %98, -49
  %conv6.i411.i = or i8 %and.i410.i, 16
  %99 = ptrtoint ptr %tmp.i408.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv6.i411.i, ptr %tmp.i408.i, align 1
  %call7.i412.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %tmp.i408.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i408.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i412.i)
  %cmp204.i = icmp slt i32 %call7.i412.i, 0
  br i1 %cmp204.i, label %if.end202.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end207.i

if.end202.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end207.i:                                      ; preds = %if.end202.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i413.i) #6
  %arrayidx.i.i414.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 25
  %100 = ptrtoint ptr %arrayidx.i.i414.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i414.i, align 1
  %and.i415.i = and i8 %101, -97
  %conv6.i417.i = or i8 %and.i415.i, %ext_enable.0.i
  %102 = ptrtoint ptr %tmp.i413.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv6.i417.i, ptr %tmp.i413.i, align 1
  %call7.i418.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 30, ptr noundef nonnull %tmp.i413.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i413.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i418.i)
  %cmp209.i = icmp slt i32 %call7.i418.i, 0
  br i1 %cmp209.i, label %if.end207.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end212.i

if.end207.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end212.i:                                      ; preds = %if.end207.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i419.i) #6
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %regs.i, align 1
  %and.i421.i = and i8 %104, 127
  %105 = ptrtoint ptr %tmp.i419.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %and.i421.i, ptr %tmp.i419.i, align 1
  %call7.i422.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull %tmp.i419.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i419.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i422.i)
  %cmp214.i = icmp slt i32 %call7.i422.i, 0
  br i1 %cmp214.i, label %if.end212.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end217.i

if.end212.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end217.i:                                      ; preds = %if.end212.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i423.i) #6
  %arrayidx.i.i424.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 26
  %106 = ptrtoint ptr %arrayidx.i.i424.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.i424.i, align 1
  %and.i425.i = and i8 %107, 127
  %108 = ptrtoint ptr %tmp.i423.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %and.i425.i, ptr %tmp.i423.i, align 1
  %call7.i426.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 31, ptr noundef nonnull %tmp.i423.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i423.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i426.i)
  %cmp219.i = icmp slt i32 %call7.i426.i, 0
  br i1 %cmp219.i, label %if.end217.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end222.i

if.end217.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end222.i:                                      ; preds = %if.end217.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i427.i) #6
  %arrayidx.i.i428.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 10
  %109 = ptrtoint ptr %arrayidx.i.i428.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i.i428.i, align 1
  %and.i429.i = and i8 %110, 127
  %conv6.i431.i = or i8 %and.i429.i, %flt_ext_widest.0.i
  %111 = ptrtoint ptr %tmp.i427.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv6.i431.i, ptr %tmp.i427.i, align 1
  %call7.i432.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 15, ptr noundef nonnull %tmp.i427.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i427.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i432.i)
  %cmp224.i = icmp slt i32 %call7.i432.i, 0
  br i1 %cmp224.i, label %if.end222.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end227.i

if.end222.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end227.i:                                      ; preds = %if.end222.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i433.i) #6
  %arrayidx.i.i434.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 20
  %112 = ptrtoint ptr %arrayidx.i.i434.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i.i434.i, align 1
  %conv6.i436.i = or i8 %113, 96
  %114 = ptrtoint ptr %tmp.i433.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv6.i436.i, ptr %tmp.i433.i, align 1
  %call7.i437.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 25, ptr noundef nonnull %tmp.i433.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i433.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i437.i)
  %cmp229.i = icmp slt i32 %call7.i437.i, 0
  br i1 %cmp229.i, label %if.end227.i.r820t_set_tv_standard.exit.thread_crit_edge, label %if.end232.i

if.end227.i.r820t_set_tv_standard.exit.thread_crit_edge: ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r820t_set_tv_standard.exit.thread

if.end232.i:                                      ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #8
  %delsys233.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 14
  %115 = ptrtoint ptr %delsys233.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %delsys, ptr %delsys233.i, align 4
  %116 = ptrtoint ptr %type60.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %type, ptr %type60.i, align 8
  %std235.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 16
  %117 = ptrtoint ptr %std235.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %std, ptr %std235.i, align 8
  %bw236.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 17
  %118 = ptrtoint ptr %bw236.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %bw, ptr %bw236.i, align 8
  br label %if.end16

r820t_set_tv_standard.exit.thread:                ; preds = %if.end227.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end222.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end217.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end212.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end207.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end202.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end197.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end192.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end182.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end156.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end151.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end146.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end141.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end133.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end128.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end123.i.r820t_set_tv_standard.exit.thread_crit_edge, %for.body.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.then53.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end45.i.r820t_set_tv_standard.exit.thread_crit_edge, %if.end40.i.r820t_set_tv_standard.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call7.i437.i, %if.end227.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i432.i, %if.end222.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i426.i, %if.end217.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i422.i, %if.end212.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i418.i, %if.end207.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i412.i, %if.end202.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i407.i, %if.end197.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i403.i, %if.end192.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i397.i, %if.end182.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i362.i, %if.then53.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i358.i, %if.end45.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i.i, %if.end40.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call158.i, %if.end156.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i391.i, %if.end151.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i387.i, %if.end146.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i383.i, %if.end141.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call135.i, %if.end133.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i378.i, %if.end128.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i374.i, %if.end123.i.r820t_set_tv_standard.exit.thread_crit_edge ], [ %call7.i369.i, %for.body.i.r820t_set_tv_standard.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data.i) #6
  br label %do.body73

if.end16:                                         ; preds = %if.end232.i, %lor.lhs.false138.i.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %std)
  %cmp19 = icmp eq i64 %std, 8388608
  %or.cond = and i1 %cmp51.not.i, %cmp19
  %119 = ptrtoint ptr %int_freq.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %int_freq.i, align 8
  %121 = sub i32 0, %120
  %lo_freq.0.p = select i1 %or.cond, i32 %121, i32 %120
  %lo_freq.0 = add i32 %lo_freq.0.p, %freq
  %call24 = call fastcc i32 @r820t_set_mux(ptr noundef %1, i32 noundef %lo_freq.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end16.do.body73_crit_edge, label %if.end28

if.end16.do.body73_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end28:                                         ; preds = %if.end16
  %call29 = call fastcc i32 @r820t_set_pll(ptr noundef %1, i32 noundef %lo_freq.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.do.body73_crit_edge, label %lor.lhs.false

if.end28.do.body73_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

lor.lhs.false:                                    ; preds = %if.end28
  %has_lock = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 11
  %122 = ptrtoint ptr %has_lock to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %has_lock, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool32.not = icmp eq i8 %123, 0
  br i1 %tobool32.not, label %lor.lhs.false.if.end102_crit_edge, label %if.end34

lor.lhs.false.if.end102_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end34:                                         ; preds = %lor.lhs.false
  %124 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i143 = icmp eq i32 %124, 0
  br i1 %tobool.not.i143, label %if.end34.do.end12.i155_crit_edge, label %do.end.i148

if.end34.do.end12.i155_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i155

do.end.i148:                                      ; preds = %if.end34
  %i2c_props.i144 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name.i145 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %125 = ptrtoint ptr %name.i145 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %name.i145, align 4
  %adap.i146 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %127 = ptrtoint ptr %adap.i146 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adap.i146, align 4
  %tobool4.not.i147 = icmp eq ptr %128, null
  br i1 %tobool4.not.i147, label %do.end.i148.cond.end.i154_crit_edge, label %cond.true.i150

do.end.i148.cond.end.i154_crit_edge:              ; preds = %do.end.i148
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i154

cond.true.i150:                                   ; preds = %do.end.i148
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i149 = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %nr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nr.i.i149, align 4
  br label %cond.end.i154

cond.end.i154:                                    ; preds = %cond.true.i150, %do.end.i148.cond.end.i154_crit_edge
  %cond.i151 = phi i32 [ %130, %cond.true.i150 ], [ -1, %do.end.i148.cond.end.i154_crit_edge ]
  %131 = ptrtoint ptr %i2c_props.i144 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %i2c_props.i144, align 4
  %conv.i152 = zext i8 %132 to i32
  %call8.i153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %126, i32 noundef %cond.i151, i32 noundef %conv.i152) #9
  br label %do.end12.i155

do.end12.i155:                                    ; preds = %cond.end.i154, %if.end34.do.end12.i155_crit_edge
  %133 = zext i32 %delsys to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %delsys, label %do.end12.i155.sw.epilog.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb23.i
    i32 8, label %sw.bb22.i
  ]

do.end12.i155.sw.epilog.i_crit_edge:              ; preds = %do.end12.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.end12.i155
  %134 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %freq, label %if.else.i [
    i32 506000000, label %sw.bb.i.sw.epilog.i_crit_edge
    i32 666000000, label %sw.bb.i.sw.epilog.i_crit_edge189
    i32 818000000, label %sw.bb.i.sw.epilog.i_crit_edge190
  ]

sw.bb.i.sw.epilog.i_crit_edge190:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.sw.epilog.i_crit_edge189:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %do.end12.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %do.end12.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb23.i, %sw.bb22.i, %if.else.i, %sw.bb.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge189, %sw.bb.i.sw.epilog.i_crit_edge190, %do.end12.i155.sw.epilog.i_crit_edge
  %mixer_top.1.i = phi i8 [ 32, %sw.bb23.i ], [ 32, %sw.bb22.i ], [ 32, %if.else.i ], [ 16, %sw.bb.i.sw.epilog.i_crit_edge ], [ 16, %sw.bb.i.sw.epilog.i_crit_edge189 ], [ 16, %sw.bb.i.sw.epilog.i_crit_edge190 ], [ 32, %do.end12.i155.sw.epilog.i_crit_edge ]
  %cp_cur.1.i = phi i8 [ 56, %sw.bb23.i ], [ 56, %sw.bb22.i ], [ 56, %if.else.i ], [ 40, %sw.bb.i.sw.epilog.i_crit_edge ], [ 40, %sw.bb.i.sw.epilog.i_crit_edge189 ], [ 40, %sw.bb.i.sw.epilog.i_crit_edge190 ], [ 56, %do.end12.i155.sw.epilog.i_crit_edge ]
  %div_buf_cur.1.i = phi i8 [ 48, %sw.bb23.i ], [ 48, %sw.bb22.i ], [ 48, %if.else.i ], [ 32, %sw.bb.i.sw.epilog.i_crit_edge ], [ 32, %sw.bb.i.sw.epilog.i_crit_edge189 ], [ 32, %sw.bb.i.sw.epilog.i_crit_edge190 ], [ 48, %do.end12.i155.sw.epilog.i_crit_edge ]
  %lna_vth_l.0.i = phi i8 [ 98, %sw.bb23.i ], [ 117, %sw.bb22.i ], [ 83, %if.else.i ], [ 83, %sw.bb.i.sw.epilog.i_crit_edge ], [ 83, %sw.bb.i.sw.epilog.i_crit_edge189 ], [ 83, %sw.bb.i.sw.epilog.i_crit_edge190 ], [ 83, %do.end12.i155.sw.epilog.i_crit_edge ]
  %air_cable1_in.0.i = phi i8 [ 96, %sw.bb23.i ], [ 0, %sw.bb22.i ], [ 0, %if.else.i ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge189 ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge190 ], [ 0, %do.end12.i155.sw.epilog.i_crit_edge ]
  %cfg.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 1
  %135 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cfg.i, align 8
  %use_diplexer.i = getelementptr inbounds %struct.r820t_config, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %use_diplexer.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %use_diplexer.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool24.not.i = icmp eq i8 %138, 0
  br i1 %tobool24.not.i, label %sw.epilog.i.if.end45.i158_crit_edge, label %land.lhs.true.i156

sw.epilog.i.if.end45.i158_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i158

land.lhs.true.i156:                               ; preds = %sw.epilog.i
  %rafael_chip.i = getelementptr inbounds %struct.r820t_config, ptr %136, i32 0, i32 2
  %139 = ptrtoint ptr %rafael_chip.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rafael_chip.i, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %140, label %land.lhs.true.i156.if.end45.i158_crit_edge [
    i32 0, label %land.lhs.true.i156.if.then39.i_crit_edge
    i32 4, label %land.lhs.true.i156.if.then39.i_crit_edge191
    i32 5, label %land.lhs.true.i156.if.then39.i_crit_edge192
  ]

land.lhs.true.i156.if.then39.i_crit_edge192:      ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39.i

land.lhs.true.i156.if.then39.i_crit_edge191:      ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39.i

land.lhs.true.i156.if.then39.i_crit_edge:         ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39.i

land.lhs.true.i156.if.end45.i158_crit_edge:       ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i158

if.then39.i:                                      ; preds = %land.lhs.true.i156.if.then39.i_crit_edge, %land.lhs.true.i156.if.then39.i_crit_edge191, %land.lhs.true.i156.if.then39.i_crit_edge192
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000000, i32 %freq)
  %cmp40.i = icmp ugt i32 %freq, 32000000
  %..i157 = select i1 %cmp40.i, i8 0, i8 96
  br label %if.end45.i158

if.end45.i158:                                    ; preds = %if.then39.i, %land.lhs.true.i156.if.end45.i158_crit_edge, %sw.epilog.i.if.end45.i158_crit_edge
  %air_cable1_in.2.i = phi i8 [ %..i157, %if.then39.i ], [ %air_cable1_in.0.i, %sw.epilog.i.if.end45.i158_crit_edge ], [ %air_cable1_in.0.i, %land.lhs.true.i156.if.end45.i158_crit_edge ]
  %use_predetect.i = getelementptr inbounds %struct.r820t_config, ptr %136, i32 0, i32 5
  %142 = ptrtoint ptr %use_predetect.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %use_predetect.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool47.not.i = icmp eq i8 %143, 0
  br i1 %tobool47.not.i, label %if.end45.i158.if.end54.i_crit_edge, label %if.then48.i

if.end45.i158.if.end54.i_crit_edge:               ; preds = %if.end45.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then48.i:                                      ; preds = %if.end45.i158
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i142) #6
  %arrayidx.i.i.i159 = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 1
  %144 = ptrtoint ptr %arrayidx.i.i.i159 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i.i.i159, align 1
  %conv6.i.i160 = or i8 %145, 64
  %146 = ptrtoint ptr %tmp.i.i142 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv6.i.i160, ptr %tmp.i.i142, align 1
  %call7.i.i161 = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %tmp.i.i142, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i142) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i161)
  %cmp50.i = icmp slt i32 %call7.i.i161, 0
  br i1 %cmp50.i, label %if.then48.i.do.body73_crit_edge, label %if.then48.i.if.end54.i_crit_edge

if.then48.i.if.end54.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then48.i.do.body73_crit_edge:                  ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end54.i:                                       ; preds = %if.then48.i.if.end54.i_crit_edge, %if.end45.i158.if.end54.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1.i) #6
  %arrayidx.i.i2.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 24
  %147 = ptrtoint ptr %arrayidx.i.i2.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i.i2.i, align 1
  %and.i3.i = and i8 %148, 56
  %conv6.i4.i = or i8 %and.i3.i, -59
  %149 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv6.i4.i, ptr %tmp.i1.i, align 1
  %call7.i5.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 29, ptr noundef nonnull %tmp.i1.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i5.i)
  %cmp56.i = icmp slt i32 %call7.i5.i, 0
  br i1 %cmp56.i, label %if.end54.i.do.body73_crit_edge, label %if.end59.i162

if.end54.i.do.body73_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end59.i162:                                    ; preds = %if.end54.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i6.i) #6
  %arrayidx.i.i7.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 23
  %150 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.i.i7.i, align 1
  %and.i8.i = and i8 %151, 7
  %conv6.i9.i = or i8 %and.i8.i, %mixer_top.1.i
  %152 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv6.i9.i, ptr %tmp.i6.i, align 1
  %call7.i10.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 28, ptr noundef nonnull %tmp.i6.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i10.i)
  %cmp61.i = icmp slt i32 %call7.i10.i, 0
  br i1 %cmp61.i, label %if.end59.i162.do.body73_crit_edge, label %if.end64.i

if.end59.i162.do.body73_crit_edge:                ; preds = %if.end59.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end64.i:                                       ; preds = %if.end59.i162
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i11.i) #6
  %153 = ptrtoint ptr %tmp.i11.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %lna_vth_l.0.i, ptr %tmp.i11.i, align 1
  %call.i.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 13, ptr noundef nonnull %tmp.i11.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i11.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp66.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp66.i, label %if.end64.i.do.body73_crit_edge, label %if.end69.i

if.end64.i.do.body73_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end69.i:                                       ; preds = %if.end64.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i12.i) #6
  %154 = ptrtoint ptr %tmp.i12.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 117, ptr %tmp.i12.i, align 1
  %call.i13.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 14, ptr noundef nonnull %tmp.i12.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i12.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp71.i = icmp slt i32 %call.i13.i, 0
  br i1 %cmp71.i, label %if.end69.i.do.body73_crit_edge, label %if.end74.i

if.end69.i.do.body73_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end74.i:                                       ; preds = %if.end69.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i14.i) #6
  %155 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %regs.i, align 1
  %and.i16.i = and i8 %156, -97
  %and514.i17.i = and i8 %air_cable1_in.2.i, 96
  %conv6.i18.i = or i8 %and.i16.i, %and514.i17.i
  %157 = ptrtoint ptr %tmp.i14.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv6.i18.i, ptr %tmp.i14.i, align 1
  %call7.i19.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull %tmp.i14.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i14.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i19.i)
  %cmp76.i = icmp slt i32 %call7.i19.i, 0
  br i1 %cmp76.i, label %if.end74.i.do.body73_crit_edge, label %if.end79.i

if.end74.i.do.body73_crit_edge:                   ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end79.i:                                       ; preds = %if.end74.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i20.i) #6
  %arrayidx.i.i21.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 1
  %158 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i.i21.i, align 1
  %and.i22.i = and i8 %159, -9
  %160 = ptrtoint ptr %tmp.i20.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %and.i22.i, ptr %tmp.i20.i, align 1
  %call7.i23.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %tmp.i20.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i20.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i23.i)
  %cmp81.i = icmp slt i32 %call7.i23.i, 0
  br i1 %cmp81.i, label %if.end79.i.do.body73_crit_edge, label %if.end84.i

if.end79.i.do.body73_crit_edge:                   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end84.i:                                       ; preds = %if.end79.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i24.i) #6
  %arrayidx.i.i25.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 12
  %161 = ptrtoint ptr %arrayidx.i.i25.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx.i.i25.i, align 1
  %and.i26.i = and i8 %162, -57
  %conv6.i28.i = or i8 %and.i26.i, %cp_cur.1.i
  %163 = ptrtoint ptr %tmp.i24.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv6.i28.i, ptr %tmp.i24.i, align 1
  %call7.i29.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 17, ptr noundef nonnull %tmp.i24.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i24.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i29.i)
  %cmp86.i = icmp slt i32 %call7.i29.i, 0
  br i1 %cmp86.i, label %if.end84.i.do.body73_crit_edge, label %if.end89.i

if.end84.i.do.body73_crit_edge:                   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end89.i:                                       ; preds = %if.end84.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i30.i) #6
  %arrayidx.i.i31.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 18
  %164 = ptrtoint ptr %arrayidx.i.i31.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.i.i31.i, align 1
  %and.i32.i = and i8 %165, -49
  %conv6.i34.i = or i8 %and.i32.i, %div_buf_cur.1.i
  %166 = ptrtoint ptr %tmp.i30.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv6.i34.i, ptr %tmp.i30.i, align 1
  %call7.i35.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 23, ptr noundef nonnull %tmp.i30.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i30.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i35.i)
  %cmp91.i = icmp slt i32 %call7.i35.i, 0
  br i1 %cmp91.i, label %if.end89.i.do.body73_crit_edge, label %if.end94.i

if.end89.i.do.body73_crit_edge:                   ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end94.i:                                       ; preds = %if.end89.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i36.i) #6
  %arrayidx.i.i37.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 5
  %167 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx.i.i37.i, align 1
  %and.i38.i = and i8 %168, -97
  %conv6.i39.i = or i8 %and.i38.i, 64
  %169 = ptrtoint ptr %tmp.i36.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv6.i39.i, ptr %tmp.i36.i, align 1
  %call7.i40.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 10, ptr noundef nonnull %tmp.i36.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i36.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i40.i)
  %cmp96.i = icmp slt i32 %call7.i40.i, 0
  br i1 %cmp96.i, label %if.end94.i.do.body73_crit_edge, label %do.body100.i

if.end94.i.do.body73_crit_edge:                   ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

do.body100.i:                                     ; preds = %if.end94.i
  %170 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool101.not.i = icmp eq i32 %170, 0
  br i1 %tobool101.not.i, label %do.body100.i.do.end128.i_crit_edge, label %do.end106.i

do.body100.i.do.end128.i_crit_edge:               ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end128.i

do.end106.i:                                      ; preds = %do.body100.i
  %i2c_props108.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name109.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %171 = ptrtoint ptr %name109.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %name109.i, align 4
  %adap111.i = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %173 = ptrtoint ptr %adap111.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %adap111.i, align 4
  %tobool112.not.i = icmp eq ptr %174, null
  br i1 %tobool112.not.i, label %do.end106.i.cond.end118.i_crit_edge, label %cond.true113.i

do.end106.i.cond.end118.i_crit_edge:              ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end118.i

cond.true113.i:                                   ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i41.i = getelementptr inbounds %struct.i2c_adapter, ptr %174, i32 0, i32 11
  %175 = ptrtoint ptr %nr.i41.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %nr.i41.i, align 4
  br label %cond.end118.i

cond.end118.i:                                    ; preds = %cond.true113.i, %do.end106.i.cond.end118.i_crit_edge
  %cond119.i = phi i32 [ %176, %cond.true113.i ], [ -1, %do.end106.i.cond.end118.i_crit_edge ]
  %177 = ptrtoint ptr %i2c_props108.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %i2c_props108.i, align 4
  %conv122.i = zext i8 %178 to i32
  %call123.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %172, i32 noundef %cond119.i, i32 noundef %conv122.i) #9
  br label %do.end128.i

do.end128.i:                                      ; preds = %cond.end118.i, %do.body100.i.do.end128.i_crit_edge
  br i1 %cmp51.not.i, label %if.else172.i, label %if.then131.i

if.then131.i:                                     ; preds = %do.end128.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i42.i) #6
  %179 = ptrtoint ptr %arrayidx.i.i2.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.i.i2.i, align 1
  %and.i44.i = and i8 %180, -57
  %181 = ptrtoint ptr %tmp.i42.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %and.i44.i, ptr %tmp.i42.i, align 1
  %call7.i45.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 29, ptr noundef nonnull %tmp.i42.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i42.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i45.i)
  %cmp133.i = icmp slt i32 %call7.i45.i, 0
  br i1 %cmp133.i, label %if.then131.i.do.body73_crit_edge, label %if.end136.i

if.then131.i.do.body73_crit_edge:                 ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end136.i:                                      ; preds = %if.then131.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i46.i) #6
  %182 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.i.i7.i, align 1
  %and.i48.i = and i8 %183, -5
  %184 = ptrtoint ptr %tmp.i46.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %and.i48.i, ptr %tmp.i46.i, align 1
  %call7.i49.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 28, ptr noundef nonnull %tmp.i46.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i46.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i49.i)
  %cmp138.i = icmp slt i32 %call7.i49.i, 0
  br i1 %cmp138.i, label %if.end136.i.do.body73_crit_edge, label %if.end141.i164

if.end136.i.do.body73_crit_edge:                  ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end141.i164:                                   ; preds = %if.end136.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i50.i) #6
  %185 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx.i.i21.i, align 1
  %and.i52.i = and i8 %186, -65
  %187 = ptrtoint ptr %tmp.i50.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %and.i52.i, ptr %tmp.i50.i, align 1
  %call7.i53.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %tmp.i50.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i50.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i53.i)
  %cmp143.i163 = icmp slt i32 %call7.i53.i, 0
  br i1 %cmp143.i163, label %if.end141.i164.do.body73_crit_edge, label %if.end146.i166

if.end141.i164.do.body73_crit_edge:               ; preds = %if.end141.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end146.i166:                                   ; preds = %if.end141.i164
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i54.i) #6
  %arrayidx.i.i55.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 21
  %188 = ptrtoint ptr %arrayidx.i.i55.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx.i.i55.i, align 1
  %conv6.i57.i = or i8 %189, 48
  %190 = ptrtoint ptr %tmp.i54.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv6.i57.i, ptr %tmp.i54.i, align 1
  %call7.i58.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 26, ptr noundef nonnull %tmp.i54.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i54.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i58.i)
  %cmp148.i165 = icmp slt i32 %call7.i58.i, 0
  br i1 %cmp148.i165, label %if.end146.i166.do.body73_crit_edge, label %if.end151.i168

if.end146.i166.do.body73_crit_edge:               ; preds = %if.end146.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end151.i168:                                   ; preds = %if.end146.i166
  call void @msleep(i32 noundef 250) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i59.i) #6
  %191 = ptrtoint ptr %arrayidx.i.i2.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.i.i2.i, align 1
  %and.i61.i = and i8 %192, -57
  %conv6.i62.i = or i8 %and.i61.i, 24
  %193 = ptrtoint ptr %tmp.i59.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv6.i62.i, ptr %tmp.i59.i, align 1
  %call7.i63.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 29, ptr noundef nonnull %tmp.i59.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i59.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i63.i)
  %cmp153.i167 = icmp slt i32 %call7.i63.i, 0
  br i1 %cmp153.i167, label %if.end151.i168.do.body73_crit_edge, label %if.end156.i169

if.end151.i168.do.body73_crit_edge:               ; preds = %if.end151.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end156.i169:                                   ; preds = %if.end151.i168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i64.i) #6
  %194 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv6.i67.i = or i8 %195, 4
  %196 = ptrtoint ptr %tmp.i64.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv6.i67.i, ptr %tmp.i64.i, align 1
  %call7.i68.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 28, ptr noundef nonnull %tmp.i64.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i64.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i68.i)
  %cmp158.i = icmp slt i32 %call7.i68.i, 0
  br i1 %cmp158.i, label %if.end156.i169.do.body73_crit_edge, label %if.end161.i

if.end156.i169.do.body73_crit_edge:               ; preds = %if.end156.i169
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end161.i:                                      ; preds = %if.end156.i169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i69.i) #6
  %arrayidx.i.i70.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 25
  %197 = ptrtoint ptr %arrayidx.i.i70.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i.i70.i, align 1
  %and.i71.i = and i8 %198, -32
  %conv6.i72.i = or i8 %and.i71.i, 14
  %199 = ptrtoint ptr %tmp.i69.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv6.i72.i, ptr %tmp.i69.i, align 1
  %call7.i73.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 30, ptr noundef nonnull %tmp.i69.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i69.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i73.i)
  %cmp163.i = icmp slt i32 %call7.i73.i, 0
  br i1 %cmp163.i, label %if.end161.i.do.body73_crit_edge, label %if.end166.i

if.end161.i.do.body73_crit_edge:                  ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end166.i:                                      ; preds = %if.end161.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i74.i) #6
  %200 = ptrtoint ptr %arrayidx.i.i55.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx.i.i55.i, align 1
  %and.i76.i = and i8 %201, -49
  %conv6.i77.i = or i8 %and.i76.i, 32
  %202 = ptrtoint ptr %tmp.i74.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv6.i77.i, ptr %tmp.i74.i, align 1
  %call7.i78.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 26, ptr noundef nonnull %tmp.i74.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i74.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i78.i)
  %cmp168.i = icmp slt i32 %call7.i78.i, 0
  br i1 %cmp168.i, label %if.end166.i.do.body73_crit_edge, label %if.end166.i.do.body40_crit_edge

if.end166.i.do.body40_crit_edge:                  ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

if.end166.i.do.body73_crit_edge:                  ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.else172.i:                                     ; preds = %do.end128.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i79.i) #6
  %203 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i.i21.i, align 1
  %and.i81.i = and i8 %204, -65
  %205 = ptrtoint ptr %tmp.i79.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %and.i81.i, ptr %tmp.i79.i, align 1
  %call7.i82.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %tmp.i79.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i79.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i82.i)
  %cmp174.i = icmp slt i32 %call7.i82.i, 0
  br i1 %cmp174.i, label %if.else172.i.do.body73_crit_edge, label %if.end177.i

if.else172.i.do.body73_crit_edge:                 ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end177.i:                                      ; preds = %if.else172.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i83.i) #6
  %206 = ptrtoint ptr %arrayidx.i.i2.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.i.i2.i, align 1
  %and.i85.i = and i8 %207, -57
  %conv6.i86.i = or i8 %and.i85.i, 32
  %208 = ptrtoint ptr %tmp.i83.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv6.i86.i, ptr %tmp.i83.i, align 1
  %call7.i87.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 29, ptr noundef nonnull %tmp.i83.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i83.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i87.i)
  %cmp179.i = icmp slt i32 %call7.i87.i, 0
  br i1 %cmp179.i, label %if.end177.i.do.body73_crit_edge, label %if.end182.i170

if.end177.i.do.body73_crit_edge:                  ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end182.i170:                                   ; preds = %if.end177.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i88.i) #6
  %209 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv6.i91.i = or i8 %210, 4
  %211 = ptrtoint ptr %tmp.i88.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv6.i91.i, ptr %tmp.i88.i, align 1
  %call7.i92.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 28, ptr noundef nonnull %tmp.i88.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i88.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i92.i)
  %cmp184.i = icmp slt i32 %call7.i92.i, 0
  br i1 %cmp184.i, label %if.end182.i170.do.body73_crit_edge, label %if.end187.i

if.end182.i170.do.body73_crit_edge:               ; preds = %if.end182.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end187.i:                                      ; preds = %if.end182.i170
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i93.i) #6
  %arrayidx.i.i94.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 25
  %212 = ptrtoint ptr %arrayidx.i.i94.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i.i94.i, align 1
  %and.i95.i = and i8 %213, -32
  %conv6.i96.i = or i8 %and.i95.i, 14
  %214 = ptrtoint ptr %tmp.i93.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv6.i96.i, ptr %tmp.i93.i, align 1
  %call7.i97.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 30, ptr noundef nonnull %tmp.i93.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i93.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i97.i)
  %cmp189.i171 = icmp slt i32 %call7.i97.i, 0
  br i1 %cmp189.i171, label %if.end187.i.do.body73_crit_edge, label %if.end192.i173

if.end187.i.do.body73_crit_edge:                  ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end192.i173:                                   ; preds = %if.end187.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i98.i) #6
  %arrayidx.i.i99.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 21
  %215 = ptrtoint ptr %arrayidx.i.i99.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx.i.i99.i, align 1
  %and.i100.i = and i8 %216, -49
  %217 = ptrtoint ptr %tmp.i98.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %and.i100.i, ptr %tmp.i98.i, align 1
  %call7.i101.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 26, ptr noundef nonnull %tmp.i98.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i98.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i101.i)
  %cmp194.i172 = icmp slt i32 %call7.i101.i, 0
  br i1 %cmp194.i172, label %if.end192.i173.do.body73_crit_edge, label %if.end197.i175

if.end192.i173.do.body73_crit_edge:               ; preds = %if.end192.i173
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end197.i175:                                   ; preds = %if.end192.i173
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i102.i) #6
  %arrayidx.i.i103.i = getelementptr %struct.r820t_priv, ptr %1, i32 0, i32 4, i32 11
  %218 = ptrtoint ptr %arrayidx.i.i103.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.i.i103.i, align 1
  %and.i104.i = and i8 %219, -5
  %220 = ptrtoint ptr %tmp.i102.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %and.i104.i, ptr %tmp.i102.i, align 1
  %call7.i105.i = call fastcc i32 @r820t_write(ptr noundef %1, i8 noundef zeroext 16, ptr noundef nonnull %tmp.i102.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i102.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i105.i)
  %cmp199.i174 = icmp slt i32 %call7.i105.i, 0
  br i1 %cmp199.i174, label %if.end197.i175.do.body73_crit_edge, label %if.end197.i175.do.body40_crit_edge

if.end197.i175.do.body40_crit_edge:               ; preds = %if.end197.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

if.end197.i175.do.body73_crit_edge:               ; preds = %if.end197.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

do.body40:                                        ; preds = %if.end197.i175.do.body40_crit_edge, %if.end166.i.do.body40_crit_edge
  %221 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool41.not = icmp eq i32 %221, 0
  br i1 %tobool41.not, label %do.body40.if.end102_crit_edge, label %do.end46

do.body40.if.end102_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

do.end46:                                         ; preds = %do.body40
  %i2c_props48 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name49 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %222 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %name49, align 4
  %adap51 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %224 = ptrtoint ptr %adap51 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %adap51, align 4
  %tobool52.not = icmp eq ptr %225, null
  br i1 %tobool52.not, label %do.end46.cond.end58_crit_edge, label %cond.true53

do.end46.cond.end58_crit_edge:                    ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end58

cond.true53:                                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i177 = getelementptr inbounds %struct.i2c_adapter, ptr %225, i32 0, i32 11
  %226 = ptrtoint ptr %nr.i177 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %nr.i177, align 4
  br label %cond.end58

cond.end58:                                       ; preds = %cond.true53, %do.end46.cond.end58_crit_edge
  %cond59 = phi i32 [ %227, %cond.true53 ], [ -1, %do.end46.cond.end58_crit_edge ]
  %228 = ptrtoint ptr %i2c_props48 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %i2c_props48, align 4
  %conv62 = zext i8 %229 to i32
  %call63 = call fastcc i32 @r820t_read_gain(ptr noundef %1)
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %223, i32 noundef %cond59, i32 noundef %conv62, ptr noundef nonnull @.str.60, i32 noundef %freq, i32 noundef %call63) #9
  br label %if.end102

do.body73:                                        ; preds = %if.end197.i175.do.body73_crit_edge, %if.end192.i173.do.body73_crit_edge, %if.end187.i.do.body73_crit_edge, %if.end182.i170.do.body73_crit_edge, %if.end177.i.do.body73_crit_edge, %if.else172.i.do.body73_crit_edge, %if.end166.i.do.body73_crit_edge, %if.end161.i.do.body73_crit_edge, %if.end156.i169.do.body73_crit_edge, %if.end151.i168.do.body73_crit_edge, %if.end146.i166.do.body73_crit_edge, %if.end141.i164.do.body73_crit_edge, %if.end136.i.do.body73_crit_edge, %if.then131.i.do.body73_crit_edge, %if.end94.i.do.body73_crit_edge, %if.end89.i.do.body73_crit_edge, %if.end84.i.do.body73_crit_edge, %if.end79.i.do.body73_crit_edge, %if.end74.i.do.body73_crit_edge, %if.end69.i.do.body73_crit_edge, %if.end64.i.do.body73_crit_edge, %if.end59.i162.do.body73_crit_edge, %if.end54.i.do.body73_crit_edge, %if.then48.i.do.body73_crit_edge, %if.end28.do.body73_crit_edge, %if.end16.do.body73_crit_edge, %r820t_set_tv_standard.exit.thread
  %rc.0.ph = phi i32 [ %retval.0.i.ph, %r820t_set_tv_standard.exit.thread ], [ %call29, %if.end28.do.body73_crit_edge ], [ %call24, %if.end16.do.body73_crit_edge ], [ %call7.i105.i, %if.end197.i175.do.body73_crit_edge ], [ %call7.i101.i, %if.end192.i173.do.body73_crit_edge ], [ %call7.i97.i, %if.end187.i.do.body73_crit_edge ], [ %call7.i92.i, %if.end182.i170.do.body73_crit_edge ], [ %call7.i87.i, %if.end177.i.do.body73_crit_edge ], [ %call7.i82.i, %if.else172.i.do.body73_crit_edge ], [ %call7.i78.i, %if.end166.i.do.body73_crit_edge ], [ %call7.i73.i, %if.end161.i.do.body73_crit_edge ], [ %call7.i68.i, %if.end156.i169.do.body73_crit_edge ], [ %call7.i63.i, %if.end151.i168.do.body73_crit_edge ], [ %call7.i58.i, %if.end146.i166.do.body73_crit_edge ], [ %call7.i53.i, %if.end141.i164.do.body73_crit_edge ], [ %call7.i49.i, %if.end136.i.do.body73_crit_edge ], [ %call7.i45.i, %if.then131.i.do.body73_crit_edge ], [ %call7.i40.i, %if.end94.i.do.body73_crit_edge ], [ %call7.i35.i, %if.end89.i.do.body73_crit_edge ], [ %call7.i29.i, %if.end84.i.do.body73_crit_edge ], [ %call7.i23.i, %if.end79.i.do.body73_crit_edge ], [ %call7.i19.i, %if.end74.i.do.body73_crit_edge ], [ %call.i13.i, %if.end69.i.do.body73_crit_edge ], [ %call.i.i, %if.end64.i.do.body73_crit_edge ], [ %call7.i10.i, %if.end59.i162.do.body73_crit_edge ], [ %call7.i5.i, %if.end54.i.do.body73_crit_edge ], [ %call7.i.i161, %if.then48.i.do.body73_crit_edge ]
  %230 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool74.not = icmp eq i32 %230, 0
  br i1 %tobool74.not, label %do.body73.if.end102_crit_edge, label %do.end79

do.body73.if.end102_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

do.end79:                                         ; preds = %do.body73
  %i2c_props81 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2
  %name82 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 3
  %231 = ptrtoint ptr %name82 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %name82, align 4
  %adap84 = getelementptr inbounds %struct.r820t_priv, ptr %1, i32 0, i32 2, i32 1
  %233 = ptrtoint ptr %adap84 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %adap84, align 4
  %tobool85.not = icmp eq ptr %234, null
  br i1 %tobool85.not, label %do.end79.cond.end91_crit_edge, label %cond.true86

do.end79.cond.end91_crit_edge:                    ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end91

cond.true86:                                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i178 = getelementptr inbounds %struct.i2c_adapter, ptr %234, i32 0, i32 11
  %235 = ptrtoint ptr %nr.i178 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %nr.i178, align 4
  br label %cond.end91

cond.end91:                                       ; preds = %cond.true86, %do.end79.cond.end91_crit_edge
  %cond92 = phi i32 [ %236, %cond.true86 ], [ -1, %do.end79.cond.end91_crit_edge ]
  %237 = ptrtoint ptr %i2c_props81 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %i2c_props81, align 4
  %conv95 = zext i8 %238 to i32
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %232, i32 noundef %cond92, i32 noundef %conv95, ptr noundef nonnull @.str.60, i32 noundef %rc.0.ph) #9
  br label %if.end102

if.end102:                                        ; preds = %cond.end91, %do.body73.if.end102_crit_edge, %cond.end58, %do.body40.if.end102_crit_edge, %lor.lhs.false.if.end102_crit_edge
  %rc.0186 = phi i32 [ %rc.0.ph, %do.body73.if.end102_crit_edge ], [ %rc.0.ph, %cond.end91 ], [ 0, %cond.end58 ], [ 0, %do.body40.if.end102_crit_edge ], [ 0, %lor.lhs.false.if.end102_crit_edge ]
  ret i32 %rc.0186
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r820t_read_gain(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4
  %call = call fastcc i32 @r820t_read(ptr noundef %priv, ptr noundef nonnull %data, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %and = shl nuw nsw i32 %conv, 1
  %shl = and i32 %and, 16
  %4 = lshr i32 %conv, 4
  %add = or i32 %shl, %4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !107, !109, !111, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !127, !129, !130, !131, !133, !135, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !186, !187, !189, !190, !191, !193, !194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/r820t.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/r820t.c", i32 46, i32 1}
!5 = !{ptr @__param_no_imr_cal, !6, !"__param_no_imr_cal", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/r820t.c", i32 49, i32 1}
!7 = !{ptr @__UNIQUE_ID_no_imr_caltype292, !6, !"__UNIQUE_ID_no_imr_caltype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_no_imr_cal293, !9, !"__UNIQUE_ID_no_imr_cal293", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/r820t.c", i32 50, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/r820t.c", i32 2344, i32 13}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @r820t_attach._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @r820t_attach._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @r820t_attach._entry.4, !11, !"_entry", i1 false, i1 false}
!19 = !{ptr @r820t_attach._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @r820t_attach.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/r820t.c", i32 2356, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/tuners/r820t.c", i32 2378, i32 2}
!25 = !{ptr @r820t_attach._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @r820t_attach._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/r820t.c", i32 2398, i32 2}
!29 = !{ptr @r820t_attach._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @r820t_attach._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_r820t_attach, !32, !"__ksymtab_r820t_attach", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/r820t.c", i32 2402, i32 1}
!33 = !{ptr @__UNIQUE_ID_description294, !34, !"__UNIQUE_ID_description294", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/r820t.c", i32 2404, i32 1}
!35 = !{ptr @__UNIQUE_ID_author295, !36, !"__UNIQUE_ID_author295", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/r820t.c", i32 2405, i32 1}
!37 = !{ptr @__UNIQUE_ID_file296, !38, !"__UNIQUE_ID_file296", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/r820t.c", i32 2406, i32 1}
!39 = !{ptr @__UNIQUE_ID_license297, !38, !"__UNIQUE_ID_license297", i1 false, i1 false}
!40 = !{ptr @debug, !41, !"debug", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/r820t.c", i32 44, i32 12}
!42 = !{ptr @no_imr_cal, !43, !"no_imr_cal", i1 false, i1 false}
!43 = !{!"../drivers/media/tuners/r820t.c", i32 48, i32 12}
!44 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!45 = !{ptr @__param_str_no_imr_cal, !6, !"__param_str_no_imr_cal", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/r820t.c", i32 114, i32 8}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @r820t_list_mutex, !47, !"r820t_list_mutex", i1 false, i1 false}
!50 = !{ptr @hybrid_tuner_instance_list, !51, !"hybrid_tuner_instance_list", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/r820t.c", i32 113, i32 8}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/r820t.c", i32 449, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @r820t_read._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @r820t_read._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/r820t.c", i32 460, i32 2}
!59 = !{ptr @r820t_read._entry.18, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @r820t_read._entry_ptr.20, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/r820t.c", i32 2178, i32 2}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @r820t_sleep._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @r820t_sleep._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/r820t.c", i32 2190, i32 2}
!68 = !{ptr @r820t_sleep._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @r820t_sleep._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/tuners/r820t.c", i32 392, i32 4}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @r820t_write._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @r820t_write._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/tuners/r820t.c", i32 398, i32 3}
!77 = !{ptr @r820t_write._entry.28, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @r820t_write._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/r820t.c", i32 366, i32 2}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @shadow_store._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @shadow_store._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/tuners/r820t.c", i32 333, i32 10}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/r820t.c", i32 335, i32 10}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/r820t.c", i32 337, i32 10}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/tuners/r820t.c", i32 339, i32 10}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/tuners/r820t.c", i32 341, i32 10}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/tuners/r820t.c", i32 343, i32 10}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/tuners/r820t.c", i32 345, i32 10}
!98 = !{ptr @r820t_tuner_ops, !99, !"r820t_tuner_ops", i1 false, i1 false}
!99 = !{!"../drivers/media/tuners/r820t.c", i32 2318, i32 35}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/tuners/r820t.c", i32 2149, i32 2}
!102 = !{ptr @r820t_init._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @r820t_init._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @r820t_init._entry.41, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/tuners/r820t.c", i32 2169, i32 3}
!106 = !{ptr @r820t_init._entry_ptr.42, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @r820t_xtal_capacitor, !108, !"r820t_xtal_capacitor", i1 false, i1 false}
!108 = !{!"../drivers/media/tuners/r820t.c", i32 321, i32 12}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/tuners/r820t.c", i32 484, i32 2}
!111 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @r820t_set_mux._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @r820t_set_mux._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @freq_ranges, !115, !"freq_ranges", i1 false, i1 false}
!115 = !{!"../drivers/media/tuners/r820t.c", i32 128, i32 38}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/tuners/r820t.c", i32 614, i32 2}
!118 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @r820t_set_pll._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @r820t_set_pll._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/tuners/r820t.c", i32 676, i32 2}
!123 = !{ptr @r820t_set_pll._entry.47, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @r820t_set_pll._entry_ptr.49, !122, !"_entry_ptr", i1 false, i1 false}
!125 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/tuners/r820t.c", i32 710, i32 2}
!129 = !{ptr @r820t_set_pll._entry.52, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @r820t_set_pll._entry_ptr.54, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @r820t_init_array, !132, !"r820t_init_array", i1 false, i1 false}
!132 = !{!"../drivers/media/tuners/r820t.c", i32 117, i32 17}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/tuners/r820t.c", i32 2233, i32 2}
!135 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @r820t_set_params._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @r820t_set_params._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @r820t_set_params._entry.57, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/media/tuners/r820t.c", i32 2252, i32 3}
!140 = !{ptr @r820t_set_params._entry_ptr.58, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/tuners/r820t.c", i32 1315, i32 2}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @generic_set_freq._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @generic_set_freq._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/tuners/r820t.c", i32 1339, i32 2}
!148 = !{ptr @generic_set_freq._entry.61, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @generic_set_freq._entry_ptr.63, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @generic_set_freq._entry.64, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/media/tuners/r820t.c", i32 1345, i32 3}
!152 = !{ptr @generic_set_freq._entry_ptr.65, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/tuners/r820t.c", i32 960, i32 2}
!155 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @r820t_set_tv_standard._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @r820t_set_tv_standard._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/tuners/r820t.c", i32 1097, i32 3}
!160 = !{ptr @r820t_set_tv_standard._entry.68, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @r820t_set_tv_standard._entry_ptr.70, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/tuners/r820t.c", i32 727, i32 2}
!164 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @r820t_sysfreq_sel._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @r820t_sysfreq_sel._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/tuners/r820t.c", i32 863, i32 2}
!169 = !{ptr @r820t_sysfreq_sel._entry.73, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @r820t_sysfreq_sel._entry_ptr.75, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/tuners/r820t.c", i32 2201, i32 2}
!173 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @r820t_set_analog_freq._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @r820t_set_analog_freq._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/tuners/r820t.c", i32 2295, i32 2}
!178 = !{ptr @r820t_get_if_frequency._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @r820t_get_if_frequency._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/tuners/r820t.c", i32 2283, i32 2}
!182 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @r820t_signal._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @r820t_signal._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/tuners/r820t.c", i32 2306, i32 2}
!189 = !{ptr @r820t_release._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @r820t_release._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/tuners/r820t.c", i32 2311, i32 3}
!193 = !{ptr @r820t_release._entry.84, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @r820t_release._entry_ptr.86, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i8 0, i8 2}
!205 = !{!"auto-init"}
