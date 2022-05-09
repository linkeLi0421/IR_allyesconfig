; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-io.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_memset_io(ptr nocapture noundef readnone %cx, ptr noundef %addr, i32 noundef %val, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %val, 8
  %or = or i32 %shl, %val
  %conv = trunc i32 %or to i16
  %conv1 = and i32 %or, 65535
  %shl3 = shl i32 %or, 16
  %or4 = or i32 %conv1, %shl3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %entry.if.end28_crit_edge, label %land.lhs.true

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %addr to i32
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %conv6 = trunc i32 %val to i8
  tail call fastcc void @cx18_writeb(i8 noundef zeroext %conv6, ptr noundef %addr)
  %dec = add i32 %count, -1
  %incdec.ptr = getelementptr i8, ptr %addr, i32 1
  %.pre = ptrtoint ptr %incdec.ptr to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %.pre-phi = phi i32 [ %.pre, %if.then ], [ %0, %land.lhs.true.if.end_crit_edge ]
  %count.addr.0 = phi i32 [ %dec, %if.then ], [ %count, %land.lhs.true.if.end_crit_edge ]
  %dst.0 = phi ptr [ %incdec.ptr, %if.then ], [ %addr, %land.lhs.true.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count.addr.0)
  %cmp7 = icmp ult i32 %count.addr.0, 2
  %and10 = and i32 %.pre-phi, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = or i1 %cmp7, %tobool11.not
  br i1 %or.cond, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @cx18_writew(i16 noundef zeroext %conv, ptr noundef %dst.0)
  %sub = add i32 %count.addr.0, -2
  %add.ptr = getelementptr i8, ptr %dst.0, i32 2
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %count.addr.1 = phi i32 [ %sub, %if.then12 ], [ %count.addr.0, %if.end.if.end13_crit_edge ]
  %dst.1 = phi ptr [ %add.ptr, %if.then12 ], [ %dst.0, %if.end.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.1)
  %cmp1463 = icmp ugt i32 %count.addr.1, 3
  br i1 %cmp1463, label %if.end13.while.body_crit_edge, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end13.while.body_crit_edge
  %dst.265 = phi ptr [ %add.ptr17, %while.body.while.body_crit_edge ], [ %dst.1, %if.end13.while.body_crit_edge ]
  %count.addr.264 = phi i32 [ %sub16, %while.body.while.body_crit_edge ], [ %count.addr.1, %if.end13.while.body_crit_edge ]
  tail call fastcc void @cx18_writel(i32 noundef %or4, ptr noundef %dst.265)
  %sub16 = add i32 %count.addr.264, -4
  %add.ptr17 = getelementptr i8, ptr %dst.265, i32 4
  %cmp14 = icmp ugt i32 %sub16, 3
  br i1 %cmp14, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end13.while.end_crit_edge
  %count.addr.2.lcssa = phi i32 [ %count.addr.1, %if.end13.while.end_crit_edge ], [ %sub16, %while.body.while.end_crit_edge ]
  %dst.2.lcssa = phi ptr [ %dst.1, %if.end13.while.end_crit_edge ], [ %add.ptr17, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.2.lcssa)
  %cmp18 = icmp ugt i32 %count.addr.2.lcssa, 1
  br i1 %cmp18, label %if.then20, label %while.end.if.end23_crit_edge

while.end.if.end23_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then20:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @cx18_writew(i16 noundef zeroext %conv, ptr noundef %dst.2.lcssa)
  %sub21 = add nsw i32 %count.addr.2.lcssa, -2
  %add.ptr22 = getelementptr i8, ptr %dst.2.lcssa, i32 2
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %while.end.if.end23_crit_edge
  %count.addr.3 = phi i32 [ %sub21, %if.then20 ], [ %count.addr.2.lcssa, %while.end.if.end23_crit_edge ]
  %dst.3 = phi ptr [ %add.ptr22, %if.then20 ], [ %dst.2.lcssa, %while.end.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.3)
  %cmp24.not = icmp eq i32 %count.addr.3, 0
  br i1 %cmp24.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %conv27 = trunc i32 %val to i8
  tail call fastcc void @cx18_writeb(i8 noundef zeroext %conv27, ptr noundef %dst.3)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_writeb(i8 noundef zeroext %val, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp1(i8 %0, i8 %val)
  %cmp2 = icmp eq i8 %0, %val
  br i1 %cmp2, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %val)
  %cmp2.1 = icmp eq i8 %1, %val
  br i1 %cmp2.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %val)
  %cmp2.2 = icmp eq i8 %2, %val
  br i1 %cmp2.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %val)
  %cmp2.3 = icmp eq i8 %3, %val
  br i1 %cmp2.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %val)
  %cmp2.4 = icmp eq i8 %4, %val
  br i1 %cmp2.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %val)
  %cmp2.5 = icmp eq i8 %5, %val
  br i1 %cmp2.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %val)
  %cmp2.6 = icmp eq i8 %6, %val
  br i1 %cmp2.6, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %val)
  %cmp2.7 = icmp eq i8 %7, %val
  br i1 %cmp2.7, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %val)
  %cmp2.8 = icmp eq i8 %8, %val
  br i1 %cmp2.8, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %val) #4, !srcloc !10
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_writew(i16 noundef zeroext %val, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i16 @llvm.bswap.i16(i16 %val) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %1 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %val)
  %cmp2 = icmp eq i16 %2, %val
  br i1 %cmp2, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %val)
  %cmp2.1 = icmp eq i16 %4, %val
  br i1 %cmp2.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %val)
  %cmp2.2 = icmp eq i16 %6, %val
  br i1 %cmp2.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %val)
  %cmp2.3 = icmp eq i16 %8, %val
  br i1 %cmp2.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %val)
  %cmp2.4 = icmp eq i16 %10, %val
  br i1 %cmp2.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %val)
  %cmp2.5 = icmp eq i16 %12, %val
  br i1 %cmp2.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %val)
  %cmp2.6 = icmp eq i16 %14, %val
  br i1 %cmp2.6, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %val)
  %cmp2.7 = icmp eq i16 %16, %val
  br i1 %cmp2.7, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %val)
  %cmp2.8 = icmp eq i16 %18, %val
  br i1 %cmp2.8, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #4, !srcloc !14
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_writel(i32 noundef %val, ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %val)
  %cmp1 = icmp eq i32 %2, %val
  br i1 %cmp1, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1.1 = icmp eq i32 %4, %val
  br i1 %cmp1.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp1.2 = icmp eq i32 %6, %val
  br i1 %cmp1.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp1.3 = icmp eq i32 %8, %val
  br i1 %cmp1.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp1.4 = icmp eq i32 %10, %val
  br i1 %cmp1.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp1.5 = icmp eq i32 %12, %val
  br i1 %cmp1.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val)
  %cmp1.6 = icmp eq i32 %14, %val
  br i1 %cmp1.6, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp1.7 = icmp eq i32 %16, %val
  br i1 %cmp1.7, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val)
  %cmp1.8 = icmp eq i32 %18, %val
  br i1 %cmp1.8, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_sw1_irq_enable(ptr nocapture noundef %cx, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 13054212
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.02.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #4, !srcloc !18
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !19
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1.i.i = icmp ne i32 %3, -1
  %and3.i.i = and i32 %4, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp4.i.i = icmp eq i32 %and3.i.i, 0
  %or.cond1.i.i = and i1 %cmp1.i.i, %cmp4.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  %or.cond3.i.i = select i1 %or.cond1.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond3.i.i, label %cx18_write_reg_expect.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %6, i32 13054236
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #4, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %or = or i32 %8, %val
  %sw1_irq_mask = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 48
  %9 = ptrtoint ptr %sw1_irq_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %sw1_irq_mask, align 8
  %10 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 13054236
  tail call fastcc void @cx18_writel(i32 noundef %or, ptr noundef %add.ptr.i12) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_sw1_irq_disable(ptr nocapture noundef %cx, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 13054236
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %neg = xor i32 %val, -1
  %and = and i32 %3, %neg
  %sw1_irq_mask = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 48
  %4 = ptrtoint ptr %sw1_irq_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %sw1_irq_mask, align 8
  %5 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %6, i32 13054236
  tail call fastcc void @cx18_writel(i32 noundef %and, ptr noundef %add.ptr.i6) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_sw2_irq_enable(ptr nocapture noundef %cx, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 13054276
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.02.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #4, !srcloc !18
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !19
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1.i.i = icmp ne i32 %3, -1
  %and3.i.i = and i32 %4, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp4.i.i = icmp eq i32 %and3.i.i, 0
  %or.cond1.i.i = and i1 %cmp1.i.i, %cmp4.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  %or.cond3.i.i = select i1 %or.cond1.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond3.i.i, label %cx18_write_reg_expect.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %6, i32 13054300
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #4, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %or = or i32 %8, %val
  %sw2_irq_mask = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 49
  %9 = ptrtoint ptr %sw2_irq_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %sw2_irq_mask, align 4
  %10 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 13054300
  tail call fastcc void @cx18_writel(i32 noundef %or, ptr noundef %add.ptr.i12) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_sw2_irq_disable(ptr nocapture noundef %cx, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 13054300
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %neg = xor i32 %val, -1
  %and = and i32 %3, %neg
  %sw2_irq_mask = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 49
  %4 = ptrtoint ptr %sw2_irq_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %sw2_irq_mask, align 4
  %5 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %6, i32 13054300
  tail call fastcc void @cx18_writel(i32 noundef %and, ptr noundef %add.ptr.i6) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_sw2_irq_disable_cpu(ptr nocapture noundef readonly %cx, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 13054296
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %neg = xor i32 %val, -1
  %and = and i32 %3, %neg
  %4 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %5, i32 13054296
  tail call fastcc void @cx18_writel(i32 noundef %and, ptr noundef %add.ptr.i3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_setup_page(ptr nocapture noundef readonly %cx, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 13631736
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %3 = and i32 %2, -2031617
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr = lshr i32 %addr, 17
  %and1 = and i32 %shr, 7936
  %or = or i32 %4, %and1
  %5 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 13631736
  tail call fastcc void @cx18_writel(i32 noundef %or, ptr noundef %add.ptr.i5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 2158645305}
!10 = !{i64 5742169}
!11 = !{i64 5742564}
!12 = !{i64 2158644935}
!13 = !{i64 2158644226}
!14 = !{i64 5741746}
!15 = !{i64 5741946}
!16 = !{i64 2158643856}
!17 = !{i64 2158642747}
!18 = !{i64 5742366}
!19 = !{i64 5742784}
!20 = !{i64 2158642377}
