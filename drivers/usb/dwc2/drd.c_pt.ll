; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc2/drd.c_pt.bc'
source_filename = "../drivers/usb/dwc2/drd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@dwc2_drd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register role switch: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwc2_drd_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/usb/dwc2/drd.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc2_drd_init._entry_ptr = internal global ptr @dwc2_drd_init._entry, section ".printk_index", align 4
@dwc2_drd_resume.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc2\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc2_drd_resume\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"resuming %s-session valid\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@dwc2_drd_role_sw_set.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc2_drd_role_sw_set\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Core is in test mode\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_drd_role_sw_set.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str.3, ptr @.str.14, i8 0, i8 39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s-session valid\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 169, i32 45 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 181, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 231, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 100, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [26 x i8] c"../drivers/usb/dwc2/drd.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 156, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @dwc2_drd_init._entry, ptr @dwc2_drd_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_drd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_drd_init(ptr noundef %hsotg) local_unnamed_addr #0 align 64 {
entry:
  %role_sw_desc = alloca %struct.usb_role_switch_desc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %role_sw_desc) #5
  %0 = getelementptr inbounds i8, ptr %role_sw_desc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsotg, align 8
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str) #5
  br i1 %call.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  %call2 = tail call i32 @usb_get_role_switch_default_mode(ptr noundef %5) #5
  %role_sw_default_mode = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 7
  %6 = ptrtoint ptr %role_sw_default_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %role_sw_default_mode, align 4
  %driver_data = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sw_desc, i32 0, i32 7
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hsotg, ptr %driver_data, align 4
  %8 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hsotg, align 8
  %call4 = tail call ptr @dev_fwnode(ptr noundef %9) #5
  %10 = ptrtoint ptr %role_sw_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %role_sw_desc, align 4
  %set = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sw_desc, i32 0, i32 4
  %11 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dwc2_drd_role_sw_set, ptr %set, align 4
  %allow_userspace_control = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sw_desc, i32 0, i32 6
  %12 = ptrtoint ptr %allow_userspace_control to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %allow_userspace_control, align 4
  %13 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hsotg, align 8
  %call6 = call ptr @usb_role_switch_register(ptr noundef %14, ptr noundef nonnull %role_sw_desc) #5
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call6 to i32
  %16 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hsotg, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %15) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %role_sw12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 6
  %18 = ptrtoint ptr %role_sw12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call6, ptr %role_sw12, align 8
  %lock.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %22 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  %24 = call i32 @llvm.bswap.i32(i32 %21) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %24, i32 %21
  %or.i = and i32 %retval.0.i.i, -33021
  %25 = ptrtoint ptr %role_sw_default_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %role_sw_default_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp6.i = icmp eq i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp10.i = icmp eq i32 %26, 2
  %spec.select.v.i = select i1 %cmp10.i, i32 32988, i32 32852
  %gotgctl.0.v.i = select i1 %cmp6.i, i32 32892, i32 %spec.select.v.i
  %gotgctl.0.i = or i32 %gotgctl.0.v.i, %or.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %gotgctl.0.i) #5, !srcloc !37
  br label %dwc2_ovr_init.exit

do.body1.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %29 = call i32 @llvm.bswap.i32(i32 %gotgctl.0.i) #5
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #5, !srcloc !37
  br label %dwc2_ovr_init.exit

dwc2_ovr_init.exit:                               ; preds = %do.body1.i.i, %do.body.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #5
  %dr_mode.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 5
  %32 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp16.i = icmp eq i32 %33, 1
  call void @dwc2_force_mode(ptr noundef %hsotg, i1 noundef zeroext %cmp16.i) #5
  br label %cleanup

cleanup:                                          ; preds = %dwc2_ovr_init.exit, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then8 ], [ 0, %dwc2_ovr_init.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %role_sw_desc) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_role_switch_default_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc2_drd_role_sw_set(ptr noundef %sw, i32 noundef %role) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #5
  %0 = zext i32 %role to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %role, label %entry.if.end16_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %land.lhs.true3
    i32 0, label %land.lhs.true7
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %dr_mode = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %land.lhs.true.cleanup125_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

land.lhs.true.cleanup125_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup125

land.lhs.true3:                                   ; preds = %entry
  %dr_mode4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %dr_mode4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dr_mode4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp5 = icmp eq i32 %4, 2
  br i1 %cmp5, label %land.lhs.true3.cleanup125_crit_edge, label %land.lhs.true3.if.end16_crit_edge

land.lhs.true3.if.end16_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

land.lhs.true3.cleanup125_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup125

land.lhs.true7:                                   ; preds = %entry
  %test_mode = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 82
  %5 = ptrtoint ptr %test_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %test_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true7.if.end16_crit_edge, label %do.body

land.lhs.true7.if.end16_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.body:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_drd_role_sw_set.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_drd_role_sw_set, %cleanup125)) #5
          to label %if.then14 [label %cleanup125], !srcloc !38

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_drd_role_sw_set.__UNIQUE_ID_ddebug293, ptr noundef %8, ptr noundef nonnull @.str.13) #5
  br label %cleanup125

if.end16:                                         ; preds = %land.lhs.true7.if.end16_crit_edge, %land.lhs.true3.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %cmp6217 = phi i1 [ true, %land.lhs.true7.if.end16_crit_edge ], [ false, %land.lhs.true.if.end16_crit_edge ], [ false, %land.lhs.true3.if.end16_crit_edge ], [ false, %entry.if.end16_crit_edge ]
  %ll_hw_enabled = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %ll_hw_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %ll_hw_enabled, align 8
  %10 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool17.not = icmp eq i8 %10, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.end16.do.body28_crit_edge

if.end16.do.body28_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

land.lhs.true18:                                  ; preds = %if.end16
  %clk = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 21
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 8
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %land.lhs.true18.do.body28_crit_edge, label %if.then20

land.lhs.true18.do.body28_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

if.then20:                                        ; preds = %land.lhs.true18
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.cleanup125_crit_edge

if.then20.cleanup125_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup125

if.end.i:                                         ; preds = %if.then20
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.do.body28_crit_edge, label %if.then3.i

if.end.i.do.body28_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %12) #5
  br label %cleanup125

do.body28:                                        ; preds = %if.end.i.do.body28_crit_edge, %land.lhs.true18.do.body28_crit_edge, %if.end16.do.body28_crit_edge
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 18
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  br i1 %cmp6217, label %if.then40, label %if.end50

if.then40:                                        ; preds = %do.body28
  %role_sw_default_mode = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 7
  %13 = ptrtoint ptr %role_sw_default_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %role_sw_default_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch.selectcmp = icmp eq i32 %14, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %switch.selectcmp164 = icmp eq i32 %14, 1
  br i1 %switch.selectcmp164, label %if.then40.if.then53_crit_edge, label %if.then40.if.else55_crit_edge

if.then40.if.else55_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else55

if.then40.if.then53_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

if.end50:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role)
  %cmp51 = icmp eq i32 %role, 1
  br i1 %cmp51, label %if.end50.if.then53_crit_edge, label %if.end50.if.else55_crit_edge

if.end50.if.else55_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else55

if.end50.if.then53_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

if.then53:                                        ; preds = %if.end50.if.then53_crit_edge, %if.then40.if.then53_crit_edge
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 34
  %18 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %20, i32 %17
  %and.i = and i32 %retval.0.i.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i.not, label %if.end.i170, label %if.end78.thread242

if.end78.thread242:                               ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #5
  br label %if.end88

if.end.i170:                                      ; preds = %if.then53
  %or.i = and i32 %retval.0.i.i, -33021
  %gotgctl.0.i = or i32 %or.i, 32892
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %gotgctl.0.i) #5, !srcloc !37
  br label %if.end78.thread

do.body1.i.i:                                     ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %gotgctl.0.i) #5
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #5, !srcloc !37
  br label %if.end78.thread

if.else55:                                        ; preds = %if.end50.if.else55_crit_edge, %if.then40.if.else55_crit_edge
  %role.addr.0230 = phi i32 [ %role, %if.end50.if.else55_crit_edge ], [ %switch.select, %if.then40.if.else55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %role.addr.0230)
  %cmp56 = icmp eq i32 %role.addr.0230, 2
  %regs.i.i172 = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %regs.i.i172 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i172, align 4
  br i1 %cmp56, label %if.then58, label %if.else66

if.then58:                                        ; preds = %if.else55
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %needs_byte_swap.i.i173 = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 34
  %29 = ptrtoint ptr %needs_byte_swap.i.i173 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %needs_byte_swap.i.i173, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i174 = icmp eq i8 %30, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %retval.0.i.i175 = select i1 %tobool.not.i.i174, i32 %31, i32 %28
  %and.i176 = and i32 %retval.0.i.i175, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i176)
  %tobool1.not.i177.not = icmp eq i32 %and.i176, 0
  br i1 %tobool1.not.i177.not, label %if.end.i181, label %if.then58.dwc2_ovr_bvalid.exit_crit_edge

if.then58.dwc2_ovr_bvalid.exit_crit_edge:         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_ovr_bvalid.exit

if.end.i181:                                      ; preds = %if.then58
  %or.i179 = and i32 %retval.0.i.i175, -33021
  %gotgctl.0.i180 = or i32 %or.i179, 32988
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i174, label %do.body1.i.i183, label %do.body.i.i182

do.body.i.i182:                                   ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %regs.i.i172 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i172, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %gotgctl.0.i180) #5, !srcloc !37
  br label %dwc2_ovr_bvalid.exit

do.body1.i.i183:                                  ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %gotgctl.0.i180) #5
  %35 = ptrtoint ptr %regs.i.i172 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i172, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #5, !srcloc !37
  br label %dwc2_ovr_bvalid.exit

dwc2_ovr_bvalid.exit:                             ; preds = %do.body1.i.i183, %do.body.i.i182, %if.then58.dwc2_ovr_bvalid.exit_crit_edge
  %enabled = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 90
  %37 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load60 = load i8, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load60)
  %tobool63.not = icmp sgt i8 %bf.load60, -1
  br i1 %tobool63.not, label %dwc2_ovr_bvalid.exit.if.end78_crit_edge, label %if.then64

dwc2_ovr_bvalid.exit.if.end78_crit_edge:          ; preds = %dwc2_ovr_bvalid.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then64:                                        ; preds = %dwc2_ovr_bvalid.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hsotg_core_connect(ptr noundef %call) #5
  br label %if.end78

if.else66:                                        ; preds = %if.else55
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 20
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %needs_byte_swap.i.i186 = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 34
  %39 = ptrtoint ptr %needs_byte_swap.i.i186 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %needs_byte_swap.i.i186, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i187 = icmp eq i8 %40, 0
  %41 = lshr i32 %38, 24
  %retval.0.i.i188 = select i1 %tobool.not.i.i187, i32 %41, i32 %38
  %and.i189 = and i32 %retval.0.i.i188, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool68.not.not = icmp eq i32 %and.i189, 0
  %42 = ptrtoint ptr %regs.i.i172 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i172, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %45 = ptrtoint ptr %needs_byte_swap.i.i186 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %needs_byte_swap.i.i186, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i192 = icmp eq i8 %46, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  %retval.0.i.i193 = select i1 %tobool.not.i.i192, i32 %47, i32 %44
  br i1 %tobool68.not.not, label %if.then69, label %if.else74

if.then69:                                        ; preds = %if.else66
  %and.i194 = and i32 %retval.0.i.i193, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool1.not.i195 = icmp eq i32 %and.i194, 0
  br i1 %tobool1.not.i195, label %if.then69.if.end78.thread_crit_edge, label %if.end.i198

if.then69.if.end78.thread_crit_edge:              ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78.thread

if.end.i198:                                      ; preds = %if.then69
  %or.i196 = and i32 %retval.0.i.i193, -33021
  %gotgctl.0.i197 = or i32 %or.i196, 32852
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i192, label %do.body1.i.i200, label %do.body.i.i199

do.body.i.i199:                                   ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %regs.i.i172 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i172, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %gotgctl.0.i197) #5, !srcloc !37
  br label %if.then72

do.body1.i.i200:                                  ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %gotgctl.0.i197) #5
  %51 = ptrtoint ptr %regs.i.i172 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i172, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #5, !srcloc !37
  br label %if.then72

if.then72:                                        ; preds = %do.body1.i.i200, %do.body.i.i199
  tail call void @dwc2_hsotg_core_disconnect(ptr noundef %call) #5
  br label %if.end78.thread

if.else74:                                        ; preds = %if.else66
  %and.i207 = and i32 %retval.0.i.i193, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i207)
  %tobool1.not.i208 = icmp eq i32 %and.i207, 0
  br i1 %tobool1.not.i208, label %if.else74.if.end78.thread_crit_edge, label %if.end.i211

if.else74.if.end78.thread_crit_edge:              ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78.thread

if.end.i211:                                      ; preds = %if.else74
  %or.i209 = and i32 %retval.0.i.i193, -33021
  %gotgctl.0.i210 = or i32 %or.i209, 32852
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i192, label %do.body1.i.i213, label %do.body.i.i212

do.body.i.i212:                                   ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %regs.i.i172 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i172, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %gotgctl.0.i210) #5, !srcloc !37
  br label %if.end78.thread

do.body1.i.i213:                                  ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %gotgctl.0.i210) #5
  %56 = ptrtoint ptr %regs.i.i172 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i172, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #5, !srcloc !37
  br label %if.end78.thread

if.end78.thread:                                  ; preds = %do.body1.i.i213, %do.body.i.i212, %if.else74.if.end78.thread_crit_edge, %if.then72, %if.then69.if.end78.thread_crit_edge, %do.body1.i.i, %do.body.i.i
  %cmp51225.ph = phi i1 [ false, %do.body1.i.i213 ], [ false, %do.body.i.i212 ], [ false, %if.else74.if.end78.thread_crit_edge ], [ false, %if.then69.if.end78.thread_crit_edge ], [ true, %do.body1.i.i ], [ true, %do.body.i.i ], [ false, %if.then72 ]
  %role.addr.0223.ph = phi i32 [ %role.addr.0230, %do.body1.i.i213 ], [ %role.addr.0230, %do.body.i.i212 ], [ %role.addr.0230, %if.else74.if.end78.thread_crit_edge ], [ %role.addr.0230, %if.then69.if.end78.thread_crit_edge ], [ 1, %do.body1.i.i ], [ 1, %do.body.i.i ], [ %role.addr.0230, %if.then72 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #5
  br label %land.lhs.true81

if.end78:                                         ; preds = %if.then64, %dwc2_ovr_bvalid.exit.if.end78_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #5
  br i1 %tobool1.not.i177.not, label %if.end78.land.lhs.true81_crit_edge, label %if.end78.if.end88_crit_edge

if.end78.if.end88_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.end78.land.lhs.true81_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true81

land.lhs.true81:                                  ; preds = %if.end78.land.lhs.true81_crit_edge, %if.end78.thread
  %role.addr.0223241 = phi i32 [ %role.addr.0223.ph, %if.end78.thread ], [ 2, %if.end78.land.lhs.true81_crit_edge ]
  %cmp51225239 = phi i1 [ %cmp51225.ph, %if.end78.thread ], [ false, %if.end78.land.lhs.true81_crit_edge ]
  %dr_mode82 = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 5
  %58 = ptrtoint ptr %dr_mode82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dr_mode82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %cmp83 = icmp eq i32 %59, 3
  br i1 %cmp83, label %if.then85, label %land.lhs.true81.if.end88_crit_edge

land.lhs.true81.if.end88_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then85:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_force_mode(ptr noundef %call, i1 noundef zeroext %cmp51225239) #5
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %land.lhs.true81.if.end88_crit_edge, %if.end78.if.end88_crit_edge, %if.end78.thread242
  %role.addr.0223240 = phi i32 [ %role.addr.0223241, %if.then85 ], [ %role.addr.0223241, %land.lhs.true81.if.end88_crit_edge ], [ 2, %if.end78.if.end88_crit_edge ], [ 2, %if.end78.thread242 ]
  %cmp51225238 = phi i1 [ %cmp51225239, %if.then85 ], [ %cmp51225239, %land.lhs.true81.if.end88_crit_edge ], [ false, %if.end78.if.end88_crit_edge ], [ true, %if.end78.thread242 ]
  %60 = ptrtoint ptr %ll_hw_enabled to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load90 = load i8, ptr %ll_hw_enabled, align 8
  %61 = and i8 %bf.load90, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool94.not = icmp eq i8 %61, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %if.end88.do.body101_crit_edge

if.end88.do.body101_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body101

land.lhs.true95:                                  ; preds = %if.end88
  %clk96 = getelementptr inbounds %struct.dwc2_hsotg, ptr %call, i32 0, i32 21
  %62 = ptrtoint ptr %clk96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk96, align 8
  %tobool97.not = icmp eq ptr %63, null
  br i1 %tobool97.not, label %land.lhs.true95.do.body101_crit_edge, label %if.then98

land.lhs.true95.do.body101_crit_edge:             ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body101

if.then98:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %63) #5
  tail call void @clk_unprepare(ptr noundef nonnull %63) #5
  br label %do.body101

do.body101:                                       ; preds = %if.then98, %land.lhs.true95.do.body101_crit_edge, %if.end88.do.body101_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_drd_role_sw_set.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_drd_role_sw_set, %cleanup125)) #5
          to label %if.then115 [label %cleanup125], !srcloc !38

if.then115:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role.addr.0223240)
  %cmp117 = icmp eq i32 %role.addr.0223240, 0
  %cond = select i1 %cmp51225238, ptr @.str.10, ptr @.str.11
  %spec.select = select i1 %cmp117, ptr @.str.9, ptr %cond
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_drd_role_sw_set.__UNIQUE_ID_ddebug294, ptr noundef %65, ptr noundef nonnull @.str.14, ptr noundef nonnull %spec.select) #5
  br label %cleanup125

cleanup125:                                       ; preds = %if.then115, %do.body101, %if.then3.i, %if.then20.cleanup125_crit_edge, %if.then14, %do.body, %land.lhs.true3.cleanup125_crit_edge, %land.lhs.true.cleanup125_crit_edge
  %retval.1 = phi i32 [ -22, %land.lhs.true3.cleanup125_crit_edge ], [ -22, %land.lhs.true.cleanup125_crit_edge ], [ -16, %if.then14 ], [ 0, %if.then115 ], [ -16, %do.body ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then20.cleanup125_crit_edge ], [ 0, %do.body101 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_drd_suspend(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %role_sw = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 6
  %0 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %role_sw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %external_id_pin_ctl = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 14
  %2 = ptrtoint ptr %external_id_pin_ctl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %external_id_pin_ctl, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %7 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %needs_byte_swap.i, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %retval.0.i = select i1 %tobool.not.i, i32 %9, i32 %6
  %and = and i32 %retval.0.i, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %and) #5, !srcloc !37
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %12) #5, !srcloc !37
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %16, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %18 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %needs_byte_swap.i, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i16 = icmp eq i8 %19, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %retval.0.i17 = select i1 %tobool.not.i16, i32 %20, i32 %17
  %or = or i32 %retval.0.i17, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i16, label %do.body1.i25, label %do.body.i22

do.body.i22:                                      ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %or) #5, !srcloc !37
  br label %if.end

do.body1.i25:                                     ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i24 = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i24, i32 %23) #5, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %do.body1.i25, %do.body.i22, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_drd_resume(ptr noundef %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %role_sw = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 6
  %0 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %role_sw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then:                                          ; preds = %entry
  %call = tail call i32 @usb_role_switch_get_role(ptr noundef nonnull %1) #5
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call, label %if.then.if.else13_crit_edge [
    i32 0, label %if.then2
    i32 1, label %if.then.if.then11_crit_edge
  ]

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.then.if.else13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else13

if.then2:                                         ; preds = %if.then
  %role_sw_default_mode = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 7
  %3 = ptrtoint ptr %role_sw_default_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %role_sw_default_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.selectcmp = icmp eq i32 %4, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.selectcmp59 = icmp eq i32 %4, 1
  br i1 %switch.selectcmp59, label %if.then2.if.then11_crit_edge, label %if.then2.if.else13_crit_edge

if.then2.if.else13_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else13

if.then2.if.then11_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.then11:                                        ; preds = %if.then2.if.then11_crit_edge, %if.then.if.then11_crit_edge
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %8 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %10, i32 %7
  %and.i = and i32 %retval.0.i.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i.not, label %if.end.i, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end.i:                                         ; preds = %if.then11
  %or.i = and i32 %retval.0.i.i, -33021
  %gotgctl.0.i = or i32 %or.i, 32892
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %gotgctl.0.i) #5, !srcloc !37
  br label %if.end18

do.body1.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %gotgctl.0.i) #5
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !37
  br label %if.end18

if.else13:                                        ; preds = %if.then2.if.else13_crit_edge, %if.then.if.else13_crit_edge
  %role.0105 = phi i32 [ %switch.select, %if.then2.if.else13_crit_edge ], [ %call, %if.then.if.else13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %role.0105)
  %cmp14 = icmp eq i32 %role.0105, 2
  br i1 %cmp14, label %if.then15, label %if.else13.if.end18_crit_edge

if.else13.if.end18_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.else13
  %regs.i.i62 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i.i62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i62, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %needs_byte_swap.i.i63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %19 = ptrtoint ptr %needs_byte_swap.i.i63 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %needs_byte_swap.i.i63, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i64 = icmp eq i8 %20, 0
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %retval.0.i.i65 = select i1 %tobool.not.i.i64, i32 %21, i32 %18
  %and.i66 = and i32 %retval.0.i.i65, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool1.not.i67.not = icmp eq i32 %and.i66, 0
  br i1 %tobool1.not.i67.not, label %if.end.i71, label %if.then15.if.end18_crit_edge

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end.i71:                                       ; preds = %if.then15
  %or.i69 = and i32 %retval.0.i.i65, -33021
  %gotgctl.0.i70 = or i32 %or.i69, 32988
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i64, label %do.body1.i.i73, label %do.body.i.i72

do.body.i.i72:                                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %regs.i.i62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %gotgctl.0.i70) #5, !srcloc !37
  br label %if.end18

do.body1.i.i73:                                   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %gotgctl.0.i70) #5
  %25 = ptrtoint ptr %regs.i.i62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !37
  br label %if.end18

if.end18:                                         ; preds = %do.body1.i.i73, %do.body.i.i72, %if.then15.if.end18_crit_edge, %if.else13.if.end18_crit_edge, %do.body1.i.i, %do.body.i.i, %if.then11.if.end18_crit_edge
  %cmp10100 = phi i1 [ false, %if.else13.if.end18_crit_edge ], [ true, %if.then11.if.end18_crit_edge ], [ true, %do.body.i.i ], [ true, %do.body1.i.i ], [ false, %if.then15.if.end18_crit_edge ], [ false, %do.body.i.i72 ], [ false, %do.body1.i.i73 ]
  %role.098 = phi i32 [ %role.0105, %if.else13.if.end18_crit_edge ], [ 1, %if.then11.if.end18_crit_edge ], [ 1, %do.body.i.i ], [ 1, %do.body1.i.i ], [ 1, %if.then15.if.end18_crit_edge ], [ 1, %do.body.i.i72 ], [ 1, %do.body1.i.i73 ]
  tail call void @dwc2_force_mode(ptr noundef %hsotg, i1 noundef zeroext %cmp10100) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_drd_resume.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_drd_resume, %if.end30)) #5
          to label %if.then25 [label %if.end30], !srcloc !38

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hsotg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role.098)
  %cmp26 = icmp eq i32 %role.098, 0
  %cond = select i1 %cmp10100, ptr @.str.10, ptr @.str.11
  %spec.select = select i1 %cmp26, ptr @.str.9, ptr %cond
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_drd_resume.__UNIQUE_ID_ddebug295, ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef nonnull %spec.select) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end18
  %29 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load ptr, ptr %role_sw, align 8
  %tobool32.not = icmp eq ptr %.pr, null
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %land.lhs.true

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end30
  %external_id_pin_ctl = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 14
  %30 = ptrtoint ptr %external_id_pin_ctl to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %external_id_pin_ctl, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool33.not = icmp eq i8 %31, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then34:                                        ; preds = %land.lhs.true
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %35 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %needs_byte_swap.i, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %retval.0.i75 = select i1 %tobool.not.i, i32 %37, i32 %34
  %or = or i32 %retval.0.i75, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %or) #5, !srcloc !37
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %40) #5, !srcloc !37
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %44, i32 24
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %46 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %needs_byte_swap.i, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i84 = icmp eq i8 %47, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  %retval.0.i85 = select i1 %tobool.not.i84, i32 %48, i32 %45
  %or37 = or i32 %retval.0.i85, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i84, label %do.body1.i93, label %do.body.i90

do.body.i90:                                      ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %50, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %or37) #5, !srcloc !37
  br label %if.end38

do.body1.i93:                                     ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %or37) #5
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i92 = getelementptr i8, ptr %53, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i92, i32 %51) #5, !srcloc !37
  br label %if.end38

if.end38:                                         ; preds = %do.body1.i93, %do.body.i90, %land.lhs.true.if.end38_crit_edge, %if.end30.if.end38_crit_edge, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_get_role(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_force_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_drd_exit(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %role_sw = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 6
  %0 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %role_sw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_role_switch_unregister(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc2/drd.c", i32 169, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/dwc2/drd.c", i32 181, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dwc2_drd_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @dwc2_drd_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc2/drd.c", i32 231, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @dwc2_drd_resume.__UNIQUE_ID_ddebug295, !11, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/dwc2/drd.c", i32 100, i32 3}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dwc2_drd_role_sw_set.__UNIQUE_ID_ddebug293, !19, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/dwc2/drd.c", i32 156, i32 2}
!24 = !{ptr @dwc2_drd_role_sw_set.__UNIQUE_ID_ddebug294, !23, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 3082637}
!35 = !{i64 2155912092}
!36 = !{i8 0, i8 2}
!37 = !{i64 3082219}
!38 = !{i64 2148726867, i64 2148726872, i64 2148726885, i64 2148726929, i64 2148726963, i64 2148726984}
