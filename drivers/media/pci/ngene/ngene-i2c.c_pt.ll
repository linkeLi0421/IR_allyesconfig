; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ngene/ngene-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/ngene/ngene-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngene = type { i32, ptr, ptr, i32, i32, i32, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, [16 x %struct.EVENT_BUFFER], i32, i32, %struct.tasklet_struct, ptr, i32, i32, %struct.wait_queue_head, i32, %struct.mutex, %struct.mutex, %struct.semaphore, %struct.mutex, i32, i32, %struct.spinlock, [5 x %struct.dvb_adapter], ptr, [5 x %struct.ngene_channel], ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4096 x i8], i32, i32, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, i32, i32, %struct.ngene_ci }
%struct.EVENT_BUFFER = type { i32, i8, i8, i8, i8, [2 x i32] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%struct.atomic_t = type { i32 }
%union.anon.104 = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.ngene_channel = type { %struct.device, %struct.i2c_adapter, [1 x ptr], i32, ptr, i32, i32, i32, i8, i8, i32, ptr, ptr, ptr, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.dmx_frontend, %struct.dmx_frontend, i32, ptr, ptr, %struct.tasklet_struct, ptr, i32, i32, i8, i8, i8, ptr, ptr, %struct.spinlock, i16, i16, i16, i16, i16, i32, i32, %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, [188 x i8] }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.SRingBufferDescriptor = type { ptr, i64, i32, i32, i32, i32, ptr, i64, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.ngene_ci = type { %struct.device, %struct.i2c_adapter, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }
%struct.ngene_command = type { i32, i32, %union.anon.141 }
%union.anon.141 = type { %struct.FW_STREAM_CONTROL, [192 x i8] }
%struct.FW_STREAM_CONTROL = type { %struct.FW_HEADER, i8, i8, i8, i8, i16, i64, i16, i16, i16, i16, i16, i16, i16, i16, [32 x i8] }
%struct.FW_HEADER = type { i8, i8 }
%struct.ngene_info = type { i32, i32, i8, ptr, [5 x i32], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i32, i8, [4 x i8], [4 x i8], ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nGene\00", [26 x i8] zeroinitializer }, align 32
@ngene_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @ngene_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @ngene_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 151, i32 22 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"ngene_i2c_algo\00", align 1
@___asan_gen_.6 = private constant [39 x i8] c"../drivers/media/pci/ngene/ngene-i2c.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 140, i32 35 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @ngene_i2c_algo], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ngene_i2c_init(ptr noundef %dev, i32 noundef %dev_nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %dev_nr
  %i2c_adapter = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %dev_nr, i32 1
  %driver_data.i.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %dev_nr, i32 1, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %name = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %dev_nr, i32 1, i32 12
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #4
  %algo = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %dev_nr, i32 1, i32 2
  %1 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ngene_i2c_algo, ptr %algo, align 8
  %algo_data = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %dev_nr, i32 1, i32 3
  %2 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %algo_data, align 4
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %parent = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %dev_nr, i32 1, i32 9, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev5, ptr %parent, align 8
  %call7 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adapter) #4
  ret i32 %call7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ngene_i2c_master_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  %com.i110 = alloca %struct.ngene_command, align 4
  %com.i96 = alloca %struct.ngene_command, align 4
  %com.i = alloca %struct.ngene_command, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.ngene_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %i2c_switch_mutex = getelementptr inbounds %struct.ngene, ptr %3, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %i2c_switch_mutex, i32 noundef 0) #4
  %number = getelementptr inbounds %struct.ngene_channel, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %card_info.i = getelementptr inbounds %struct.ngene, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %card_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card_info.i, align 8
  %i2c_access.i = getelementptr inbounds %struct.ngene_info, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %i2c_access.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_access.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ngene_i2c_set_bus.exit_crit_edge, label %if.end.i

entry.ngene_i2c_set_bus.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ngene_i2c_set_bus.exit

if.end.i:                                         ; preds = %entry
  %i2c_current_bus.i = getelementptr inbounds %struct.ngene, ptr %3, i32 0, i32 30
  %10 = ptrtoint ptr %i2c_current_bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2c_current_bus.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp.i = icmp eq i32 %11, %5
  br i1 %cmp.i, label %if.end.i.ngene_i2c_set_bus.exit_crit_edge, label %if.end2.i

if.end.i.ngene_i2c_set_bus.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ngene_i2c_set_bus.exit

if.end2.i:                                        ; preds = %if.end.i
  %12 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end2.i.sw.epilog.i_crit_edge [
    i32 0, label %if.end2.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb4.i
  ]

if.end2.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

if.end2.i.sw.epilog.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb4.i, %if.end2.i.sw.epilog.sink.split.i_crit_edge
  %.sink16.i = phi i8 [ 2, %sw.bb4.i ], [ 3, %if.end2.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ 3, %sw.bb4.i ], [ 2, %if.end2.i.sw.epilog.sink.split.i_crit_edge ]
  %call5.i = tail call i32 @ngene_command_gpio_set(ptr noundef %3, i8 noundef zeroext %.sink16.i, i8 noundef zeroext 0) #4
  %call6.i = tail call i32 @ngene_command_gpio_set(ptr noundef %3, i8 noundef zeroext %.sink.i, i8 noundef zeroext 1) #4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end2.i.sw.epilog.i_crit_edge
  %13 = ptrtoint ptr %i2c_current_bus.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %i2c_current_bus.i, align 8
  br label %ngene_i2c_set_bus.exit

ngene_i2c_set_bus.exit:                           ; preds = %sw.epilog.i, %if.end.i.ngene_i2c_set_bus.exit_crit_edge, %entry.ngene_i2c_set_bus.exit_crit_edge
  %14 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %num, label %ngene_i2c_set_bus.exit.cleanup_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %land.lhs.true24
  ]

ngene_i2c_set_bus.exit.cleanup_crit_edge:         ; preds = %ngene_i2c_set_bus.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %ngene_i2c_set_bus.exit
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true2

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %18 = ptrtoint ptr %flags4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags4, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool7.not = icmp eq i16 %20, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true2
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %msg, align 4
  %conv9 = trunc i16 %22 to i8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len, align 4
  %buf14 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %27 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf14, align 4
  %len16 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %29 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len16, align 4
  %conv17 = trunc i16 %30 to i8
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %com.i) #4
  %31 = getelementptr inbounds i8, ptr %com.i, i32 8
  %32 = call ptr @memset(ptr %31, i32 255, i32 256)
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %31, align 4
  %34 = and i16 %26, 255
  %conv.i = zext i16 %34 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %conv1.i = trunc i32 %add.i to i8
  %Length.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %Length.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv1.i, ptr %Length.i, align 1
  %shl.i = shl i8 %conv9, 1
  %Device.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %Device.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %shl.i, ptr %Device.i, align 2
  %Data.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 2, i32 0, i32 2
  %37 = call ptr @memcpy(ptr %Data.i, ptr %24, i32 %conv.i)
  %arrayidx.i = getelementptr [252 x i8], ptr %Data.i, i32 0, i32 %conv.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv17, ptr %arrayidx.i, align 1
  %add13.i = add nuw nsw i32 %conv.i, 1
  %arrayidx14.i = getelementptr [252 x i8], ptr %Data.i, i32 0, i32 %add13.i
  %39 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx14.i, align 1
  %40 = ptrtoint ptr %com.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %com.i, align 4
  %conv17.mask = and i16 %30, 255
  %conv17.i = zext i16 %conv17.mask to i32
  %add18.i = add nuw nsw i32 %conv17.i, 1
  %out_len.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 1
  %41 = ptrtoint ptr %out_len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add18.i, ptr %out_len.i, align 4
  %call.i = call i32 @ngene_command(ptr noundef %3, ptr noundef nonnull %com.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i94 = icmp slt i32 %call.i, 0
  br i1 %cmp.i94, label %if.then.ngene_command_i2c_read.exit.thread_crit_edge, label %if.end.i95

if.then.ngene_command_i2c_read.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %ngene_command_i2c_read.exit.thread

if.end.i95:                                       ; preds = %if.then
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %31, align 4
  %44 = lshr i8 %43, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %conv9)
  %cmp24.not.i = icmp eq i8 %44, %conv9
  br i1 %cmp24.not.i, label %ngene_command_i2c_read.exit, label %if.end.i95.ngene_command_i2c_read.exit.thread_crit_edge

if.end.i95.ngene_command_i2c_read.exit.thread_crit_edge: ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #6
  br label %ngene_command_i2c_read.exit.thread

ngene_command_i2c_read.exit.thread:               ; preds = %if.end.i95.ngene_command_i2c_read.exit.thread_crit_edge, %if.then.ngene_command_i2c_read.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i) #4
  br label %cleanup

ngene_command_i2c_read.exit:                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #6
  %45 = call ptr @memcpy(ptr %28, ptr %Length.i, i32 %conv17.i)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i) #4
  br label %cleanup

land.lhs.true24:                                  ; preds = %ngene_i2c_set_bus.exit
  %flags26 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %46 = ptrtoint ptr %flags26 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags26, align 2
  %48 = and i16 %47, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool29.not = icmp eq i16 %48, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true24.land.lhs.true46_crit_edge

land.lhs.true24.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true46

if.then30:                                        ; preds = %land.lhs.true24
  %49 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %msg, align 4
  %conv33 = trunc i16 %50 to i8
  %buf35 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %51 = ptrtoint ptr %buf35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf35, align 4
  %len37 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %53 = ptrtoint ptr %len37 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %len37, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %com.i96) #4
  %55 = getelementptr inbounds i8, ptr %com.i96, i32 8
  %56 = call ptr @memset(ptr %55, i32 255, i32 256)
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %55, align 4
  %58 = and i16 %54, 255
  %conv.i98 = zext i16 %58 to i32
  %add.i99 = add nuw nsw i32 %conv.i98, 1
  %conv1.i100 = trunc i32 %add.i99 to i8
  %Length.i101 = getelementptr inbounds %struct.ngene_command, ptr %com.i96, i32 0, i32 2, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %Length.i101 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv1.i100, ptr %Length.i101, align 1
  %shl.i102 = shl i8 %conv33, 1
  %Device.i103 = getelementptr inbounds %struct.ngene_command, ptr %com.i96, i32 0, i32 2, i32 0, i32 1
  %60 = ptrtoint ptr %Device.i103 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %shl.i102, ptr %Device.i103, align 2
  %Data.i104 = getelementptr inbounds %struct.ngene_command, ptr %com.i96, i32 0, i32 2, i32 0, i32 2
  %61 = call ptr @memcpy(ptr %Data.i104, ptr %52, i32 %conv.i98)
  %62 = ptrtoint ptr %com.i96 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i99, ptr %com.i96, align 4
  %out_len.i105 = getelementptr inbounds %struct.ngene_command, ptr %com.i96, i32 0, i32 1
  %63 = ptrtoint ptr %out_len.i105 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %out_len.i105, align 4
  %call.i106 = call i32 @ngene_command(ptr noundef %3, ptr noundef nonnull %com.i96) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.i107 = icmp slt i32 %call.i106, 0
  br i1 %cmp.i107, label %if.then30.ngene_command_i2c_write.exit.thread_crit_edge, label %if.end.i108

if.then30.ngene_command_i2c_write.exit.thread_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %ngene_command_i2c_write.exit.thread

if.end.i108:                                      ; preds = %if.then30
  %64 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %65)
  %cmp13.i = icmp eq i8 %65, 1
  br i1 %cmp13.i, label %if.end.i108.ngene_command_i2c_write.exit.thread_crit_edge, label %ngene_command_i2c_write.exit

if.end.i108.ngene_command_i2c_write.exit.thread_crit_edge: ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #6
  br label %ngene_command_i2c_write.exit.thread

ngene_command_i2c_write.exit.thread:              ; preds = %if.end.i108.ngene_command_i2c_write.exit.thread_crit_edge, %if.then30.ngene_command_i2c_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i96) #4
  br label %land.lhs.true46

ngene_command_i2c_write.exit:                     ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i96) #4
  br label %cleanup

land.lhs.true46:                                  ; preds = %ngene_command_i2c_write.exit.thread, %land.lhs.true24.land.lhs.true46_crit_edge
  %66 = ptrtoint ptr %flags26 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flags26, align 2
  %68 = and i16 %67, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool51.not = icmp eq i16 %68, 0
  br i1 %tobool51.not, label %land.lhs.true46.cleanup_crit_edge, label %if.then52

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then52:                                        ; preds = %land.lhs.true46
  %69 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %msg, align 4
  %conv55 = trunc i16 %70 to i8
  %buf57 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %71 = ptrtoint ptr %buf57 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buf57, align 4
  %len59 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %73 = ptrtoint ptr %len59 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %len59, align 4
  %conv60 = trunc i16 %74 to i8
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %com.i110) #4
  %75 = getelementptr inbounds i8, ptr %com.i110, i32 8
  %76 = getelementptr inbounds i8, ptr %com.i110, i32 12
  %77 = call ptr @memset(ptr %76, i32 255, i32 252)
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 3, ptr %75, align 4
  %Length.i112 = getelementptr inbounds %struct.ngene_command, ptr %com.i110, i32 0, i32 2, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %Length.i112 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %Length.i112, align 1
  %shl.i113 = shl i8 %conv55, 1
  %Device.i114 = getelementptr inbounds %struct.ngene_command, ptr %com.i110, i32 0, i32 2, i32 0, i32 1
  %80 = ptrtoint ptr %Device.i114 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %shl.i113, ptr %Device.i114, align 2
  %Data.i115 = getelementptr inbounds %struct.ngene_command, ptr %com.i110, i32 0, i32 2, i32 0, i32 2
  %81 = ptrtoint ptr %Data.i115 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv60, ptr %Data.i115, align 1
  %arrayidx14.i116 = getelementptr inbounds %struct.ngene_command, ptr %com.i110, i32 0, i32 2, i32 0, i32 3
  %82 = ptrtoint ptr %arrayidx14.i116 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx14.i116, align 4
  %83 = ptrtoint ptr %com.i110 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %com.i110, align 4
  %conv60.mask = and i16 %74, 255
  %conv17.i117 = zext i16 %conv60.mask to i32
  %add18.i118 = add nuw nsw i32 %conv17.i117, 1
  %out_len.i119 = getelementptr inbounds %struct.ngene_command, ptr %com.i110, i32 0, i32 1
  %84 = ptrtoint ptr %out_len.i119 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add18.i118, ptr %out_len.i119, align 4
  %call.i120 = call i32 @ngene_command(ptr noundef %3, ptr noundef nonnull %com.i110) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i121 = icmp slt i32 %call.i120, 0
  br i1 %cmp.i121, label %if.then52.ngene_command_i2c_read.exit126.thread_crit_edge, label %if.end.i123

if.then52.ngene_command_i2c_read.exit126.thread_crit_edge: ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %ngene_command_i2c_read.exit126.thread

if.end.i123:                                      ; preds = %if.then52
  %85 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %75, align 4
  %87 = lshr i8 %86, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %conv55)
  %cmp24.not.i122 = icmp eq i8 %87, %conv55
  br i1 %cmp24.not.i122, label %ngene_command_i2c_read.exit126, label %if.end.i123.ngene_command_i2c_read.exit126.thread_crit_edge

if.end.i123.ngene_command_i2c_read.exit126.thread_crit_edge: ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #6
  br label %ngene_command_i2c_read.exit126.thread

ngene_command_i2c_read.exit126.thread:            ; preds = %if.end.i123.ngene_command_i2c_read.exit126.thread_crit_edge, %if.then52.ngene_command_i2c_read.exit126.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i110) #4
  br label %cleanup

ngene_command_i2c_read.exit126:                   ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #6
  %88 = call ptr @memcpy(ptr %72, ptr %Length.i112, i32 %conv17.i117)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i110) #4
  br label %cleanup

cleanup:                                          ; preds = %ngene_command_i2c_read.exit126, %ngene_command_i2c_read.exit126.thread, %land.lhs.true46.cleanup_crit_edge, %ngene_command_i2c_write.exit, %ngene_command_i2c_read.exit, %ngene_command_i2c_read.exit.thread, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %ngene_i2c_set_bus.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %ngene_command_i2c_read.exit126.thread ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -5, %land.lhs.true2.cleanup_crit_edge ], [ -5, %ngene_command_i2c_read.exit.thread ], [ -5, %ngene_i2c_set_bus.exit.cleanup_crit_edge ], [ -5, %land.lhs.true46.cleanup_crit_edge ], [ %num, %ngene_command_i2c_read.exit126 ], [ %num, %ngene_command_i2c_write.exit ], [ %num, %ngene_command_i2c_read.exit ]
  call void @mutex_unlock(ptr noundef %i2c_switch_mutex) #4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ngene_i2c_functionality(ptr nocapture noundef readnone %adap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ngene_command_gpio_set(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ngene_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ngene/ngene-i2c.c", i32 151, i32 22}
!2 = !{ptr @ngene_i2c_algo, !3, !"ngene_i2c_algo", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/ngene/ngene-i2c.c", i32 140, i32 35}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
