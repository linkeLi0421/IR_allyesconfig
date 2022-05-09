; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-scb.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-scb.c"
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
%struct.cx18_scb = type { i32, [7 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], [8 x i32], [32 x i32], %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, [7 x [2 x %struct.cx18_mdl_ack]], [1 x %struct.cx18_mdl_ent] }
%struct.cx18_mdl_ent = type { i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_init_scb(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cx18_setup_page(ptr noundef %cx, i32 noundef 14417920) #4
  %scb = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 15
  %0 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scb, align 4
  tail call void @cx18_memset_io(ptr noundef %cx, ptr noundef %1, i32 noundef 0, i32 noundef 65536) #4
  %2 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scb, align 4
  %apu2cpu_irq = getelementptr inbounds %struct.cx18_scb, ptr %3, i32 0, i32 13
  tail call fastcc void @cx18_writel(i32 noundef 1, ptr noundef %apu2cpu_irq)
  %4 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scb, align 4
  %cpu2apu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %5, i32 0, i32 14
  tail call fastcc void @cx18_writel(i32 noundef 1, ptr noundef %cpu2apu_irq_ack)
  %6 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scb, align 4
  %hpu2cpu_irq = getelementptr inbounds %struct.cx18_scb, ptr %7, i32 0, i32 17
  tail call fastcc void @cx18_writel(i32 noundef 2, ptr noundef %hpu2cpu_irq)
  %8 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scb, align 4
  %cpu2hpu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %9, i32 0, i32 18
  tail call fastcc void @cx18_writel(i32 noundef 2, ptr noundef %cpu2hpu_irq_ack)
  %10 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scb, align 4
  %ppu2cpu_irq = getelementptr inbounds %struct.cx18_scb, ptr %11, i32 0, i32 21
  tail call fastcc void @cx18_writel(i32 noundef 4, ptr noundef %ppu2cpu_irq)
  %12 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scb, align 4
  %cpu2ppu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %13, i32 0, i32 22
  tail call fastcc void @cx18_writel(i32 noundef 4, ptr noundef %cpu2ppu_irq_ack)
  %14 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scb, align 4
  %epu2cpu_irq = getelementptr inbounds %struct.cx18_scb, ptr %15, i32 0, i32 25
  tail call fastcc void @cx18_writel(i32 noundef 8, ptr noundef %epu2cpu_irq)
  %16 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scb, align 4
  %cpu2epu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %17, i32 0, i32 26
  tail call fastcc void @cx18_writel(i32 noundef 8, ptr noundef %cpu2epu_irq_ack)
  %18 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scb, align 4
  %cpu2apu_irq = getelementptr inbounds %struct.cx18_scb, ptr %19, i32 0, i32 32
  tail call fastcc void @cx18_writel(i32 noundef 16, ptr noundef %cpu2apu_irq)
  %20 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scb, align 4
  %apu2cpu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %21, i32 0, i32 33
  tail call fastcc void @cx18_writel(i32 noundef 16, ptr noundef %apu2cpu_irq_ack)
  %22 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scb, align 4
  %hpu2apu_irq = getelementptr inbounds %struct.cx18_scb, ptr %23, i32 0, i32 36
  tail call fastcc void @cx18_writel(i32 noundef 32, ptr noundef %hpu2apu_irq)
  %24 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scb, align 4
  %apu2hpu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %25, i32 0, i32 37
  tail call fastcc void @cx18_writel(i32 noundef 32, ptr noundef %apu2hpu_irq_ack)
  %26 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %scb, align 4
  %ppu2apu_irq = getelementptr inbounds %struct.cx18_scb, ptr %27, i32 0, i32 40
  tail call fastcc void @cx18_writel(i32 noundef 64, ptr noundef %ppu2apu_irq)
  %28 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scb, align 4
  %apu2ppu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %29, i32 0, i32 41
  tail call fastcc void @cx18_writel(i32 noundef 64, ptr noundef %apu2ppu_irq_ack)
  %30 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scb, align 4
  %epu2apu_irq = getelementptr inbounds %struct.cx18_scb, ptr %31, i32 0, i32 44
  tail call fastcc void @cx18_writel(i32 noundef 128, ptr noundef %epu2apu_irq)
  %32 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %scb, align 4
  %apu2epu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %33, i32 0, i32 45
  tail call fastcc void @cx18_writel(i32 noundef 128, ptr noundef %apu2epu_irq_ack)
  %34 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scb, align 4
  %cpu2hpu_irq = getelementptr inbounds %struct.cx18_scb, ptr %35, i32 0, i32 51
  tail call fastcc void @cx18_writel(i32 noundef 256, ptr noundef %cpu2hpu_irq)
  %36 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %scb, align 4
  %hpu2cpu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %37, i32 0, i32 52
  tail call fastcc void @cx18_writel(i32 noundef 256, ptr noundef %hpu2cpu_irq_ack)
  %38 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %scb, align 4
  %apu2hpu_irq = getelementptr inbounds %struct.cx18_scb, ptr %39, i32 0, i32 55
  tail call fastcc void @cx18_writel(i32 noundef 512, ptr noundef %apu2hpu_irq)
  %40 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %scb, align 4
  %hpu2apu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %41, i32 0, i32 56
  tail call fastcc void @cx18_writel(i32 noundef 512, ptr noundef %hpu2apu_irq_ack)
  %42 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %scb, align 4
  %ppu2hpu_irq = getelementptr inbounds %struct.cx18_scb, ptr %43, i32 0, i32 59
  tail call fastcc void @cx18_writel(i32 noundef 1024, ptr noundef %ppu2hpu_irq)
  %44 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %scb, align 4
  %hpu2ppu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %45, i32 0, i32 60
  tail call fastcc void @cx18_writel(i32 noundef 1024, ptr noundef %hpu2ppu_irq_ack)
  %46 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scb, align 4
  %epu2hpu_irq = getelementptr inbounds %struct.cx18_scb, ptr %47, i32 0, i32 63
  tail call fastcc void @cx18_writel(i32 noundef 2048, ptr noundef %epu2hpu_irq)
  %48 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %scb, align 4
  %hpu2epu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %49, i32 0, i32 64
  tail call fastcc void @cx18_writel(i32 noundef 2048, ptr noundef %hpu2epu_irq_ack)
  %50 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scb, align 4
  %cpu2ppu_irq = getelementptr inbounds %struct.cx18_scb, ptr %51, i32 0, i32 70
  tail call fastcc void @cx18_writel(i32 noundef 4096, ptr noundef %cpu2ppu_irq)
  %52 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %scb, align 4
  %ppu2cpu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %53, i32 0, i32 71
  tail call fastcc void @cx18_writel(i32 noundef 4096, ptr noundef %ppu2cpu_irq_ack)
  %54 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %scb, align 4
  %apu2ppu_irq = getelementptr inbounds %struct.cx18_scb, ptr %55, i32 0, i32 74
  tail call fastcc void @cx18_writel(i32 noundef 8192, ptr noundef %apu2ppu_irq)
  %56 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %scb, align 4
  %ppu2apu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %57, i32 0, i32 75
  tail call fastcc void @cx18_writel(i32 noundef 8192, ptr noundef %ppu2apu_irq_ack)
  %58 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %scb, align 4
  %hpu2ppu_irq = getelementptr inbounds %struct.cx18_scb, ptr %59, i32 0, i32 78
  tail call fastcc void @cx18_writel(i32 noundef 16384, ptr noundef %hpu2ppu_irq)
  %60 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %scb, align 4
  %ppu2hpu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %61, i32 0, i32 79
  tail call fastcc void @cx18_writel(i32 noundef 16384, ptr noundef %ppu2hpu_irq_ack)
  %62 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %scb, align 4
  %epu2ppu_irq = getelementptr inbounds %struct.cx18_scb, ptr %63, i32 0, i32 82
  tail call fastcc void @cx18_writel(i32 noundef 32768, ptr noundef %epu2ppu_irq)
  %64 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %scb, align 4
  %ppu2epu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %65, i32 0, i32 83
  tail call fastcc void @cx18_writel(i32 noundef 32768, ptr noundef %ppu2epu_irq_ack)
  %66 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %scb, align 4
  %cpu2epu_irq = getelementptr inbounds %struct.cx18_scb, ptr %67, i32 0, i32 89
  tail call fastcc void @cx18_writel(i32 noundef 65536, ptr noundef %cpu2epu_irq)
  %68 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %scb, align 4
  %epu2cpu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %69, i32 0, i32 90
  tail call fastcc void @cx18_writel(i32 noundef 65536, ptr noundef %epu2cpu_irq_ack)
  %70 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %scb, align 4
  %apu2epu_irq = getelementptr inbounds %struct.cx18_scb, ptr %71, i32 0, i32 93
  tail call fastcc void @cx18_writel(i32 noundef 131072, ptr noundef %apu2epu_irq)
  %72 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %scb, align 4
  %epu2apu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %73, i32 0, i32 94
  tail call fastcc void @cx18_writel(i32 noundef 131072, ptr noundef %epu2apu_irq_ack)
  %74 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %scb, align 4
  %hpu2epu_irq = getelementptr inbounds %struct.cx18_scb, ptr %75, i32 0, i32 97
  tail call fastcc void @cx18_writel(i32 noundef 262144, ptr noundef %hpu2epu_irq)
  %76 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %scb, align 4
  %epu2hpu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %77, i32 0, i32 98
  tail call fastcc void @cx18_writel(i32 noundef 262144, ptr noundef %epu2hpu_irq_ack)
  %78 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %scb, align 4
  %ppu2epu_irq = getelementptr inbounds %struct.cx18_scb, ptr %79, i32 0, i32 101
  tail call fastcc void @cx18_writel(i32 noundef 524288, ptr noundef %ppu2epu_irq)
  %80 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %scb, align 4
  %epu2ppu_irq_ack = getelementptr inbounds %struct.cx18_scb, ptr %81, i32 0, i32 102
  tail call fastcc void @cx18_writel(i32 noundef 524288, ptr noundef %epu2ppu_irq_ack)
  %82 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %scb, align 4
  %apu2cpu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %83, i32 0, i32 12
  tail call fastcc void @cx18_writel(i32 noundef 14419776, ptr noundef %apu2cpu_mb_offset)
  %84 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %scb, align 4
  %hpu2cpu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %85, i32 0, i32 16
  tail call fastcc void @cx18_writel(i32 noundef 14419840, ptr noundef %hpu2cpu_mb_offset)
  %86 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %scb, align 4
  %ppu2cpu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %87, i32 0, i32 20
  tail call fastcc void @cx18_writel(i32 noundef 14419904, ptr noundef %ppu2cpu_mb_offset)
  %88 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %scb, align 4
  %epu2cpu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %89, i32 0, i32 24
  tail call fastcc void @cx18_writel(i32 noundef 14419968, ptr noundef %epu2cpu_mb_offset)
  %90 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %scb, align 4
  %cpu2apu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %91, i32 0, i32 31
  tail call fastcc void @cx18_writel(i32 noundef 14420032, ptr noundef %cpu2apu_mb_offset)
  %92 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %scb, align 4
  %hpu2apu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %93, i32 0, i32 35
  tail call fastcc void @cx18_writel(i32 noundef 14420096, ptr noundef %hpu2apu_mb_offset)
  %94 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %scb, align 4
  %ppu2apu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %95, i32 0, i32 39
  tail call fastcc void @cx18_writel(i32 noundef 14420160, ptr noundef %ppu2apu_mb_offset)
  %96 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %scb, align 4
  %epu2apu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %97, i32 0, i32 43
  tail call fastcc void @cx18_writel(i32 noundef 14420224, ptr noundef %epu2apu_mb_offset)
  %98 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %scb, align 4
  %cpu2hpu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %99, i32 0, i32 50
  tail call fastcc void @cx18_writel(i32 noundef 14420288, ptr noundef %cpu2hpu_mb_offset)
  %100 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %scb, align 4
  %apu2hpu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %101, i32 0, i32 54
  tail call fastcc void @cx18_writel(i32 noundef 14420352, ptr noundef %apu2hpu_mb_offset)
  %102 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %scb, align 4
  %ppu2hpu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %103, i32 0, i32 58
  tail call fastcc void @cx18_writel(i32 noundef 14420416, ptr noundef %ppu2hpu_mb_offset)
  %104 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %scb, align 4
  %epu2hpu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %105, i32 0, i32 62
  tail call fastcc void @cx18_writel(i32 noundef 14420480, ptr noundef %epu2hpu_mb_offset)
  %106 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %scb, align 4
  %cpu2ppu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %107, i32 0, i32 69
  tail call fastcc void @cx18_writel(i32 noundef 14420544, ptr noundef %cpu2ppu_mb_offset)
  %108 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %scb, align 4
  %apu2ppu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %109, i32 0, i32 73
  tail call fastcc void @cx18_writel(i32 noundef 14420608, ptr noundef %apu2ppu_mb_offset)
  %110 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %scb, align 4
  %hpu2ppu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %111, i32 0, i32 77
  tail call fastcc void @cx18_writel(i32 noundef 14420672, ptr noundef %hpu2ppu_mb_offset)
  %112 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %scb, align 4
  %epu2ppu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %113, i32 0, i32 81
  tail call fastcc void @cx18_writel(i32 noundef 14420736, ptr noundef %epu2ppu_mb_offset)
  %114 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %scb, align 4
  %cpu2epu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %115, i32 0, i32 88
  tail call fastcc void @cx18_writel(i32 noundef 14420800, ptr noundef %cpu2epu_mb_offset)
  %116 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %scb, align 4
  %apu2epu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %117, i32 0, i32 92
  tail call fastcc void @cx18_writel(i32 noundef 14420864, ptr noundef %apu2epu_mb_offset)
  %118 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %scb, align 4
  %hpu2epu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %119, i32 0, i32 96
  tail call fastcc void @cx18_writel(i32 noundef 14420928, ptr noundef %hpu2epu_mb_offset)
  %120 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %scb, align 4
  %ppu2epu_mb_offset = getelementptr inbounds %struct.cx18_scb, ptr %121, i32 0, i32 100
  tail call fastcc void @cx18_writel(i32 noundef 14420992, ptr noundef %ppu2epu_mb_offset)
  %122 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %scb, align 4
  tail call fastcc void @cx18_writel(i32 noundef 14418016, ptr noundef %123)
  %124 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %scb, align 4
  %epu_state = getelementptr inbounds %struct.cx18_scb, ptr %125, i32 0, i32 86
  tail call fastcc void @cx18_writel(i32 noundef 1, ptr noundef %epu_state)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_setup_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_memset_io(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_writel(i32 noundef %val, ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %val)
  %cmp1 = icmp eq i32 %2, %val
  br i1 %cmp1, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1.1 = icmp eq i32 %4, %val
  br i1 %cmp1.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp1.2 = icmp eq i32 %6, %val
  br i1 %cmp1.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp1.3 = icmp eq i32 %8, %val
  br i1 %cmp1.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp1.4 = icmp eq i32 %10, %val
  br i1 %cmp1.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp1.5 = icmp eq i32 %12, %val
  br i1 %cmp1.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val)
  %cmp1.6 = icmp eq i32 %14, %val
  br i1 %cmp1.6, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp1.7 = icmp eq i32 %16, %val
  br i1 %cmp1.7, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val)
  %cmp1.8 = icmp eq i32 %18, %val
  br i1 %cmp1.8, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #4, !srcloc !10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2158645728}
!10 = !{i64 5745347}
!11 = !{i64 5745765}
!12 = !{i64 2158645358}
