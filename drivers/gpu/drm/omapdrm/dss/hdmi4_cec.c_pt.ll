; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/hdmi4_cec.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/hdmi4_cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.hdmi_core_data = type { ptr, i8, i8, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.80 }
%union.anon.80 = type { [16 x i32] }

@hdmi_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @hdmi_cec_adap_enable, ptr null, ptr null, ptr @hdmi_cec_adap_log_addr, ptr @hdmi_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"omap4\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hdmi_cec_adap_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013cec-%s: could not clear TX FIFO\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdmi_cec_adap_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/omapdrm/dss/hdmi4_cec.c\00", [56 x i8] zeroinitializer }, align 32
@hdmi_cec_adap_enable._entry_ptr = internal global ptr @hdmi_cec_adap_enable._entry, section ".printk_index", align 4
@hdmi_cec_adap_enable._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013cec-%s: could not clear RX FIFO\0A\00", [61 x i8] zeroinitializer }, align 32
@hdmi_cec_adap_enable._entry_ptr.6 = internal global ptr @hdmi_cec_adap_enable._entry.4, section ".printk_index", align 4
@hdmi_cec_adap_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cec-%s: could not clear TX FIFO for transmit\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hdmi_cec_adap_transmit\00", [41 x i8] zeroinitializer }, align 32
@hdmi_cec_adap_transmit._entry_ptr = internal global ptr @hdmi_cec_adap_transmit._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"hdmi_cec_adap_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 314, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 333, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 182, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 189, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [43 x i8] c"../drivers/gpu/drm/omapdrm/dss/hdmi4_cec.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 275, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @hdmi_cec_adap_enable._entry, ptr @hdmi_cec_adap_enable._entry.4, ptr @hdmi_cec_adap_enable._entry_ptr, ptr @hdmi_cec_adap_enable._entry_ptr.6, ptr @hdmi_cec_adap_transmit._entry, ptr @hdmi_cec_adap_transmit._entry_ptr, ptr @hdmi_cec_adap_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_cec_adap_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_cec_adap_enable._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_cec_adap_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi4_cec_irq(ptr nocapture noundef readonly %core) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.cec_msg, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2456
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !28
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  %add.ptr.i40 = getelementptr i8, ptr %4, i32 2460
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #4, !srcloc !28
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %add.ptr.i41 = getelementptr i8, ptr %7, i32 2456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %2) #4, !srcloc !29
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %add.ptr.i42 = getelementptr i8, ptr %9, i32 2460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %5) #4, !srcloc !29
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %adap = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 5
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 4
  %call.i = tail call i64 @ktime_get() #4
  tail call void @cec_transmit_done_ts(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i) #4
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %add.ptr.i43 = getelementptr i8, ptr %13, i32 2332
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #4, !srcloc !28
  %or = or i32 %14, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %or) #4, !srcloc !29
  br label %if.end21

if.else:                                          ; preds = %entry
  %and9 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.if.end21_crit_edge, label %if.then11

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 4
  %add.ptr.i45 = getelementptr i8, ptr %16, i32 2332
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #4, !srcloc !28
  %adap14 = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 5
  %18 = ptrtoint ptr %adap14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap14, align 4
  %20 = trunc i32 %17 to i8
  %21 = lshr i8 %20, 4
  %conv = and i8 %21, 7
  %call.i46 = tail call i64 @ktime_get() #4
  tail call void @cec_transmit_done_ts(ptr noundef %19, i8 noundef zeroext 36, i8 noundef zeroext 0, i8 noundef zeroext %conv, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i46) #4
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 4
  %add.ptr.i47 = getelementptr i8, ptr %23, i32 2332
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #4, !srcloc !28
  %or20 = or i32 %24, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %or20) #4, !srcloc !29
  br label %if.end21

if.end21:                                         ; preds = %if.then11, %if.else.if.end21_crit_edge, %if.then
  %and22 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  %25 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 2484
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !28
  %and162.i = and i32 %27, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.i)
  %tobool.not63.i = icmp eq i32 %and162.i, 0
  br i1 %tobool.not63.i, label %if.then24.if.end25_crit_edge, label %while.body.lr.ph.i

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

while.body.lr.ph.i:                               ; preds = %if.then24
  %len.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i, i32 0, i32 2
  %msg10.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i, i32 0, i32 6
  %arrayidx15.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i, i32 0, i32 6, i32 1
  %adap.i = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cnt.0.in64.i = phi i32 [ %27, %while.body.lr.ph.i ], [ %60, %while.end.i.while.body.i_crit_edge ]
  %and2.i = and i32 %cnt.0.in64.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i, label %while.body.i.if.end27.i_crit_edge

while.body.i.if.end27.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i

if.then.i:                                        ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #4
  %28 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %and4.i = and i32 %cnt.0.in64.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and4.i)
  %cmp.i = icmp eq i32 %and4.i, 15
  %spec.select.i = select i1 %cmp.i, i32 14, i32 %and4.i
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select.i, ptr %len.i, align 8
  %30 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %31, i32 2488
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #4, !srcloc !28
  %conv.i = trunc i32 %32 to i8
  %33 = ptrtoint ptr %msg10.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %msg10.i, align 8
  %34 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %35, i32 2492
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #4, !srcloc !28
  %conv13.i = trunc i32 %36 to i8
  %37 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv13.i, ptr %arrayidx15.i, align 1
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1757.not.i = icmp eq i32 %39, 0
  br i1 %cmp1757.not.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %i.058.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.058.i, 2
  %add.i = add i32 %mul.i, 2496
  %40 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %41, i32 %add.i
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #4, !srcloc !28
  %conv21.i = trunc i32 %42 to i8
  %add23.i = add i32 %i.058.i, 2
  %arrayidx24.i = getelementptr %struct.cec_msg, ptr %msg.i, i32 0, i32 6, i32 %add23.i
  %43 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv21.i, ptr %arrayidx24.i, align 1
  %inc.i = add nuw i32 %i.058.i, 1
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i, align 8
  %cmp17.i = icmp ult i32 %inc.i, %45
  br i1 %cmp17.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.then.i.for.end.i_crit_edge ], [ %45, %for.body.i.for.end.i_crit_edge ]
  %add26.i = add i32 %.lcssa.i, 2
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add26.i, ptr %len.i, align 8
  %47 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adap.i, align 4
  %call.i.i = call i64 @ktime_get() #4
  call void @cec_received_msg_ts(ptr noundef %48, ptr noundef nonnull %msg.i, i64 noundef %call.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #4
  br label %if.end27.i

if.end27.i:                                       ; preds = %for.end.i, %while.body.i.if.end27.i_crit_edge
  %49 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %50, i32 2480
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 1) #4, !srcloc !29
  %51 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core, align 4
  %add.ptr.i5559.i = getelementptr i8, ptr %52, i32 2480
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5559.i) #4, !srcloc !28
  %and3260.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3260.i)
  %tobool33.not61.i = icmp eq i32 %and3260.i, 0
  br i1 %tobool33.not61.i, label %if.end27.i.while.end.i_crit_edge, label %if.end27.i.while.body34.i_crit_edge

if.end27.i.while.body34.i_crit_edge:              ; preds = %if.end27.i
  br label %while.body34.i

if.end27.i.while.end.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body34.i:                                   ; preds = %while.body34.i.while.body34.i_crit_edge, %if.end27.i.while.body34.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748) #4
  %55 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %core, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %56, i32 2480
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i) #4, !srcloc !28
  %and32.i = and i32 %57, 1
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %while.body34.i.while.end.i_crit_edge, label %while.body34.i.while.body34.i_crit_edge

while.body34.i.while.body34.i_crit_edge:          ; preds = %while.body34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body34.i

while.body34.i.while.end.i_crit_edge:             ; preds = %while.body34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %while.body34.i.while.end.i_crit_edge, %if.end27.i.while.end.i_crit_edge
  %58 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %core, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %59, i32 2484
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56.i) #4, !srcloc !28
  %and1.i = and i32 %60, 112
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %while.end.i.if.end25_crit_edge, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.end.i.if.end25_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end25:                                         ; preds = %while.end.i.if.end25_crit_edge, %if.then24.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi4_cec_set_phys_addr(ptr nocapture noundef readonly %core, i16 noundef zeroext %pa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 5
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  tail call void @cec_s_phys_addr(ptr noundef %1, i16 noundef zeroext %pa, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi4_cec_init(ptr noundef %pdev, ptr noundef %core, ptr noundef %wp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @hdmi_cec_adap_ops, ptr noundef %core, ptr noundef nonnull @.str, i32 noundef 30, i8 noundef zeroext 4) #4
  %adap = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 5
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %adap, align 4
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call to i32
  %cmp26 = icmp slt ptr %call, null
  %cmp = and i1 %cmp.i.i, %cmp26
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %wp3 = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 3
  %2 = ptrtoint ptr %wp3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wp, ptr %wp3, align 4
  %3 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 112
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !28
  %and = and i32 %5, -64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #4, !srcloc !29
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call9 = tail call i32 @cec_register_adapter(ptr noundef %7, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 4
  tail call void @cec_delete_adapter(ptr noundef %9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ %1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi4_cec_uninit(ptr nocapture noundef readonly %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 5
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_cec_adap_enable(ptr noundef %adap, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !29
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i112 = getelementptr i8, ptr %5, i32 2452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 0) #4, !srcloc !29
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i113 = getelementptr i8, ptr %7, i32 480
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #4, !srcloc !28
  %and = and i32 %8, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %and) #4, !srcloc !29
  %wp = getelementptr inbounds %struct.hdmi_core_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wp, align 4
  tail call void @hdmi_wp_clear_irqenable(ptr noundef %10, i32 noundef 1) #4
  %11 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wp, align 4
  tail call void @hdmi_wp_set_irqstatus(ptr noundef %12, i32 noundef 1) #4
  %13 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wp, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %add.ptr.i115 = getelementptr i8, ptr %16, i32 112
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #4, !srcloc !28
  %and11 = and i32 %17, -64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %and11) #4, !srcloc !29
  tail call void @hdmi4_core_disable(ptr noundef %1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call13 = tail call i32 @hdmi4_core_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %wp17 = getelementptr inbounds %struct.hdmi_core_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %wp17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wp17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add.ptr.i117 = getelementptr i8, ptr %21, i32 112
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #4, !srcloc !28
  %and22 = and i32 %22, -64
  %or23 = or i32 %and22, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %or23) #4, !srcloc !29
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 2332
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !28
  %or.i = or i32 %27, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #4, !srcloc !29
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end16
  %retry.013.i = phi i32 [ 200, %if.end16 ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %24, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %29, i32 2332
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #4, !srcloc !28
  %31 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  %dec.i = add nsw i32 %retry.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %hdmi_cec_clear_tx_fifo.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

hdmi_cec_clear_tx_fifo.exit:                      ; preds = %while.body.i
  br i1 %cmp.i, label %if.end27, label %hdmi_cec_clear_tx_fifo.exit.err_disable_clk_crit_edge

hdmi_cec_clear_tx_fifo.exit.err_disable_clk_crit_edge: ; preds = %hdmi_cec_clear_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_disable_clk

if.end27:                                         ; preds = %hdmi_cec_clear_tx_fifo.exit
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %35, i32 2480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i120, i32 3) #4, !srcloc !29
  br label %while.body.i125

while.body.i125:                                  ; preds = %while.body.i125.while.body.i125_crit_edge, %if.end27
  %retry.08.i = phi i32 [ 200, %if.end27 ], [ %dec.i122, %while.body.i125.while.body.i125_crit_edge ]
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %37, i32 2480
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #4, !srcloc !28
  %and.i = and i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i121 = icmp eq i32 %and.i, 0
  %dec.i122 = add nsw i32 %retry.08.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i122)
  %tobool.not.i123 = icmp eq i32 %dec.i122, 0
  %or.cond.i124 = select i1 %cmp.i121, i1 true, i1 %tobool.not.i123
  br i1 %or.cond.i124, label %hdmi_cec_clear_rx_fifo.exit, label %while.body.i125.while.body.i125_crit_edge

while.body.i125.while.body.i125_crit_edge:        ; preds = %while.body.i125
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i125

hdmi_cec_clear_rx_fifo.exit:                      ; preds = %while.body.i125
  br i1 %cmp.i121, label %if.end37, label %hdmi_cec_clear_rx_fifo.exit.err_disable_clk_crit_edge

hdmi_cec_clear_rx_fifo.exit.err_disable_clk_crit_edge: ; preds = %hdmi_cec_clear_rx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_disable_clk

if.end37:                                         ; preds = %hdmi_cec_clear_rx_fifo.exit
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr.i126 = getelementptr i8, ptr %40, i32 2460
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #4, !srcloc !28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %41) #4, !srcloc !29
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr.i128 = getelementptr i8, ptr %43, i32 2456
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #4, !srcloc !28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %44) #4, !srcloc !29
  %45 = ptrtoint ptr %wp17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wp17, align 4
  tail call void @hdmi_wp_set_irqenable(ptr noundef %46, i32 noundef 1) #4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr.i130 = getelementptr i8, ptr %48, i32 480
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #4, !srcloc !28
  %or49 = or i32 %49, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %or49) #4, !srcloc !29
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr.i132 = getelementptr i8, ptr %51, i32 2448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 34) #4, !srcloc !29
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %add.ptr.i133 = getelementptr i8, ptr %53, i32 2452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 2) #4, !srcloc !29
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %add.ptr.i134 = getelementptr i8, ptr %55, i32 2360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 3) #4, !srcloc !29
  tail call void @msleep(i32 noundef 20) #4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr.i135 = getelementptr i8, ptr %57, i32 2360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 4) #4, !srcloc !29
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %add.ptr.i136 = getelementptr i8, ptr %59, i32 2360
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #4, !srcloc !28
  %61 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.not = icmp eq i32 %61, 0
  br i1 %cmp.not, label %if.end37.cleanup_crit_edge, label %if.then57

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then57:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %and58 = and i32 %60, -17
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %add.ptr.i137 = getelementptr i8, ptr %63, i32 2360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %and58) #4, !srcloc !29
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %add.ptr.i138 = getelementptr i8, ptr %65, i32 2460
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #4, !srcloc !28
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %add.ptr.i139 = getelementptr i8, ptr %68, i32 2460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 5) #4, !srcloc !29
  br label %cleanup

err_disable_clk:                                  ; preds = %hdmi_cec_clear_rx_fifo.exit.err_disable_clk_crit_edge, %hdmi_cec_clear_tx_fifo.exit.err_disable_clk_crit_edge
  %.str.5.sink = phi ptr [ @.str.1, %hdmi_cec_clear_tx_fifo.exit.err_disable_clk_crit_edge ], [ @.str.5, %hdmi_cec_clear_rx_fifo.exit.err_disable_clk_crit_edge ]
  %name34 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 1
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink, ptr noundef %name34) #7
  %69 = ptrtoint ptr %wp17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wp17, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %add.ptr.i140 = getelementptr i8, ptr %72, i32 112
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #4, !srcloc !28
  %and70 = and i32 %73, -64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %and70) #4, !srcloc !29
  tail call void @hdmi4_core_disable(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.then57, %if.end37.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %err_disable_clk ], [ 0, %if.then ], [ %call13, %if.end.cleanup_crit_edge ], [ 0, %if.then57 ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %log_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %conv = zext i8 %log_addr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %log_addr)
  %cmp = icmp eq i8 %log_addr, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !29
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i30 = getelementptr i8, ptr %5, i32 2444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #4, !srcloc !29
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %log_addr)
  %cmp4 = icmp ult i8 %log_addr, 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i31 = getelementptr i8, ptr %7, i32 2440
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #4, !srcloc !28
  %shl = shl nuw i32 1, %conv
  %or = or i32 %8, %shl
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i32 = getelementptr i8, ptr %10, i32 2440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %or) #4, !srcloc !29
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 2444
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #4, !srcloc !28
  %sub = add nsw i32 %conv, -8
  %shl14 = shl nuw i32 1, %sub
  %or15 = or i32 %11, %shl14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i34 = getelementptr i8, ptr %13, i32 2444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %or15) #4, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_cec_adap_transmit(ptr noundef %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2332
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !28
  %or.i = or i32 %4, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #4, !srcloc !29
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %retry.013.i = phi i32 [ 200, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %6, i32 2332
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #4, !srcloc !28
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %dec.i = add nsw i32 %retry.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %hdmi_cec_clear_tx_fifo.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

hdmi_cec_clear_tx_fifo.exit:                      ; preds = %while.body.i
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %hdmi_cec_clear_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 1
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name) #7
  br label %cleanup

if.end:                                           ; preds = %hdmi_cec_clear_tx_fifo.exit
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 2456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 100) #4, !srcloc !29
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i62 = getelementptr i8, ptr %12, i32 2460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 2) #4, !srcloc !29
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i63 = getelementptr i8, ptr %14, i32 2332
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #4, !srcloc !28
  %and = and i32 %15, -113
  %conv = zext i8 %attempts to i32
  %sub = shl nuw nsw i32 %conv, 4
  %shl = add nuw nsw i32 %sub, 112
  %and7 = and i32 %shl, 112
  %or = or i32 %and, %and7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %or) #4, !srcloc !29
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %msg1.i = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %18 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msg1.i, align 8
  %20 = lshr i8 %19, 4
  %conv10 = zext i8 %20 to i32
  %add.ptr.i65 = getelementptr i8, ptr %17, i32 2336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %conv10) #4, !srcloc !29
  %21 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %msg1.i, align 8
  %23 = and i8 %22, 15
  %conv12 = zext i8 %23 to i32
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp = icmp eq i32 %25, 1
  %or15 = or i32 %conv12, 128
  %spec.select = select i1 %cmp, i32 %or15, i32 %conv12
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i67 = getelementptr i8, ptr %27, i32 2340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %spec.select) #4, !srcloc !29
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp19 = icmp eq i32 %29, 1
  br i1 %cmp19, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %33 to i32
  %add.ptr.i68 = getelementptr i8, ptr %31, i32 2364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %conv25) #4, !srcloc !29
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp2872.not = icmp eq i32 %35, 2
  br i1 %cmp2872.not, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end22.for.body_crit_edge
  %i.073 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %mul = shl i32 %i.073, 2
  %add = add i32 %mul, 2368
  %add32 = add i32 %i.073, 2
  %arrayidx33 = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %add32
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %39 to i32
  %add.ptr.i69 = getelementptr i8, ptr %37, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %conv34) #4, !srcloc !29
  %inc = add nuw i32 %i.073, 1
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 8
  %sub27 = add i32 %41, -2
  %cmp28 = icmp ult i32 %inc, %sub27
  br i1 %cmp28, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo = or i32 %sub27, 16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end22.for.end_crit_edge
  %sub27.lcssa = phi i32 [ 16, %if.end22.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr.i70 = getelementptr i8, ptr %43, i32 2428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %sub27.lcssa) #4, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -5, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_clear_irqenable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_set_irqstatus(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi4_core_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi4_core_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_set_irqenable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_cec.c", i32 333, i32 3}
!2 = !{ptr @hdmi_cec_adap_ops, !3, !"hdmi_cec_adap_ops", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_cec.c", i32 314, i32 34}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_cec.c", i32 182, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hdmi_cec_adap_enable._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @hdmi_cec_adap_enable._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_cec.c", i32 189, i32 3}
!12 = !{ptr @hdmi_cec_adap_enable._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hdmi_cec_adap_enable._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_cec.c", i32 275, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hdmi_cec_adap_transmit._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @hdmi_cec_adap_transmit._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 1254509}
!29 = !{i64 1254091}
