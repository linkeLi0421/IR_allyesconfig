; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/netup-init.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/netup-init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.121], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.121 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.122 }>
%union.anon.122 = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128, %struct.anon.129, %struct.anon.130, %struct.anon.131 }
%struct.anon.124 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.125 = type { ptr, ptr }
%struct.anon.126 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.anon.128 = type { ptr, ptr, ptr }
%struct.anon.129 = type { ptr, ptr }
%struct.anon.130 = type { ptr, ptr }
%struct.anon.131 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }

@i2c_av_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cx23885: %s: i2c write error!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_av_write\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/cx23885/netup-init.c\00", [57 x i8] zeroinitializer }, align 32
@i2c_av_write._entry_ptr = internal global ptr @i2c_av_write._entry, section ".printk_index", align 4
@i2c_av_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_av_read\00", [20 x i8] zeroinitializer }, align 32
@i2c_av_read._entry_ptr = internal global ptr @i2c_av_read._entry, section ".printk_index", align 4
@i2c_av_read._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013cx23885: %s: i2c read error!\0A\00", [32 x i8] zeroinitializer }, align 32
@i2c_av_read._entry_ptr.6 = internal global ptr @i2c_av_read._entry.4, section ".printk_index", align 4
@i2c_av_write4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_av_write4\00", [18 x i8] zeroinitializer }, align 32
@i2c_av_write4._entry_ptr = internal global ptr @i2c_av_write4._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 33, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 77, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 85, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [42 x i8] c"../drivers/media/pci/cx23885/netup-init.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 57, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @i2c_av_read._entry, ptr @i2c_av_read._entry.4, ptr @i2c_av_read._entry_ptr, ptr @i2c_av_read._entry_ptr.6, ptr @i2c_av_write._entry, ptr @i2c_av_write._entry_ptr, ptr @i2c_av_write4._entry, ptr @i2c_av_write4._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_av_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_av_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_av_read._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_av_write4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netup_initialize(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %buf.i5 = alloca [6 x i8], align 1
  %msg.i6 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 2, i32 2
  tail call fastcc void @i2c_av_and_or(ptr noundef %i2c_adap, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #4
  %0 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #4
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 458751, ptr %5, align 4
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 68, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf.i, ptr %buf1.i, align 4
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %buf.i, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 20, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -77, ptr %1, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 14, ptr %2, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -22, ptr %3, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %4, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.i2c_av_write4.exit_crit_edge, label %do.end.i

entry.i2c_av_write4.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %i2c_av_write4.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #7
  br label %i2c_av_write4.exit

i2c_av_write4.exit:                               ; preds = %do.end.i, %entry.i2c_av_write4.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i5) #4
  %16 = getelementptr inbounds [6 x i8], ptr %buf.i5, i32 0, i32 1
  %17 = getelementptr inbounds [6 x i8], ptr %buf.i5, i32 0, i32 2
  %18 = getelementptr inbounds [6 x i8], ptr %buf.i5, i32 0, i32 3
  %19 = getelementptr inbounds [6 x i8], ptr %buf.i5, i32 0, i32 4
  %20 = getelementptr inbounds [6 x i8], ptr %buf.i5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i6) #4
  %21 = getelementptr inbounds i8, ptr %msg.i6, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 458751, ptr %21, align 4
  %23 = ptrtoint ptr %msg.i6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 68, ptr %msg.i6, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i7, align 2
  %buf1.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6, i32 0, i32 3
  %25 = ptrtoint ptr %buf1.i9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i5, ptr %buf1.i9, align 4
  %26 = ptrtoint ptr %buf.i5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %buf.i5, align 1
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 16, ptr %16, align 1
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 25, ptr %17, align 1
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %18, align 1
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 9, ptr %19, align 1
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %20, align 1
  %call.i10 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i6, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %i2c_av_write4.exit.i2c_av_write4.exit14_crit_edge, label %do.end.i13

i2c_av_write4.exit.i2c_av_write4.exit14_crit_edge: ; preds = %i2c_av_write4.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %i2c_av_write4.exit14

do.end.i13:                                       ; preds = %i2c_av_write4.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call21.i12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #7
  br label %i2c_av_write4.exit14

i2c_av_write4.exit14:                             ; preds = %do.end.i13, %i2c_av_write4.exit.i2c_av_write4.exit14_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i5) #4
  call fastcc void @i2c_av_and_or(ptr noundef %i2c_adap, i8 noundef zeroext 16)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_av_and_or(ptr noundef %i2c, i8 noundef zeroext %or_value) unnamed_addr #0 align 64 {
entry:
  %buf.i2 = alloca [3 x i8], align 1
  %msg.i3 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #4
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #4
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 196607, ptr %1, align 4
  %3 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 68, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %5 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf.i, ptr %buf1.i, align 4
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %buf.i, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %0, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags.i, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %1, align 4
  %call10.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 1
  br i1 %cmp11.not.i, label %if.end.i.i2c_av_read.exit_crit_edge, label %do.end16.i

if.end.i.i2c_av_read.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %i2c_av_read.exit

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #7
  br label %i2c_av_read.exit

i2c_av_read.exit:                                 ; preds = %do.end16.i, %if.end.i.i2c_av_read.exit_crit_edge
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #4
  %12 = and i8 %11, -17
  %or1 = or i8 %12, %or_value
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i2) #4
  %13 = getelementptr inbounds [3 x i8], ptr %buf.i2, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i8], ptr %buf.i2, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i3) #4
  %15 = getelementptr inbounds i8, ptr %msg.i3, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 262143, ptr %15, align 4
  %17 = ptrtoint ptr %msg.i3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 68, ptr %msg.i3, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i4, align 2
  %buf1.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 3
  %19 = ptrtoint ptr %buf1.i6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.i2, ptr %buf1.i6, align 4
  %20 = ptrtoint ptr %buf.i2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %buf.i2, align 1
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %13, align 1
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or1, ptr %14, align 1
  %call.i7 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i3, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7)
  %cmp.not.i8 = icmp eq i32 %call.i7, 1
  br i1 %cmp.not.i8, label %i2c_av_read.exit.i2c_av_write.exit_crit_edge, label %do.end.i9

i2c_av_read.exit.i2c_av_write.exit_crit_edge:     ; preds = %i2c_av_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %i2c_av_write.exit

do.end.i9:                                        ; preds = %i2c_av_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %i2c_av_write.exit

i2c_av_write.exit:                                ; preds = %do.end.i9, %i2c_av_read.exit.i2c_av_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i3) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/netup-init.c", i32 33, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @i2c_av_write._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @i2c_av_write._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx23885/netup-init.c", i32 77, i32 3}
!8 = !{ptr @i2c_av_read._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @i2c_av_read._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/netup-init.c", i32 85, i32 3}
!12 = !{ptr @i2c_av_read._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @i2c_av_read._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx23885/netup-init.c", i32 57, i32 3}
!16 = !{ptr @i2c_av_write4._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @i2c_av_write4._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
