; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/mux/pi3usb30532.c_pt.bc'
source_filename = "../drivers/usb/typec/mux/pi3usb30532.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pi3usb30532 = type { ptr, %struct.mutex, ptr, ptr, i8 }
%struct.typec_switch_desc = type { ptr, ptr, ptr, ptr }
%struct.typec_mux_desc = type { ptr, ptr, ptr, ptr }
%struct.typec_mux_state = type { ptr, i32, ptr }

@__initcall__kmod_pi3usb30532__288_187_pi3usb30532_driver_init6 = internal global ptr @pi3usb30532_driver_init, section ".initcall6.init", align 4
@pi3usb30532_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @pi3usb30532_remove, ptr @pi3usb30532_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pi3usb30532_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pi3usb30532_driver_exit = internal global ptr @pi3usb30532_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [55 x i8] c"pi3usb30532.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [62 x i8] c"pi3usb30532.description=Pericom PI3USB30532 Type-C mux driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [51 x i8] c"pi3usb30532.file=drivers/usb/typec/mux/pi3usb30532\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"pi3usb30532.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pi3usb30532\00", [20 x i8] zeroinitializer }, align 32
@pi3usb30532_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pi3usb30532\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pi3usb30532_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pi->lock\00", [22 x i8] zeroinitializer }, align 32
@pi3usb30532_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 131, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error reading config register %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pi3usb30532_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/typec/mux/pi3usb30532.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pi3usb30532_probe._entry_ptr = internal global ptr @pi3usb30532_probe._entry, section ".printk_index", align 4
@pi3usb30532_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error registering typec switch: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@pi3usb30532_probe._entry_ptr.9 = internal global ptr @pi3usb30532_probe._entry.7, section ".printk_index", align 4
@pi3usb30532_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error registering typec mux: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@pi3usb30532_probe._entry_ptr.12 = internal global ptr @pi3usb30532_probe._entry.10, section ".printk_index", align 4
@pi3usb30532_set_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 40, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing conf: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pi3usb30532_set_conf\00", [43 x i8] zeroinitializer }, align 32
@pi3usb30532_set_conf._entry_ptr = internal global ptr @pi3usb30532_set_conf._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6]
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"pi3usb30532_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 178, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 180, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"pi3usb30532_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 172, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 127, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 131, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 142, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 154, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [39 x i8] c"../drivers/usb/typec/mux/pi3usb30532.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 40, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pi3usb30532_driver_exit, ptr @__initcall__kmod_pi3usb30532__288_187_pi3usb30532_driver_init6, ptr @pi3usb30532_driver_exit, ptr @pi3usb30532_probe._entry, ptr @pi3usb30532_probe._entry.10, ptr @pi3usb30532_probe._entry.7, ptr @pi3usb30532_probe._entry_ptr, ptr @pi3usb30532_probe._entry_ptr.12, ptr @pi3usb30532_probe._entry_ptr.9, ptr @pi3usb30532_set_conf._entry, ptr @pi3usb30532_set_conf._entry_ptr, ptr @pi3usb30532_driver, ptr @.str, ptr @pi3usb30532_table, ptr @pi3usb30532_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi3usb30532_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi3usb30532_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi3usb30532_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi3usb30532_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi3usb30532_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi3usb30532_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi3usb30532_set_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pi3usb30532_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pi3usb30532_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pi3usb30532_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @pi3usb30532_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi3usb30532_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mux = getelementptr inbounds %struct.pi3usb30532, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux, align 4
  tail call void @typec_mux_unregister(ptr noundef %3) #5
  %sw = getelementptr inbounds %struct.pi3usb30532, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw, align 4
  tail call void @typec_switch_unregister(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi3usb30532_probe(ptr noundef %client) #2 align 64 {
entry:
  %sw_desc = alloca %struct.typec_switch_desc, align 4
  %mux_desc = alloca %struct.typec_mux_desc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sw_desc) #5
  %0 = getelementptr inbounds i8, ptr %sw_desc, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mux_desc) #5
  %2 = getelementptr inbounds i8, ptr %mux_desc, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 108, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.pi3usb30532, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @pi3usb30532_probe.__key) #5
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call3) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %conv = trunc i32 %call3 to i8
  %conf = getelementptr inbounds %struct.pi3usb30532, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %conf, align 4
  %drvdata = getelementptr inbounds %struct.typec_switch_desc, ptr %sw_desc, i32 0, i32 3
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %drvdata, align 4
  %fwnode = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 28
  %7 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fwnode, align 4
  %9 = ptrtoint ptr %sw_desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %sw_desc, align 4
  %set = getelementptr inbounds %struct.typec_switch_desc, ptr %sw_desc, i32 0, i32 1
  %10 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pi3usb30532_sw_set, ptr %set, align 4
  %call10 = call ptr @typec_switch_register(ptr noundef %dev1, ptr noundef nonnull %sw_desc) #5
  %sw = getelementptr inbounds %struct.pi3usb30532, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %sw to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %sw, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end21

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %12) #8
  %13 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sw, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  %drvdata22 = getelementptr inbounds %struct.typec_mux_desc, ptr %mux_desc, i32 0, i32 3
  %16 = ptrtoint ptr %drvdata22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %drvdata22, align 4
  %17 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fwnode, align 4
  %19 = ptrtoint ptr %mux_desc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %mux_desc, align 4
  %set25 = getelementptr inbounds %struct.typec_mux_desc, ptr %mux_desc, i32 0, i32 1
  %20 = ptrtoint ptr %set25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pi3usb30532_mux_set, ptr %set25, align 4
  %call26 = call ptr @typec_mux_register(ptr noundef %dev1, ptr noundef nonnull %mux_desc) #5
  %mux = getelementptr inbounds %struct.pi3usb30532, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call26, ptr %mux, align 4
  %cmp.i71 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then29, label %if.end38

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw, align 4
  call void @typec_switch_unregister(ptr noundef %23) #5
  %24 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mux, align 4
  %26 = ptrtoint ptr %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %26) #8
  %27 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mux, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then29, %do.end16, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end7 ], [ %15, %do.end16 ], [ %29, %if.then29 ], [ 0, %if.end38 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mux_desc) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sw_desc) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_mux_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_switch_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi3usb30532_sw_set(ptr noundef %sw, i32 noundef %orientation) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @typec_switch_get_drvdata(ptr noundef %sw) #5
  %lock = getelementptr inbounds %struct.pi3usb30532, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %conf = getelementptr inbounds %struct.pi3usb30532, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %conf, align 4
  %2 = zext i32 %orientation to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %orientation, label %entry.pi3usb30532_set_conf.exit_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.pi3usb30532_set_conf.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pi3usb30532_set_conf.exit

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = and i8 %1, -2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = or i8 %1, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %entry.sw.epilog_crit_edge
  %new_conf.0 = phi i8 [ %4, %sw.bb3 ], [ %3, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %new_conf.0)
  %cmp.i = icmp eq i8 %1, %new_conf.0
  br i1 %cmp.i, label %sw.epilog.pi3usb30532_set_conf.exit_crit_edge, label %if.end.i

sw.epilog.pi3usb30532_set_conf.exit_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %pi3usb30532_set_conf.exit

if.end.i:                                         ; preds = %sw.epilog
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %new_conf.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i) #8
  br label %pi3usb30532_set_conf.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %new_conf.0, ptr %conf, align 4
  br label %pi3usb30532_set_conf.exit

pi3usb30532_set_conf.exit:                        ; preds = %if.end5.i, %do.end.i, %sw.epilog.pi3usb30532_set_conf.exit_crit_edge, %entry.pi3usb30532_set_conf.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end5.i ], [ 0, %sw.epilog.pi3usb30532_set_conf.exit_crit_edge ], [ 0, %entry.pi3usb30532_set_conf.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi3usb30532_mux_set(ptr noundef %mux, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @typec_mux_get_drvdata(ptr noundef %mux) #5
  %lock = getelementptr inbounds %struct.pi3usb30532, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %conf = getelementptr inbounds %struct.pi3usb30532, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %conf, align 4
  %mode = getelementptr inbounds %struct.typec_mux_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %entry.pi3usb30532_set_conf.exit_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 4, label %entry.sw.bb7_crit_edge
    i32 6, label %entry.sw.bb7_crit_edge28
    i32 5, label %sw.bb12
  ]

entry.sw.bb7_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.pi3usb30532_set_conf.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pi3usb30532_set_conf.exit

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = and i8 %1, 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = and i8 %1, 1
  %7 = or i8 %6, 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge28
  %8 = and i8 %1, 1
  %9 = or i8 %8, 2
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = and i8 %1, 1
  %11 = or i8 %10, 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb7, %sw.bb2, %sw.bb
  %new_conf.0 = phi i8 [ %11, %sw.bb12 ], [ %9, %sw.bb7 ], [ %7, %sw.bb2 ], [ %5, %sw.bb ]
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %new_conf.0)
  %cmp.i = icmp eq i8 %1, %new_conf.0
  br i1 %cmp.i, label %sw.epilog.pi3usb30532_set_conf.exit_crit_edge, label %if.end.i

sw.epilog.pi3usb30532_set_conf.exit_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %pi3usb30532_set_conf.exit

if.end.i:                                         ; preds = %sw.epilog
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext %new_conf.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i) #8
  br label %pi3usb30532_set_conf.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %new_conf.0, ptr %conf, align 4
  br label %pi3usb30532_set_conf.exit

pi3usb30532_set_conf.exit:                        ; preds = %if.end5.i, %do.end.i, %sw.epilog.pi3usb30532_set_conf.exit_crit_edge, %entry.pi3usb30532_set_conf.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end5.i ], [ 0, %sw.epilog.pi3usb30532_set_conf.exit_crit_edge ], [ 0, %entry.pi3usb30532_set_conf.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_mux_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_switch_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_mux_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_pi3usb30532__288_187_pi3usb30532_driver_init6, !1, !"__initcall__kmod_pi3usb30532__288_187_pi3usb30532_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 187, i32 1}
!2 = !{ptr @__exitcall_pi3usb30532_driver_exit, !1, !"__exitcall_pi3usb30532_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 189, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 190, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 191, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 180, i32 11}
!12 = !{ptr @pi3usb30532_driver, !13, !"pi3usb30532_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 178, i32 26}
!14 = !{ptr @pi3usb30532_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 127, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 131, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pi3usb30532_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pi3usb30532_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 142, i32 3}
!27 = !{ptr @pi3usb30532_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pi3usb30532_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 154, i32 3}
!31 = !{ptr @pi3usb30532_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pi3usb30532_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 40, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pi3usb30532_set_conf._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pi3usb30532_set_conf._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @pi3usb30532_table, !39, !"pi3usb30532_table", i1 false, i1 false}
!39 = !{!"../drivers/usb/typec/mux/pi3usb30532.c", i32 172, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
