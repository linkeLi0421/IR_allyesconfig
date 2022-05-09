; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/sps30_i2c.c_pt.bc'
source_filename = "../drivers/iio/chemical/sps30_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.sps30_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sps30_state = type { %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_sps30_i2c__288_254_sps30_i2c_driver_init6 = internal global ptr @sps30_i2c_driver_init, section ".initcall6.init", align 4
@sps30_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @sps30_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sps30_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sps30_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sps30_i2c_driver_exit = internal global ptr @sps30_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [65 x i8] c"sps30_i2c.author=Tomasz Duszynski <tomasz.duszynski@octakon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [75 x i8] c"sps30_i2c.description=Sensirion SPS30 particulate matter sensor i2c driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"sps30_i2c.file=drivers/iio/chemical/sps30_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"sps30_i2c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sps30_i2c\00", [22 x i8] zeroinitializer }, align 32
@sps30_i2c_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,sps30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sps30_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sps30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sps30_i2c_crc8_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@sps30_i2c_ops = internal constant { %struct.sps30_ops, [32 x i8] } { %struct.sps30_ops { ptr @sps30_i2c_start_meas, ptr @sps30_i2c_stop_meas, ptr @sps30_i2c_read_meas, ptr @sps30_i2c_reset, ptr @sps30_i2c_clean_fan, ptr @sps30_i2c_read_cleaning_period, ptr @sps30_i2c_write_cleaning_period, ptr @sps30_i2c_show_info }, [32 x i8] zeroinitializer }, align 32
@sps30_i2c_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"data integrity check failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sps30_i2c_command\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/chemical/sps30_i2c.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sps30_i2c_command._entry_ptr = internal global ptr @sps30_i2c_command._entry, section ".printk_index", align 4
@sps30_i2c_show_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 202, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"serial number: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sps30_i2c_show_info\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sps30_i2c_show_info._entry_ptr = internal global ptr @sps30_i2c_show_info._entry, section ".printk_index", align 4
@sps30_i2c_show_info._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 208, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fw version: %u.%u\0A\00", [45 x i8] zeroinitializer }, align 32
@sps30_i2c_show_info._entry_ptr.11 = internal global ptr @sps30_i2c_show_info._entry.9, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"sps30_i2c_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 246, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 248, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"sps30_i2c_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 240, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"sps30_i2c_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 234, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"sps30_i2c_crc8_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 25, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"sps30_i2c_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 213, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 112, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 202, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [36 x i8] c"../drivers/iio/chemical/sps30_i2c.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 208, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_sps30_i2c_driver_exit, ptr @__initcall__kmod_sps30_i2c__288_254_sps30_i2c_driver_init6, ptr @sps30_i2c_command._entry, ptr @sps30_i2c_command._entry_ptr, ptr @sps30_i2c_driver_exit, ptr @sps30_i2c_show_info._entry, ptr @sps30_i2c_show_info._entry.9, ptr @sps30_i2c_show_info._entry_ptr, ptr @sps30_i2c_show_info._entry_ptr.11, ptr @sps30_i2c_driver, ptr @.str, ptr @sps30_i2c_of_match, ptr @sps30_i2c_id, ptr @sps30_i2c_crc8_table, ptr @sps30_i2c_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_i2c_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_i2c_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_i2c_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_i2c_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_i2c_show_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_i2c_show_info._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sps30_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sps30_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @sps30_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crc8_populate_msb(ptr noundef nonnull @sps30_i2c_crc8_table, i8 noundef zeroext 49) #5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call1 = tail call i32 @sps30_probe(ptr noundef %dev, ptr noundef %name, ptr noundef null, ptr noundef nonnull @sps30_i2c_ops) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sps30_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_start_meas(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %buf.i = alloca [48 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf.i) #5
  %0 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %1 = getelementptr inbounds i8, ptr %buf.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 44)
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %buf.i, align 2
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %0, align 2
  %arrayidx4.i = getelementptr inbounds [48 x i8], ptr %buf.i, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx4.i, align 1
  %call.i = call zeroext i8 @crc8(ptr noundef nonnull @sps30_i2c_crc8_table, ptr noundef %0, i32 noundef 2, i8 noundef zeroext -1) #5
  %arrayidx7.i = getelementptr inbounds [48 x i8], ptr %buf.i, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call.i, ptr %arrayidx7.i, align 2
  %dev.i.i = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 -32
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i.i, ptr noundef nonnull %buf.i, i32 noundef 5, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 5
  %spec.select = select i1 %cmp1.not.i.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i.i, i32 %call.i.i.i, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_stop_meas(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %buf.i = alloca [48 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf.i) #5
  %0 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 46)
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 260, ptr %buf.i, align 2
  %dev.i.i = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -32
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i.i, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 2
  %spec.select = select i1 %cmp1.not.i.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i.i, i32 %call.i.i.i, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_read_meas(ptr nocapture noundef readonly %state, ptr noundef %meas, i32 noundef %num) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @msleep_interruptible(i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf.i, align 1, !annotation !49
  %1 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !49
  %call.i = call fastcc i32 @sps30_i2c_command(ptr noundef %state, i16 noundef zeroext 514, ptr noundef null, i32 noundef 0, ptr noundef nonnull %buf.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sps30_i2c_meas_ready.exit, label %sps30_i2c_meas_ready.exit.thread

sps30_i2c_meas_ready.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %return

sps30_i2c_meas_ready.exit:                        ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.i.not = icmp eq i8 %4, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br i1 %tobool1.i.not, label %sps30_i2c_meas_ready.exit.return_crit_edge, label %if.end3

sps30_i2c_meas_ready.exit.return_crit_edge:       ; preds = %sps30_i2c_meas_ready.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %sps30_i2c_meas_ready.exit
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %num, 2
  %call4 = call fastcc i32 @sps30_i2c_command(ptr noundef %state, i16 noundef zeroext 768, ptr noundef null, i32 noundef 0, ptr noundef %meas, i32 noundef %mul)
  br label %return

return:                                           ; preds = %if.end3, %sps30_i2c_meas_ready.exit.return_crit_edge, %sps30_i2c_meas_ready.exit.thread, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -4, %entry.return_crit_edge ], [ -110, %sps30_i2c_meas_ready.exit.return_crit_edge ], [ -110, %sps30_i2c_meas_ready.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_reset(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %buf.i.i = alloca [48 x i8], align 2
  %buf.i = alloca [48 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf.i) #5
  %0 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 46)
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -11516, ptr %buf.i, align 2
  %dev.i.i = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -32
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i.i, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 2
  %spec.select = select i1 %cmp1.not.i.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i.i, i32 %call.i.i.i, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf.i) #5
  call void @msleep(i32 noundef 500) #5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf.i.i) #5
  %5 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %6 = call ptr @memset(ptr %5, i32 255, i32 46)
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 260, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -32
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf.i.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_clean_fan(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %buf.i = alloca [48 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf.i) #5
  %0 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 46)
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 22023, ptr %buf.i, align 2
  %dev.i.i = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -32
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i.i, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 2
  %spec.select = select i1 %cmp1.not.i.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i.i, i32 %call.i.i.i, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_read_cleaning_period(ptr nocapture noundef readonly %state, ptr noundef %period) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sps30_i2c_command(ptr noundef %state, i16 noundef zeroext -32764, ptr noundef null, i32 noundef 0, ptr noundef %period, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_write_cleaning_period(ptr nocapture noundef readonly %state, i32 noundef %period) #2 align 64 {
entry:
  %buf.i = alloca [48 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %period.addr.sroa.0.0.extract.shift = lshr i32 %period, 24
  %period.addr.sroa.0.0.extract.trunc = trunc i32 %period.addr.sroa.0.0.extract.shift to i8
  %period.addr.sroa.2.0.extract.shift = lshr i32 %period, 16
  %period.addr.sroa.2.0.extract.trunc = trunc i32 %period.addr.sroa.2.0.extract.shift to i8
  %period.addr.sroa.3.0.extract.shift = lshr i32 %period, 8
  %period.addr.sroa.3.0.extract.trunc = trunc i32 %period.addr.sroa.3.0.extract.shift to i8
  %period.addr.sroa.4.0.extract.trunc = trunc i32 %period to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf.i) #5
  %0 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %1 = getelementptr inbounds i8, ptr %buf.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 44)
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -32764, ptr %buf.i, align 2
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %period.addr.sroa.0.0.extract.trunc, ptr %0, align 2
  %arrayidx4.i = getelementptr inbounds [48 x i8], ptr %buf.i, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %period.addr.sroa.2.0.extract.trunc, ptr %arrayidx4.i, align 1
  %call.i = call zeroext i8 @crc8(ptr noundef nonnull @sps30_i2c_crc8_table, ptr noundef %0, i32 noundef 2, i8 noundef zeroext -1) #5
  %arrayidx7.i = getelementptr inbounds [48 x i8], ptr %buf.i, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call.i, ptr %arrayidx7.i, align 2
  %arrayidx.i.1 = getelementptr inbounds [48 x i8], ptr %buf.i, i32 0, i32 5
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %period.addr.sroa.3.0.extract.trunc, ptr %arrayidx.i.1, align 1
  %arrayidx4.i.1 = getelementptr inbounds [48 x i8], ptr %buf.i, i32 0, i32 6
  %8 = ptrtoint ptr %arrayidx4.i.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %period.addr.sroa.4.0.extract.trunc, ptr %arrayidx4.i.1, align 2
  %call.i.1 = call zeroext i8 @crc8(ptr noundef nonnull @sps30_i2c_crc8_table, ptr noundef %arrayidx.i.1, i32 noundef 2, i8 noundef zeroext -1) #5
  %arrayidx7.i.1 = getelementptr inbounds [48 x i8], ptr %buf.i, i32 0, i32 7
  %9 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call.i.1, ptr %arrayidx7.i.1, align 1
  %dev.i.i = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -32
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i.i, ptr noundef nonnull %buf.i, i32 noundef 8, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 8
  %spec.select = select i1 %cmp1.not.i.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i.i, i32 %call.i.i.i, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_i2c_show_info(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 0, i32 33)
  %call = call fastcc i32 @sps30_i2c_command(ptr noundef %state, i16 noundef zeroext -12237, ptr noundef null, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %buf) #8
  %call3 = call fastcc i32 @sps30_i2c_command(ptr noundef %state, i16 noundef zeroext -12032, ptr noundef null, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %conv = zext i8 %6 to i32
  %arrayidx11 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end9 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sps30_i2c_command(ptr nocapture noundef readonly %state, i16 noundef zeroext %cmd, ptr nocapture noundef readonly %arg, i32 noundef %arg_size, ptr noundef writeonly %rsp, i32 noundef %rsp_size) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [48 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf) #5
  %0 = getelementptr inbounds i8, ptr %buf, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 46)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %cmd, ptr %buf, align 2
  %tobool.not = icmp eq ptr %rsp, null
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg_size)
  %tobool1.not59 = icmp eq i32 %arg_size, 0
  br i1 %tobool1.not59, label %while.cond.preheader.if.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div56 = lshr i32 %rsp_size, 1
  %add = add i32 %div56, %rsp_size
  br label %if.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.062 = phi i32 [ %add8, %while.body.while.body_crit_edge ], [ 2, %while.cond.preheader.while.body_crit_edge ]
  %tmp.061 = phi ptr [ %incdec.ptr2, %while.body.while.body_crit_edge ], [ %arg, %while.cond.preheader.while.body_crit_edge ]
  %arg_size.addr.060 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %arg_size, %while.cond.preheader.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %tmp.061, i32 1
  %3 = ptrtoint ptr %tmp.061 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmp.061, align 1
  %arrayidx = getelementptr [48 x i8], ptr %buf, i32 0, i32 %i.062
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  %incdec.ptr2 = getelementptr i8, ptr %tmp.061, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr, align 1
  %add3 = add i32 %i.062, 1
  %arrayidx4 = getelementptr [48 x i8], ptr %buf, i32 0, i32 %add3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx4, align 1
  %call = call zeroext i8 @crc8(ptr noundef nonnull @sps30_i2c_crc8_table, ptr noundef %arrayidx, i32 noundef 2, i8 noundef zeroext -1) #5
  %add6 = add i32 %i.062, 2
  %arrayidx7 = getelementptr [48 x i8], ptr %buf, i32 0, i32 %add6
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call, ptr %arrayidx7, align 1
  %sub = add i32 %arg_size.addr.060, -2
  %add8 = add i32 %i.062, 3
  %tobool1.not = icmp eq i32 %sub, 0
  br i1 %tobool1.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %if.then, %while.cond.preheader.if.end_crit_edge
  %rsp_size.addr.0 = phi i32 [ %add, %if.then ], [ %rsp_size, %while.cond.preheader.if.end_crit_edge ], [ %rsp_size, %while.body.if.end_crit_edge ]
  %i.1 = phi i32 [ 2, %if.then ], [ 2, %while.cond.preheader.if.end_crit_edge ], [ %add8, %while.body.if.end_crit_edge ]
  %dev.i = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 -32
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i, ptr noundef nonnull %buf, i32 noundef %i.1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %i.1)
  %cmp1.not.i = icmp eq i32 %call.i.i, %i.1
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsp_size.addr.0)
  %tobool.not.i = icmp eq i32 %rsp_size.addr.0, 0
  br i1 %tobool.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end5.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end3.i
  %call.i23.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i, ptr noundef nonnull %buf, i32 noundef %rsp_size.addr.0, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp7.i = icmp slt i32 %call.i23.i, 0
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i23.i, i32 %rsp_size.addr.0)
  %cmp10.not.i = icmp eq i32 %call.i23.i, %rsp_size.addr.0
  br i1 %cmp10.not.i, label %if.end9.i.for.body_crit_edge, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i.for.body_crit_edge:                     ; preds = %if.end9.i
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %if.end9.i.for.body_crit_edge
  %i.265 = phi i32 [ %add30, %if.end24.for.body_crit_edge ], [ 0, %if.end9.i.for.body_crit_edge ]
  %tmp.164 = phi ptr [ %incdec.ptr29, %if.end24.for.body_crit_edge ], [ %rsp, %if.end9.i.for.body_crit_edge ]
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %i.265
  %call17 = call zeroext i8 @crc8(ptr noundef nonnull @sps30_i2c_crc8_table, ptr noundef %add.ptr16, i32 noundef 2, i8 noundef zeroext -1) #5
  %add18 = add i32 %i.265, 2
  %arrayidx19 = getelementptr [48 x i8], ptr %buf, i32 0, i32 %add18
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call17, i8 %13)
  %cmp21.not = icmp eq i8 %call17, %13
  br i1 %cmp21.not, label %if.end24, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %16 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr16, align 1
  %incdec.ptr26 = getelementptr i8, ptr %tmp.164, i32 1
  %18 = ptrtoint ptr %tmp.164 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %tmp.164, align 1
  %add27 = add nuw i32 %i.265, 1
  %arrayidx28 = getelementptr [48 x i8], ptr %buf, i32 0, i32 %add27
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx28, align 1
  %incdec.ptr29 = getelementptr i8, ptr %tmp.164, i32 2
  %21 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %incdec.ptr26, align 1
  %add30 = add i32 %i.265, 3
  %cmp = icmp ult i32 %add30, %rsp_size.addr.0
  br i1 %cmp, label %if.end24.for.body_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %do.end, %if.end9.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.end9.i.cleanup_crit_edge ], [ %call.i23.i, %if.end5.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_sps30_i2c__288_254_sps30_i2c_driver_init6, !1, !"__initcall__kmod_sps30_i2c__288_254_sps30_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 254, i32 1}
!2 = !{ptr @__exitcall_sps30_i2c_driver_exit, !1, !"__exitcall_sps30_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 256, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 257, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 258, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 248, i32 11}
!12 = !{ptr @sps30_i2c_driver, !13, !"sps30_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 246, i32 26}
!14 = !{ptr @sps30_i2c_crc8_table, !15, !"sps30_i2c_crc8_table", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 25, i32 1}
!16 = !{ptr @sps30_i2c_ops, !17, !"sps30_i2c_ops", i1 false, i1 false}
!17 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 213, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 112, i32 4}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sps30_i2c_command._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sps30_i2c_command._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 202, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sps30_i2c_show_info._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @sps30_i2c_show_info._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 208, i32 2}
!34 = !{ptr @sps30_i2c_show_info._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sps30_i2c_show_info._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @sps30_i2c_of_match, !37, !"sps30_i2c_of_match", i1 false, i1 false}
!37 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 240, i32 34}
!38 = !{ptr @sps30_i2c_id, !39, !"sps30_i2c_id", i1 false, i1 false}
!39 = !{!"../drivers/iio/chemical/sps30_i2c.c", i32 234, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
