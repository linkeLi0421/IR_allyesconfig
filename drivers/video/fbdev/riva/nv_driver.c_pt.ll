; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/riva/nv_driver.c_pt.bc'
source_filename = "../drivers/video/fbdev/riva/nv_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.riva_par = type { %struct._riva_hw_inst, [16 x i32], [16 x i32], ptr, i32, %struct.riva_regs, %struct.riva_regs, %struct.mutex, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, [3 x %struct.riva_i2c_chan] }
%struct._riva_hw_inst = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.riva_regs = type { [21 x i8], [65 x i8], [9 x i8], [5 x i8], i8, %struct._riva_hw_state }
%struct._riva_hw_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.riva_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
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
%struct.spinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.98, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.98 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@riva_common_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016rivafb: On a laptop.  Assuming Digital Flat Panel\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"riva_common_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/fbdev/riva/nv_driver.c\00", [59 x i8] zeroinitializer }, align 32
@riva_common_setup._entry_ptr = internal global ptr @riva_common_setup._entry, section ".printk_index", align 4
@riva_override_CRTC._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016rivafb: Detected CRTC controller %i being used\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"riva_override_CRTC\00", [45 x i8] zeroinitializer }, align 32
@riva_override_CRTC._entry_ptr = internal global ptr @riva_override_CRTC._entry, section ".printk_index", align 4
@riva_override_CRTC._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016rivafb: Forcing usage of CRTC %i\0A\00", [60 x i8] zeroinitializer }, align 32
@riva_override_CRTC._entry_ptr.7 = internal global ptr @riva_override_CRTC._entry.5, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.riva_get_memlen = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32768, i32 4096, i32 8192, i32 16384], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 282984864, i64 282984944]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 8, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.11 = internal global [28 x i64] [i64 26, i64 16, i64 274, i64 372, i64 373, i64 374, i64 375, i64 377, i64 380, i64 381, i64 390, i64 391, i64 646, i64 652, i64 790, i64 791, i64 794, i64 795, i64 796, i64 797, i64 798, i64 799, i64 804, i64 805, i64 808, i64 809, i64 812, i64 813]
@__sancov_gen_cov_switch_values.12 = internal global [13 x i64] [i64 11, i64 32, i64 272, i64 368, i64 384, i64 496, i64 592, i64 640, i64 768, i64 784, i64 800, i64 816, i64 832]
@__sancov_gen_cov_switch_values.13 = internal global [27 x i64] [i64 25, i64 16, i64 372, i64 373, i64 374, i64 375, i64 377, i64 380, i64 381, i64 390, i64 391, i64 646, i64 652, i64 790, i64 791, i64 794, i64 795, i64 796, i64 797, i64 798, i64 799, i64 804, i64 805, i64 808, i64 809, i64 812, i64 813]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 368, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 88, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [40 x i8] c"../drivers/video/fbdev/riva/nv_driver.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 93, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [29 x i8] c"switch.table.riva_get_memlen\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @riva_common_setup._entry, ptr @riva_common_setup._entry_ptr, ptr @riva_override_CRTC._entry, ptr @riva_override_CRTC._entry.5, ptr @riva_override_CRTC._entry_ptr, ptr @riva_override_CRTC._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @switch.table.riva_get_memlen], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_common_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_override_CRTC._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_override_CRTC._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.riva_get_memlen to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @riva_get_memlen(ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  %amt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %Chipset = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 10
  %0 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %Chipset, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amt) #4
  %2 = ptrtoint ptr %amt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %amt, align 4, !annotation !24
  %pdev = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 14
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %domain_nr.i, align 8
  %9 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %par, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %entry.sw.epilog86_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb27
    i32 16, label %entry.sw.bb51_crit_edge
    i32 32, label %entry.sw.bb51_crit_edge109
    i32 48, label %entry.sw.bb51_crit_edge110
  ]

entry.sw.bb51_crit_edge110:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb51

entry.sw.bb51_crit_edge109:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb51

entry.sw.bb51_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb51

entry.sw.epilog86_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

sw.bb:                                            ; preds = %entry
  %PFB = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 18
  %12 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %PFB, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !25
  %and = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else17, label %if.then

if.then:                                          ; preds = %sw.bb
  %PMC = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 23
  %15 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %PMC, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !25
  %and4 = and i32 %17, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and4)
  %cmp = icmp eq i32 %and4, 32
  br i1 %cmp, label %land.lhs.true, label %if.then.sw.epilog86_crit_edge

if.then.sw.epilog86_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

land.lhs.true:                                    ; preds = %if.then
  %18 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %PMC, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !25
  %and8 = and i32 %20, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9.not = icmp eq i32 %and8, 0
  br i1 %cmp9.not, label %land.lhs.true.sw.epilog86_crit_edge, label %if.then10

land.lhs.true.sw.epilog86_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %PFB, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !25
  %and14 = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and14)
  %switch.selectcmp = icmp eq i32 %and14, 1
  %switch.select = select i1 %switch.selectcmp, i32 2048, i32 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and14)
  %switch.selectcmp103 = icmp eq i32 %and14, 2
  %switch.select104 = select i1 %switch.selectcmp103, i32 4096, i32 %switch.select
  br label %sw.epilog86

if.else17:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PFB, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !25
  %and21 = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and21)
  %switch.selectcmp105 = icmp eq i32 %and21, 2
  %switch.select106 = select i1 %switch.selectcmp105, i32 4096, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %switch.selectcmp107 = icmp eq i32 %and21, 0
  %switch.select108 = select i1 %switch.selectcmp107, i32 8192, i32 %switch.select106
  br label %sw.epilog86

sw.bb27:                                          ; preds = %entry
  %PFB28 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 18
  %27 = ptrtoint ptr %PFB28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %PFB28, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !25
  %and31 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %30 = ptrtoint ptr %PFB28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %PFB28, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4
  br i1 %tobool32.not, label %if.else39, label %if.then33

if.then33:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #6
  %33 = lshr i32 %32, 1
  %mul38 = and i32 %33, 30720
  %add = add nuw nsw i32 %mul38, 2048
  br label %sw.epilog86

if.else39:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #6
  %and43 = and i32 %32, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.riva_get_memlen, i32 0, i32 %and43
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog86

sw.bb51:                                          ; preds = %entry.sw.bb51_crit_edge, %entry.sw.bb51_crit_edge109, %entry.sw.bb51_crit_edge110
  %35 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %if.else69 [
    i32 282984864, label %if.then53
    i32 282984944, label %if.then62
  ]

if.then53:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #6
  %call54 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %8, i32 noundef 0, i32 noundef 1) #4
  %call55 = call i32 @pci_read_config_dword(ptr noundef %call54, i32 noundef 124, ptr noundef nonnull %amt) #4
  call void @pci_dev_put(ptr noundef %call54) #4
  %36 = ptrtoint ptr %amt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %amt, align 4
  %38 = shl i32 %37, 4
  %add58 = and i32 %38, 31744
  %mul59 = add nuw nsw i32 %add58, 1024
  br label %sw.epilog86

if.then62:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #6
  %call63 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %8, i32 noundef 0, i32 noundef 1) #4
  %call64 = call i32 @pci_read_config_dword(ptr noundef %call63, i32 noundef 132, ptr noundef nonnull %amt) #4
  call void @pci_dev_put(ptr noundef %call63) #4
  %39 = ptrtoint ptr %amt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %amt, align 4
  %41 = shl i32 %40, 6
  %add67 = and i32 %41, 130048
  %mul68 = add nuw nsw i32 %add67, 1024
  br label %sw.epilog86

if.else69:                                        ; preds = %sw.bb51
  %PFB70 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 18
  %42 = ptrtoint ptr %PFB70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %PFB70, align 4
  %add.ptr71 = getelementptr i8, ptr %43, i32 524
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #4, !srcloc !25
  %shr73 = lshr i32 %44, 20
  %trunc = trunc i32 %shr73 to i8
  %45 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %trunc, label %sw.default82 [
    i8 2, label %if.else69.sw.epilog86_crit_edge
    i8 4, label %sw.bb76
    i8 8, label %sw.bb77
    i8 16, label %sw.bb78
    i8 32, label %sw.bb79
    i8 64, label %sw.bb80
    i8 -128, label %sw.bb81
  ]

if.else69.sw.epilog86_crit_edge:                  ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

sw.bb76:                                          ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

sw.bb77:                                          ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

sw.bb78:                                          ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

sw.bb79:                                          ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

sw.bb80:                                          ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

sw.bb81:                                          ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

sw.default82:                                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog86

sw.epilog86:                                      ; preds = %sw.default82, %sw.bb81, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %if.else69.sw.epilog86_crit_edge, %if.then62, %if.then53, %if.else39, %if.then33, %if.else17, %if.then10, %land.lhs.true.sw.epilog86_crit_edge, %if.then.sw.epilog86_crit_edge, %entry.sw.epilog86_crit_edge
  %memlen.0 = phi i32 [ 0, %entry.sw.epilog86_crit_edge ], [ %mul59, %if.then53 ], [ %mul68, %if.then62 ], [ 16384, %sw.default82 ], [ 131072, %sw.bb81 ], [ 65536, %sw.bb80 ], [ 32768, %sw.bb79 ], [ 16384, %sw.bb78 ], [ 8192, %sw.bb77 ], [ 4096, %sw.bb76 ], [ %add, %if.then33 ], [ %switch.select104, %if.then10 ], [ 8192, %land.lhs.true.sw.epilog86_crit_edge ], [ 8192, %if.then.sw.epilog86_crit_edge ], [ %switch.select108, %if.else17 ], [ 2048, %if.else69.sw.epilog86_crit_edge ], [ %switch.load, %if.else39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amt) #4
  ret i32 %memlen.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @riva_get_maxdclk(ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %par, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %entry.sw.epilog18_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %entry.sw.bb12_crit_edge
    i32 16, label %entry.sw.bb12_crit_edge23
    i32 32, label %entry.sw.bb12_crit_edge24
    i32 48, label %entry.sw.bb12_crit_edge25
  ]

entry.sw.bb12_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb12

entry.sw.bb12_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb12

entry.sw.bb12_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb12

entry.sw.epilog18_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog18

sw.bb:                                            ; preds = %entry
  %PFB = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 18
  %3 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %PFB, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !25
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog18_crit_edge, label %if.then

sw.bb.sw.epilog18_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog18

if.then:                                          ; preds = %sw.bb
  %PMC = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 23
  %6 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PMC, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !25
  %and3 = and i32 %8, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and3)
  %cmp = icmp eq i32 %and3, 32
  br i1 %cmp, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %9 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %PMC, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !25
  %and7 = and i32 %11, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.sw.epilog18_crit_edge

land.lhs.true.sw.epilog18_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog18

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %sw.epilog18

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge23, %entry.sw.bb12_crit_edge24, %entry.sw.bb12_crit_edge25
  %PFB13 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 18
  %12 = ptrtoint ptr %PFB13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %PFB13, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !25
  %15 = and i32 %14, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %15)
  %cond = icmp eq i32 %15, 24
  %. = select i1 %cond, i32 800000, i32 1000000
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb12, %if.else, %land.lhs.true.sw.epilog18_crit_edge, %sw.bb.sw.epilog18_crit_edge, %entry.sw.epilog18_crit_edge
  %dclk.0 = phi i32 [ 0, %entry.sw.epilog18_crit_edge ], [ 1000000, %if.else ], [ 800000, %land.lhs.true.sw.epilog18_crit_edge ], [ 1000000, %sw.bb.sw.epilog18_crit_edge ], [ %., %sw.bb12 ]
  ret i32 %dclk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @riva_common_setup(ptr noundef %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %EnableIRQ = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 7
  %0 = ptrtoint ptr %EnableIRQ to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %EnableIRQ, align 4
  %ctrl_base = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 3
  %1 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 6815744
  %PRAMDAC0 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 17
  %3 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %PRAMDAC0, align 4
  %add.ptr3 = getelementptr i8, ptr %2, i32 1048576
  %PFB = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 18
  %4 = ptrtoint ptr %PFB to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr3, ptr %PFB, align 8
  %add.ptr6 = getelementptr i8, ptr %2, i32 8192
  %PFIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 19
  %5 = ptrtoint ptr %PFIFO to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr6, ptr %PFIFO, align 4
  %add.ptr9 = getelementptr i8, ptr %2, i32 4194304
  %PGRAPH = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 20
  %6 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr9, ptr %PGRAPH, align 8
  %add.ptr12 = getelementptr i8, ptr %2, i32 1052672
  %PEXTDEV = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 21
  %7 = ptrtoint ptr %PEXTDEV to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr12, ptr %PEXTDEV, align 4
  %add.ptr15 = getelementptr i8, ptr %2, i32 36864
  %PTIMER = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 22
  %8 = ptrtoint ptr %PTIMER to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr15, ptr %PTIMER, align 8
  %PMC = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 23
  %9 = ptrtoint ptr %PMC to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %2, ptr %PMC, align 4
  %add.ptr21 = getelementptr i8, ptr %2, i32 8388608
  %FIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 25
  %10 = ptrtoint ptr %FIFO to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr21, ptr %FIFO, align 4
  %add.ptr24 = getelementptr i8, ptr %2, i32 6295552
  %PCIO0 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 27
  %11 = ptrtoint ptr %PCIO0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr24, ptr %PCIO0, align 4
  %add.ptr27 = getelementptr i8, ptr %2, i32 6819840
  %PDIO0 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 30
  %12 = ptrtoint ptr %PDIO0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr27, ptr %PDIO0, align 8
  %add.ptr30 = getelementptr i8, ptr %2, i32 786432
  %PVIO = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 29
  %13 = ptrtoint ptr %PVIO to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr30, ptr %PVIO, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 787404
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool.not, i32 944, i32 976
  %IO = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 8
  %16 = ptrtoint ptr %IO to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %IO, align 8
  %FlatPanel = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 13
  %17 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %FlatPanel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp = icmp eq i32 %18, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %Chipset = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 10
  %19 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %Chipset, align 8
  %trunc = trunc i32 %20 to i16
  %21 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %trunc, label %if.then.if.end_crit_edge [
    i16 274, label %if.then.do.end_crit_edge
    i16 372, label %if.then.do.end_crit_edge156
    i16 373, label %if.then.do.end_crit_edge157
    i16 374, label %if.then.do.end_crit_edge158
    i16 375, label %if.then.do.end_crit_edge159
    i16 377, label %if.then.do.end_crit_edge160
    i16 380, label %if.then.do.end_crit_edge161
    i16 381, label %if.then.do.end_crit_edge162
    i16 390, label %if.then.do.end_crit_edge163
    i16 391, label %if.then.do.end_crit_edge164
    i16 646, label %if.then.do.end_crit_edge165
    i16 652, label %if.then.do.end_crit_edge166
    i16 790, label %if.then.do.end_crit_edge167
    i16 791, label %if.then.do.end_crit_edge168
    i16 794, label %if.then.do.end_crit_edge169
    i16 795, label %if.then.do.end_crit_edge170
    i16 796, label %if.then.do.end_crit_edge171
    i16 797, label %if.then.do.end_crit_edge172
    i16 798, label %if.then.do.end_crit_edge173
    i16 799, label %if.then.do.end_crit_edge174
    i16 804, label %if.then.do.end_crit_edge175
    i16 805, label %if.then.do.end_crit_edge176
    i16 808, label %if.then.do.end_crit_edge177
    i16 809, label %if.then.do.end_crit_edge178
    i16 812, label %if.then.do.end_crit_edge179
    i16 813, label %if.then.do.end_crit_edge180
  ]

if.then.do.end_crit_edge180:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge179:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge178:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge177:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge176:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge175:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge174:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge173:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge172:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge171:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge170:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge169:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge168:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge167:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge166:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge165:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge164:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge163:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge162:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge161:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge160:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge159:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge158:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge157:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge156:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %if.then.do.end_crit_edge, %if.then.do.end_crit_edge156, %if.then.do.end_crit_edge157, %if.then.do.end_crit_edge158, %if.then.do.end_crit_edge159, %if.then.do.end_crit_edge160, %if.then.do.end_crit_edge161, %if.then.do.end_crit_edge162, %if.then.do.end_crit_edge163, %if.then.do.end_crit_edge164, %if.then.do.end_crit_edge165, %if.then.do.end_crit_edge166, %if.then.do.end_crit_edge167, %if.then.do.end_crit_edge168, %if.then.do.end_crit_edge169, %if.then.do.end_crit_edge170, %if.then.do.end_crit_edge171, %if.then.do.end_crit_edge172, %if.then.do.end_crit_edge173, %if.then.do.end_crit_edge174, %if.then.do.end_crit_edge175, %if.then.do.end_crit_edge176, %if.then.do.end_crit_edge177, %if.then.do.end_crit_edge178, %if.then.do.end_crit_edge179, %if.then.do.end_crit_edge180
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  %22 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %FlatPanel, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %Chipset37 = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 10
  %23 = ptrtoint ptr %Chipset37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %Chipset37, align 8
  %and38 = and i32 %24, 4080
  %25 = zext i32 %and38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and38, label %if.end.sw.epilog47_crit_edge [
    i32 272, label %sw.bb39
    i32 368, label %if.end.sw.bb45_crit_edge
    i32 384, label %if.end.sw.bb45_crit_edge181
    i32 496, label %if.end.sw.bb45_crit_edge182
    i32 592, label %if.end.sw.bb45_crit_edge183
    i32 640, label %if.end.sw.bb45_crit_edge184
    i32 768, label %if.end.sw.bb45_crit_edge185
    i32 784, label %if.end.sw.bb45_crit_edge186
    i32 800, label %if.end.sw.bb45_crit_edge187
    i32 816, label %if.end.sw.bb45_crit_edge188
    i32 832, label %if.end.sw.bb45_crit_edge189
  ]

if.end.sw.bb45_crit_edge189:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.bb45_crit_edge188:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.bb45_crit_edge187:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.bb45_crit_edge186:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.bb45_crit_edge185:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.bb45_crit_edge184:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.bb45_crit_edge183:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.bb45_crit_edge182:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.bb45_crit_edge181:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.bb45_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end.sw.epilog47_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog47

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 282984722, i32 %24)
  %cmp41 = icmp eq i32 %24, 282984722
  br i1 %cmp41, label %if.then43, label %sw.bb39.if.end44_crit_edge

sw.bb39.if.end44_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then43:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #6
  %SecondCRTC = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 12
  %26 = ptrtoint ptr %SecondCRTC to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %SecondCRTC, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %sw.bb39.if.end44_crit_edge
  %SecondCRTC.i = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 12
  %27 = ptrtoint ptr %SecondCRTC.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %SecondCRTC.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp ne i32 %28, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i) #7
  %forceCRTC.i = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 11
  %29 = ptrtoint ptr %forceCRTC.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %forceCRTC.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.not.i = icmp eq i32 %30, -1
  br i1 %cmp.not.i, label %if.end44.sw.epilog47_crit_edge, label %if.end44.sw.epilog47.sink.split_crit_edge

if.end44.sw.epilog47.sink.split_crit_edge:        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog47.sink.split

if.end44.sw.epilog47_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog47

sw.bb45:                                          ; preds = %if.end.sw.bb45_crit_edge, %if.end.sw.bb45_crit_edge181, %if.end.sw.bb45_crit_edge182, %if.end.sw.bb45_crit_edge183, %if.end.sw.bb45_crit_edge184, %if.end.sw.bb45_crit_edge185, %if.end.sw.bb45_crit_edge186, %if.end.sw.bb45_crit_edge187, %if.end.sw.bb45_crit_edge188, %if.end.sw.bb45_crit_edge189
  %31 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %FlatPanel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i = icmp eq i32 %32, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb45
  %trunc.i = trunc i32 %24 to i16
  %33 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %trunc.i, label %sw.default.i [
    i16 372, label %if.then.i.sw.bb.i_crit_edge
    i16 373, label %if.then.i.sw.bb.i_crit_edge190
    i16 374, label %if.then.i.sw.bb.i_crit_edge191
    i16 375, label %if.then.i.sw.bb.i_crit_edge192
    i16 377, label %if.then.i.sw.bb.i_crit_edge193
    i16 380, label %if.then.i.sw.bb.i_crit_edge194
    i16 381, label %if.then.i.sw.bb.i_crit_edge195
    i16 390, label %if.then.i.sw.bb.i_crit_edge196
    i16 391, label %if.then.i.sw.bb.i_crit_edge197
    i16 646, label %if.then.i.sw.bb.i_crit_edge198
    i16 652, label %if.then.i.sw.bb.i_crit_edge199
    i16 790, label %if.then.i.sw.bb.i_crit_edge200
    i16 791, label %if.then.i.sw.bb.i_crit_edge201
    i16 794, label %if.then.i.sw.bb.i_crit_edge202
    i16 795, label %if.then.i.sw.bb.i_crit_edge203
    i16 796, label %if.then.i.sw.bb.i_crit_edge204
    i16 797, label %if.then.i.sw.bb.i_crit_edge205
    i16 798, label %if.then.i.sw.bb.i_crit_edge206
    i16 799, label %if.then.i.sw.bb.i_crit_edge207
    i16 804, label %if.then.i.sw.bb.i_crit_edge208
    i16 805, label %if.then.i.sw.bb.i_crit_edge209
    i16 808, label %if.then.i.sw.bb.i_crit_edge210
    i16 809, label %if.then.i.sw.bb.i_crit_edge211
    i16 812, label %if.then.i.sw.bb.i_crit_edge212
    i16 813, label %if.then.i.sw.bb.i_crit_edge213
  ]

if.then.i.sw.bb.i_crit_edge213:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge212:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge211:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge210:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge209:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge208:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge207:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge206:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge205:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge204:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge203:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge202:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge201:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge200:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge199:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge198:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge197:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge196:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge195:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge194:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge193:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge192:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge191:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge190:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge190, %if.then.i.sw.bb.i_crit_edge191, %if.then.i.sw.bb.i_crit_edge192, %if.then.i.sw.bb.i_crit_edge193, %if.then.i.sw.bb.i_crit_edge194, %if.then.i.sw.bb.i_crit_edge195, %if.then.i.sw.bb.i_crit_edge196, %if.then.i.sw.bb.i_crit_edge197, %if.then.i.sw.bb.i_crit_edge198, %if.then.i.sw.bb.i_crit_edge199, %if.then.i.sw.bb.i_crit_edge200, %if.then.i.sw.bb.i_crit_edge201, %if.then.i.sw.bb.i_crit_edge202, %if.then.i.sw.bb.i_crit_edge203, %if.then.i.sw.bb.i_crit_edge204, %if.then.i.sw.bb.i_crit_edge205, %if.then.i.sw.bb.i_crit_edge206, %if.then.i.sw.bb.i_crit_edge207, %if.then.i.sw.bb.i_crit_edge208, %if.then.i.sw.bb.i_crit_edge209, %if.then.i.sw.bb.i_crit_edge210, %if.then.i.sw.bb.i_crit_edge211, %if.then.i.sw.bb.i_crit_edge212, %if.then.i.sw.bb.i_crit_edge213
  %SecondCRTC.i153 = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 12
  %34 = ptrtoint ptr %SecondCRTC.i153 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %SecondCRTC.i153, align 8
  br label %if.end29.i

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %SecondCRTC1.i = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 12
  %35 = ptrtoint ptr %SecondCRTC1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %SecondCRTC1.i, align 8
  br label %if.end29.i

if.else.i:                                        ; preds = %sw.bb45
  %36 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %37, i32 1324
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #4, !srcloc !25
  %add.ptr2.i.i = getelementptr i8, ptr %37, i32 1544
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !25
  %and.i.i = and i32 %39, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %and.i.i) #4, !srcloc !28
  %and5.i.i = and i32 %38, 65262
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %and5.i.i) #4, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #4, !srcloc !25
  %or.i.i = or i32 %41, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %or.i.i) #4, !srcloc !28
  %42 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %43, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 -1811611328) #4, !srcloc !28
  %44 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %45, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 4096) #4, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !25
  %48 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %49, i32 1544
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i) #4, !srcloc !25
  %and24.i.i = and i32 %50, 61439
  %51 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %52, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i.i, i32 %and24.i.i) #4, !srcloc !28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %38) #4, !srcloc !28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %39) #4, !srcloc !28
  %53 = and i32 %47, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i154 = icmp eq i32 %53, 0
  %54 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %PRAMDAC0, align 4
  br i1 %tobool.not.i154, label %if.else10.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  %add.ptr.i155 = getelementptr i8, ptr %55, i32 1324
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #4, !srcloc !25
  %and4.i = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %SecondCRTC9.i = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 12
  br i1 %tobool5.not.i, label %if.else8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %SecondCRTC9.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %SecondCRTC9.i, align 8
  br label %if.end29.i

if.else8.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %SecondCRTC9.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %SecondCRTC9.i, align 8
  br label %if.end29.i

if.else10.i:                                      ; preds = %if.else.i
  %add.ptr1.i44.i = getelementptr i32, ptr %55, i32 2379
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i44.i) #4, !srcloc !25
  %add.ptr2.i45.i = getelementptr i32, ptr %55, i32 2434
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i45.i) #4, !srcloc !25
  %and.i46.i = and i32 %60, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i45.i, i32 %and.i46.i) #4, !srcloc !28
  %and5.i47.i = and i32 %59, 65262
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i44.i, i32 %and5.i47.i) #4, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i44.i) #4, !srcloc !25
  %or.i48.i = or i32 %62, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i44.i, i32 %or.i48.i) #4, !srcloc !28
  %63 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr12.i49.i = getelementptr i8, ptr %64, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i49.i, i32 -1811611328) #4, !srcloc !28
  %65 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr15.i50.i = getelementptr i8, ptr %66, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i50.i, i32 4096) #4, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i45.i) #4, !srcloc !25
  %69 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr22.i53.i = getelementptr i8, ptr %70, i32 1544
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i53.i) #4, !srcloc !25
  %and24.i54.i = and i32 %71, 61439
  %72 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr27.i55.i = getelementptr i8, ptr %73, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i55.i, i32 %and24.i54.i) #4, !srcloc !28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i44.i, i32 %59) #4, !srcloc !28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i45.i, i32 %60) #4, !srcloc !28
  %74 = and i32 %68, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool12.not.i = icmp eq i32 %74, 0
  br i1 %tobool12.not.i, label %if.else25.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else10.i
  %75 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr16.i = getelementptr i8, ptr %76, i32 9516
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #4, !srcloc !25
  %and18.i = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %SecondCRTC23.i = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 12
  br i1 %tobool19.not.i, label %if.else22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  %78 = ptrtoint ptr %SecondCRTC23.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %SecondCRTC23.i, align 8
  br label %if.end29.i

if.else22.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  %79 = ptrtoint ptr %SecondCRTC23.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %SecondCRTC23.i, align 8
  br label %if.end29.i

if.else25.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #6
  %SecondCRTC26.i = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 12
  %80 = ptrtoint ptr %SecondCRTC26.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %SecondCRTC26.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else25.i, %if.else22.i, %if.then20.i, %if.else8.i, %if.then6.i, %sw.default.i, %sw.bb.i
  %SecondCRTC.i.i = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 12
  %81 = ptrtoint ptr %SecondCRTC.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %SecondCRTC.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i = icmp ne i32 %82, 0
  %cond.i.i = zext i1 %tobool.not.i.i to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cond.i.i) #7
  %forceCRTC.i.i = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 11
  %83 = ptrtoint ptr %forceCRTC.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %forceCRTC.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp.not.i.i = icmp eq i32 %84, -1
  br i1 %cmp.not.i.i, label %if.end29.i.sw.epilog47_crit_edge, label %if.end29.i.sw.epilog47.sink.split_crit_edge

if.end29.i.sw.epilog47.sink.split_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog47.sink.split

if.end29.i.sw.epilog47_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog47

sw.epilog47.sink.split:                           ; preds = %if.end29.i.sw.epilog47.sink.split_crit_edge, %if.end44.sw.epilog47.sink.split_crit_edge
  %.sink = phi i32 [ %30, %if.end44.sw.epilog47.sink.split_crit_edge ], [ %84, %if.end29.i.sw.epilog47.sink.split_crit_edge ]
  %forceCRTC.i.i.sink = phi ptr [ %forceCRTC.i, %if.end44.sw.epilog47.sink.split_crit_edge ], [ %forceCRTC.i.i, %if.end29.i.sw.epilog47.sink.split_crit_edge ]
  %SecondCRTC.i.i.sink = phi ptr [ %SecondCRTC.i, %if.end44.sw.epilog47.sink.split_crit_edge ], [ %SecondCRTC.i.i, %if.end29.i.sw.epilog47.sink.split_crit_edge ]
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %.sink) #7
  %85 = ptrtoint ptr %forceCRTC.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %forceCRTC.i.i.sink, align 4
  %87 = ptrtoint ptr %SecondCRTC.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %SecondCRTC.i.i.sink, align 8
  br label %sw.epilog47

sw.epilog47:                                      ; preds = %sw.epilog47.sink.split, %if.end29.i.sw.epilog47_crit_edge, %if.end44.sw.epilog47_crit_edge, %if.end.sw.epilog47_crit_edge
  %SecondCRTC48 = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 12
  %88 = ptrtoint ptr %SecondCRTC48 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %SecondCRTC48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool49.not = icmp eq i32 %89, 0
  %90 = ptrtoint ptr %PCIO0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %PCIO0, align 4
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %sw.epilog47
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr53 = getelementptr i8, ptr %91, i32 8192
  %PCRTC0 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 15
  %92 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %PCRTC0, align 4
  %add.ptr56 = getelementptr i32, ptr %93, i32 2048
  %94 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr60 = getelementptr i32, ptr %95, i32 2048
  %96 = ptrtoint ptr %PDIO0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %PDIO0, align 8
  %add.ptr64 = getelementptr i8, ptr %97, i32 8192
  br label %if.end82

if.else:                                          ; preds = %sw.epilog47
  call void @__sanitizer_cov_trace_pc() #6
  %PCRTC071 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 15
  %98 = ptrtoint ptr %PCRTC071 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %PCRTC071, align 4
  %100 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %PRAMDAC0, align 4
  %102 = ptrtoint ptr %PDIO0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %PDIO0, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then50
  %add.ptr53.sink = phi ptr [ %91, %if.else ], [ %add.ptr53, %if.then50 ]
  %add.ptr56.sink = phi ptr [ %99, %if.else ], [ %add.ptr56, %if.then50 ]
  %add.ptr60.sink = phi ptr [ %101, %if.else ], [ %add.ptr60, %if.then50 ]
  %add.ptr64.sink = phi ptr [ %103, %if.else ], [ %add.ptr64, %if.then50 ]
  %104 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 28
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr53.sink, ptr %104, align 8
  %106 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 16
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr56.sink, ptr %106, align 8
  %108 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 32
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %add.ptr60.sink, ptr %108, align 8
  %110 = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 31
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr64.sink, ptr %110, align 4
  %112 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %FlatPanel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %cmp84 = icmp eq i32 %113, -1
  br i1 %cmp84, label %if.then86, label %if.end82.if.end88_crit_edge

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  %114 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %FlatPanel, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end82.if.end88_crit_edge
  %115 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %FlatPanel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp90 = icmp sgt i32 %116, 0
  %cond92 = zext i1 %cmp90 to i32
  %flatPanel = getelementptr inbounds %struct._riva_hw_inst, ptr %par, i32 0, i32 13
  %117 = ptrtoint ptr %flatPanel to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %cond92, ptr %flatPanel, align 4
  %pdev = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 14
  %118 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev, align 8
  %120 = ptrtoint ptr %Chipset37 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %Chipset37, align 8
  %call96 = tail call i32 @RivaGetConfig(ptr noundef %par, ptr noundef %119, i32 noundef %121) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @RivaGetConfig(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/riva/nv_driver.c", i32 368, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @riva_common_setup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @riva_common_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/riva/nv_driver.c", i32 88, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @riva_override_CRTC._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @riva_override_CRTC._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/riva/nv_driver.c", i32 93, i32 3}
!13 = !{ptr @riva_override_CRTC._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @riva_override_CRTC._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{i64 4995888}
!26 = !{i64 4995668}
!27 = !{i64 2156257240}
!28 = !{i64 4995470}
