; ModuleID = '/llk/IR_all_yes/drivers/soc/amlogic/meson-clk-measure.c_pt.bc'
source_filename = "../drivers/soc/amlogic/meson-clk-measure.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.meson_msr_id = type { ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.meson_msr = type { ptr, [128 x %struct.meson_msr_id] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_meson_clk_measure__220_690_meson_msr_driver_init6 = internal global ptr @meson_msr_driver_init, section ".initcall6.init", align 4
@meson_msr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_msr_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_msr_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_msr_driver_exit = internal global ptr @meson_msr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file221 = internal constant [61 x i8] c"meson_clk_measure.file=drivers/soc/amlogic/meson-clk-measure\00", section ".modinfo", align 1
@__UNIQUE_ID_license222 = internal constant [33 x i8] c"meson_clk_measure.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meson_msr\00", [22 x i8] zeroinitializer }, align 32
@meson_msr_match_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gx-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_gx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_m8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_m8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_axg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_g12a }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-sm1-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_sm1 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@meson_msr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"meson_msr_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/soc/amlogic/meson-clk-measure.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_msr_probe._entry_ptr = internal global ptr @meson_msr_probe._entry, section ".printk_index", align 4
@meson_msr_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_clk_msr_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"meson_clk_measure:631:(&meson_clk_msr_regmap_config)->lock\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson-clk-msr\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clks\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"measure_summary\00", [16 x i8] zeroinitializer }, align 32
@clk_msr_summary_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_msr_summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@clk_msr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_msr_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"  clock                     rate    precision\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"---------------------------------------------\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" %-20s %10d    +/-%dHz\0A\00", [40 x i8] zeroinitializer }, align 32
@measure_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @measure_lock, i64 52), ptr getelementptr (i8, ptr @measure_lock, i64 52) }, ptr @measure_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"measure_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"measure_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d\09+/-%dHz\0A\00", [20 x i8] zeroinitializer }, align 32
@clk_msr_g12a = internal global { [128 x %struct.meson_msr_id], [384 x i8] } { [128 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.16 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.17 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.18 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.153 }, %struct.meson_msr_id { ptr null, i32 4, ptr @.str.20 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 6, ptr @.str.21 }, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.22 }, %struct.meson_msr_id { ptr null, i32 8, ptr @.str.23 }, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.24 }, %struct.meson_msr_id { ptr null, i32 10, ptr @.str.25 }, %struct.meson_msr_id { ptr null, i32 11, ptr @.str.154 }, %struct.meson_msr_id { ptr null, i32 12, ptr @.str.155 }, %struct.meson_msr_id { ptr null, i32 13, ptr @.str.156 }, %struct.meson_msr_id { ptr null, i32 14, ptr @.str.29 }, %struct.meson_msr_id { ptr null, i32 15, ptr @.str.30 }, %struct.meson_msr_id { ptr null, i32 16, ptr @.str.31 }, %struct.meson_msr_id { ptr null, i32 17, ptr @.str.32 }, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.33 }, %struct.meson_msr_id { ptr null, i32 19, ptr @.str.157 }, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.35 }, %struct.meson_msr_id { ptr null, i32 21, ptr @.str.158 }, %struct.meson_msr_id { ptr null, i32 22, ptr @.str.37 }, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.159 }, %struct.meson_msr_id { ptr null, i32 24, ptr @.str.160 }, %struct.meson_msr_id { ptr null, i32 25, ptr @.str.89 }, %struct.meson_msr_id { ptr null, i32 26, ptr @.str.39 }, %struct.meson_msr_id { ptr null, i32 27, ptr @.str.161 }, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.40 }, %struct.meson_msr_id { ptr null, i32 29, ptr @.str.162 }, %struct.meson_msr_id { ptr null, i32 30, ptr @.str.163 }, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.41 }, %struct.meson_msr_id { ptr null, i32 32, ptr @.str.42 }, %struct.meson_msr_id { ptr null, i32 33, ptr @.str.164 }, %struct.meson_msr_id { ptr null, i32 34, ptr @.str.165 }, %struct.meson_msr_id { ptr null, i32 35, ptr @.str.43 }, %struct.meson_msr_id { ptr null, i32 36, ptr @.str.44 }, %struct.meson_msr_id { ptr null, i32 37, ptr @.str.166 }, %struct.meson_msr_id { ptr null, i32 38, ptr @.str.46 }, %struct.meson_msr_id { ptr null, i32 39, ptr @.str.167 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.49 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.50 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.51 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.52 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.53 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.54 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.55 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.56 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.57 }, %struct.meson_msr_id { ptr null, i32 50, ptr @.str.58 }, %struct.meson_msr_id { ptr null, i32 51, ptr @.str.168 }, %struct.meson_msr_id { ptr null, i32 52, ptr @.str.60 }, %struct.meson_msr_id { ptr null, i32 53, ptr @.str.61 }, %struct.meson_msr_id { ptr null, i32 54, ptr @.str.169 }, %struct.meson_msr_id { ptr null, i32 55, ptr @.str.62 }, %struct.meson_msr_id { ptr null, i32 56, ptr @.str.170 }, %struct.meson_msr_id { ptr null, i32 57, ptr @.str.64 }, %struct.meson_msr_id { ptr null, i32 58, ptr @.str.65 }, %struct.meson_msr_id { ptr null, i32 59, ptr @.str.66 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.68 }, %struct.meson_msr_id { ptr null, i32 62, ptr @.str.171 }, %struct.meson_msr_id { ptr null, i32 63, ptr @.str.172 }, %struct.meson_msr_id { ptr null, i32 64, ptr @.str.173 }, %struct.meson_msr_id { ptr null, i32 65, ptr @.str.174 }, %struct.meson_msr_id { ptr null, i32 66, ptr @.str.70 }, %struct.meson_msr_id { ptr null, i32 67, ptr @.str.175 }, %struct.meson_msr_id { ptr null, i32 68, ptr @.str.176 }, %struct.meson_msr_id { ptr null, i32 69, ptr @.str.177 }, %struct.meson_msr_id { ptr null, i32 70, ptr @.str.71 }, %struct.meson_msr_id { ptr null, i32 71, ptr @.str.72 }, %struct.meson_msr_id { ptr null, i32 72, ptr @.str.73 }, %struct.meson_msr_id { ptr null, i32 73, ptr @.str.74 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 75, ptr @.str.178 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 77, ptr @.str.77 }, %struct.meson_msr_id { ptr null, i32 78, ptr @.str.78 }, %struct.meson_msr_id { ptr null, i32 79, ptr @.str.79 }, %struct.meson_msr_id { ptr null, i32 80, ptr @.str.80 }, %struct.meson_msr_id { ptr null, i32 81, ptr @.str.81 }, %struct.meson_msr_id { ptr null, i32 82, ptr @.str.82 }, %struct.meson_msr_id { ptr null, i32 83, ptr @.str.179 }, %struct.meson_msr_id { ptr null, i32 84, ptr @.str.180 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 89, ptr @.str.38 }, %struct.meson_msr_id { ptr null, i32 90, ptr @.str.34 }, %struct.meson_msr_id { ptr null, i32 91, ptr @.str.181 }, %struct.meson_msr_id { ptr null, i32 92, ptr @.str.182 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 94, ptr @.str.183 }, %struct.meson_msr_id { ptr null, i32 95, ptr @.str.184 }, %struct.meson_msr_id { ptr null, i32 96, ptr @.str.185 }, %struct.meson_msr_id { ptr null, i32 97, ptr @.str.186 }, %struct.meson_msr_id { ptr null, i32 98, ptr @.str.187 }, %struct.meson_msr_id { ptr null, i32 99, ptr @.str.188 }, %struct.meson_msr_id { ptr null, i32 100, ptr @.str.189 }, %struct.meson_msr_id { ptr null, i32 101, ptr @.str.190 }, %struct.meson_msr_id { ptr null, i32 102, ptr @.str.191 }, %struct.meson_msr_id { ptr null, i32 103, ptr @.str.192 }, %struct.meson_msr_id { ptr null, i32 104, ptr @.str.193 }, %struct.meson_msr_id { ptr null, i32 105, ptr @.str.194 }, %struct.meson_msr_id { ptr null, i32 106, ptr @.str.195 }, %struct.meson_msr_id { ptr null, i32 107, ptr @.str.196 }, %struct.meson_msr_id { ptr null, i32 108, ptr @.str.150 }, %struct.meson_msr_id { ptr null, i32 109, ptr @.str.151 }, %struct.meson_msr_id { ptr null, i32 110, ptr @.str.197 }, %struct.meson_msr_id { ptr null, i32 111, ptr @.str.198 }, %struct.meson_msr_id { ptr null, i32 112, ptr @.str.199 }, %struct.meson_msr_id { ptr null, i32 113, ptr @.str.200 }, %struct.meson_msr_id { ptr null, i32 114, ptr @.str.201 }, %struct.meson_msr_id { ptr null, i32 115, ptr @.str.202 }, %struct.meson_msr_id { ptr null, i32 116, ptr @.str.203 }, %struct.meson_msr_id { ptr null, i32 117, ptr @.str.126 }, %struct.meson_msr_id { ptr null, i32 118, ptr @.str.127 }, %struct.meson_msr_id { ptr null, i32 119, ptr @.str.204 }, %struct.meson_msr_id { ptr null, i32 120, ptr @.str.128 }, %struct.meson_msr_id { ptr null, i32 121, ptr @.str.129 }, %struct.meson_msr_id { ptr null, i32 122, ptr @.str.205 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@clk_msr_sm1 = internal global { [128 x %struct.meson_msr_id], [384 x i8] } { [128 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.16 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.17 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.18 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.188 }, %struct.meson_msr_id { ptr null, i32 4, ptr @.str.20 }, %struct.meson_msr_id { ptr null, i32 5, ptr @.str.112 }, %struct.meson_msr_id { ptr null, i32 6, ptr @.str.21 }, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.22 }, %struct.meson_msr_id { ptr null, i32 8, ptr @.str.23 }, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.24 }, %struct.meson_msr_id { ptr null, i32 10, ptr @.str.25 }, %struct.meson_msr_id { ptr null, i32 11, ptr @.str.154 }, %struct.meson_msr_id { ptr null, i32 12, ptr @.str.155 }, %struct.meson_msr_id { ptr null, i32 13, ptr @.str.156 }, %struct.meson_msr_id { ptr null, i32 14, ptr @.str.29 }, %struct.meson_msr_id { ptr null, i32 15, ptr @.str.30 }, %struct.meson_msr_id { ptr null, i32 16, ptr @.str.31 }, %struct.meson_msr_id { ptr null, i32 17, ptr @.str.32 }, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.33 }, %struct.meson_msr_id { ptr null, i32 19, ptr @.str.157 }, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.35 }, %struct.meson_msr_id { ptr null, i32 21, ptr @.str.158 }, %struct.meson_msr_id { ptr null, i32 22, ptr @.str.37 }, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.159 }, %struct.meson_msr_id { ptr null, i32 24, ptr @.str.160 }, %struct.meson_msr_id { ptr null, i32 25, ptr @.str.89 }, %struct.meson_msr_id { ptr null, i32 26, ptr @.str.39 }, %struct.meson_msr_id { ptr null, i32 27, ptr @.str.161 }, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.40 }, %struct.meson_msr_id { ptr null, i32 29, ptr @.str.162 }, %struct.meson_msr_id { ptr null, i32 30, ptr @.str.163 }, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.41 }, %struct.meson_msr_id { ptr null, i32 32, ptr @.str.42 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 34, ptr @.str.165 }, %struct.meson_msr_id { ptr null, i32 35, ptr @.str.43 }, %struct.meson_msr_id { ptr null, i32 36, ptr @.str.44 }, %struct.meson_msr_id { ptr null, i32 37, ptr @.str.166 }, %struct.meson_msr_id { ptr null, i32 38, ptr @.str.46 }, %struct.meson_msr_id { ptr null, i32 39, ptr @.str.167 }, %struct.meson_msr_id { ptr null, i32 40, ptr @.str.206 }, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.49 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.50 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.51 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.52 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.53 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.54 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.55 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.56 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.57 }, %struct.meson_msr_id { ptr null, i32 50, ptr @.str.58 }, %struct.meson_msr_id { ptr null, i32 51, ptr @.str.168 }, %struct.meson_msr_id { ptr null, i32 52, ptr @.str.60 }, %struct.meson_msr_id { ptr null, i32 53, ptr @.str.61 }, %struct.meson_msr_id { ptr null, i32 54, ptr @.str.169 }, %struct.meson_msr_id { ptr null, i32 55, ptr @.str.62 }, %struct.meson_msr_id { ptr null, i32 56, ptr @.str.170 }, %struct.meson_msr_id { ptr null, i32 57, ptr @.str.64 }, %struct.meson_msr_id { ptr null, i32 58, ptr @.str.65 }, %struct.meson_msr_id { ptr null, i32 59, ptr @.str.66 }, %struct.meson_msr_id { ptr null, i32 60, ptr @.str.207 }, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.68 }, %struct.meson_msr_id { ptr null, i32 62, ptr @.str.171 }, %struct.meson_msr_id { ptr null, i32 63, ptr @.str.172 }, %struct.meson_msr_id { ptr null, i32 64, ptr @.str.173 }, %struct.meson_msr_id { ptr null, i32 65, ptr @.str.174 }, %struct.meson_msr_id { ptr null, i32 66, ptr @.str.70 }, %struct.meson_msr_id { ptr null, i32 67, ptr @.str.175 }, %struct.meson_msr_id { ptr null, i32 68, ptr @.str.176 }, %struct.meson_msr_id { ptr null, i32 69, ptr @.str.177 }, %struct.meson_msr_id { ptr null, i32 70, ptr @.str.71 }, %struct.meson_msr_id { ptr null, i32 71, ptr @.str.72 }, %struct.meson_msr_id { ptr null, i32 72, ptr @.str.73 }, %struct.meson_msr_id { ptr null, i32 73, ptr @.str.74 }, %struct.meson_msr_id { ptr null, i32 74, ptr @.str.208 }, %struct.meson_msr_id { ptr null, i32 75, ptr @.str.178 }, %struct.meson_msr_id { ptr null, i32 76, ptr @.str.209 }, %struct.meson_msr_id { ptr null, i32 77, ptr @.str.77 }, %struct.meson_msr_id { ptr null, i32 78, ptr @.str.78 }, %struct.meson_msr_id { ptr null, i32 79, ptr @.str.79 }, %struct.meson_msr_id { ptr null, i32 80, ptr @.str.80 }, %struct.meson_msr_id { ptr null, i32 81, ptr @.str.81 }, %struct.meson_msr_id { ptr null, i32 82, ptr @.str.82 }, %struct.meson_msr_id { ptr null, i32 83, ptr @.str.179 }, %struct.meson_msr_id { ptr null, i32 84, ptr @.str.180 }, %struct.meson_msr_id { ptr null, i32 85, ptr @.str.210 }, %struct.meson_msr_id { ptr null, i32 86, ptr @.str.211 }, %struct.meson_msr_id { ptr null, i32 87, ptr @.str.212 }, %struct.meson_msr_id { ptr null, i32 88, ptr @.str.213 }, %struct.meson_msr_id { ptr null, i32 89, ptr @.str.38 }, %struct.meson_msr_id { ptr null, i32 90, ptr @.str.34 }, %struct.meson_msr_id { ptr null, i32 91, ptr @.str.214 }, %struct.meson_msr_id { ptr null, i32 92, ptr @.str.215 }, %struct.meson_msr_id { ptr null, i32 93, ptr @.str.216 }, %struct.meson_msr_id { ptr null, i32 94, ptr @.str.183 }, %struct.meson_msr_id { ptr null, i32 95, ptr @.str.184 }, %struct.meson_msr_id { ptr null, i32 96, ptr @.str.185 }, %struct.meson_msr_id { ptr null, i32 97, ptr @.str.186 }, %struct.meson_msr_id { ptr null, i32 98, ptr @.str.187 }, %struct.meson_msr_id { ptr null, i32 99, ptr @.str.217 }, %struct.meson_msr_id { ptr null, i32 100, ptr @.str.218 }, %struct.meson_msr_id { ptr null, i32 101, ptr @.str.219 }, %struct.meson_msr_id { ptr null, i32 102, ptr @.str.220 }, %struct.meson_msr_id { ptr null, i32 103, ptr @.str.221 }, %struct.meson_msr_id { ptr null, i32 104, ptr @.str.222 }, %struct.meson_msr_id { ptr null, i32 105, ptr @.str.223 }, %struct.meson_msr_id { ptr null, i32 106, ptr @.str.195 }, %struct.meson_msr_id { ptr null, i32 107, ptr @.str.196 }, %struct.meson_msr_id { ptr null, i32 108, ptr @.str.150 }, %struct.meson_msr_id { ptr null, i32 109, ptr @.str.151 }, %struct.meson_msr_id { ptr null, i32 110, ptr @.str.197 }, %struct.meson_msr_id { ptr null, i32 111, ptr @.str.198 }, %struct.meson_msr_id { ptr null, i32 112, ptr @.str.199 }, %struct.meson_msr_id { ptr null, i32 113, ptr @.str.200 }, %struct.meson_msr_id { ptr null, i32 114, ptr @.str.201 }, %struct.meson_msr_id { ptr null, i32 115, ptr @.str.202 }, %struct.meson_msr_id { ptr null, i32 116, ptr @.str.203 }, %struct.meson_msr_id { ptr null, i32 117, ptr @.str.126 }, %struct.meson_msr_id { ptr null, i32 118, ptr @.str.127 }, %struct.meson_msr_id { ptr null, i32 119, ptr @.str.204 }, %struct.meson_msr_id { ptr null, i32 120, ptr @.str.128 }, %struct.meson_msr_id { ptr null, i32 121, ptr @.str.129 }, %struct.meson_msr_id { ptr null, i32 122, ptr @.str.205 }, %struct.meson_msr_id { ptr null, i32 123, ptr @.str.224 }, %struct.meson_msr_id { ptr null, i32 124, ptr @.str.225 }, %struct.meson_msr_id { ptr null, i32 125, ptr @.str.226 }, %struct.meson_msr_id { ptr null, i32 126, ptr @.str.227 }, %struct.meson_msr_id { ptr null, i32 127, ptr @.str.228 }], [384 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_0\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_1\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_2\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a53_ring_osc\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gp0_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enci\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk81\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"encp\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"encl\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdac\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pdm\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"amclk\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fec_0\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fec_1\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fec_2\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll_div16\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_cpu_div16\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmitx_sys\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_osc_out\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s_in_src0\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eth_phy_ref\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmi_todig\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sc_int\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sar_adc\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpll_test_out\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdec\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mali\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi_tx_pixel\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i958\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdin_meas\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcm_sclk\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcm_mclk\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"eth_rx_or_rmii\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mp0_out\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fclk_div5\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm_b\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm_a\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpu\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddr_dpll_pt\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mp1_out\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mp2_out\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mp3_out\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_core\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_emmc_b\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_emmc_a\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vid_pll_div_out\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cci\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wave420l_c\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wave420l_b\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hcodec\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"alt_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_msr\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hevc\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vid_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm_f\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm_e\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm_d\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm_c\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aoclkx2_int\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aoclk_int\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rng_ring_osc_0\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rng_ring_osc_1\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rng_ring_osc_2\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rng_ring_osc_3\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vapb\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ge2d\00", [27 x i8] zeroinitializer }, align 32
@clk_msr_gx = internal global { <{ [83 x %struct.meson_msr_id], [45 x %struct.meson_msr_id] }>, [384 x i8] } { <{ [83 x %struct.meson_msr_id], [45 x %struct.meson_msr_id] }> <{ [83 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.16 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.17 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.18 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.19 }, %struct.meson_msr_id { ptr null, i32 4, ptr @.str.20 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 6, ptr @.str.21 }, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.22 }, %struct.meson_msr_id { ptr null, i32 8, ptr @.str.23 }, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.24 }, %struct.meson_msr_id { ptr null, i32 10, ptr @.str.25 }, %struct.meson_msr_id { ptr null, i32 11, ptr @.str.26 }, %struct.meson_msr_id { ptr null, i32 12, ptr @.str.27 }, %struct.meson_msr_id { ptr null, i32 13, ptr @.str.28 }, %struct.meson_msr_id { ptr null, i32 14, ptr @.str.29 }, %struct.meson_msr_id { ptr null, i32 15, ptr @.str.30 }, %struct.meson_msr_id { ptr null, i32 16, ptr @.str.31 }, %struct.meson_msr_id { ptr null, i32 17, ptr @.str.32 }, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.33 }, %struct.meson_msr_id { ptr null, i32 19, ptr @.str.34 }, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.35 }, %struct.meson_msr_id { ptr null, i32 21, ptr @.str.36 }, %struct.meson_msr_id { ptr null, i32 22, ptr @.str.37 }, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.38 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 26, ptr @.str.39 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.40 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.41 }, %struct.meson_msr_id { ptr null, i32 32, ptr @.str.42 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 35, ptr @.str.43 }, %struct.meson_msr_id { ptr null, i32 36, ptr @.str.44 }, %struct.meson_msr_id { ptr null, i32 37, ptr @.str.45 }, %struct.meson_msr_id { ptr null, i32 38, ptr @.str.46 }, %struct.meson_msr_id { ptr null, i32 39, ptr @.str.47 }, %struct.meson_msr_id { ptr null, i32 40, ptr @.str.48 }, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.49 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.50 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.51 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.52 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.53 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.54 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.55 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.56 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.57 }, %struct.meson_msr_id { ptr null, i32 50, ptr @.str.58 }, %struct.meson_msr_id { ptr null, i32 51, ptr @.str.59 }, %struct.meson_msr_id { ptr null, i32 52, ptr @.str.60 }, %struct.meson_msr_id { ptr null, i32 53, ptr @.str.61 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 55, ptr @.str.62 }, %struct.meson_msr_id { ptr null, i32 56, ptr @.str.63 }, %struct.meson_msr_id { ptr null, i32 57, ptr @.str.64 }, %struct.meson_msr_id { ptr null, i32 58, ptr @.str.65 }, %struct.meson_msr_id { ptr null, i32 59, ptr @.str.66 }, %struct.meson_msr_id { ptr null, i32 60, ptr @.str.67 }, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.68 }, %struct.meson_msr_id { ptr null, i32 62, ptr @.str.69 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 66, ptr @.str.70 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 70, ptr @.str.71 }, %struct.meson_msr_id { ptr null, i32 71, ptr @.str.72 }, %struct.meson_msr_id { ptr null, i32 72, ptr @.str.73 }, %struct.meson_msr_id { ptr null, i32 73, ptr @.str.74 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 75, ptr @.str.75 }, %struct.meson_msr_id { ptr null, i32 76, ptr @.str.76 }, %struct.meson_msr_id { ptr null, i32 77, ptr @.str.77 }, %struct.meson_msr_id { ptr null, i32 78, ptr @.str.78 }, %struct.meson_msr_id { ptr null, i32 79, ptr @.str.79 }, %struct.meson_msr_id { ptr null, i32 80, ptr @.str.80 }, %struct.meson_msr_id { ptr null, i32 81, ptr @.str.81 }, %struct.meson_msr_id { ptr null, i32 82, ptr @.str.82 }], [45 x %struct.meson_msr_id] zeroinitializer }>, [384 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ring_osc_out_ee0\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ring_osc_out_ee1\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ring_osc_out_ee2\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a9_ring_osck\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vid_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth_rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fec_clk_0\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fec_clk_1\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fec_clk_2\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a9_clk_div16\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_sys\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtc_osc_clk_out\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2s_clk_in_src0\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_rmii_from_pad\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi_ch0_tmds\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds_fifo\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sc_clk_int\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mpll_clk_test_out\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audac_clkpi\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sdhc_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sdhc_sd\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eth_rx_tx\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcm2_sclk\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_32k_alt\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vid2_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mipi_csi_cfg\00", [19 x i8] zeroinitializer }, align 32
@clk_msr_m8 = internal global { <{ [64 x %struct.meson_msr_id], [64 x %struct.meson_msr_id] }>, [384 x i8] } { <{ [64 x %struct.meson_msr_id], [64 x %struct.meson_msr_id] }> <{ [64 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.84 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.85 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.86 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.87 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 6, ptr @.str.88 }, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.22 }, %struct.meson_msr_id { ptr null, i32 8, ptr @.str.23 }, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.24 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 11, ptr @.str.89 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 13, ptr @.str.28 }, %struct.meson_msr_id { ptr null, i32 14, ptr @.str.90 }, %struct.meson_msr_id { ptr null, i32 15, ptr @.str.91 }, %struct.meson_msr_id { ptr null, i32 16, ptr @.str.92 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.93 }, %struct.meson_msr_id { ptr null, i32 19, ptr @.str.94 }, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.95 }, %struct.meson_msr_id { ptr null, i32 21, ptr @.str.96 }, %struct.meson_msr_id { ptr null, i32 22, ptr @.str.97 }, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.98 }, %struct.meson_msr_id { ptr null, i32 24, ptr @.str.99 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 26, ptr @.str.100 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.40 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 30, ptr @.str.101 }, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.102 }, %struct.meson_msr_id { ptr null, i32 32, ptr @.str.25 }, %struct.meson_msr_id { ptr null, i32 33, ptr @.str.103 }, %struct.meson_msr_id { ptr null, i32 34, ptr @.str.104 }, %struct.meson_msr_id { ptr null, i32 35, ptr @.str.43 }, %struct.meson_msr_id { ptr null, i32 36, ptr @.str.44 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 38, ptr @.str.46 }, %struct.meson_msr_id { ptr null, i32 39, ptr @.str.47 }, %struct.meson_msr_id { ptr null, i32 40, ptr @.str.48 }, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.105 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.73 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.74 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.52 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.53 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.106 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.55 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.71 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.72 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 59, ptr @.str.66 }, %struct.meson_msr_id { ptr null, i32 60, ptr @.str.107 }, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.108 }, %struct.meson_msr_id { ptr null, i32 62, ptr @.str.109 }, %struct.meson_msr_id { ptr null, i32 63, ptr @.str.110 }], [64 x %struct.meson_msr_id] zeroinitializer }>, [384 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gp1_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mod_eth_tx_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mod_eth_rx_clk_rmii\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_emmm_c\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_slv_lrclk_c\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_slv_lrclk_b\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_slv_lrclk_a\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audio_slv_sclk_c\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audio_slv_sclk_b\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audio_slv_sclk_a\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wifi_beacon\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tdmin_lb_lrcl\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tdmin_lb_sclk\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_resample\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_pdm_sys\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_spdifout\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_spdifin\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_lrclk_f\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_lrclk_e\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_lrclk_d\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_lrclk_c\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_lrclk_b\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_lrclk_a\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_sclk_f\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_sclk_e\00", [19 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_sclk_d\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_sclk_c\00", [19 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_sclk_b\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_sclk_a\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_mclk_f\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_mclk_e\00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_mclk_d\00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_mclk_c\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_mclk_b\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_mclk_a\00", [19 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_refclk_n\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_refclk_p\00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audio_locker_out\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"audio_locker_in\00", [16 x i8] zeroinitializer }, align 32
@clk_msr_axg = internal global { <{ [110 x %struct.meson_msr_id], [18 x %struct.meson_msr_id] }>, [384 x i8] } { <{ [110 x %struct.meson_msr_id], [18 x %struct.meson_msr_id] }> <{ [110 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.16 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.17 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.18 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.19 }, %struct.meson_msr_id { ptr null, i32 4, ptr @.str.20 }, %struct.meson_msr_id { ptr null, i32 5, ptr @.str.112 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.22 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.24 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 17, ptr @.str.32 }, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.33 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.35 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.113 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.40 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.41 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 40, ptr @.str.114 }, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.115 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.50 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.51 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.52 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.53 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.54 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.55 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.56 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.57 }, %struct.meson_msr_id { ptr null, i32 50, ptr @.str.58 }, %struct.meson_msr_id { ptr null, i32 51, ptr @.str.116 }, %struct.meson_msr_id { ptr null, i32 52, ptr @.str.60 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.68 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 66, ptr @.str.117 }, %struct.meson_msr_id { ptr null, i32 67, ptr @.str.118 }, %struct.meson_msr_id { ptr null, i32 68, ptr @.str.119 }, %struct.meson_msr_id { ptr null, i32 69, ptr @.str.120 }, %struct.meson_msr_id { ptr null, i32 70, ptr @.str.121 }, %struct.meson_msr_id { ptr null, i32 71, ptr @.str.122 }, %struct.meson_msr_id { ptr null, i32 72, ptr @.str.73 }, %struct.meson_msr_id { ptr null, i32 73, ptr @.str.74 }, %struct.meson_msr_id { ptr null, i32 74, ptr @.str.123 }, %struct.meson_msr_id { ptr null, i32 75, ptr @.str.124 }, %struct.meson_msr_id { ptr null, i32 76, ptr @.str.125 }, %struct.meson_msr_id { ptr null, i32 77, ptr @.str.77 }, %struct.meson_msr_id { ptr null, i32 78, ptr @.str.78 }, %struct.meson_msr_id { ptr null, i32 79, ptr @.str.79 }, %struct.meson_msr_id { ptr null, i32 80, ptr @.str.80 }, %struct.meson_msr_id { ptr null, i32 81, ptr @.str.81 }, %struct.meson_msr_id { ptr null, i32 82, ptr @.str.82 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 84, ptr @.str.126 }, %struct.meson_msr_id { ptr null, i32 85, ptr @.str.127 }, %struct.meson_msr_id { ptr null, i32 86, ptr @.str.128 }, %struct.meson_msr_id { ptr null, i32 87, ptr @.str.129 }, %struct.meson_msr_id { ptr null, i32 88, ptr @.str.130 }, %struct.meson_msr_id { ptr null, i32 89, ptr @.str.131 }, %struct.meson_msr_id { ptr null, i32 90, ptr @.str.132 }, %struct.meson_msr_id { ptr null, i32 91, ptr @.str.133 }, %struct.meson_msr_id { ptr null, i32 92, ptr @.str.134 }, %struct.meson_msr_id { ptr null, i32 93, ptr @.str.135 }, %struct.meson_msr_id { ptr null, i32 94, ptr @.str.136 }, %struct.meson_msr_id { ptr null, i32 95, ptr @.str.137 }, %struct.meson_msr_id { ptr null, i32 96, ptr @.str.138 }, %struct.meson_msr_id { ptr null, i32 97, ptr @.str.139 }, %struct.meson_msr_id { ptr null, i32 98, ptr @.str.140 }, %struct.meson_msr_id { ptr null, i32 99, ptr @.str.141 }, %struct.meson_msr_id { ptr null, i32 100, ptr @.str.142 }, %struct.meson_msr_id { ptr null, i32 101, ptr @.str.143 }, %struct.meson_msr_id { ptr null, i32 102, ptr @.str.144 }, %struct.meson_msr_id { ptr null, i32 103, ptr @.str.145 }, %struct.meson_msr_id { ptr null, i32 104, ptr @.str.146 }, %struct.meson_msr_id { ptr null, i32 105, ptr @.str.147 }, %struct.meson_msr_id { ptr null, i32 106, ptr @.str.148 }, %struct.meson_msr_id { ptr null, i32 107, ptr @.str.149 }, %struct.meson_msr_id { ptr null, i32 108, ptr @.str.150 }, %struct.meson_msr_id { ptr null, i32 109, ptr @.str.151 }], [18 x %struct.meson_msr_id] zeroinitializer }>, [384 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_cpu_ring_osc\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eth_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hifi_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mod_tcon\00", [23 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcd_an_ph2\00", [21 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcd_an_ph3\00", [21 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mpll_50m\00", [23 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth_125m\00", [23 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in_mac\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_inp\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_inn\00", [23 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_cpu_ring_osc_1\00", [45 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eth_mpll_50m\00", [19 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cdac\00", [27 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bt656\00", [26 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_emmc_c\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpu_clkc\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wave420l_a\00", [21 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hevcb\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi_meas\00", [23 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spicc_1\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spicc_0\00", [24 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi_phy\00", [24 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdcp22_esm\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdcp22_skp\00", [21 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hevcf\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"co_rx\00", [26 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"co_tx\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_cpub_div16\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_pll_cpub_div16\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eth_phy_rx\00", [21 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eth_phy_pll\00", [20 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vpu_b\00", [26 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpu_b_tmp\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ts\00", [29 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_3\00", [46 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_4\00", [46 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_5\00", [46 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_6\00", [46 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_7\00", [46 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_8\00", [46 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ring_osc_out_ee_9\00", [46 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ephy_test\00", [22 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"au_dac_g128x\00", [19 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audio_tdmout_c_sclk\00", [44 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audio_tdmout_b_sclk\00", [44 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audio_tdmout_a_sclk\00", [44 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audio_tdmin_lb_sclk\00", [44 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_tdmin_c_sclk\00", [45 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_tdmin_b_sclk\00", [45 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_tdmin_a_sclk\00", [45 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audio_spdifout_b\00", [47 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_pdm_dclk\00", [17 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_ring_osc_out_4\00", [45 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_ring_osc_out_5\00", [45 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_ring_osc_out_6\00", [45 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_ring_osc_out_7\00", [45 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_ring_osc_out_8\00", [45 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_ring_osc_out_9\00", [45 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mipi_dsi_phy\00", [19 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cis2_adapt\00", [21 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nna_core\00", [23 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nna_axi\00", [24 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vad\00", [28 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm_ring_osc_out_10\00", [44 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm_ring_osc_out_11\00", [44 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm_ring_osc_out_12\00", [44 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm_ring_osc_out_13\00", [44 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm_ring_osc_out_14\00", [44 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm_ring_osc_out_15\00", [44 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm_ring_osc_out_16\00", [44 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"audio_resampled\00", [16 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"earcrx_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"earcrx_pll_test\00", [16 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_phy0\00", [23 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"csi2_data\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"meson_msr_driver\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 683, i32 31 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 686, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant [22 x i8] c"meson_msr_match_table\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 654, i32 34 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 620, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [28 x i8] c"meson_clk_msr_regmap_config\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 598, i32 35 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 630, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 635, i32 28 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 636, i32 28 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 638, i32 22 }
@___asan_gen_.274 = private unnamed_addr constant [21 x i8] c"clk_msr_summary_fops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 596, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant [13 x i8] c"clk_msr_fops\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 571, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 579, i32 14 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 580, i32 14 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 590, i32 17 }
@___asan_gen_.289 = private unnamed_addr constant [13 x i8] c"measure_lock\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 15, i32 8 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 567, i32 16 }
@___asan_gen_.301 = private unnamed_addr constant [13 x i8] c"clk_msr_g12a\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 245, i32 28 }
@___asan_gen_.304 = private unnamed_addr constant [12 x i8] c"clk_msr_sm1\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 361, i32 28 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 102, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 103, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 104, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 105, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 106, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 107, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 108, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 109, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 110, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 111, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 112, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 113, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 114, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 115, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 116, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 117, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 118, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 119, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 120, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 121, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 122, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 123, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 124, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 125, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 126, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 127, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 128, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 129, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 130, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 131, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 132, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 133, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 134, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 135, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 136, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 137, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 138, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 139, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 140, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 141, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 142, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 143, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 144, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 145, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 146, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 147, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 148, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 149, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 150, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 151, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 152, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 153, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 154, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 155, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 156, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 157, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 158, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 159, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 160, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 161, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 162, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 163, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 164, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 165, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 166, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 167, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 168, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [11 x i8] c"clk_msr_gx\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 101, i32 28 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 53, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 54, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 55, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 56, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 57, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 61, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 63, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 64, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 65, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 66, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 67, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 68, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 69, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 70, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 71, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 72, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 73, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 75, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 76, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 78, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 79, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 85, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 90, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 95, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 96, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 97, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 98, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant [11 x i8] c"clk_msr_m8\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 52, i32 28 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 177, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 183, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 186, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 187, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 197, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 200, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 201, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 202, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 203, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 204, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 205, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 208, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 209, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 210, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 217, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 218, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 219, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 220, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 221, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 222, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 223, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 224, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 225, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 226, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 227, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 228, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 229, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 230, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 231, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 232, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 233, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 234, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 235, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 236, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 237, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 238, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 239, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 240, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 241, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 242, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [12 x i8] c"clk_msr_axg\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 171, i32 28 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 249, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 256, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 257, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 258, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 264, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 266, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 268, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 269, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 272, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 274, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 275, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 278, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 279, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 282, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 284, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 295, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 298, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 300, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 305, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 306, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 307, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 308, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 310, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 311, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 312, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 317, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 324, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 325, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 328, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 329, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 330, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 331, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 332, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 333, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 334, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 335, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 336, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 337, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 338, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 339, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 340, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 341, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 342, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 343, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 346, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 347, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 348, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 349, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 350, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 351, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 352, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 355, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 358, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 401, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 421, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 435, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 437, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 446, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 447, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 448, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 449, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 452, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 453, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 454, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 460, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 461, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 462, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 463, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 464, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 465, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 466, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 484, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 485, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 486, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 487, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.944 = private constant [43 x i8] c"../drivers/soc/amlogic/meson-clk-measure.c\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 488, i32 2 }
@llvm.compiler.used = appending global [245 x ptr] [ptr @__UNIQUE_ID_file221, ptr @__UNIQUE_ID_license222, ptr @__exitcall_meson_msr_driver_exit, ptr @__initcall__kmod_meson_clk_measure__220_690_meson_msr_driver_init6, ptr @meson_msr_driver_exit, ptr @meson_msr_probe._entry, ptr @meson_msr_probe._entry_ptr, ptr @meson_msr_driver, ptr @.str, ptr @meson_msr_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @meson_msr_probe._key, ptr @meson_clk_msr_regmap_config, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @clk_msr_summary_fops, ptr @clk_msr_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @measure_lock, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @clk_msr_g12a, ptr @clk_msr_sm1, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @clk_msr_gx, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @clk_msr_m8, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @clk_msr_axg, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228], section "llvm.metadata"
@0 = internal global [239 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_msr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_msr_match_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_msr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_msr_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_clk_msr_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_msr_summary_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_msr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @measure_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_msr_g12a to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_msr_sm1 to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_msr_gx to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_msr_m8 to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_msr_axg to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_msr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_msr_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_msr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_msr_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_msr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1540, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %msr_table = getelementptr inbounds %struct.meson_msr, ptr %call.i, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %msr_table, ptr %call2, i32 1536)
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call13 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call7, ptr noundef nonnull @meson_clk_msr_regmap_config, ptr noundef nonnull @meson_msr_probe._key, ptr noundef nonnull @.str.6) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i66 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call20 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef null) #5
  %call21 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.8, ptr noundef %call20) #5
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %call20, ptr noundef %msr_table, ptr noundef nonnull @clk_msr_summary_fops) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19
  %i.067 = phi i32 [ 0, %if.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.meson_msr, ptr %call.i, i32 0, i32 1, i32 %i.067, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool26.not = icmp eq ptr %5, null
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.end28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.meson_msr, ptr %call.i, i32 0, i32 1, i32 %i.067
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %arrayidx, align 4
  %call37 = tail call ptr @debugfs_create_file(ptr noundef nonnull %5, i16 noundef zeroext 292, ptr noundef %call21, ptr noundef %arrayidx, ptr noundef nonnull @clk_msr_fops) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then16, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then9 ], [ %3, %if.then16 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_msr_summary_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @clk_msr_summary_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_msr_summary_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %precision = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %precision) #5
  %2 = ptrtoint ptr %precision to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %precision, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.10) #5
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.11) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.meson_msr_id, ptr %1, i32 %i.021, i32 2
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.meson_msr_id, ptr %1, i32 %i.021
  %call = call fastcc i32 @meson_measure_best_id(ptr noundef %arrayidx, ptr noundef nonnull %precision)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %7 = ptrtoint ptr %precision to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %precision, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, ptr noundef %6, i32 noundef %call, i32 noundef %8) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %precision) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_measure_best_id(ptr nocapture noundef readonly %clk_msr_id, ptr nocapture noundef writeonly %precision) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.meson_msr_id, ptr %clk_msr_id, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %duration.0 = phi i32 [ 640, %entry ], [ %sub, %do.cond.do.body_crit_edge ]
  %0 = ptrtoint ptr %clk_msr_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_msr_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !486
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @measure_lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end19.i, label %do.body.meson_measure_id.exit_crit_edge

do.body.meson_measure_id.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_measure_id.exit

do.end19.i:                                       ; preds = %do.body
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %4, i32 noundef 4, i32 noundef 0) #5
  %sub.i = add nsw i32 %duration.0, -1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 4, i32 noundef 65535, i32 noundef %sub.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %shl48.i = shl i32 %8, 20
  %and49.i = and i32 %shl48.i, 133169152
  %call.i416.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 4, i32 noundef 133169152, i32 noundef %and49.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i417.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 4, i32 noundef 589824, i32 noundef 589824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call53.i = call i64 @ktime_get() #5
  %add.i.i = add i64 %call53.i, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 518) #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call67452.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67452.i)
  %tobool68.not453.i = icmp eq i32 %call67452.i, 0
  br i1 %tobool68.not453.i, label %do.end19.i.lor.lhs.false.i_crit_edge, label %do.end19.i.if.then94.i_crit_edge

do.end19.i.if.then94.i_crit_edge:                 ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then94.i

do.end19.i.lor.lhs.false.i_crit_edge:             ; preds = %do.end19.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then82.i.lor.lhs.false.i_crit_edge, %do.end19.i.lor.lhs.false.i_crit_edge
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool70.not.i = icmp sgt i32 %16, -1
  br i1 %tobool70.not.i, label %lor.lhs.false.i.if.end95.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end95.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call74.i = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call74.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call74.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then82.i

if.then82.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call67.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 4, ptr noundef nonnull %val.i) #5
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.then82.i.lor.lhs.false.i_crit_edge, label %if.then82.i.if.then94.i_crit_edge

if.then82.i.if.then94.i_crit_edge:                ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then94.i

if.then82.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call79.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 4, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool85.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool85.not.i, label %lor.end.i, label %for.end.i.if.then94.i_crit_edge

for.end.i.if.then94.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then94.i

lor.end.i:                                        ; preds = %for.end.i
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr.i)
  %tobool87.not.i = icmp sgt i32 %.pr.i, -1
  br i1 %tobool87.not.i, label %lor.end.i.if.end95.i_crit_edge, label %lor.end.i.if.then94.i_crit_edge

lor.end.i.if.then94.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then94.i

lor.end.i.if.end95.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i

if.then94.i:                                      ; preds = %lor.end.i.if.then94.i_crit_edge, %for.end.i.if.then94.i_crit_edge, %if.then82.i.if.then94.i_crit_edge, %do.end19.i.if.then94.i_crit_edge
  %22 = phi i32 [ -110, %lor.end.i.if.then94.i_crit_edge ], [ %call67452.i, %do.end19.i.if.then94.i_crit_edge ], [ %call79.i, %for.end.i.if.then94.i_crit_edge ], [ %call67.i, %if.then82.i.if.then94.i_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @measure_lock) #5
  br label %meson_measure_id.exit

if.end95.i:                                       ; preds = %lor.end.i.if.end95.i_crit_edge, %lor.lhs.false.i.if.end95.i_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i418.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 4, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call99.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 12, ptr noundef nonnull %val.i) #5
  call void @mutex_unlock(ptr noundef nonnull @measure_lock) #5
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %28)
  %cmp100.i = icmp ugt i32 %28, 65534
  br i1 %cmp100.i, label %meson_measure_id.exit.thread, label %if.end102.i

meson_measure_id.exit.thread:                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %do.cond

if.end102.i:                                      ; preds = %if.end95.i
  %conv.i = zext i32 %28 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000
  %div412.i = lshr exact i32 %duration.0, 1
  %conv104.i = zext i32 %div412.i to i64
  %add105.i = add nuw nsw i64 %mul.i, %conv104.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add105.i)
  %cmp289.i = icmp ult i64 %add105.i, 4294967296
  br i1 %cmp289.i, label %if.then294.i, label %if.else300.i, !prof !487

if.then294.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv295.i = trunc i64 %add105.i to i32
  %div298.i = udiv i32 %conv295.i, %duration.0
  br label %meson_measure_id.exit

if.else300.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %duration.0, i64 %add105.i) #9, !srcloc !488
  %asmresult1.i.i = extractvalue { i64, i64 } %29, 1
  %extract.t450.i = trunc i64 %asmresult1.i.i to i32
  br label %meson_measure_id.exit

meson_measure_id.exit:                            ; preds = %if.else300.i, %if.then294.i, %if.then94.i, %do.body.meson_measure_id.exit_crit_edge
  %retval.0.i = phi i32 [ %22, %if.then94.i ], [ %call.i, %do.body.meson_measure_id.exit_crit_edge ], [ %div298.i, %if.then294.i ], [ %extract.t450.i, %if.else300.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp, label %do.cond.thread, label %meson_measure_id.exit.do.cond_crit_edge

meson_measure_id.exit.do.cond_crit_edge:          ; preds = %meson_measure_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

do.cond.thread:                                   ; preds = %meson_measure_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 2000000, %duration.0
  %30 = ptrtoint ptr %precision to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div, ptr %precision, align 4
  br label %do.end

do.cond:                                          ; preds = %meson_measure_id.exit.do.cond_crit_edge, %meson_measure_id.exit.thread
  %retval.0.i25 = phi i32 [ -22, %meson_measure_id.exit.thread ], [ %retval.0.i, %meson_measure_id.exit.do.cond_crit_edge ]
  %sub = add nsw i32 %duration.0, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1 = icmp ne i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %retval.0.i25)
  %cmp2 = icmp eq i32 %retval.0.i25, -22
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.cond.thread
  %retval.0.i2431 = phi i32 [ %retval.0.i, %do.cond.thread ], [ %retval.0.i25, %do.cond.do.end_crit_edge ]
  ret i32 %retval.0.i2431
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_msr_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @clk_msr_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_msr_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %precision = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %precision) #5
  %2 = ptrtoint ptr %precision to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %precision, align 4
  %call = call fastcc i32 @meson_measure_best_id(ptr noundef %1, ptr noundef nonnull %precision)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %precision to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %precision, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %call, i32 noundef %4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %precision) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 239)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 239)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475}
!llvm.module.flags = !{!477, !478, !479, !480, !481, !482, !483, !484}
!llvm.ident = !{!485}

!0 = !{ptr @__initcall__kmod_meson_clk_measure__220_690_meson_msr_driver_init6, !1, !"__initcall__kmod_meson_clk_measure__220_690_meson_msr_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 690, i32 1}
!2 = !{ptr @__exitcall_meson_msr_driver_exit, !1, !"__exitcall_meson_msr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file221, !4, !"__UNIQUE_ID_file221", i1 false, i1 false}
!4 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 691, i32 1}
!5 = !{ptr @__UNIQUE_ID_license222, !4, !"__UNIQUE_ID_license222", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 686, i32 12}
!8 = !{ptr @meson_msr_driver, !9, !"meson_msr_driver", i1 false, i1 false}
!9 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 683, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 620, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @meson_msr_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @meson_msr_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @meson_msr_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 630, i32 17}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 635, i32 28}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 636, i32 28}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 638, i32 22}
!27 = !{ptr @meson_clk_msr_regmap_config, !28, !"meson_clk_msr_regmap_config", i1 false, i1 false}
!28 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 598, i32 35}
!29 = !{ptr @clk_msr_summary_fops, !30, !"clk_msr_summary_fops", i1 false, i1 false}
!30 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 596, i32 1}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 579, i32 14}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 580, i32 14}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 590, i32 17}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 15, i32 8}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @measure_lock, !38, !"measure_lock", i1 false, i1 false}
!41 = !{ptr @clk_msr_fops, !42, !"clk_msr_fops", i1 false, i1 false}
!42 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 571, i32 1}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 567, i32 16}
!45 = !{ptr @meson_msr_match_table, !46, !"meson_msr_match_table", i1 false, i1 false}
!46 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 654, i32 34}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 102, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 103, i32 2}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 104, i32 2}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 105, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 106, i32 2}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 107, i32 2}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 108, i32 2}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 109, i32 2}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 110, i32 2}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 111, i32 2}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 112, i32 2}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 113, i32 2}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 114, i32 2}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 115, i32 2}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 116, i32 2}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 117, i32 2}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 118, i32 2}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 119, i32 2}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 120, i32 2}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 121, i32 2}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 122, i32 2}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 123, i32 2}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 124, i32 2}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 125, i32 2}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 126, i32 2}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 127, i32 2}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 128, i32 2}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 129, i32 2}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 130, i32 2}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 131, i32 2}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 132, i32 2}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 133, i32 2}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 134, i32 2}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 135, i32 2}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 136, i32 2}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 137, i32 2}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 138, i32 2}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 139, i32 2}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 140, i32 2}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 141, i32 2}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 142, i32 2}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 143, i32 2}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 144, i32 2}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 145, i32 2}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 146, i32 2}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 147, i32 2}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 148, i32 2}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 149, i32 2}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 150, i32 2}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 151, i32 2}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 152, i32 2}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 153, i32 2}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 154, i32 2}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 155, i32 2}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 156, i32 2}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 157, i32 2}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 158, i32 2}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 159, i32 2}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 160, i32 2}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 161, i32 2}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 162, i32 2}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 163, i32 2}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 164, i32 2}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 165, i32 2}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 166, i32 2}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 167, i32 2}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 168, i32 2}
!181 = !{ptr @clk_msr_gx, !182, !"clk_msr_gx", i1 false, i1 false}
!182 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 101, i32 28}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 53, i32 2}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 54, i32 2}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 55, i32 2}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 56, i32 2}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 57, i32 2}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 61, i32 2}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 63, i32 2}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 64, i32 2}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 65, i32 2}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 66, i32 2}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 67, i32 2}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 68, i32 2}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 69, i32 2}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 70, i32 2}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 71, i32 2}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 72, i32 2}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 73, i32 2}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 75, i32 2}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 76, i32 2}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 78, i32 2}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 79, i32 2}
!225 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 85, i32 2}
!227 = !{ptr @.str.106, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 90, i32 2}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 95, i32 2}
!231 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 96, i32 2}
!233 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 97, i32 2}
!235 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 98, i32 2}
!237 = !{ptr @clk_msr_m8, !238, !"clk_msr_m8", i1 false, i1 false}
!238 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 52, i32 28}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 177, i32 2}
!241 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 183, i32 2}
!243 = !{ptr @.str.114, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 186, i32 2}
!245 = !{ptr @.str.115, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 187, i32 2}
!247 = !{ptr @.str.116, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 197, i32 2}
!249 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 200, i32 2}
!251 = !{ptr @.str.118, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 201, i32 2}
!253 = !{ptr @.str.119, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 202, i32 2}
!255 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 203, i32 2}
!257 = !{ptr @.str.121, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 204, i32 2}
!259 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 205, i32 2}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 208, i32 2}
!263 = !{ptr @.str.124, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 209, i32 2}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 210, i32 2}
!267 = !{ptr @.str.126, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 217, i32 2}
!269 = !{ptr @.str.127, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 218, i32 2}
!271 = !{ptr @.str.128, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 219, i32 2}
!273 = !{ptr @.str.129, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 220, i32 2}
!275 = !{ptr @.str.130, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 221, i32 2}
!277 = !{ptr @.str.131, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 222, i32 2}
!279 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 223, i32 2}
!281 = !{ptr @.str.133, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 224, i32 2}
!283 = !{ptr @.str.134, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 225, i32 2}
!285 = !{ptr @.str.135, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 226, i32 2}
!287 = !{ptr @.str.136, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 227, i32 2}
!289 = !{ptr @.str.137, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 228, i32 2}
!291 = !{ptr @.str.138, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 229, i32 2}
!293 = !{ptr @.str.139, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 230, i32 2}
!295 = !{ptr @.str.140, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 231, i32 2}
!297 = !{ptr @.str.141, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 232, i32 2}
!299 = !{ptr @.str.142, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 233, i32 2}
!301 = !{ptr @.str.143, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 234, i32 2}
!303 = !{ptr @.str.144, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 235, i32 2}
!305 = !{ptr @.str.145, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 236, i32 2}
!307 = !{ptr @.str.146, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 237, i32 2}
!309 = !{ptr @.str.147, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 238, i32 2}
!311 = !{ptr @.str.148, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 239, i32 2}
!313 = !{ptr @.str.149, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 240, i32 2}
!315 = !{ptr @.str.150, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 241, i32 2}
!317 = !{ptr @.str.151, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 242, i32 2}
!319 = !{ptr @clk_msr_axg, !320, !"clk_msr_axg", i1 false, i1 false}
!320 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 171, i32 28}
!321 = !{ptr @.str.153, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 249, i32 2}
!323 = !{ptr @.str.154, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 256, i32 2}
!325 = !{ptr @.str.155, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 257, i32 2}
!327 = !{ptr @.str.156, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 258, i32 2}
!329 = !{ptr @.str.157, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 264, i32 2}
!331 = !{ptr @.str.158, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 266, i32 2}
!333 = !{ptr @.str.159, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 268, i32 2}
!335 = !{ptr @.str.160, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 269, i32 2}
!337 = !{ptr @.str.161, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 272, i32 2}
!339 = !{ptr @.str.162, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 274, i32 2}
!341 = !{ptr @.str.163, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 275, i32 2}
!343 = !{ptr @.str.164, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 278, i32 2}
!345 = !{ptr @.str.165, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 279, i32 2}
!347 = !{ptr @.str.166, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 282, i32 2}
!349 = !{ptr @.str.167, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 284, i32 2}
!351 = !{ptr @.str.168, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 295, i32 2}
!353 = !{ptr @.str.169, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 298, i32 2}
!355 = !{ptr @.str.170, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 300, i32 2}
!357 = !{ptr @.str.171, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 305, i32 2}
!359 = !{ptr @.str.172, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 306, i32 2}
!361 = !{ptr @.str.173, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 307, i32 2}
!363 = !{ptr @.str.174, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 308, i32 2}
!365 = !{ptr @.str.175, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 310, i32 2}
!367 = !{ptr @.str.176, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 311, i32 2}
!369 = !{ptr @.str.177, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 312, i32 2}
!371 = !{ptr @.str.178, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 317, i32 2}
!373 = !{ptr @.str.179, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 324, i32 2}
!375 = !{ptr @.str.180, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 325, i32 2}
!377 = !{ptr @.str.181, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 328, i32 2}
!379 = !{ptr @.str.182, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 329, i32 2}
!381 = !{ptr @.str.183, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 330, i32 2}
!383 = !{ptr @.str.184, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 331, i32 2}
!385 = !{ptr @.str.185, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 332, i32 2}
!387 = !{ptr @.str.186, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 333, i32 2}
!389 = !{ptr @.str.187, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 334, i32 2}
!391 = !{ptr @.str.188, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 335, i32 2}
!393 = !{ptr @.str.189, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 336, i32 2}
!395 = !{ptr @.str.190, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 337, i32 2}
!397 = !{ptr @.str.191, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 338, i32 2}
!399 = !{ptr @.str.192, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 339, i32 2}
!401 = !{ptr @.str.193, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 340, i32 2}
!403 = !{ptr @.str.194, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 341, i32 2}
!405 = !{ptr @.str.195, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 342, i32 2}
!407 = !{ptr @.str.196, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 343, i32 2}
!409 = !{ptr @.str.197, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 346, i32 2}
!411 = !{ptr @.str.198, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 347, i32 2}
!413 = !{ptr @.str.199, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 348, i32 2}
!415 = !{ptr @.str.200, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 349, i32 2}
!417 = !{ptr @.str.201, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 350, i32 2}
!419 = !{ptr @.str.202, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 351, i32 2}
!421 = !{ptr @.str.203, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 352, i32 2}
!423 = !{ptr @.str.204, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 355, i32 2}
!425 = !{ptr @.str.205, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 358, i32 2}
!427 = !{ptr @clk_msr_g12a, !428, !"clk_msr_g12a", i1 false, i1 false}
!428 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 245, i32 28}
!429 = !{ptr @.str.206, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 401, i32 2}
!431 = !{ptr @.str.207, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 421, i32 2}
!433 = !{ptr @.str.208, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 435, i32 2}
!435 = !{ptr @.str.209, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 437, i32 2}
!437 = !{ptr @.str.210, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 446, i32 2}
!439 = !{ptr @.str.211, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 447, i32 2}
!441 = !{ptr @.str.212, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 448, i32 2}
!443 = !{ptr @.str.213, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 449, i32 2}
!445 = !{ptr @.str.214, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 452, i32 2}
!447 = !{ptr @.str.215, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 453, i32 2}
!449 = !{ptr @.str.216, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 454, i32 2}
!451 = !{ptr @.str.217, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 460, i32 2}
!453 = !{ptr @.str.218, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 461, i32 2}
!455 = !{ptr @.str.219, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 462, i32 2}
!457 = !{ptr @.str.220, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 463, i32 2}
!459 = !{ptr @.str.221, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 464, i32 2}
!461 = !{ptr @.str.222, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 465, i32 2}
!463 = !{ptr @.str.223, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 466, i32 2}
!465 = !{ptr @.str.224, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 484, i32 2}
!467 = !{ptr @.str.225, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 485, i32 2}
!469 = !{ptr @.str.226, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 486, i32 2}
!471 = !{ptr @.str.227, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 487, i32 2}
!473 = !{ptr @.str.228, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 488, i32 2}
!475 = !{ptr @clk_msr_sm1, !476, !"clk_msr_sm1", i1 false, i1 false}
!476 = !{!"../drivers/soc/amlogic/meson-clk-measure.c", i32 361, i32 28}
!477 = !{i32 1, !"wchar_size", i32 2}
!478 = !{i32 1, !"min_enum_size", i32 4}
!479 = !{i32 8, !"branch-target-enforcement", i32 0}
!480 = !{i32 8, !"sign-return-address", i32 0}
!481 = !{i32 8, !"sign-return-address-all", i32 0}
!482 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!483 = !{i32 7, !"uwtable", i32 1}
!484 = !{i32 7, !"frame-pointer", i32 2}
!485 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!486 = !{!"auto-init"}
!487 = !{!"branch_weights", i32 2000, i32 1}
!488 = !{i64 2148932539, i64 2148932819, i64 2148933153, i64 2148933487}
