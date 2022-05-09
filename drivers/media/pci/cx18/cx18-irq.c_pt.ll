; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-irq.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.140 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, ptr }
%struct.anon.142 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, ptr }
%struct.anon.144 = type { ptr, ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.107 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.104], %struct.media_entity_enum, i32 }
%struct.anon.104 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.116 }
%union.anon.116 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.118, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.118 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s:  irq: received interrupts SW1: %x\09SW2: %x  HW2: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx18_irq_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/cx18/cx18-irq.c\00", [62 x i8] zeroinitializer }, align 32
@cx18_irq_handler._entry_ptr = internal global ptr @cx18_irq_handler._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [37 x i8] c"../drivers/media/pci/cx18/cx18-irq.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 48, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @cx18_irq_handler._entry, ptr @cx18_irq_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_irq_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %dev_id, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 13054212
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !15
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  %sw1_irq_mask = getelementptr inbounds %struct.cx18, ptr %dev_id, i32 0, i32 48
  %4 = ptrtoint ptr %sw1_irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sw1_irq_mask, align 8
  %and = and i32 %5, %3
  %6 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i74 = getelementptr i8, ptr %7, i32 13054276
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #4, !srcloc !15
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  %sw2_irq_mask = getelementptr inbounds %struct.cx18, ptr %dev_id, i32 0, i32 49
  %10 = ptrtoint ptr %sw2_irq_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sw2_irq_mask, align 4
  %and2 = and i32 %11, %9
  %12 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i76 = getelementptr i8, ptr %13, i32 13054148
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #4, !srcloc !15
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  %hw2_irq_mask = getelementptr inbounds %struct.cx18, ptr %dev_id, i32 0, i32 50
  %16 = ptrtoint ptr %hw2_irq_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw2_irq_mask, align 8
  %and4 = and i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %18 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i78 = getelementptr i8, ptr %19, i32 13054212
  %20 = tail call i32 @llvm.bswap.i32(i32 %and) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %if.then
  %i.01.i.i = phi i32 [ 0, %if.then ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %20) #4, !srcloc !18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp1.i.i = icmp eq i32 %21, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %23 = and i32 %22, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.i.i = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.if.end_crit_edge

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

if.end:                                           ; preds = %for.inc.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool5.not = icmp eq i32 %and2, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %24 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i80 = getelementptr i8, ptr %25, i32 13054276
  %26 = tail call i32 @llvm.bswap.i32(i32 %and2) #4
  br label %for.body.i.i83

for.body.i.i83:                                   ; preds = %for.body.backedge.i.i91, %if.then6
  %i.01.i.i81 = phi i32 [ 0, %if.then6 ], [ %i.01.be.i.i90, %for.body.backedge.i.i91 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %26) #4, !srcloc !18
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp1.i.i82 = icmp eq i32 %27, -1
  br i1 %cmp1.i.i82, label %for.inc.i.i89, label %if.end.i.i87

if.end.i.i87:                                     ; preds = %for.body.i.i83
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  %29 = and i32 %28, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp4.i.i84 = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i81)
  %cmp.i.i85 = icmp ult i32 %i.01.i.i81, 9
  %or.cond.i.i86 = select i1 %cmp4.i.i84, i1 %cmp.i.i85, i1 false
  br i1 %or.cond.i.i86, label %if.end.i.i87.for.body.backedge.i.i91_crit_edge, label %if.end.i.i87.if.end8_crit_edge

if.end.i.i87.if.end8_crit_edge:                   ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end.i.i87.for.body.backedge.i.i91_crit_edge:   ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.backedge.i.i91

for.inc.i.i89:                                    ; preds = %for.body.i.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i81)
  %cmp.old.i.i88 = icmp ult i32 %i.01.i.i81, 9
  br i1 %cmp.old.i.i88, label %for.inc.i.i89.for.body.backedge.i.i91_crit_edge, label %for.inc.i.i89.if.end8_crit_edge

for.inc.i.i89.if.end8_crit_edge:                  ; preds = %for.inc.i.i89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.inc.i.i89.for.body.backedge.i.i91_crit_edge:  ; preds = %for.inc.i.i89
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.backedge.i.i91

for.body.backedge.i.i91:                          ; preds = %for.inc.i.i89.for.body.backedge.i.i91_crit_edge, %if.end.i.i87.for.body.backedge.i.i91_crit_edge
  %i.01.be.i.i90 = add nuw nsw i32 %i.01.i.i81, 1
  br label %for.body.i.i83

if.end8:                                          ; preds = %for.inc.i.i89.if.end8_crit_edge, %if.end.i.i87.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool9 = icmp ne i32 %and4, 0
  br i1 %tobool9, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  %30 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i94 = getelementptr i8, ptr %31, i32 13054148
  %32 = tail call i32 @llvm.bswap.i32(i32 %and4) #4
  br label %for.body.i.i97

for.body.i.i97:                                   ; preds = %for.body.backedge.i.i105, %if.then10
  %i.01.i.i95 = phi i32 [ 0, %if.then10 ], [ %i.01.be.i.i104, %for.body.backedge.i.i105 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %32) #4, !srcloc !18
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp1.i.i96 = icmp eq i32 %33, -1
  br i1 %cmp1.i.i96, label %for.inc.i.i103, label %if.end.i.i101

if.end.i.i101:                                    ; preds = %for.body.i.i97
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  %35 = and i32 %34, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.i.i98 = icmp ne i32 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i95)
  %cmp.i.i99 = icmp ult i32 %i.01.i.i95, 9
  %or.cond.i.i100 = select i1 %cmp4.i.i98, i1 %cmp.i.i99, i1 false
  br i1 %or.cond.i.i100, label %if.end.i.i101.for.body.backedge.i.i105_crit_edge, label %if.end.i.i101.if.end12_crit_edge

if.end.i.i101.if.end12_crit_edge:                 ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end.i.i101.for.body.backedge.i.i105_crit_edge: ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.backedge.i.i105

for.inc.i.i103:                                   ; preds = %for.body.i.i97
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i95)
  %cmp.old.i.i102 = icmp ult i32 %i.01.i.i95, 9
  br i1 %cmp.old.i.i102, label %for.inc.i.i103.for.body.backedge.i.i105_crit_edge, label %for.inc.i.i103.if.end12_crit_edge

for.inc.i.i103.if.end12_crit_edge:                ; preds = %for.inc.i.i103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.inc.i.i103.for.body.backedge.i.i105_crit_edge: ; preds = %for.inc.i.i103
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.backedge.i.i105

for.body.backedge.i.i105:                         ; preds = %for.inc.i.i103.for.body.backedge.i.i105_crit_edge, %if.end.i.i101.for.body.backedge.i.i105_crit_edge
  %i.01.be.i.i104 = add nuw nsw i32 %i.01.i.i95, 1
  br label %for.body.i.i97

if.end12:                                         ; preds = %for.inc.i.i103.if.end12_crit_edge, %if.end.i.i101.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %36 = select i1 %tobool.not, i1 %tobool5.not, i1 false
  %brmerge = xor i1 %36, true
  %brmerge72 = select i1 %brmerge, i1 true, i1 %tobool9
  br i1 %brmerge72, label %do.body, label %if.end12.if.end28_crit_edge

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.body:                                          ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %37 = load i32, ptr @cx18_debug, align 4
  %38 = and i32 %37, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %38)
  %.not = icmp eq i32 %38, 384
  br i1 %.not, label %do.end, label %do.body.if.end28_crit_edge

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.cx18, ptr %dev_id, i32 0, i32 2, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %and, i32 noundef %and2, i32 noundef %and4) #7
  br label %if.end28

if.end28:                                         ; preds = %do.end, %do.body.if.end28_crit_edge, %if.end12.if.end28_crit_edge
  br i1 %tobool.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  %and.i = and i32 %and, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then30.if.end.i_crit_edge, label %if.then.i

if.then30.if.end.i_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @cx18_api_epu_cmd_irq(ptr noundef %dev_id, i32 noundef 1) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then30.if.end.i_crit_edge
  %and1.i = and i32 %and, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end31_crit_edge, label %if.then3.i

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @cx18_api_epu_cmd_irq(ptr noundef %dev_id, i32 noundef 0) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then3.i, %if.end.i.if.end31_crit_edge, %if.end28.if.end31_crit_edge
  br i1 %tobool5.not, label %if.end31.if.end34_crit_edge, label %if.then33

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  %and.i107 = and i32 %and2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i108 = icmp eq i32 %and.i107, 0
  br i1 %tobool.not.i108, label %if.then33.if.end.i112_crit_edge, label %if.then.i109

if.then33.if.end.i112_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i112

if.then.i109:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  %mb_cpu_waitq.i = getelementptr inbounds %struct.cx18, ptr %dev_id, i32 0, i32 45
  tail call void @__wake_up(ptr noundef %mb_cpu_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.then.i109, %if.then33.if.end.i112_crit_edge
  %and1.i110 = and i32 %and2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i110)
  %tobool2.not.i111 = icmp eq i32 %and1.i110, 0
  br i1 %tobool2.not.i111, label %if.end.i112.if.end34_crit_edge, label %if.then3.i113

if.end.i112.if.end34_crit_edge:                   ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then3.i113:                                    ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #6
  %mb_apu_waitq.i = getelementptr inbounds %struct.cx18, ptr %dev_id, i32 0, i32 44
  tail call void @__wake_up(ptr noundef %mb_apu_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then3.i113, %if.end.i112.if.end34_crit_edge, %if.end31.if.end34_crit_edge
  %39 = zext i1 %brmerge72 to i32
  ret i32 %39
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_api_epu_cmd_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-irq.c", i32 48, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx18_irq_handler._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx18_irq_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 5742293}
!16 = !{i64 2158641886}
!17 = !{i64 2158642256}
!18 = !{i64 5741875}
