; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-enc.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-enc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.solo_enc_dev = type { ptr, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.mutex, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, [45 x i8], [3 x i8], [131072 x i8], [64 x i8], i32, [1024 x i8], i32, i32, i32, i32, %struct.vb2_queue, %struct.list_head, i32, i32, ptr, i32, %struct.spinlock }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.96, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.96 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.solo_p2m_dev = type { %struct.mutex, %struct.completion, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VGA8x16\00", [24 x i8] zeroinitializer }, align 32
@solo_osd_print.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/solo6x10/solo6x10-enc.c\00", [54 x i8] zeroinitializer }, align 32
@solo_g_jpeg_qp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@solo_jpeg_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&solo_dev->jpeg_qp_lock\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 133, i32 42 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 137, i32 6 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [45 x i8] c"../drivers/media/pci/solo6x10/solo6x10-enc.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 237, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @solo_jpeg_config.__key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_jpeg_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_osd_print(ptr noundef %solo_enc) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %solo_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %solo_enc, align 4
  %osd_text = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 18
  %osd_buf = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 20
  %call = tail call ptr @find_font(ptr noundef nonnull @.str) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b137 = load i1, ptr @solo_osd_print.__already_done, align 1
  br i1 %.b137, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !19

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @solo_osd_print.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 137, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end41:                                         ; preds = %entry
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1680
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !20
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  %6 = ptrtoint ptr %osd_text to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %osd_text, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool43.not = icmp eq i8 %7, 0
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %ch = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 6
  %8 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ch, align 4
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  br label %out

if.end45:                                         ; preds = %if.end41
  %10 = call ptr @memset(ptr %osd_buf, i32 0, i32 704)
  %data = getelementptr inbounds %struct.font_desc, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %osd_text to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %osd_text, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool46.not142 = icmp eq i8 %14, 0
  br i1 %tobool46.not142, label %if.end45.for.end88_crit_edge, label %if.end45.for.cond47.preheader_crit_edge

if.end45.for.cond47.preheader_crit_edge:          ; preds = %if.end45
  br label %for.cond47.preheader

if.end45.for.end88_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end88

for.cond47.preheader:                             ; preds = %for.cond47.preheader.for.cond47.preheader_crit_edge, %if.end45.for.cond47.preheader_crit_edge
  %str.0144 = phi ptr [ %incdec.ptr, %for.cond47.preheader.for.cond47.preheader_crit_edge ], [ %osd_text, %if.end45.for.cond47.preheader_crit_edge ]
  %i.0143 = phi i32 [ %inc87, %for.cond47.preheader.for.cond47.preheader_crit_edge ], [ 0, %if.end45.for.cond47.preheader_crit_edge ]
  %and82 = shl i32 %i.0143, 4
  %shl83 = and i32 %and82, -32
  %and80 = and i32 %i.0143, 1
  %15 = ptrtoint ptr %str.0144 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %str.0144, align 1
  %conv50 = zext i8 %16 to i32
  %shl51 = shl nuw nsw i32 %conv50, 4
  %arrayidx = getelementptr i8, ptr %12, i32 %shl51
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %idxprom.i = zext i8 %18 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %or84 = or i32 %and80, %shl83
  %arrayidx85 = getelementptr i8, ptr %osd_buf, i32 %or84
  %21 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx85, align 1
  %22 = load i8, ptr %str.0144, align 1
  %conv50.1 = zext i8 %22 to i32
  %shl51.1 = shl nuw nsw i32 %conv50.1, 4
  %or.1 = or i32 %shl51.1, 1
  %arrayidx.1 = getelementptr i8, ptr %12, i32 %or.1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.1, align 1
  %idxprom.i.1 = zext i8 %24 to i32
  %arrayidx.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1
  %25 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.1, align 1
  %or81.1 = or i32 %and80, %shl83
  %or84.1 = or i32 %or81.1, 2
  %arrayidx85.1 = getelementptr i8, ptr %osd_buf, i32 %or84.1
  %27 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx85.1, align 1
  %28 = load i8, ptr %str.0144, align 1
  %conv50.2 = zext i8 %28 to i32
  %shl51.2 = shl nuw nsw i32 %conv50.2, 4
  %or.2 = or i32 %shl51.2, 2
  %arrayidx.2 = getelementptr i8, ptr %12, i32 %or.2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.2, align 1
  %idxprom.i.2 = zext i8 %30 to i32
  %arrayidx.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2
  %31 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.2, align 1
  %or81.2 = or i32 %and80, %shl83
  %or84.2 = or i32 %or81.2, 4
  %arrayidx85.2 = getelementptr i8, ptr %osd_buf, i32 %or84.2
  %33 = ptrtoint ptr %arrayidx85.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx85.2, align 1
  %34 = load i8, ptr %str.0144, align 1
  %conv50.3 = zext i8 %34 to i32
  %shl51.3 = shl nuw nsw i32 %conv50.3, 4
  %or.3 = or i32 %shl51.3, 3
  %arrayidx.3 = getelementptr i8, ptr %12, i32 %or.3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.3, align 1
  %idxprom.i.3 = zext i8 %36 to i32
  %arrayidx.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3
  %37 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.3, align 1
  %or81.3 = or i32 %and80, %shl83
  %or84.3 = or i32 %or81.3, 6
  %arrayidx85.3 = getelementptr i8, ptr %osd_buf, i32 %or84.3
  %39 = ptrtoint ptr %arrayidx85.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx85.3, align 1
  %40 = load i8, ptr %str.0144, align 1
  %conv50.4 = zext i8 %40 to i32
  %shl51.4 = shl nuw nsw i32 %conv50.4, 4
  %or.4 = or i32 %shl51.4, 4
  %arrayidx.4 = getelementptr i8, ptr %12, i32 %or.4
  %41 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.4, align 1
  %idxprom.i.4 = zext i8 %42 to i32
  %arrayidx.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4
  %43 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i.4, align 1
  %or81.4 = or i32 %and80, %shl83
  %or84.4 = or i32 %or81.4, 8
  %arrayidx85.4 = getelementptr i8, ptr %osd_buf, i32 %or84.4
  %45 = ptrtoint ptr %arrayidx85.4 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx85.4, align 1
  %46 = load i8, ptr %str.0144, align 1
  %conv50.5 = zext i8 %46 to i32
  %shl51.5 = shl nuw nsw i32 %conv50.5, 4
  %or.5 = or i32 %shl51.5, 5
  %arrayidx.5 = getelementptr i8, ptr %12, i32 %or.5
  %47 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.5, align 1
  %idxprom.i.5 = zext i8 %48 to i32
  %arrayidx.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5
  %49 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.5, align 1
  %or81.5 = or i32 %and80, %shl83
  %or84.5 = or i32 %or81.5, 10
  %arrayidx85.5 = getelementptr i8, ptr %osd_buf, i32 %or84.5
  %51 = ptrtoint ptr %arrayidx85.5 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx85.5, align 1
  %52 = load i8, ptr %str.0144, align 1
  %conv50.6 = zext i8 %52 to i32
  %shl51.6 = shl nuw nsw i32 %conv50.6, 4
  %or.6 = or i32 %shl51.6, 6
  %arrayidx.6 = getelementptr i8, ptr %12, i32 %or.6
  %53 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.6, align 1
  %idxprom.i.6 = zext i8 %54 to i32
  %arrayidx.i.6 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.6
  %55 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i.6, align 1
  %or81.6 = or i32 %and80, %shl83
  %or84.6 = or i32 %or81.6, 12
  %arrayidx85.6 = getelementptr i8, ptr %osd_buf, i32 %or84.6
  %57 = ptrtoint ptr %arrayidx85.6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx85.6, align 1
  %58 = load i8, ptr %str.0144, align 1
  %conv50.7 = zext i8 %58 to i32
  %shl51.7 = shl nuw nsw i32 %conv50.7, 4
  %or.7 = or i32 %shl51.7, 7
  %arrayidx.7 = getelementptr i8, ptr %12, i32 %or.7
  %59 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.7, align 1
  %idxprom.i.7 = zext i8 %60 to i32
  %arrayidx.i.7 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.7
  %61 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.7, align 1
  %or81.7 = or i32 %and80, %shl83
  %or84.7 = or i32 %or81.7, 14
  %arrayidx85.7 = getelementptr i8, ptr %osd_buf, i32 %or84.7
  %63 = ptrtoint ptr %arrayidx85.7 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx85.7, align 1
  %64 = load i8, ptr %str.0144, align 1
  %conv50.8 = zext i8 %64 to i32
  %shl51.8 = shl nuw nsw i32 %conv50.8, 4
  %or.8 = or i32 %shl51.8, 8
  %arrayidx.8 = getelementptr i8, ptr %12, i32 %or.8
  %65 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.8, align 1
  %idxprom.i.8 = zext i8 %66 to i32
  %arrayidx.i.8 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.8
  %67 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.8, align 1
  %or81.8 = or i32 %and80, %and82
  %or84.8 = or i32 %or81.8, 16
  %arrayidx85.8 = getelementptr i8, ptr %osd_buf, i32 %or84.8
  %69 = ptrtoint ptr %arrayidx85.8 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx85.8, align 1
  %70 = load i8, ptr %str.0144, align 1
  %conv50.9 = zext i8 %70 to i32
  %shl51.9 = shl nuw nsw i32 %conv50.9, 4
  %or.9 = or i32 %shl51.9, 9
  %arrayidx.9 = getelementptr i8, ptr %12, i32 %or.9
  %71 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.9, align 1
  %idxprom.i.9 = zext i8 %72 to i32
  %arrayidx.i.9 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.9
  %73 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.9, align 1
  %or81.9 = or i32 %and80, %and82
  %or84.9 = or i32 %or81.9, 18
  %arrayidx85.9 = getelementptr i8, ptr %osd_buf, i32 %or84.9
  %75 = ptrtoint ptr %arrayidx85.9 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx85.9, align 1
  %76 = load i8, ptr %str.0144, align 1
  %conv50.10 = zext i8 %76 to i32
  %shl51.10 = shl nuw nsw i32 %conv50.10, 4
  %or.10 = or i32 %shl51.10, 10
  %arrayidx.10 = getelementptr i8, ptr %12, i32 %or.10
  %77 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.10, align 1
  %idxprom.i.10 = zext i8 %78 to i32
  %arrayidx.i.10 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.10
  %79 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.10, align 1
  %or81.10 = or i32 %and80, %and82
  %or84.10 = or i32 %or81.10, 20
  %arrayidx85.10 = getelementptr i8, ptr %osd_buf, i32 %or84.10
  %81 = ptrtoint ptr %arrayidx85.10 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx85.10, align 1
  %82 = load i8, ptr %str.0144, align 1
  %conv50.11 = zext i8 %82 to i32
  %shl51.11 = shl nuw nsw i32 %conv50.11, 4
  %or.11 = or i32 %shl51.11, 11
  %arrayidx.11 = getelementptr i8, ptr %12, i32 %or.11
  %83 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.11, align 1
  %idxprom.i.11 = zext i8 %84 to i32
  %arrayidx.i.11 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.11
  %85 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i.11, align 1
  %or81.11 = or i32 %and80, %and82
  %or84.11 = or i32 %or81.11, 22
  %arrayidx85.11 = getelementptr i8, ptr %osd_buf, i32 %or84.11
  %87 = ptrtoint ptr %arrayidx85.11 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx85.11, align 1
  %88 = load i8, ptr %str.0144, align 1
  %conv50.12 = zext i8 %88 to i32
  %shl51.12 = shl nuw nsw i32 %conv50.12, 4
  %or.12 = or i32 %shl51.12, 12
  %arrayidx.12 = getelementptr i8, ptr %12, i32 %or.12
  %89 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.12, align 1
  %idxprom.i.12 = zext i8 %90 to i32
  %arrayidx.i.12 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.12
  %91 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i.12, align 1
  %or81.12 = or i32 %and80, %and82
  %or84.12 = or i32 %or81.12, 24
  %arrayidx85.12 = getelementptr i8, ptr %osd_buf, i32 %or84.12
  %93 = ptrtoint ptr %arrayidx85.12 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx85.12, align 1
  %94 = load i8, ptr %str.0144, align 1
  %conv50.13 = zext i8 %94 to i32
  %shl51.13 = shl nuw nsw i32 %conv50.13, 4
  %or.13 = or i32 %shl51.13, 13
  %arrayidx.13 = getelementptr i8, ptr %12, i32 %or.13
  %95 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.13, align 1
  %idxprom.i.13 = zext i8 %96 to i32
  %arrayidx.i.13 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.13
  %97 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i.13, align 1
  %or81.13 = or i32 %and80, %and82
  %or84.13 = or i32 %or81.13, 26
  %arrayidx85.13 = getelementptr i8, ptr %osd_buf, i32 %or84.13
  %99 = ptrtoint ptr %arrayidx85.13 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx85.13, align 1
  %100 = load i8, ptr %str.0144, align 1
  %conv50.14 = zext i8 %100 to i32
  %shl51.14 = shl nuw nsw i32 %conv50.14, 4
  %or.14 = or i32 %shl51.14, 14
  %arrayidx.14 = getelementptr i8, ptr %12, i32 %or.14
  %101 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.14, align 1
  %idxprom.i.14 = zext i8 %102 to i32
  %arrayidx.i.14 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.14
  %103 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i.14, align 1
  %or81.14 = or i32 %and80, %and82
  %or84.14 = or i32 %or81.14, 28
  %arrayidx85.14 = getelementptr i8, ptr %osd_buf, i32 %or84.14
  %105 = ptrtoint ptr %arrayidx85.14 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx85.14, align 1
  %106 = load i8, ptr %str.0144, align 1
  %conv50.15 = zext i8 %106 to i32
  %shl51.15 = shl nuw nsw i32 %conv50.15, 4
  %or.15 = or i32 %shl51.15, 15
  %arrayidx.15 = getelementptr i8, ptr %12, i32 %or.15
  %107 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.15, align 1
  %idxprom.i.15 = zext i8 %108 to i32
  %arrayidx.i.15 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.15
  %109 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i.15, align 1
  %or81.15 = or i32 %and80, %and82
  %or84.15 = or i32 %or81.15, 30
  %arrayidx85.15 = getelementptr i8, ptr %osd_buf, i32 %or84.15
  %111 = ptrtoint ptr %arrayidx85.15 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx85.15, align 1
  %inc87 = add i32 %i.0143, 1
  %incdec.ptr = getelementptr i8, ptr %str.0144, i32 1
  %112 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %incdec.ptr, align 1
  %tobool46.not = icmp eq i8 %113, 0
  br i1 %tobool46.not, label %for.cond47.preheader.for.end88_crit_edge, label %for.cond47.preheader.for.cond47.preheader_crit_edge

for.cond47.preheader.for.cond47.preheader_crit_edge: ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond47.preheader

for.cond47.preheader.for.end88_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end88

for.end88:                                        ; preds = %for.cond47.preheader.for.end88_crit_edge, %if.end45.for.end88_crit_edge
  %type = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 1
  %114 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp89 = icmp eq i32 %115, 0
  %cond91 = select i1 %cmp89, i32 65536, i32 131072
  %ch92 = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 6
  %116 = ptrtoint ptr %ch92 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ch92, align 4
  %conv93 = zext i8 %117 to i32
  %mul = mul nuw nsw i32 %cond91, %conv93
  %add = add nuw nsw i32 %mul, 4718592
  %call94 = tail call i32 @solo_p2m_dma(ptr noundef %1, i32 noundef 1, ptr noundef %osd_buf, i32 noundef %add, i32 noundef 704, i32 noundef 0, i32 noundef 0) #5
  %118 = ptrtoint ptr %ch92 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ch92, align 4
  %conv96 = zext i8 %119 to i32
  %shl97 = shl nuw i32 1, %conv96
  %or98 = or i32 %shl97, %5
  br label %out

out:                                              ; preds = %for.end88, %if.then44
  %reg.0 = phi i32 [ %or98, %for.end88 ], [ %and, %if.then44 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %120 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -1, ptr %val.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %121 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #5
  %122 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %123, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %121) #5, !srcloc !24
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %125, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -19, %if.then ], [ -19, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_font(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_p2m_dma(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_s_jpeg_qp(ptr noundef %solo_dev, i32 noundef %ch, i32 noundef %qp) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %ch)
  %cmp = icmp ugt i32 %ch, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %qp)
  %cmp1 = icmp ugt i32 %qp, 3
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ch)
  %cmp5 = icmp ult i32 %ch, 16
  %not.cmp5 = xor i1 %cmp5, true
  %idx.0 = zext i1 %not.cmp5 to i32
  %reg.0 = select i1 %cmp5, i32 1652, i32 1656
  %2 = shl nuw nsw i32 %ch, 1
  %3 = add nsw i32 %2, -32
  %mul = select i1 %cmp5, i32 %2, i32 %3
  %jpeg_qp_lock = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 45
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %jpeg_qp_lock) #5
  %shl = shl nuw i32 3, %mul
  %neg = xor i32 %shl, -1
  %arrayidx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 46, i32 %idx.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, %neg
  %shl14 = shl nuw i32 %qp, %mul
  %or = or i32 %and, %shl14
  store i32 %or, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #5, !srcloc !24
  %10 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %jpeg_qp_lock, i32 noundef %call10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_g_jpeg_qp(ptr nocapture noundef readonly %solo_dev, i32 noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %ch)
  %cmp1 = icmp ugt i32 %ch, 31
  br i1 %cmp1, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %if.end
  %.b51 = load i1, ptr @solo_g_jpeg_qp.__already_done, align 1
  br i1 %.b51, label %land.rhs.cleanup_crit_edge, label %if.then8, !prof !19

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @solo_g_jpeg_qp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ch)
  %cmp41 = icmp ult i32 %ch, 16
  %not.cmp41 = xor i1 %cmp41, true
  %idx.0 = zext i1 %not.cmp41 to i32
  %2 = shl nuw nsw i32 %ch, 1
  %3 = add nsw i32 %2, -32
  %mul = select i1 %cmp41, i32 %2, i32 %3
  %arrayidx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 46, i32 %idx.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %5, %mul
  %and = and i32 %shr, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then8, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end40 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.then8 ], [ 2, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_enc_init(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i38 = alloca i16, align 2
  %val.i = alloca i16, align 2
  %val.i185.i = alloca i16, align 2
  %val.i181.i = alloca i16, align 2
  %val.i177.i = alloca i16, align 2
  %val.i173.i = alloca i16, align 2
  %val.i169.i = alloca i16, align 2
  %val.i165.i = alloca i16, align 2
  %val.i.i26 = alloca i16, align 2
  %val.i339.i = alloca i16, align 2
  %val.i335.i = alloca i16, align 2
  %val.i331.i = alloca i16, align 2
  %val.i327.i = alloca i16, align 2
  %val.i323.i = alloca i16, align 2
  %val.i319.i = alloca i16, align 2
  %val.i315.i = alloca i16, align 2
  %val.i311.i = alloca i16, align 2
  %val.i307.i = alloca i16, align 2
  %val.i303.i = alloca i16, align 2
  %val.i299.i = alloca i16, align 2
  %val.i295.i = alloca i16, align 2
  %val.i.i11 = alloca i16, align 2
  %val.i220.i = alloca i16, align 2
  %val.i216.i = alloca i16, align 2
  %val.i212.i = alloca i16, align 2
  %val.i208.i = alloca i16, align 2
  %val.i204.i = alloca i16, align 2
  %val.i200.i = alloca i16, align 2
  %val.i196.i = alloca i16, align 2
  %val.i192.i = alloca i16, align 2
  %val.i188.i = alloca i16, align 2
  %val.i184.i = alloca i16, align 2
  %val.i180.i = alloca i16, align 2
  %val.i176.i = alloca i16, align 2
  %val.i172.i = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdram_size.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 52
  %0 = ptrtoint ptr %sdram_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdram_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %1)
  %cmp.i = icmp slt i32 %1, 33554433
  %sub.i = select i1 %cmp.i, i32 4718592, i32 18874368
  %type.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp eq i32 %3, 0
  %add6.i = select i1 %cmp1.i, i32 113, i32 145
  %or.i = or i32 %add6.i, %sub.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #5
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val.i.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %6 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #5, !srcloc !24
  %8 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef 6, ptr noundef nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #5
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp10.i = icmp eq i32 %11, 1
  br i1 %cmp10.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i172.i) #5
  %12 = ptrtoint ptr %val.i172.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %val.i172.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %14, i32 1028
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174.i, i32 604111360) #5, !srcloc !24
  %15 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %solo_dev, align 8
  %call.i175.i = call i32 @pci_read_config_word(ptr noundef %16, i32 noundef 6, ptr noundef nonnull %val.i172.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i172.i) #5
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i176.i) #5
  %17 = ptrtoint ptr %val.i176.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val.i176.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %19, i32 1028
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 537002496) #5, !srcloc !24
  %20 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %solo_dev, align 8
  %call.i179.i = call i32 @pci_read_config_word(ptr noundef %21, i32 noundef 6, ptr noundef nonnull %val.i176.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i176.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %video_hsize.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 38
  %22 = ptrtoint ptr %video_hsize.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %video_hsize.i, align 4
  %video_vsize.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 39
  %24 = ptrtoint ptr %video_vsize.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %video_vsize.i, align 2
  %conv11.i = zext i16 %25 to i32
  %26 = lshr i16 %23, 4
  %div.i = zext i16 %26 to i32
  %27 = shl nuw nsw i32 %conv11.i, 13
  %shl14.i = and i32 %27, 536805376
  %or15.i = or i32 %shl14.i, %div.i
  %28 = shl nuw nsw i32 %conv11.i, 4
  %shl17.i = and i32 %28, 1048320
  %or18.i = or i32 %or15.i, %shl17.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i180.i) #5
  %29 = ptrtoint ptr %val.i180.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %val.i180.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %30 = call i32 @llvm.bswap.i32(i32 %or18.i) #5
  %31 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %32, i32 1032
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 %30) #5, !srcloc !24
  %33 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %solo_dev, align 8
  %call.i183.i = call i32 @pci_read_config_word(ptr noundef %34, i32 noundef 6, ptr noundef nonnull %val.i180.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i180.i) #5
  %35 = ptrtoint ptr %video_hsize.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %video_hsize.i, align 4
  %37 = ptrtoint ptr %video_vsize.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %video_vsize.i, align 2
  %conv23.i = zext i16 %38 to i32
  %39 = lshr i16 %36, 5
  %div24.i = zext i16 %39 to i32
  %40 = shl nuw nsw i32 %conv23.i, 13
  %shl27.i = and i32 %40, 536805376
  %or28.i = or i32 %shl27.i, %div24.i
  %41 = shl nuw nsw i32 %conv23.i, 4
  %shl30.i = and i32 %41, 1048320
  %or31.i = or i32 %or28.i, %shl30.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i184.i) #5
  %42 = ptrtoint ptr %val.i184.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %val.i184.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %43 = call i32 @llvm.bswap.i32(i32 %or31.i) #5
  %44 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %45, i32 1036
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186.i, i32 %43) #5, !srcloc !24
  %46 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %solo_dev, align 8
  %call.i187.i = call i32 @pci_read_config_word(ptr noundef %47, i32 noundef 6, ptr noundef nonnull %val.i184.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i184.i) #5
  %48 = ptrtoint ptr %video_hsize.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %video_hsize.i, align 4
  %50 = ptrtoint ptr %video_vsize.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %video_vsize.i, align 2
  %52 = lshr i16 %51, 1
  %div37.i = zext i16 %52 to i32
  %53 = lshr i16 %49, 5
  %div38.i = zext i16 %53 to i32
  %54 = shl nuw nsw i32 %div37.i, 13
  %shl41.i = and i32 %54, 268369920
  %or42.i = or i32 %shl41.i, %div38.i
  %55 = shl nuw nsw i32 %div37.i, 4
  %shl44.i = and i32 %55, 524032
  %or45.i = or i32 %or42.i, %shl44.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i188.i) #5
  %56 = ptrtoint ptr %val.i188.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %val.i188.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %57 = call i32 @llvm.bswap.i32(i32 %or45.i) #5
  %58 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %59, i32 1040
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i, i32 %57) #5, !srcloc !24
  %60 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %solo_dev, align 8
  %call.i191.i = call i32 @pci_read_config_word(ptr noundef %61, i32 noundef 6, ptr noundef nonnull %val.i188.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i188.i) #5
  %62 = ptrtoint ptr %video_hsize.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %video_hsize.i, align 4
  %64 = ptrtoint ptr %video_vsize.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %video_vsize.i, align 2
  %66 = udiv i16 %65, 3
  %div51.i = zext i16 %66 to i32
  %67 = udiv i16 %63, 48
  %div52.i = zext i16 %67 to i32
  %68 = shl nuw nsw i32 %div51.i, 13
  %shl55.i = and i32 %68, 268369920
  %or56.i = or i32 %shl55.i, %div52.i
  %69 = shl nuw nsw i32 %div51.i, 4
  %shl58.i = and i32 %69, 524032
  %or59.i = or i32 %or56.i, %shl58.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i192.i) #5
  %70 = ptrtoint ptr %val.i192.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -1, ptr %val.i192.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %71 = call i32 @llvm.bswap.i32(i32 %or59.i) #5
  %72 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i194.i = getelementptr i8, ptr %73, i32 1044
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i, i32 %71) #5, !srcloc !24
  %74 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %solo_dev, align 8
  %call.i195.i = call i32 @pci_read_config_word(ptr noundef %75, i32 noundef 6, ptr noundef nonnull %val.i192.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i192.i) #5
  %76 = ptrtoint ptr %video_hsize.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %video_hsize.i, align 4
  %78 = ptrtoint ptr %video_vsize.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %video_vsize.i, align 2
  %80 = lshr i16 %79, 1
  %div65.i = zext i16 %80 to i32
  %81 = lshr i16 %77, 6
  %div66.i = zext i16 %81 to i32
  %82 = shl nuw nsw i32 %div65.i, 13
  %shl69.i = and i32 %82, 268369920
  %or70.i = or i32 %shl69.i, %div66.i
  %83 = shl nuw nsw i32 %div65.i, 4
  %shl72.i = and i32 %83, 524032
  %or73.i = or i32 %or70.i, %shl72.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i196.i) #5
  %84 = ptrtoint ptr %val.i196.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -1, ptr %val.i196.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %85 = call i32 @llvm.bswap.i32(i32 %or73.i) #5
  %86 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i198.i = getelementptr i8, ptr %87, i32 1048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198.i, i32 %85) #5, !srcloc !24
  %88 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %solo_dev, align 8
  %call.i199.i = call i32 @pci_read_config_word(ptr noundef %89, i32 noundef 6, ptr noundef nonnull %val.i196.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i196.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i200.i) #5
  %90 = ptrtoint ptr %val.i200.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 -1, ptr %val.i200.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %91 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %92, i32 1052
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202.i, i32 1329544960) #5, !srcloc !24
  %93 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %solo_dev, align 8
  %call.i203.i = call i32 @pci_read_config_word(ptr noundef %94, i32 noundef 6, ptr noundef nonnull %val.i200.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i200.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i204.i) #5
  %95 = ptrtoint ptr %val.i204.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -1, ptr %val.i204.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i206.i = getelementptr i8, ptr %97, i32 1680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206.i, i32 0) #5, !srcloc !24
  %98 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %solo_dev, align 8
  %call.i207.i = call i32 @pci_read_config_word(ptr noundef %99, i32 noundef 6, ptr noundef nonnull %val.i204.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i204.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i208.i) #5
  %100 = ptrtoint ptr %val.i208.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -1, ptr %val.i208.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i210.i = getelementptr i8, ptr %102, i32 1684
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210.i, i32 1207959552) #5, !srcloc !24
  %103 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %solo_dev, align 8
  %call.i211.i = call i32 @pci_read_config_word(ptr noundef %104, i32 noundef 6, ptr noundef nonnull %val.i208.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i208.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i212.i) #5
  %105 = ptrtoint ptr %val.i212.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -1, ptr %val.i212.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %107, i32 1688
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i, i32 -2139033600) #5, !srcloc !24
  %108 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %solo_dev, align 8
  %call.i215.i = call i32 @pci_read_config_word(ptr noundef %109, i32 noundef 6, ptr noundef nonnull %val.i212.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i212.i) #5
  %110 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp83.i = icmp eq i32 %111, 0
  br i1 %cmp83.i, label %if.then85.i, label %if.else86.i

if.then85.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i216.i) #5
  %112 = ptrtoint ptr %val.i216.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %val.i216.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i218.i = getelementptr i8, ptr %114, i32 1692
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218.i, i32 12582912) #5, !srcloc !24
  %115 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %solo_dev, align 8
  %call.i219.i = call i32 @pci_read_config_word(ptr noundef %116, i32 noundef 6, ptr noundef nonnull %val.i216.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i216.i) #5
  br label %if.end8.i.i.i

if.else86.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i220.i) #5
  %117 = ptrtoint ptr %val.i220.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %val.i220.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i222.i = getelementptr i8, ptr %119, i32 1692
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222.i, i32 12583168) #5, !srcloc !24
  %120 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %solo_dev, align 8
  %call.i223.i = call i32 @pci_read_config_word(ptr noundef %121, i32 noundef 6, ptr noundef nonnull %val.i220.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i220.i) #5
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.else86.i, %if.then85.i
  %122 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp89.i = icmp eq i32 %123, 0
  %cond91.i = select i1 %cmp89.i, i32 65536, i32 131072
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %cond91.i, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.solo_capture_config.exit_crit_edge, label %for.cond.preheader.i

if.end8.i.i.i.solo_capture_config.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_capture_config.exit

for.cond.preheader.i:                             ; preds = %if.end8.i.i.i
  %nr_chans.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %124 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nr_chans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp94224.i = icmp sgt i32 %125, 0
  br i1 %cmp94224.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0225.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %126 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp97.i = icmp eq i32 %127, 0
  %cond99.i = select i1 %cmp97.i, i32 65536, i32 131072
  %mul100.i = mul i32 %cond99.i, %i.0225.i
  %add101.i = add i32 %mul100.i, 4718592
  %call106.i = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call9.i.i.i, i32 noundef %add101.i, i32 noundef %cond99.i, i32 noundef 0, i32 noundef 0) #5
  %inc.i = add nuw nsw i32 %i.0225.i, 1
  %128 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nr_chans.i, align 8
  %cmp94.i = icmp slt i32 %inc.i, %129
  br i1 %cmp94.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #5
  br label %solo_capture_config.exit

solo_capture_config.exit:                         ; preds = %for.end.i, %if.end8.i.i.i.solo_capture_config.exit_crit_edge
  %nr_chans.i12 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %130 = ptrtoint ptr %nr_chans.i12 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nr_chans.i12, align 8
  %mul.i = shl i32 %131, 19
  %132 = ptrtoint ptr %sdram_size.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sdram_size.i, align 8
  %134 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp.i15 = icmp eq i32 %135, 0
  %add3.neg.i = select i1 %cmp.i15, i32 -7405568, i32 -9502720
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %133)
  %cmp5.i = icmp slt i32 %133, 33554433
  %mul8.neg.i = select i1 %cmp5.i, i32 -5898240, i32 -20054016
  %mul12.neg.i = mul i32 %131, -2621440
  %add9.neg.i = add i32 %133, %mul12.neg.i
  %add13.neg.i = sub i32 %add9.neg.i, %mul.i
  %sub.i16 = add i32 %add13.neg.i, %mul8.neg.i
  %sub16.i = add i32 %sub.i16, %add3.neg.i
  %136 = call i32 @llvm.smin.i32(i32 %sub16.i, i32 16711680) #5
  %137 = call i32 @llvm.smax.i32(i32 %mul.i, i32 %136) #5
  %138 = and i32 %137, -33619968
  %add31.i = select i1 %cmp.i15, i32 7405568, i32 9502720
  %mul36.i = select i1 %cmp5.i, i32 5898240, i32 20054016
  %mul40.i = mul i32 %131, 2621440
  %add37.i = add i32 %mul36.i, %mul40.i
  %add41.i = add i32 %add37.i, %add31.i
  %shr42.i = ashr exact i32 %add41.i, 16
  %or.i17 = or i32 %shr42.i, %138
  %or44.i = or i32 %or.i17, 33554432
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i11) #5
  %139 = ptrtoint ptr %val.i.i11 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -1, ptr %val.i.i11, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %140 = call i32 @llvm.bswap.i32(i32 %or44.i) #5
  %141 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %142, i32 1552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %140) #5, !srcloc !24
  %143 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %solo_dev, align 8
  %call.i.i20 = call i32 @pci_read_config_word(ptr noundef %144, i32 noundef 6, ptr noundef nonnull %val.i.i11) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i11) #5
  %145 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp46.not.i = icmp eq i32 %146, 0
  br i1 %cmp46.not.i, label %solo_capture_config.exit.if.end.i22_crit_edge, label %if.then.i21

solo_capture_config.exit.if.end.i22_crit_edge:    ; preds = %solo_capture_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i22

if.then.i21:                                      ; preds = %solo_capture_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %nr_chans.i12 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %nr_chans.i12, align 8
  %mul48.i = shl i32 %148, 19
  %149 = ptrtoint ptr %sdram_size.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sdram_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %150)
  %cmp58.i = icmp slt i32 %150, 33554433
  %add62.neg.i = select i1 %cmp58.i, i32 -15400960, i32 -29556736
  %mul65.neg.i = mul i32 %148, -2621440
  %add66.neg.i = add i32 %150, %mul65.neg.i
  %sub67.i = sub i32 %add66.neg.i, %mul48.i
  %sub70.i = add i32 %sub67.i, %add62.neg.i
  %151 = call i32 @llvm.smin.i32(i32 %sub70.i, i32 16711680) #5
  %152 = call i32 @llvm.smax.i32(i32 %mul48.i, i32 %151) #5
  %153 = shl i32 %152, 4
  %shl84.i = and i32 %153, -268435456
  %add105.neg348.i = add i32 %add62.neg.i, %mul65.neg.i
  %.neg.i = sub i32 %150, %mul48.i
  %sub129.i = add i32 %.neg.i, %add105.neg348.i
  %154 = call i32 @llvm.smin.i32(i32 %sub129.i, i32 16711680) #5
  %155 = call i32 @llvm.smax.i32(i32 %mul48.i, i32 %154) #5
  %add142.neg.i = add i32 %add105.neg348.i, %150
  %sub143.i = sub i32 %add142.neg.i, %155
  %156 = call i32 @llvm.smin.i32(i32 %sub143.i, i32 16711680) #5
  %157 = call i32 @llvm.smax.i32(i32 %mul48.i, i32 %156) #5
  %158 = lshr i32 %157, 4
  %shl158.i = and i32 %158, 15728640
  %or85.i = or i32 %shl84.i, %shl158.i
  %or159.i = or i32 %or85.i, 33816576
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i21, %solo_capture_config.exit.if.end.i22_crit_edge
  %cfg.0.i = phi i32 [ %or159.i, %if.then.i21 ], [ 33816576, %solo_capture_config.exit.if.end.i22_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i295.i) #5
  %159 = ptrtoint ptr %val.i295.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 -1, ptr %val.i295.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %160 = call i32 @llvm.bswap.i32(i32 %cfg.0.i) #5
  %161 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i297.i = getelementptr i8, ptr %162, i32 1556
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i297.i, i32 %160) #5, !srcloc !24
  %163 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %solo_dev, align 8
  %call.i298.i = call i32 @pci_read_config_word(ptr noundef %164, i32 noundef 6, ptr noundef nonnull %val.i295.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i295.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i299.i) #5
  %165 = ptrtoint ptr %val.i299.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 -1, ptr %val.i299.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %166 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i301.i = getelementptr i8, ptr %167, i32 1564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301.i, i32 0) #5, !srcloc !24
  %168 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %solo_dev, align 8
  %call.i302.i = call i32 @pci_read_config_word(ptr noundef %169, i32 noundef 6, ptr noundef nonnull %val.i299.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i299.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i303.i) #5
  %170 = ptrtoint ptr %val.i303.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 -1, ptr %val.i303.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i305.i = getelementptr i8, ptr %172, i32 1568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i305.i, i32 0) #5, !srcloc !24
  %173 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %solo_dev, align 8
  %call.i306.i = call i32 @pci_read_config_word(ptr noundef %174, i32 noundef 6, ptr noundef nonnull %val.i303.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i303.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i307.i) #5
  %175 = ptrtoint ptr %val.i307.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 -1, ptr %val.i307.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %176 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i309.i = getelementptr i8, ptr %177, i32 1572
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i309.i, i32 0) #5, !srcloc !24
  %178 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %solo_dev, align 8
  %call.i310.i = call i32 @pci_read_config_word(ptr noundef %179, i32 noundef 6, ptr noundef nonnull %val.i307.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i307.i) #5
  %180 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp161.i = icmp eq i32 %181, 1
  br i1 %cmp161.i, label %if.then162.i, label %if.end.i22.if.end163.i_crit_edge

if.end.i22.if.end163.i_crit_edge:                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end163.i

if.then162.i:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i311.i) #5
  %182 = ptrtoint ptr %val.i311.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 -1, ptr %val.i311.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %183 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i313.i = getelementptr i8, ptr %184, i32 1676
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313.i, i32 0) #5, !srcloc !24
  %185 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %solo_dev, align 8
  %call.i314.i = call i32 @pci_read_config_word(ptr noundef %186, i32 noundef 6, ptr noundef nonnull %val.i311.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i311.i) #5
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then162.i, %if.end.i22.if.end163.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i315.i) #5
  %187 = ptrtoint ptr %val.i315.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 -1, ptr %val.i315.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %188 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i317.i = getelementptr i8, ptr %189, i32 1576
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317.i, i32 0) #5, !srcloc !24
  %190 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %solo_dev, align 8
  %call.i318.i = call i32 @pci_read_config_word(ptr noundef %191, i32 noundef 6, ptr noundef nonnull %val.i315.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i315.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i319.i) #5
  %192 = ptrtoint ptr %val.i319.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 -1, ptr %val.i319.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %193 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i321.i = getelementptr i8, ptr %194, i32 1580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321.i, i32 0) #5, !srcloc !24
  %195 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %solo_dev, align 8
  %call.i322.i = call i32 @pci_read_config_word(ptr noundef %196, i32 noundef 6, ptr noundef nonnull %val.i319.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i319.i) #5
  %197 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp165.i = icmp eq i32 %198, 0
  %or168.i = select i1 %cmp165.i, i32 -1981218816, i32 -1981153280
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i323.i) #5
  %199 = ptrtoint ptr %val.i323.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 -1, ptr %val.i323.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %200 = call i32 @llvm.bswap.i32(i32 %or168.i) #5
  %201 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i325.i = getelementptr i8, ptr %202, i32 1584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i325.i, i32 %200) #5, !srcloc !24
  %203 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %solo_dev, align 8
  %call.i326.i = call i32 @pci_read_config_word(ptr noundef %204, i32 noundef 6, ptr noundef nonnull %val.i323.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i323.i) #5
  %205 = ptrtoint ptr %nr_chans.i12 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %nr_chans.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp170344.i = icmp sgt i32 %206, 0
  br i1 %cmp170344.i, label %if.end163.i.for.body.i24_crit_edge, label %if.end163.i.for.end.i25_crit_edge

if.end163.i.for.end.i25_crit_edge:                ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i25

if.end163.i.for.body.i24_crit_edge:               ; preds = %if.end163.i
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.body.i24.for.body.i24_crit_edge, %if.end163.i.for.body.i24_crit_edge
  %i.0345.i = phi i32 [ %inc.i23, %for.body.i24.for.body.i24_crit_edge ], [ 0, %if.end163.i.for.body.i24_crit_edge ]
  %mul171.i = shl i32 %i.0345.i, 2
  %add172.i = add i32 %mul171.i, 2176
  %207 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp174.i = icmp eq i32 %208, 0
  %add179.i = select i1 %cmp174.i, i32 7405568, i32 9502720
  %209 = ptrtoint ptr %sdram_size.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %sdram_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %210)
  %cmp181.i = icmp slt i32 %210, 33554433
  %mul184.i = select i1 %cmp181.i, i32 5898240, i32 20054016
  %mul186.i = mul i32 %i.0345.i, 1310720
  %add185.i = add i32 %add179.i, %mul186.i
  %add187.i = add i32 %add185.i, %mul184.i
  %shr188.i = ashr exact i32 %add187.i, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i327.i) #5
  %211 = ptrtoint ptr %val.i327.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 -1, ptr %val.i327.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %212 = call i32 @llvm.bswap.i32(i32 %shr188.i) #5
  %213 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i329.i = getelementptr i8, ptr %214, i32 %add172.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i329.i, i32 %212) #5, !srcloc !24
  %215 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %solo_dev, align 8
  %call.i330.i = call i32 @pci_read_config_word(ptr noundef %216, i32 noundef 6, ptr noundef nonnull %val.i327.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i327.i) #5
  %add190.i = add i32 %mul171.i, 2240
  %217 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %cmp192.i = icmp eq i32 %218, 0
  %add197.i = select i1 %cmp192.i, i32 7405568, i32 9502720
  %219 = ptrtoint ptr %sdram_size.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %sdram_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %220)
  %cmp199.i = icmp slt i32 %220, 33554433
  %mul202.i = select i1 %cmp199.i, i32 5898240, i32 20054016
  %add203.i = add i32 %mul186.i, 20971520
  %mul205.i = add i32 %add203.i, %add197.i
  %add206.i = add i32 %mul205.i, %mul202.i
  %shr207.i = ashr exact i32 %add206.i, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i331.i) #5
  %221 = ptrtoint ptr %val.i331.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 -1, ptr %val.i331.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %222 = call i32 @llvm.bswap.i32(i32 %shr207.i) #5
  %223 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i333.i = getelementptr i8, ptr %224, i32 %add190.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i333.i, i32 %222) #5, !srcloc !24
  %225 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %solo_dev, align 8
  %call.i334.i = call i32 @pci_read_config_word(ptr noundef %226, i32 noundef 6, ptr noundef nonnull %val.i331.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i331.i) #5
  %inc.i23 = add nuw nsw i32 %i.0345.i, 1
  %227 = ptrtoint ptr %nr_chans.i12 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %nr_chans.i12, align 8
  %cmp170.i = icmp slt i32 %inc.i23, %228
  br i1 %cmp170.i, label %for.body.i24.for.body.i24_crit_edge, label %for.body.i24.for.end.i25_crit_edge

for.body.i24.for.end.i25_crit_edge:               ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i25

for.body.i24.for.body.i24_crit_edge:              ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i24

for.end.i25:                                      ; preds = %for.body.i24.for.end.i25_crit_edge, %if.end163.i.for.end.i25_crit_edge
  %229 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %230)
  %cmp209.i = icmp eq i32 %230, 1
  br i1 %cmp209.i, label %if.then210.i, label %for.cond211.preheader.i

for.cond211.preheader.i:                          ; preds = %for.end.i25
  %231 = ptrtoint ptr %nr_chans.i12 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %nr_chans.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp213346.i = icmp sgt i32 %232, 0
  br i1 %cmp213346.i, label %for.cond211.preheader.i.for.body214.i_crit_edge, label %for.cond211.preheader.i.solo_mp4e_config.exit_crit_edge

for.cond211.preheader.i.solo_mp4e_config.exit_crit_edge: ; preds = %for.cond211.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_mp4e_config.exit

for.cond211.preheader.i.for.body214.i_crit_edge:  ; preds = %for.cond211.preheader.i
  br label %for.body214.i

if.then210.i:                                     ; preds = %for.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i335.i) #5
  %233 = ptrtoint ptr %val.i335.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 -1, ptr %val.i335.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %234 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i337.i = getelementptr i8, ptr %235, i32 1588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i337.i, i32 134218752) #5, !srcloc !24
  %236 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %solo_dev, align 8
  %call.i338.i = call i32 @pci_read_config_word(ptr noundef %237, i32 noundef 6, ptr noundef nonnull %val.i335.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i335.i) #5
  br label %solo_mp4e_config.exitthread-pre-split

for.body214.i:                                    ; preds = %for.body214.i.for.body214.i_crit_edge, %for.cond211.preheader.i.for.body214.i_crit_edge
  %i.1347.i = phi i32 [ %inc218.i, %for.body214.i.for.body214.i_crit_edge ], [ 0, %for.cond211.preheader.i.for.body214.i_crit_edge ]
  %mul215.i = shl i32 %i.1347.i, 2
  %add216.i = add i32 %mul215.i, 1856
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i339.i) #5
  %238 = ptrtoint ptr %val.i339.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 -1, ptr %val.i339.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %239 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i341.i = getelementptr i8, ptr %240, i32 %add216.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i341.i, i32 65536) #5, !srcloc !24
  %241 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %solo_dev, align 8
  %call.i342.i = call i32 @pci_read_config_word(ptr noundef %242, i32 noundef 6, ptr noundef nonnull %val.i339.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i339.i) #5
  %inc218.i = add nuw nsw i32 %i.1347.i, 1
  %243 = ptrtoint ptr %nr_chans.i12 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %nr_chans.i12, align 8
  %cmp213.i = icmp slt i32 %inc218.i, %244
  br i1 %cmp213.i, label %for.body214.i.for.body214.i_crit_edge, label %for.body214.i.solo_mp4e_config.exitthread-pre-split_crit_edge

for.body214.i.solo_mp4e_config.exitthread-pre-split_crit_edge: ; preds = %for.body214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_mp4e_config.exitthread-pre-split

for.body214.i.for.body214.i_crit_edge:            ; preds = %for.body214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body214.i

solo_mp4e_config.exitthread-pre-split:            ; preds = %for.body214.i.solo_mp4e_config.exitthread-pre-split_crit_edge, %if.then210.i
  %245 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %.pr = load i32, ptr %type.i, align 4
  br label %solo_mp4e_config.exit

solo_mp4e_config.exit:                            ; preds = %solo_mp4e_config.exitthread-pre-split, %for.cond211.preheader.i.solo_mp4e_config.exit_crit_edge
  %246 = phi i32 [ %.pr, %solo_mp4e_config.exitthread-pre-split ], [ %230, %for.cond211.preheader.i.solo_mp4e_config.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %cmp.i28 = icmp eq i32 %246, 0
  br i1 %cmp.i28, label %if.then.i32, label %if.else.i33

if.then.i32:                                      ; preds = %solo_mp4e_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i26) #5
  %247 = ptrtoint ptr %val.i.i26 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 -1, ptr %val.i.i26, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %248 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %249, i32 1648
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 33686018) #5, !srcloc !24
  %250 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %solo_dev, align 8
  %call.i.i31 = call i32 @pci_read_config_word(ptr noundef %251, i32 noundef 6, ptr noundef nonnull %val.i.i26) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i26) #5
  br label %do.body.i

if.else.i33:                                      ; preds = %solo_mp4e_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i165.i) #5
  %252 = ptrtoint ptr %val.i165.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 -1, ptr %val.i165.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %253 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %254, i32 1648
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i, i32 16909060) #5, !srcloc !24
  %255 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %solo_dev, align 8
  %call.i168.i = call i32 @pci_read_config_word(ptr noundef %256, i32 noundef 6, ptr noundef nonnull %val.i165.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i165.i) #5
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i33, %if.then.i32
  %jpeg_qp_lock.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 45
  call void @__raw_spin_lock_init(ptr noundef %jpeg_qp_lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @solo_jpeg_config.__key, i16 noundef signext 3) #5
  %jpeg_qp.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 46
  %arrayidx.i = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 46, i32 1
  %257 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 -1431655766, ptr %arrayidx.i, align 4
  %258 = ptrtoint ptr %jpeg_qp.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 -1431655766, ptr %jpeg_qp.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i169.i) #5
  %259 = ptrtoint ptr %val.i169.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 -1, ptr %val.i169.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %260 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i171.i = getelementptr i8, ptr %261, i32 1652
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 -1431655766) #5, !srcloc !24
  %262 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %solo_dev, align 8
  %call.i172.i = call i32 @pci_read_config_word(ptr noundef %263, i32 noundef 6, ptr noundef nonnull %val.i169.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i169.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i173.i) #5
  %264 = ptrtoint ptr %val.i173.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 -1, ptr %val.i173.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %265 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %266, i32 1656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 -1431655766) #5, !srcloc !24
  %267 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %solo_dev, align 8
  %call.i176.i = call i32 @pci_read_config_word(ptr noundef %268, i32 noundef 6, ptr noundef nonnull %val.i173.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i173.i) #5
  %269 = ptrtoint ptr %nr_chans.i12 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %nr_chans.i12, align 8
  %mul.i35 = shl i32 %270, 19
  %271 = ptrtoint ptr %sdram_size.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %sdram_size.i, align 8
  %273 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp4.i = icmp eq i32 %274, 0
  %add7.i = select i1 %cmp4.i, i32 7405568, i32 9502720
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %272)
  %cmp9.i = icmp slt i32 %272, 33554433
  %mul12.i = select i1 %cmp9.i, i32 5898240, i32 20054016
  %mul16.i = mul i32 %270, 2621440
  %add13.i = add i32 %mul12.i, %mul16.i
  %add17.i = add i32 %add13.i, %add7.i
  %275 = add i32 %mul.i35, %add17.i
  %sub40.i = sub i32 %272, %275
  %276 = call i32 @llvm.smin.i32(i32 %sub40.i, i32 16711680) #5
  %277 = call i32 @llvm.smax.i32(i32 %mul.i35, i32 %276) #5
  %add49.i = add i32 %277, %add17.i
  %sub50.i = sub i32 %272, %add49.i
  %278 = call i32 @llvm.smin.i32(i32 %sub50.i, i32 16711680) #5
  %279 = call i32 @llvm.smax.i32(i32 %mul.i35, i32 %278) #5
  %and.i = and i32 %279, -65536
  %280 = lshr i32 %add49.i, 16
  %or.i37 = or i32 %and.i, %280
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i177.i) #5
  %281 = ptrtoint ptr %val.i177.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 -1, ptr %val.i177.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %282 = call i32 @llvm.bswap.i32(i32 %or.i37) #5
  %283 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i179.i = getelementptr i8, ptr %284, i32 1660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 %282) #5, !srcloc !24
  %285 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %solo_dev, align 8
  %call.i180.i = call i32 @pci_read_config_word(ptr noundef %286, i32 noundef 6, ptr noundef nonnull %val.i177.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i177.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i181.i) #5
  %287 = ptrtoint ptr %val.i181.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 -1, ptr %val.i181.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %288 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i183.i = getelementptr i8, ptr %289, i32 1664
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183.i, i32 -1) #5, !srcloc !24
  %290 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %solo_dev, align 8
  %call.i184.i = call i32 @pci_read_config_word(ptr noundef %291, i32 noundef 6, ptr noundef nonnull %val.i181.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i181.i) #5
  %292 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %293)
  %cmp119.i = icmp eq i32 %293, 1
  br i1 %cmp119.i, label %if.then120.i, label %do.body.i.solo_jpeg_config.exit_crit_edge

do.body.i.solo_jpeg_config.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_jpeg_config.exit

if.then120.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i185.i) #5
  %294 = ptrtoint ptr %val.i185.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 -1, ptr %val.i185.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %295 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i187.i = getelementptr i8, ptr %296, i32 1672
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187.i, i32 1008599040) #5, !srcloc !24
  %297 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %solo_dev, align 8
  %call.i188.i = call i32 @pci_read_config_word(ptr noundef %298, i32 noundef 6, ptr noundef nonnull %val.i185.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i185.i) #5
  br label %solo_jpeg_config.exit

solo_jpeg_config.exit:                            ; preds = %if.then120.i, %do.body.i.solo_jpeg_config.exit_crit_edge
  %299 = ptrtoint ptr %nr_chans.i12 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %nr_chans.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %cmp43 = icmp sgt i32 %300, 0
  br i1 %cmp43, label %solo_jpeg_config.exit.for.body_crit_edge, label %solo_jpeg_config.exit.for.end_crit_edge

solo_jpeg_config.exit.for.end_crit_edge:          ; preds = %solo_jpeg_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

solo_jpeg_config.exit.for.body_crit_edge:         ; preds = %solo_jpeg_config.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %solo_jpeg_config.exit.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %solo_jpeg_config.exit.for.body_crit_edge ]
  %mul = shl i32 %i.044, 2
  %add = add i32 %mul, 1088
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %301 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 -1, ptr %val.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %302 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %303, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !24
  %304 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %305, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  %add2 = add i32 %mul, 1152
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i38) #5
  %306 = ptrtoint ptr %val.i38 to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 -1, ptr %val.i38, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %307 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %308, i32 %add2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #5, !srcloc !24
  %309 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %solo_dev, align 8
  %call.i41 = call i32 @pci_read_config_word(ptr noundef %310, i32 noundef 6, ptr noundef nonnull %val.i38) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i38) #5
  %inc = add nuw nsw i32 %i.044, 1
  %311 = ptrtoint ptr %nr_chans.i12 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %nr_chans.i12, align 8
  %cmp = icmp slt i32 %inc, %312
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %solo_jpeg_config.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_enc_exit(ptr nocapture noundef readonly %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i8 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %0 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp sgt i32 %1, 0
  br i1 %cmp12, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.013, 2
  %add = add i32 %mul, 1088
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !24
  %5 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  %add2 = add i32 %mul, 1152
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i8) #5
  %7 = ptrtoint ptr %val.i8 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %val.i8, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 %add2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #5, !srcloc !24
  %10 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %solo_dev, align 8
  %call.i11 = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 6, ptr noundef nonnull %val.i8) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i8) #5
  %inc = add nuw nsw i32 %i.013, 1
  %12 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_chans, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/solo6x10/solo6x10-enc.c", i32 133, i32 42}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/solo6x10/solo6x10-enc.c", i32 137, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/solo6x10/solo6x10-enc.c", i32 211, i32 6}
!7 = !{ptr @solo_jpeg_config.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/solo6x10/solo6x10-enc.c", i32 237, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 5394006}
!21 = !{i64 2156753608}
!22 = !{!"auto-init"}
!23 = !{i64 2156753999}
!24 = !{i64 5393588}
