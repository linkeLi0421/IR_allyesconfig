; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/otg.c_pt.bc'
source_filename = "../drivers/usb/chipidea/otg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.78, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.78 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }

@ci_hdrc_otg_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&ci->work)\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ci_otg\00", [25 x i8] zeroinitializer }, align 32
@ci_hdrc_otg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 242, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't create workqueue\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ci_hdrc_otg_init\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/chipidea/otg.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ci_hdrc_otg_init._entry_ptr = internal global ptr @ci_hdrc_otg_init._entry, section ".printk_index", align 4
@ci_handle_id_switch.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ci_hdrc\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ci_handle_id_switch\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"switching from %s to %s\0A\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hw_wait_vbus_lower_bsv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 159, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout waiting for %08x in OTGSC\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hw_wait_vbus_lower_bsv\00", [41 x i8] zeroinitializer }, align 32
@hw_wait_vbus_lower_bsv._entry_ptr = internal global ptr @hw_wait_vbus_lower_bsv._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 239, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 240, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 242, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 173, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [30 x i8] c"../drivers/usb/chipidea/otg.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 158, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @ci_hdrc_otg_init._entry, ptr @ci_hdrc_otg_init._entry_ptr, ptr @hw_wait_vbus_lower_bsv._entry, ptr @hw_wait_vbus_lower_bsv._entry_ptr, ptr @ci_hdrc_otg_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_otg_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_otg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_wait_vbus_lower_bsv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_read_otgsc(ptr nocapture noundef readonly %ci, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 14
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !33
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %and.i = and i32 %3, %mask
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %4 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platdata, align 4
  %vbus_extcon = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16
  %edev = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edev, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %role_switch = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %8 = ptrtoint ptr %role_switch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %role_switch, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %changed = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %changed, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  %and = and i32 %and.i, -526337
  %masksel = select i1 %tobool2.not, i32 0, i32 524288
  %val.0 = or i32 %masksel, %and
  %12 = ptrtoint ptr %vbus_extcon to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vbus_extcon, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  %masksel72 = select i1 %tobool4.not, i32 0, i32 2048
  %val.1 = or i32 %val.0, %masksel72
  %enabled = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %or12 = or i32 %val.1, 134217728
  br label %if.end16

if.else13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %and14 = and i32 %val.1, -134217729
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11, %lor.lhs.false.if.end16_crit_edge
  %val.2 = phi i32 [ %or12, %if.then11 ], [ %and14, %if.else13 ], [ %and.i, %lor.lhs.false.if.end16_crit_edge ]
  %id_extcon = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17
  %edev18 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17, i32 3
  %16 = ptrtoint ptr %edev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edev18, align 4
  %cmp.i71 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %lor.lhs.false20, label %if.end16.if.then23_crit_edge

if.end16.if.then23_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

lor.lhs.false20:                                  ; preds = %if.end16
  %role_switch21 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %18 = ptrtoint ptr %role_switch21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %role_switch21, align 8
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %lor.lhs.false20.if.end45_crit_edge, label %lor.lhs.false20.if.then23_crit_edge

lor.lhs.false20.if.then23_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

lor.lhs.false20.if.end45_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then23:                                        ; preds = %lor.lhs.false20.if.then23_crit_edge, %if.end16.if.then23_crit_edge
  %changed24 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %changed24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %changed24, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not = icmp eq i8 %21, 0
  %and29 = and i32 %val.2, -65793
  %masksel73 = select i1 %tobool25.not, i32 0, i32 65536
  %val.3 = or i32 %masksel73, %and29
  %22 = ptrtoint ptr %id_extcon to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id_extcon, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not = icmp eq i8 %23, 0
  %masksel74 = select i1 %tobool32.not, i32 256, i32 0
  %val.4 = or i32 %val.3, %masksel74
  %enabled38 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17, i32 2
  %24 = ptrtoint ptr %enabled38 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled38, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool39.not = icmp eq i8 %25, 0
  br i1 %tobool39.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %or41 = or i32 %val.4, 16777216
  br label %if.end45

if.else42:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %and43 = and i32 %val.4, -16777217
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then40, %lor.lhs.false20.if.end45_crit_edge
  %val.5 = phi i32 [ %or41, %if.then40 ], [ %and43, %if.else42 ], [ %val.2, %lor.lhs.false20.if.end45_crit_edge ]
  %and46 = and i32 %val.5, %mask
  ret i32 %and46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_write_otgsc(ptr nocapture noundef readonly %ci, i32 noundef %mask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %0 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platdata, align 4
  %edev = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edev, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %role_switch = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %4 = ptrtoint ptr %role_switch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %role_switch, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %and = and i32 %data, %mask
  %and1 = and i32 %and, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %changed = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %changed, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %and5 = and i32 %and, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %enabled = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 16, i32 2
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %enabled, align 2
  %and8 = and i32 %data, -134217729
  br label %if.end15

if.else:                                          ; preds = %if.end
  %and9 = and i32 %mask, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.if.end15_crit_edge, label %if.then11

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %enabled12 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 16, i32 2
  %8 = ptrtoint ptr %enabled12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled12, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge, %if.then7, %lor.lhs.false.if.end15_crit_edge
  %data.addr.0 = phi i32 [ %and8, %if.then7 ], [ %data, %if.then11 ], [ %data, %if.else.if.end15_crit_edge ], [ %data, %lor.lhs.false.if.end15_crit_edge ]
  %9 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platdata, align 4
  %edev17 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 17, i32 3
  %11 = ptrtoint ptr %edev17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %edev17, align 4
  %cmp.i66 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %lor.lhs.false19, label %if.end15.if.then22_crit_edge

if.end15.if.then22_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

lor.lhs.false19:                                  ; preds = %if.end15
  %role_switch20 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %13 = ptrtoint ptr %role_switch20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %role_switch20, align 8
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %lor.lhs.false19.if.end42_crit_edge, label %lor.lhs.false19.if.then22_crit_edge

lor.lhs.false19.if.then22_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

lor.lhs.false19.if.end42_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then22:                                        ; preds = %lor.lhs.false19.if.then22_crit_edge, %if.end15.if.then22_crit_edge
  %and23 = and i32 %data.addr.0, %mask
  %and24 = and i32 %and23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then22.if.end28_crit_edge, label %if.then26

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %changed27 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %changed27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %changed27, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then22.if.end28_crit_edge
  %and30 = and i32 %and23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else35, label %if.then32

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %enabled33 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %enabled33 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %enabled33, align 2
  %and34 = and i32 %data.addr.0, -16777217
  br label %if.end42

if.else35:                                        ; preds = %if.end28
  %and36 = and i32 %mask, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else35.if.end42_crit_edge, label %if.then38

if.else35.if.end42_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then38:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  %enabled39 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %enabled39 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %enabled39, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.else35.if.end42_crit_edge, %if.then32, %lor.lhs.false19.if.end42_crit_edge
  %data.addr.1 = phi i32 [ %and34, %if.then32 ], [ %data.addr.0, %if.then38 ], [ %data.addr.0, %if.else35.if.end42_crit_edge ], [ %data.addr.0, %lor.lhs.false19.if.end42_crit_edge ]
  %or = or i32 %mask, 8323072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %tobool.not.i = icmp eq i32 %or, -1
  br i1 %tobool.not.i, label %if.end42.if.end.i_crit_edge, label %if.then.i

if.end42.if.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %neg.i = xor i32 %or, -1
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 14
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !33
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %and.i = and i32 %21, %neg.i
  %and2.i = and i32 %data.addr.1, %or
  %or.i = or i32 %and.i, %and2.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end42.if.end.i_crit_edge
  %data.addr.0.i = phi i32 [ %or.i, %if.then.i ], [ %data.addr.1, %if.end42.if.end.i_crit_edge ]
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %22 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.i.hw_write.exit_crit_edge

if.end.i.hw_write.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_write.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx5.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 14
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %26 = tail call i32 @llvm.bswap.i32(i32 %data.addr.0.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %26) #4, !srcloc !37
  br label %hw_write.exit

hw_write.exit:                                    ; preds = %if.else.i.i, %if.end.i.hw_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_otg_role(ptr nocapture noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 14
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !33
  %3 = lshr i32 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %and.i.i = and i32 %3, 256
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %4 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platdata.i, align 4
  %vbus_extcon.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16
  %edev.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edev.i, align 4
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %role_switch.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %8 = ptrtoint ptr %role_switch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %role_switch.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %changed.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %changed.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  %masksel.i = select i1 %tobool2.not.i, i32 0, i32 524288
  %val.0.i = or i32 %masksel.i, %and.i.i
  %12 = ptrtoint ptr %vbus_extcon.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vbus_extcon.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not.i = icmp eq i8 %13, 0
  %masksel72.i = select i1 %tobool4.not.i, i32 0, i32 2048
  %val.1.i = or i32 %val.0.i, %masksel72.i
  %enabled.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not.i = icmp eq i8 %15, 0
  %or12.i = or i32 %val.1.i, 134217728
  %spec.select = select i1 %tobool10.not.i, i32 %val.1.i, i32 %or12.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then.i, %lor.lhs.false.i.if.end16.i_crit_edge
  %val.2.i = phi i32 [ %and.i.i, %lor.lhs.false.i.if.end16.i_crit_edge ], [ %spec.select, %if.then.i ]
  %id_extcon.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17
  %edev18.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17, i32 3
  %16 = ptrtoint ptr %edev18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edev18.i, align 4
  %cmp.i71.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i, label %lor.lhs.false20.i, label %if.end16.i.if.then23.i_crit_edge

if.end16.i.if.then23.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i

lor.lhs.false20.i:                                ; preds = %if.end16.i
  %role_switch21.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %18 = ptrtoint ptr %role_switch21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %role_switch21.i, align 8
  %tobool22.not.i = icmp eq ptr %19, null
  br i1 %tobool22.not.i, label %lor.lhs.false20.i.hw_read_otgsc.exit_crit_edge, label %lor.lhs.false20.i.if.then23.i_crit_edge

lor.lhs.false20.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i

lor.lhs.false20.i.hw_read_otgsc.exit_crit_edge:   ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_read_otgsc.exit

if.then23.i:                                      ; preds = %lor.lhs.false20.i.if.then23.i_crit_edge, %if.end16.i.if.then23.i_crit_edge
  %changed24.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %changed24.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %changed24.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not.i = icmp eq i8 %21, 0
  %masksel73.i = select i1 %tobool25.not.i, i32 0, i32 65536
  %22 = ptrtoint ptr %id_extcon.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id_extcon.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not.i = icmp eq i8 %23, 0
  %masksel74.i = select i1 %tobool32.not.i, i32 256, i32 0
  %val.4.i = or i32 %masksel73.i, %masksel74.i
  %enabled38.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17, i32 2
  %24 = ptrtoint ptr %enabled38.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled38.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool39.not.i = icmp eq i8 %25, 0
  %or41.i = or i32 %val.4.i, 16777216
  %spec.select1 = select i1 %tobool39.not.i, i32 %val.4.i, i32 %or41.i
  br label %hw_read_otgsc.exit

hw_read_otgsc.exit:                               ; preds = %if.then23.i, %lor.lhs.false20.i.hw_read_otgsc.exit_crit_edge
  %val.5.i = phi i32 [ %val.2.i, %lor.lhs.false20.i.hw_read_otgsc.exit_crit_edge ], [ %spec.select1, %if.then23.i ]
  %and46.i = lshr i32 %val.5.i, 8
  %and46.i.lobit = and i32 %and46.i, 1
  ret i32 %and46.i.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_handle_vbus_change(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %is_otg = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %0 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_otg, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.end

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 14
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %5 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platdata.i, align 4
  %vbus_extcon.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %6, i32 0, i32 16
  %edev.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %6, i32 0, i32 16, i32 3
  %7 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edev.i, align 4
  %cmp.i.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %9 = lshr i32 %4, 8
  %and.i.i = and i32 %9, 2048
  %role_switch.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %10 = ptrtoint ptr %role_switch.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %role_switch.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %changed.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %6, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %changed.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i = icmp eq i8 %13, 0
  %masksel.i = select i1 %tobool2.not.i, i32 0, i32 524288
  %14 = ptrtoint ptr %vbus_extcon.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vbus_extcon.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i = icmp eq i8 %15, 0
  %masksel72.i = select i1 %tobool4.not.i, i32 0, i32 2048
  %val.1.i = or i32 %masksel72.i, %masksel.i
  %enabled.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %6, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not.i = icmp eq i8 %17, 0
  %or12.i = or i32 %val.1.i, 134217728
  %spec.select = select i1 %tobool10.not.i, i32 %val.1.i, i32 %or12.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then.i, %lor.lhs.false.i.if.end16.i_crit_edge
  %val.2.i = phi i32 [ %and.i.i, %lor.lhs.false.i.if.end16.i_crit_edge ], [ %spec.select, %if.then.i ]
  %id_extcon.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %6, i32 0, i32 17
  %edev18.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %6, i32 0, i32 17, i32 3
  %18 = ptrtoint ptr %edev18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edev18.i, align 4
  %cmp.i71.i = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i, label %lor.lhs.false20.i, label %if.end16.i.if.then23.i_crit_edge

if.end16.i.if.then23.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i

lor.lhs.false20.i:                                ; preds = %if.end16.i
  %role_switch21.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %20 = ptrtoint ptr %role_switch21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %role_switch21.i, align 8
  %tobool22.not.i = icmp eq ptr %21, null
  br i1 %tobool22.not.i, label %lor.lhs.false20.i.hw_read_otgsc.exit_crit_edge, label %lor.lhs.false20.i.if.then23.i_crit_edge

lor.lhs.false20.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i

lor.lhs.false20.i.hw_read_otgsc.exit_crit_edge:   ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_read_otgsc.exit

if.then23.i:                                      ; preds = %lor.lhs.false20.i.if.then23.i_crit_edge, %if.end16.i.if.then23.i_crit_edge
  %changed24.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %6, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %changed24.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %changed24.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool25.not.i = icmp eq i8 %23, 0
  %and29.i = and i32 %val.2.i, -65793
  %masksel73.i = select i1 %tobool25.not.i, i32 0, i32 65536
  %val.3.i = or i32 %masksel73.i, %and29.i
  %24 = ptrtoint ptr %id_extcon.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %id_extcon.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool32.not.i = icmp eq i8 %25, 0
  %masksel74.i = select i1 %tobool32.not.i, i32 256, i32 0
  %val.4.i = or i32 %val.3.i, %masksel74.i
  %enabled38.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %6, i32 0, i32 17, i32 2
  %26 = ptrtoint ptr %enabled38.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled38.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool39.not.i = icmp eq i8 %27, 0
  br i1 %tobool39.not.i, label %if.else42.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #6
  %or41.i = or i32 %val.4.i, 16777216
  br label %hw_read_otgsc.exit

if.else42.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #6
  %and43.i = and i32 %val.4.i, -16777217
  br label %hw_read_otgsc.exit

hw_read_otgsc.exit:                               ; preds = %if.else42.i, %if.then40.i, %lor.lhs.false20.i.hw_read_otgsc.exit_crit_edge
  %val.5.i = phi i32 [ %or41.i, %if.then40.i ], [ %and43.i, %if.else42.i ], [ %val.2.i, %lor.lhs.false20.i.hw_read_otgsc.exit_crit_edge ]
  %and46.i = and i32 %val.5.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool1.not = icmp eq i32 %and46.i, 0
  br i1 %tobool1.not, label %hw_read_otgsc.exit.if.else_crit_edge, label %land.lhs.true

hw_read_otgsc.exit.if.else_crit_edge:             ; preds = %hw_read_otgsc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %hw_read_otgsc.exit
  %vbus_active = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 33
  %28 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vbus_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not = icmp eq i32 %29, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %gadget = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  %call4 = tail call i32 @usb_gadget_vbus_connect(ptr noundef %gadget) #4
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %hw_read_otgsc.exit.if.else_crit_edge
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %33 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platdata.i, align 4
  %vbus_extcon.i24 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 16
  %edev.i25 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 16, i32 3
  %35 = ptrtoint ptr %edev.i25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %edev.i25, align 4
  %cmp.i.i26 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i26, label %lor.lhs.false.i29, label %if.else.if.then.i38_crit_edge

if.else.if.then.i38_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i38

lor.lhs.false.i29:                                ; preds = %if.else
  %37 = lshr i32 %32, 8
  %and.i.i22 = and i32 %37, 2048
  %role_switch.i27 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %38 = ptrtoint ptr %role_switch.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %role_switch.i27, align 8
  %tobool.not.i28 = icmp eq ptr %39, null
  br i1 %tobool.not.i28, label %lor.lhs.false.i29.if.end16.i46_crit_edge, label %lor.lhs.false.i29.if.then.i38_crit_edge

lor.lhs.false.i29.if.then.i38_crit_edge:          ; preds = %lor.lhs.false.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i38

lor.lhs.false.i29.if.end16.i46_crit_edge:         ; preds = %lor.lhs.false.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i46

if.then.i38:                                      ; preds = %lor.lhs.false.i29.if.then.i38_crit_edge, %if.else.if.then.i38_crit_edge
  %changed.i30 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 16, i32 1
  %40 = ptrtoint ptr %changed.i30 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %changed.i30, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool2.not.i31 = icmp eq i8 %41, 0
  %masksel.i32 = select i1 %tobool2.not.i31, i32 0, i32 524288
  %42 = ptrtoint ptr %vbus_extcon.i24 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vbus_extcon.i24, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool4.not.i33 = icmp eq i8 %43, 0
  %masksel72.i34 = select i1 %tobool4.not.i33, i32 0, i32 2048
  %val.1.i35 = or i32 %masksel72.i34, %masksel.i32
  %enabled.i36 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 16, i32 2
  %44 = ptrtoint ptr %enabled.i36 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %enabled.i36, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool10.not.i37 = icmp eq i8 %45, 0
  %or12.i39 = or i32 %val.1.i35, 134217728
  %spec.select68 = select i1 %tobool10.not.i37, i32 %val.1.i35, i32 %or12.i39
  br label %if.end16.i46

if.end16.i46:                                     ; preds = %if.then.i38, %lor.lhs.false.i29.if.end16.i46_crit_edge
  %val.2.i42 = phi i32 [ %and.i.i22, %lor.lhs.false.i29.if.end16.i46_crit_edge ], [ %spec.select68, %if.then.i38 ]
  %id_extcon.i43 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 17
  %edev18.i44 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 17, i32 3
  %46 = ptrtoint ptr %edev18.i44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %edev18.i44, align 4
  %cmp.i71.i45 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i45, label %lor.lhs.false20.i49, label %if.end16.i46.if.then23.i60_crit_edge

if.end16.i46.if.then23.i60_crit_edge:             ; preds = %if.end16.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i60

lor.lhs.false20.i49:                              ; preds = %if.end16.i46
  %role_switch21.i47 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %48 = ptrtoint ptr %role_switch21.i47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %role_switch21.i47, align 8
  %tobool22.not.i48 = icmp eq ptr %49, null
  br i1 %tobool22.not.i48, label %lor.lhs.false20.i49.hw_read_otgsc.exit67_crit_edge, label %lor.lhs.false20.i49.if.then23.i60_crit_edge

lor.lhs.false20.i49.if.then23.i60_crit_edge:      ; preds = %lor.lhs.false20.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i60

lor.lhs.false20.i49.hw_read_otgsc.exit67_crit_edge: ; preds = %lor.lhs.false20.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_read_otgsc.exit67

if.then23.i60:                                    ; preds = %lor.lhs.false20.i49.if.then23.i60_crit_edge, %if.end16.i46.if.then23.i60_crit_edge
  %changed24.i50 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %changed24.i50 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %changed24.i50, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool25.not.i51 = icmp eq i8 %51, 0
  %and29.i52 = and i32 %val.2.i42, -65793
  %masksel73.i53 = select i1 %tobool25.not.i51, i32 0, i32 65536
  %val.3.i54 = or i32 %masksel73.i53, %and29.i52
  %52 = ptrtoint ptr %id_extcon.i43 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %id_extcon.i43, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool32.not.i55 = icmp eq i8 %53, 0
  %masksel74.i56 = select i1 %tobool32.not.i55, i32 256, i32 0
  %val.4.i57 = or i32 %val.3.i54, %masksel74.i56
  %enabled38.i58 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 17, i32 2
  %54 = ptrtoint ptr %enabled38.i58 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %enabled38.i58, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool39.not.i59 = icmp eq i8 %55, 0
  br i1 %tobool39.not.i59, label %if.else42.i64, label %if.then40.i62

if.then40.i62:                                    ; preds = %if.then23.i60
  call void @__sanitizer_cov_trace_pc() #6
  %or41.i61 = or i32 %val.4.i57, 16777216
  br label %hw_read_otgsc.exit67

if.else42.i64:                                    ; preds = %if.then23.i60
  call void @__sanitizer_cov_trace_pc() #6
  %and43.i63 = and i32 %val.4.i57, -16777217
  br label %hw_read_otgsc.exit67

hw_read_otgsc.exit67:                             ; preds = %if.else42.i64, %if.then40.i62, %lor.lhs.false20.i49.hw_read_otgsc.exit67_crit_edge
  %val.5.i65 = phi i32 [ %or41.i61, %if.then40.i62 ], [ %and43.i63, %if.else42.i64 ], [ %val.2.i42, %lor.lhs.false20.i49.hw_read_otgsc.exit67_crit_edge ]
  %and46.i66 = and i32 %val.5.i65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i66)
  %tobool6.not = icmp eq i32 %and46.i66, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %hw_read_otgsc.exit67.if.end14_crit_edge

hw_read_otgsc.exit67.if.end14_crit_edge:          ; preds = %hw_read_otgsc.exit67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

land.lhs.true7:                                   ; preds = %hw_read_otgsc.exit67
  %vbus_active8 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 33
  %56 = ptrtoint ptr %vbus_active8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vbus_active8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool9.not = icmp eq i32 %57, 0
  br i1 %tobool9.not, label %land.lhs.true7.if.end14_crit_edge, label %if.then10

land.lhs.true7.if.end14_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  %gadget11 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  %call12 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %gadget11) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %land.lhs.true7.if.end14_crit_edge, %hw_read_otgsc.exit67.if.end14_crit_edge, %if.then3, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_hdrc_otg_init(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #4
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @ci_hdrc_otg_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry4 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ci_otg_work, ptr %func, align 4
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull @.str.2) #4
  %wq = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %4 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %wq, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end8, label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #7
  br label %return

if.end:                                           ; preds = %entry
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %7 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %9 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_otg.i, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %land.lhs.true.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.lhs.true.i:                                  ; preds = %if.end
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %11 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.return_crit_edge, label %land.rhs.i

land.lhs.true2.i.return_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %srp_support.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not.i = icmp eq i8 %16, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.then10_crit_edge

land.rhs.i.if.then10_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hnp_support.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not.i = icmp eq i8 %18, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.then10_crit_edge

lor.lhs.false.i.if.then10_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %adp_support.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.i.not = icmp eq i8 %20, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.return_crit_edge, label %ci_otg_is_fsm_mode.exit.if.then10_crit_edge

ci_otg_is_fsm_mode.exit.if.then10_crit_edge:      ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

ci_otg_is_fsm_mode.exit.return_crit_edge:         ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then10:                                        ; preds = %ci_otg_is_fsm_mode.exit.if.then10_crit_edge, %lor.lhs.false.i.if.then10_crit_edge, %land.rhs.i.if.then10_crit_edge
  %call11 = tail call i32 @ci_hdrc_otg_fsm_init(ptr noundef %ci) #4
  br label %return

return:                                           ; preds = %if.then10, %ci_otg_is_fsm_mode.exit.return_crit_edge, %land.lhs.true2.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.end.return_crit_edge, %do.end8
  %retval.0 = phi i32 [ %call11, %if.then10 ], [ -19, %do.end8 ], [ 0, %ci_otg_is_fsm_mode.exit.return_crit_edge ], [ 0, %land.lhs.true2.i.return_crit_edge ], [ 0, %land.lhs.true.i.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_otg_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -820
  %platdata.i = getelementptr i8, ptr %work, i32 4344
  %0 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr i8, ptr %work, i32 -580
  %2 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_otg.i, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %roles.i = getelementptr i8, ptr %work, i32 -592
  %4 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr i8, ptr %work, i32 -588
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.end_crit_edge, label %land.rhs.i

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %srp_support.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.land.lhs.true_crit_edge

land.rhs.i.land.lhs.true_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hnp_support.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not.i = icmp eq i8 %11, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.land.lhs.true_crit_edge

lor.lhs.false.i.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %adp_support.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.i.not = icmp eq i8 %13, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.end_crit_edge, label %ci_otg_is_fsm_mode.exit.land.lhs.true_crit_edge

ci_otg_is_fsm_mode.exit.land.lhs.true_crit_edge:  ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

ci_otg_is_fsm_mode.exit.if.end_crit_edge:         ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %ci_otg_is_fsm_mode.exit.land.lhs.true_crit_edge, %lor.lhs.false.i.land.lhs.true_crit_edge, %land.rhs.i.land.lhs.true_crit_edge
  %call1 = tail call i32 @ci_otg_fsm_work(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %ci_otg_is_fsm_mode.exit.if.end_crit_edge, %land.lhs.true2.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #4
  %id_event = getelementptr i8, ptr %work, i32 4376
  %16 = ptrtoint ptr %id_event to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id_event, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %id_event to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %id_event, align 4
  tail call fastcc void @ci_handle_id_switch(ptr noundef %add.ptr)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %b_sess_valid_event = getelementptr i8, ptr %work, i32 4377
  %19 = ptrtoint ptr %b_sess_valid_event to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b_sess_valid_event, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not = icmp eq i8 %20, 0
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %b_sess_valid_event to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %b_sess_valid_event, align 1
  tail call void @ci_handle_vbus_change(ptr noundef %add.ptr)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %call.i25 = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge
  %irq13 = getelementptr i8, ptr %work, i32 -596
  %24 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq13, align 8
  tail call void @enable_irq(i32 noundef %25) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_hdrc_otg_fsm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_hdrc_otg_destroy(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %2 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platdata.i, align 4
  %edev.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 16, i32 3
  %4 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev.i, align 4
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %role_switch.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %6 = ptrtoint ptr %role_switch.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %role_switch.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end15.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i.if.end15.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %changed.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %changed.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %changed.i, align 1
  %enabled12.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %enabled12.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enabled12.i, align 2
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i, %lor.lhs.false.i.if.end15.i_crit_edge
  %10 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platdata.i, align 4
  %edev17.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %11, i32 0, i32 17, i32 3
  %12 = ptrtoint ptr %edev17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edev17.i, align 4
  %cmp.i66.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66.i, label %lor.lhs.false19.i, label %if.end15.i.if.then22.i_crit_edge

if.end15.i.if.then22.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false19.i:                                ; preds = %if.end15.i
  %role_switch20.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %14 = ptrtoint ptr %role_switch20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %role_switch20.i, align 8
  %tobool21.not.i = icmp eq ptr %15, null
  br i1 %tobool21.not.i, label %lor.lhs.false19.i.if.end42.i_crit_edge, label %lor.lhs.false19.i.if.then22.i_crit_edge

lor.lhs.false19.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false19.i.if.end42.i_crit_edge:           ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

if.then22.i:                                      ; preds = %lor.lhs.false19.i.if.then22.i_crit_edge, %if.end15.i.if.then22.i_crit_edge
  %changed27.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %11, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %changed27.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %changed27.i, align 1
  %enabled39.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %11, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %enabled39.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %enabled39.i, align 2
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then22.i, %lor.lhs.false19.i.if.end42.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 14
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %imx28_write_fix.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %21 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.end42.i.hw_write_otgsc.exit_crit_edge

if.end42.i.hw_write_otgsc.exit_crit_edge:         ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_write_otgsc.exit

if.else.i.i.i:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = and i32 %20, -32640
  %24 = or i32 %23, 32512
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #4, !srcloc !37
  br label %hw_write_otgsc.exit

hw_write_otgsc.exit:                              ; preds = %if.else.i.i.i, %if.end42.i.hw_write_otgsc.exit_crit_edge
  %27 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %29 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_otg.i, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i9 = icmp eq i8 %30, 0
  br i1 %tobool.not.i9, label %hw_write_otgsc.exit.if.end3_crit_edge, label %land.lhs.true.i

hw_write_otgsc.exit.if.end3_crit_edge:            ; preds = %hw_write_otgsc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

land.lhs.true.i:                                  ; preds = %hw_write_otgsc.exit
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %31 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end3_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %34, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.end3_crit_edge, label %land.rhs.i

land.lhs.true2.i.if.end3_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %28, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %srp_support.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool6.not.i = icmp eq i8 %36, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i10, label %land.rhs.i.if.then2_crit_edge

land.rhs.i.if.then2_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

lor.lhs.false.i10:                                ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %28, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hnp_support.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool7.not.i = icmp eq i8 %38, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i10.if.then2_crit_edge

lor.lhs.false.i10.if.then2_crit_edge:             ; preds = %lor.lhs.false.i10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i10
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %28, i32 0, i32 10, i32 3
  %39 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %adp_support.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool8.i.not = icmp eq i8 %40, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.end3_crit_edge, label %ci_otg_is_fsm_mode.exit.if.then2_crit_edge

ci_otg_is_fsm_mode.exit.if.then2_crit_edge:       ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

ci_otg_is_fsm_mode.exit.if.end3_crit_edge:        ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %ci_otg_is_fsm_mode.exit.if.then2_crit_edge, %lor.lhs.false.i10.if.then2_crit_edge, %land.rhs.i.if.then2_crit_edge
  tail call void @ci_hdrc_otg_fsm_remove(ptr noundef %ci) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %ci_otg_is_fsm_mode.exit.if.end3_crit_edge, %land.lhs.true2.i.if.end3_crit_edge, %land.lhs.true.i.if.end3_crit_edge, %hw_write_otgsc.exit.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_otg_fsm_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_otg_fsm_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_handle_id_switch(ptr noundef %ci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 14
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !33
  %3 = lshr i32 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %and.i.i.i = and i32 %3, 256
  %platdata.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %4 = ptrtoint ptr %platdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platdata.i.i, align 4
  %vbus_extcon.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16
  %edev.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %edev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edev.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %entry
  %role_switch.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %8 = ptrtoint ptr %role_switch.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %role_switch.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.if.end16.i.i_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

lor.lhs.false.i.i.if.end16.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %changed.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %changed.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %changed.i.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i.i = icmp eq i8 %11, 0
  %masksel.i.i = select i1 %tobool2.not.i.i, i32 0, i32 524288
  %val.0.i.i = or i32 %masksel.i.i, %and.i.i.i
  %12 = ptrtoint ptr %vbus_extcon.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vbus_extcon.i.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not.i.i = icmp eq i8 %13, 0
  %masksel72.i.i = select i1 %tobool4.not.i.i, i32 0, i32 2048
  %val.1.i.i = or i32 %val.0.i.i, %masksel72.i.i
  %enabled.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled.i.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not.i.i = icmp eq i8 %15, 0
  %or12.i.i = or i32 %val.1.i.i, 134217728
  %spec.select.i = select i1 %tobool10.not.i.i, i32 %val.1.i.i, i32 %or12.i.i
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then.i.i, %lor.lhs.false.i.i.if.end16.i.i_crit_edge
  %val.2.i.i = phi i32 [ %and.i.i.i, %lor.lhs.false.i.i.if.end16.i.i_crit_edge ], [ %spec.select.i, %if.then.i.i ]
  %id_extcon.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17
  %edev18.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17, i32 3
  %16 = ptrtoint ptr %edev18.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edev18.i.i, align 4
  %cmp.i71.i.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i.i, label %lor.lhs.false20.i.i, label %if.end16.i.i.if.then23.i.i_crit_edge

if.end16.i.i.if.then23.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i.i

lor.lhs.false20.i.i:                              ; preds = %if.end16.i.i
  %role_switch21.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  %18 = ptrtoint ptr %role_switch21.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %role_switch21.i.i, align 8
  %tobool22.not.i.i = icmp eq ptr %19, null
  br i1 %tobool22.not.i.i, label %lor.lhs.false20.i.i.ci_otg_role.exit_crit_edge, label %lor.lhs.false20.i.i.if.then23.i.i_crit_edge

lor.lhs.false20.i.i.if.then23.i.i_crit_edge:      ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i.i

lor.lhs.false20.i.i.ci_otg_role.exit_crit_edge:   ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ci_otg_role.exit

if.then23.i.i:                                    ; preds = %lor.lhs.false20.i.i.if.then23.i.i_crit_edge, %if.end16.i.i.if.then23.i.i_crit_edge
  %changed24.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %changed24.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %changed24.i.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not.i.i = icmp eq i8 %21, 0
  %masksel73.i.i = select i1 %tobool25.not.i.i, i32 0, i32 65536
  %22 = ptrtoint ptr %id_extcon.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id_extcon.i.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not.i.i = icmp eq i8 %23, 0
  %masksel74.i.i = select i1 %tobool32.not.i.i, i32 256, i32 0
  %val.4.i.i = or i32 %masksel74.i.i, %masksel73.i.i
  %enabled38.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 17, i32 2
  %24 = ptrtoint ptr %enabled38.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled38.i.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool39.not.i.i = icmp eq i8 %25, 0
  %or41.i.i = or i32 %val.4.i.i, 16777216
  %spec.select1.i = select i1 %tobool39.not.i.i, i32 %val.4.i.i, i32 %or41.i.i
  br label %ci_otg_role.exit

ci_otg_role.exit:                                 ; preds = %if.then23.i.i, %lor.lhs.false20.i.i.ci_otg_role.exit_crit_edge
  %val.5.i.i = phi i32 [ %val.2.i.i, %lor.lhs.false20.i.i.ci_otg_role.exit_crit_edge ], [ %spec.select1.i, %if.then23.i.i ]
  %and46.i.i = lshr i32 %val.5.i.i, 8
  %and46.i.lobit.i = and i32 %and46.i.i, 1
  %role1 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 5
  %26 = ptrtoint ptr %role1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %role1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and46.i.lobit.i, i32 %27)
  %cmp.not = icmp eq i32 %and46.i.lobit.i, %27
  br i1 %cmp.not, label %ci_otg_role.exit.if.end24_crit_edge, label %do.body

ci_otg_role.exit.if.end24_crit_edge:              ; preds = %ci_otg_role.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

do.body:                                          ; preds = %ci_otg_role.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_handle_id_switch.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_handle_id_switch, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !38

if.then5:                                         ; preds = %do.body
  %28 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ci, align 8
  %30 = ptrtoint ptr %role1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %role1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i = icmp ugt i32 %31, 1
  br i1 %cmp.i, label %if.then5.do.body5.i_crit_edge, label %lor.rhs.i, !prof !39

if.then5.do.body5.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %if.then5
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 %31
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %ci_role.exit, !prof !39

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %if.then5.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #4, !srcloc !40
  unreachable

ci_role.exit:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ci_role_driver, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %arrayidx = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 %and46.i.lobit.i
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %name7 = getelementptr inbounds %struct.ci_role_driver, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ci_handle_id_switch.__UNIQUE_ID_ddebug293, ptr noundef %29, ptr noundef nonnull @.str.10, ptr noundef %35, ptr noundef %39) #4
  br label %do.end

do.end:                                           ; preds = %ci_role.exit, %do.body
  %vbus_active = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 33
  %40 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vbus_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool8.not = icmp eq i32 %41, 0
  br i1 %tobool8.not, label %do.end.if.end13thread-pre-split_crit_edge, label %land.lhs.true

do.end.if.end13thread-pre-split_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13thread-pre-split

land.lhs.true:                                    ; preds = %do.end
  %42 = ptrtoint ptr %role1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %role1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp10 = icmp eq i32 %43, 1
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %gadget = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  %call12 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %gadget) #4
  br label %if.end13thread-pre-split

if.end13thread-pre-split:                         ; preds = %if.then11, %do.end.if.end13thread-pre-split_crit_edge
  %44 = ptrtoint ptr %role1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %role1, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %land.lhs.true.if.end13_crit_edge
  %45 = phi i32 [ %.pr, %if.end13thread-pre-split ], [ %43, %land.lhs.true.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i42 = icmp eq i32 %45, 2
  br i1 %cmp.i42, label %if.end13.ci_role_stop.exit_crit_edge, label %if.end.i

if.end13.ci_role_stop.exit_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %ci_role_stop.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %role1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %role1, align 4
  %arrayidx.i43 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 %45
  %47 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i43, align 4
  %stop.i = getelementptr inbounds %struct.ci_role_driver, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stop.i, align 4
  tail call void %50(ptr noundef %ci) #4
  br label %ci_role_stop.exit

ci_role_stop.exit:                                ; preds = %if.end.i, %if.end13.ci_role_stop.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.lobit.i)
  %cmp14.not = icmp eq i32 %and46.i.lobit.i, 0
  br i1 %cmp14.not, label %if.end24.critedge, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %ci_role_stop.exit
  %51 = ptrtoint ptr %platdata.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %platdata.i.i, align 4
  %edev = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %52, i32 0, i32 16, i32 3
  %53 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %edev, align 4
  %cmp.i44 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %if.then17, label %if.then22.critedge41

if.then17:                                        ; preds = %land.lhs.true15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %55, 500
  %role_switch.i.i47 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 13
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i86, %if.then17
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %59 = ptrtoint ptr %platdata.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %platdata.i.i, align 4
  %vbus_extcon.i.i48 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %60, i32 0, i32 16
  %edev.i.i49 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %60, i32 0, i32 16, i32 3
  %61 = ptrtoint ptr %edev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %edev.i.i49, align 4
  %cmp.i.i.i50 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i50, label %lor.lhs.false.i.i53, label %while.cond.i.if.then.i.i64_crit_edge

while.cond.i.if.then.i.i64_crit_edge:             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i64

lor.lhs.false.i.i53:                              ; preds = %while.cond.i
  %63 = lshr i32 %58, 8
  %and.i.i.i51 = and i32 %63, 2048
  %64 = ptrtoint ptr %role_switch.i.i47 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %role_switch.i.i47, align 8
  %tobool.not.i.i52 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i52, label %lor.lhs.false.i.i53.if.end16.i.i69_crit_edge, label %lor.lhs.false.i.i53.if.then.i.i64_crit_edge

lor.lhs.false.i.i53.if.then.i.i64_crit_edge:      ; preds = %lor.lhs.false.i.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i64

lor.lhs.false.i.i53.if.end16.i.i69_crit_edge:     ; preds = %lor.lhs.false.i.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i.i69

if.then.i.i64:                                    ; preds = %lor.lhs.false.i.i53.if.then.i.i64_crit_edge, %while.cond.i.if.then.i.i64_crit_edge
  %changed.i.i54 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %60, i32 0, i32 16, i32 1
  %66 = ptrtoint ptr %changed.i.i54 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %changed.i.i54, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool2.not.i.i55 = icmp eq i8 %67, 0
  %masksel.i.i56 = select i1 %tobool2.not.i.i55, i32 0, i32 524288
  %68 = ptrtoint ptr %vbus_extcon.i.i48 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vbus_extcon.i.i48, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool4.not.i.i57 = icmp eq i8 %69, 0
  %masksel72.i.i58 = select i1 %tobool4.not.i.i57, i32 0, i32 2048
  %val.1.i.i59 = or i32 %masksel72.i.i58, %masksel.i.i56
  %enabled.i.i60 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %60, i32 0, i32 16, i32 2
  %70 = ptrtoint ptr %enabled.i.i60 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %enabled.i.i60, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool10.not.i.i61 = icmp eq i8 %71, 0
  %or12.i.i62 = or i32 %val.1.i.i59, 134217728
  %spec.select.i63 = select i1 %tobool10.not.i.i61, i32 %val.1.i.i59, i32 %or12.i.i62
  br label %if.end16.i.i69

if.end16.i.i69:                                   ; preds = %if.then.i.i64, %lor.lhs.false.i.i53.if.end16.i.i69_crit_edge
  %val.2.i.i65 = phi i32 [ %and.i.i.i51, %lor.lhs.false.i.i53.if.end16.i.i69_crit_edge ], [ %spec.select.i63, %if.then.i.i64 ]
  %id_extcon.i.i66 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %60, i32 0, i32 17
  %edev18.i.i67 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %60, i32 0, i32 17, i32 3
  %72 = ptrtoint ptr %edev18.i.i67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %edev18.i.i67, align 4
  %cmp.i71.i.i68 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i.i68, label %lor.lhs.false20.i.i71, label %if.end16.i.i69.if.then23.i.i80_crit_edge

if.end16.i.i69.if.then23.i.i80_crit_edge:         ; preds = %if.end16.i.i69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i.i80

lor.lhs.false20.i.i71:                            ; preds = %if.end16.i.i69
  %74 = ptrtoint ptr %role_switch.i.i47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %role_switch.i.i47, align 8
  %tobool22.not.i.i70 = icmp eq ptr %75, null
  br i1 %tobool22.not.i.i70, label %lor.lhs.false20.i.i71.hw_read_otgsc.exit.i_crit_edge, label %lor.lhs.false20.i.i71.if.then23.i.i80_crit_edge

lor.lhs.false20.i.i71.if.then23.i.i80_crit_edge:  ; preds = %lor.lhs.false20.i.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i.i80

lor.lhs.false20.i.i71.hw_read_otgsc.exit.i_crit_edge: ; preds = %lor.lhs.false20.i.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_read_otgsc.exit.i

if.then23.i.i80:                                  ; preds = %lor.lhs.false20.i.i71.if.then23.i.i80_crit_edge, %if.end16.i.i69.if.then23.i.i80_crit_edge
  %changed24.i.i72 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %60, i32 0, i32 17, i32 1
  %76 = ptrtoint ptr %changed24.i.i72 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %changed24.i.i72, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool25.not.i.i73 = icmp eq i8 %77, 0
  %and29.i.i = and i32 %val.2.i.i65, -65793
  %masksel73.i.i74 = select i1 %tobool25.not.i.i73, i32 0, i32 65536
  %val.3.i.i = or i32 %masksel73.i.i74, %and29.i.i
  %78 = ptrtoint ptr %id_extcon.i.i66 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %id_extcon.i.i66, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool32.not.i.i75 = icmp eq i8 %79, 0
  %masksel74.i.i76 = select i1 %tobool32.not.i.i75, i32 256, i32 0
  %val.4.i.i77 = or i32 %val.3.i.i, %masksel74.i.i76
  %enabled38.i.i78 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %60, i32 0, i32 17, i32 2
  %80 = ptrtoint ptr %enabled38.i.i78 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %enabled38.i.i78, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool39.not.i.i79 = icmp eq i8 %81, 0
  br i1 %tobool39.not.i.i79, label %if.else42.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.then23.i.i80
  call void @__sanitizer_cov_trace_pc() #6
  %or41.i.i81 = or i32 %val.4.i.i77, 16777216
  br label %hw_read_otgsc.exit.i

if.else42.i.i:                                    ; preds = %if.then23.i.i80
  call void @__sanitizer_cov_trace_pc() #6
  %and43.i.i = and i32 %val.4.i.i77, -16777217
  br label %hw_read_otgsc.exit.i

hw_read_otgsc.exit.i:                             ; preds = %if.else42.i.i, %if.then40.i.i, %lor.lhs.false20.i.i71.hw_read_otgsc.exit.i_crit_edge
  %val.5.i.i82 = phi i32 [ %or41.i.i81, %if.then40.i.i ], [ %and43.i.i, %if.else42.i.i ], [ %val.2.i.i65, %lor.lhs.false20.i.i71.hw_read_otgsc.exit.i_crit_edge ]
  %and46.i.i83 = and i32 %val.5.i.i82, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i83)
  %tobool.not.i84 = icmp eq i32 %and46.i.i83, 0
  br i1 %tobool.not.i84, label %hw_read_otgsc.exit.i.hw_wait_vbus_lower_bsv.exit_crit_edge, label %while.body.i

hw_read_otgsc.exit.i.hw_wait_vbus_lower_bsv.exit_crit_edge: ; preds = %hw_read_otgsc.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_wait_vbus_lower_bsv.exit

while.body.i:                                     ; preds = %hw_read_otgsc.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %82
  %cmp.i85 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i85, label %do.end.i, label %if.end.i86

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ci, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.11, i32 noundef 2048) #7
  br label %hw_wait_vbus_lower_bsv.exit

if.end.i86:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 20) #4
  br label %while.cond.i

hw_wait_vbus_lower_bsv.exit:                      ; preds = %do.end.i, %hw_read_otgsc.exit.i.hw_wait_vbus_lower_bsv.exit_crit_edge
  %arrayidx.i87 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 %and46.i.lobit.i
  %85 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i87, align 4
  %tobool.not.i88 = icmp eq ptr %86, null
  br i1 %tobool.not.i88, label %hw_wait_vbus_lower_bsv.exit.if.then22_crit_edge, label %if.end2.i

hw_wait_vbus_lower_bsv.exit.if.then22_crit_edge:  ; preds = %hw_wait_vbus_lower_bsv.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.end2.i:                                        ; preds = %hw_wait_vbus_lower_bsv.exit
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %call.i = tail call i32 %88(ptr noundef %ci) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end2.i.if.then22.sink.split_crit_edge, label %if.end2.i.if.then22_crit_edge

if.end2.i.if.then22_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.end2.i.if.then22.sink.split_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.sink.split

if.then22.critedge41:                             ; preds = %land.lhs.true15
  %arrayidx.i89 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 %and46.i.lobit.i
  %89 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i89, align 4
  %tobool.not.i90 = icmp eq ptr %90, null
  br i1 %tobool.not.i90, label %if.then22.critedge41.if.then22_crit_edge, label %if.end2.i93

if.then22.critedge41.if.then22_crit_edge:         ; preds = %if.then22.critedge41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.end2.i93:                                      ; preds = %if.then22.critedge41
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %call.i91 = tail call i32 %92(ptr noundef %ci) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool5.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool5.not.i92, label %if.end2.i93.if.then22.sink.split_crit_edge, label %if.end2.i93.if.then22_crit_edge

if.end2.i93.if.then22_crit_edge:                  ; preds = %if.end2.i93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.end2.i93.if.then22.sink.split_crit_edge:       ; preds = %if.end2.i93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.sink.split

if.then22.sink.split:                             ; preds = %if.end2.i93.if.then22.sink.split_crit_edge, %if.end2.i.if.then22.sink.split_crit_edge
  %93 = ptrtoint ptr %role1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and46.i.lobit.i, ptr %role1, align 4
  br label %if.then22

if.then22:                                        ; preds = %if.then22.sink.split, %if.end2.i93.if.then22_crit_edge, %if.then22.critedge41.if.then22_crit_edge, %if.end2.i.if.then22_crit_edge, %hw_wait_vbus_lower_bsv.exit.if.then22_crit_edge
  tail call void @ci_handle_vbus_change(ptr noundef %ci)
  br label %if.end24

if.end24.critedge:                                ; preds = %ci_role_stop.exit
  %arrayidx.i97 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 0
  %94 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i97, align 4
  %tobool.not.i98 = icmp eq ptr %95, null
  br i1 %tobool.not.i98, label %if.end24.critedge.if.end24_crit_edge, label %if.end2.i101

if.end24.critedge.if.end24_crit_edge:             ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.end2.i101:                                     ; preds = %if.end24.critedge
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %call.i99 = tail call i32 %97(ptr noundef %ci) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool5.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool5.not.i100, label %if.then6.i103, label %if.end2.i101.if.end24_crit_edge

if.end2.i101.if.end24_crit_edge:                  ; preds = %if.end2.i101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then6.i103:                                    ; preds = %if.end2.i101
  call void @__sanitizer_cov_trace_pc() #6
  %98 = ptrtoint ptr %role1 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %role1, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then6.i103, %if.end2.i101.if.end24_crit_edge, %if.end24.critedge.if.end24_crit_edge, %if.then22, %ci_otg_role.exit.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @ci_hdrc_otg_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/otg.c", i32 239, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/usb/chipidea/otg.c", i32 240, i32 11}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/chipidea/otg.c", i32 242, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ci_hdrc_otg_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @ci_hdrc_otg_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/chipidea/otg.c", i32 173, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ci_handle_id_switch.__UNIQUE_ID_ddebug293, !15, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/chipidea/otg.c", i32 158, i32 4}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hw_wait_vbus_lower_bsv._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @hw_wait_vbus_lower_bsv._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 5935607}
!34 = !{i64 2153468466}
!35 = !{i8 0, i8 2}
!36 = !{i64 2153469821}
!37 = !{i64 5935189}
!38 = !{i64 2148878564, i64 2148878569, i64 2148878582, i64 2148878626, i64 2148878660, i64 2148878681}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2155282807, i64 2155283297, i64 2155282844, i64 2155282900, i64 2155282934, i64 2155282958, i64 2155282999, i64 2155283020, i64 2155283048, i64 2155283082}
