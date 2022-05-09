; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ngene/ngene-dvb.c_pt.bc'
source_filename = "../drivers/media/pci/ngene/ngene-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ngene_channel = type { %struct.device, %struct.i2c_adapter, [1 x ptr], i32, ptr, i32, i32, i32, i8, i8, i32, ptr, ptr, ptr, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.dmx_frontend, %struct.dmx_frontend, i32, ptr, ptr, %struct.tasklet_struct, ptr, i32, i32, i8, i8, i8, ptr, ptr, %struct.spinlock, i16, i16, i16, i16, i16, i32, i32, %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, [188 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.SRingBufferDescriptor = type { ptr, i64, i32, i32, i32, i32, ptr, i64, i32 }
%struct.ngene = type { i32, ptr, ptr, i32, i32, i32, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, [16 x %struct.EVENT_BUFFER], i32, i32, %struct.tasklet_struct, ptr, i32, i32, %struct.wait_queue_head, i32, %struct.mutex, %struct.mutex, %struct.semaphore, %struct.mutex, i32, i32, %struct.spinlock, [5 x %struct.dvb_adapter], ptr, [5 x %struct.ngene_channel], ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4096 x i8], i32, i32, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, i32, i32, %struct.ngene_ci }
%struct.EVENT_BUFFER = type { i32, i8, i8, i8, i8, [2 x i32] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.ngene_ci = type { %struct.device, %struct.i2c_adapter, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.140, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.140 = type { ptr }
%struct.dvb_demux_feed = type { %union.anon.137, %union.anon.138, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.137 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.138 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__param_str_ci_tsfix = internal constant [15 x i8] c"ngene.ci_tsfix\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ci_tsfix = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ci_tsfix = internal constant %struct.kernel_param { ptr @__param_str_ci_tsfix, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @ci_tsfix } }, section "__param", align 4
@__UNIQUE_ID_ci_tsfixtype383 = internal constant [28 x i8] c"ngene.parmtype=ci_tsfix:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ci_tsfix384 = internal constant [114 x i8] c"ngene.parm=ci_tsfix:Detect and fix TS buffer offset shifts in conjunction with CI expansions (default: 1/enabled)\00", section ".modinfo", align 1
@ci_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ts_read, ptr @ts_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ts_poll, ptr null, ptr null, ptr null, i32 0, ptr @dvb_generic_open, ptr null, ptr @dvb_generic_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ngene_dvbdev_ci = dso_local global { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @ci_fops, ptr null, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, %struct.wait_queue_head zeroinitializer, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tsin_exchange._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): tsin_offset shift by %d on channel %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsin_exchange\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/ngene/ngene-dvb.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsin_exchange._entry_ptr = internal global ptr @tsin_exchange._entry, section ".printk_index", align 4
@fill_ts = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"G\1F\FF\10o", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [9 x i8] c"ci_tsfix\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 28, i32 12 }
@___asan_gen_.8 = private unnamed_addr constant [8 x i8] c"ci_fops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 97, i32 37 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"ngene_dvbdev_ci\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 107, i32 19 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 216, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"fill_ts\00", align 1
@___asan_gen_.33 = private constant [39 x i8] c"../drivers/media/pci/ngene/ngene-dvb.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 130, i32 11 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_ci_tsfix384, ptr @__UNIQUE_ID_ci_tsfixtype383, ptr @__param_ci_tsfix, ptr @tsin_exchange._entry, ptr @tsin_exchange._entry_ptr, ptr @ci_tsfix, ptr @ci_fops, ptr @ngene_dvbdev_ci, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fill_ts], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_tsfix to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_dvbdev_ci to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsin_exchange._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_ts to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @tsin_exchange(ptr noundef %priv, ptr noundef %buf, i32 noundef %len, i32 noundef %clock, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %and = and i32 %flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not4.i = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not4.i, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %len.addr.06.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %len, %entry.while.body.i_crit_edge ]
  %p.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %buf, %entry.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %p.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p.addr.05.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %5 = ptrtoint ptr %p.addr.05.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p.addr.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.05.i, i32 1
  %sub.i = add i32 %len.addr.06.i, -4
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %en = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 54, i32 3
  %6 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %en, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end51_crit_edge, label %land.lhs.true

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end
  %number = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 5
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then3:                                         ; preds = %land.lhs.true
  %10 = load i32, ptr @ci_tsfix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %while.cond.preheader, label %if.end7

while.cond.preheader:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 187, i32 %len)
  %cmp6136 = icmp ugt i32 %len, 187
  br i1 %cmp6136, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tsin_rbuf.i = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 47
  %queue.i = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 47, i32 5
  br label %while.body

while.body:                                       ; preds = %tsin_copy_stripped.exit.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0138 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %tsin_copy_stripped.exit.while.body_crit_edge ]
  %len.addr.0137 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %tsin_copy_stripped.exit.while.body_crit_edge ]
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(5) %buf.addr.0138, ptr noundef nonnull dereferenceable(5) @fill_ts, i32 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %while.body.tsin_copy_stripped.exit_crit_edge, label %if.then.i

while.body.tsin_copy_stripped.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsin_copy_stripped.exit

if.then.i:                                        ; preds = %while.body
  %call1.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %tsin_rbuf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 187, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, 187
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i.tsin_copy_stripped.exit_crit_edge

if.then.i.tsin_copy_stripped.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsin_copy_stripped.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 @dvb_ringbuffer_write(ptr noundef %tsin_rbuf.i, ptr noundef %buf.addr.0138, i32 noundef 188) #6
  tail call void @__wake_up(ptr noundef %queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %tsin_copy_stripped.exit

tsin_copy_stripped.exit:                          ; preds = %if.then3.i, %if.then.i.tsin_copy_stripped.exit_crit_edge, %while.body.tsin_copy_stripped.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %buf.addr.0138, i32 188
  %sub = add i32 %len.addr.0137, -188
  %cmp6 = icmp ugt i32 %sub, 187
  br i1 %cmp6, label %tsin_copy_stripped.exit.while.body_crit_edge, label %tsin_copy_stripped.exit.cleanup_crit_edge

tsin_copy_stripped.exit.cleanup_crit_edge:        ; preds = %tsin_copy_stripped.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tsin_copy_stripped.exit.while.body_crit_edge:     ; preds = %tsin_copy_stripped.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end7:                                          ; preds = %if.then3
  %tsin_offset = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 64
  %11 = ptrtoint ptr %tsin_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tsin_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end7.if.end18_crit_edge, label %if.then9

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then9:                                         ; preds = %if.end7
  %tsin_buffer = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 65
  %sub11 = sub i32 188, %12
  %arrayidx = getelementptr %struct.ngene_channel, ptr %priv, i32 0, i32 65, i32 %sub11
  %13 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 %12)
  %bcmp.i103 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %tsin_buffer, ptr noundef nonnull dereferenceable(5) @fill_ts, i32 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i103)
  %cmp.not.i104 = icmp eq i32 %bcmp.i103, 0
  br i1 %cmp.not.i104, label %if.then9.tsin_copy_stripped.exit112_crit_edge, label %if.then.i108

if.then9.tsin_copy_stripped.exit112_crit_edge:    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsin_copy_stripped.exit112

if.then.i108:                                     ; preds = %if.then9
  %tsin_rbuf.i105 = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 47
  %call1.i106 = tail call i32 @dvb_ringbuffer_free(ptr noundef %tsin_rbuf.i105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 187, i32 %call1.i106)
  %cmp2.i107 = icmp sgt i32 %call1.i106, 187
  br i1 %cmp2.i107, label %if.then3.i111, label %if.then.i108.tsin_copy_stripped.exit112_crit_edge

if.then.i108.tsin_copy_stripped.exit112_crit_edge: ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsin_copy_stripped.exit112

if.then3.i111:                                    ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i109 = tail call i32 @dvb_ringbuffer_write(ptr noundef %tsin_rbuf.i105, ptr noundef %tsin_buffer, i32 noundef 188) #6
  %queue.i110 = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 47, i32 5
  tail call void @__wake_up(ptr noundef %queue.i110, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %tsin_copy_stripped.exit112

tsin_copy_stripped.exit112:                       ; preds = %if.then3.i111, %if.then.i108.tsin_copy_stripped.exit112_crit_edge, %if.then9.tsin_copy_stripped.exit112_crit_edge
  %14 = ptrtoint ptr %tsin_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tsin_offset, align 8
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %15
  %sub17 = sub i32 %len, %15
  br label %if.end18

if.end18:                                         ; preds = %tsin_copy_stripped.exit112, %if.end7.if.end18_crit_edge
  %len.addr.1 = phi i32 [ %sub17, %tsin_copy_stripped.exit112 ], [ %len, %if.end7.if.end18_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr15, %tsin_copy_stripped.exit112 ], [ %buf, %if.end7.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 187, i32 %len.addr.1)
  %cmp20130 = icmp ugt i32 %len.addr.1, 187
  br i1 %cmp20130, label %while.body21.lr.ph, label %if.end18.while.end42_crit_edge

if.end18.while.end42_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end42

while.body21.lr.ph:                               ; preds = %if.end18
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 1
  %tsin_rbuf.i119 = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 47
  %queue.i124 = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 47, i32 5
  br label %while.body21

while.body21:                                     ; preds = %tsin_copy_stripped.exit126.while.body21_crit_edge, %while.body21.lr.ph
  %buf.addr.2132 = phi ptr [ %buf.addr.1, %while.body21.lr.ph ], [ %add.ptr40, %tsin_copy_stripped.exit126.while.body21_crit_edge ]
  %len.addr.2131 = phi i32 [ %len.addr.1, %while.body21.lr.ph ], [ %sub41, %tsin_copy_stripped.exit126.while.body21_crit_edge ]
  %16 = ptrtoint ptr %buf.addr.2132 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf.addr.2132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %17)
  %cmp22.not = icmp eq i8 %17, 71
  br i1 %cmp22.not, label %while.body21.if.end39_crit_edge, label %if.then24

while.body21.if.end39_crit_edge:                  ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24:                                        ; preds = %while.body21
  %sub.i113 = add i32 %len.addr.2131, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i113)
  %cmp.i = icmp sgt i32 %sub.i113, 0
  br i1 %cmp.i, label %if.then24.for.body.i_crit_edge, label %if.then24.if.end39_crit_edge

if.then24.if.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24.for.body.i_crit_edge:                   ; preds = %if.then24
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then24.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then24.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf.addr.2132, i32 %i.017.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %19)
  %cmp2.i114 = icmp eq i8 %19, 71
  br i1 %cmp2.i114, label %if.then4.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  %bcmp.i115 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %arrayidx.i, ptr noundef nonnull dereferenceable(5) @fill_ts, i32 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i115)
  %tobool.not.i116 = icmp eq i32 %bcmp.i115, 0
  br i1 %tobool.not.i116, label %tsin_find_offset.exit, label %if.then4.i.for.inc.i_crit_edge

if.then4.i.for.inc.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i113
  br i1 %exitcond.not.i, label %for.inc.i.if.end39_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end39_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

tsin_find_offset.exit:                            ; preds = %if.then4.i
  %rem.i = urem i32 %i.017.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp25.not = icmp eq i32 %rem.i, 0
  br i1 %cmp25.not, label %tsin_find_offset.exit.if.end39_crit_edge, label %if.then27

tsin_find_offset.exit.if.end39_crit_edge:         ; preds = %tsin_find_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then27:                                        ; preds = %tsin_find_offset.exit
  %20 = ptrtoint ptr %tsin_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tsin_offset, align 8
  %add = add i32 %21, %rem.i
  %rem = srem i32 %add, 188
  store i32 %rem, ptr %tsin_offset, align 8
  %add.ptr30 = getelementptr i8, ptr %buf.addr.2132, i32 %rem.i
  %sub31 = sub i32 %len.addr.2131, %rem.i
  %22 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %rem.i, i32 noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %sub31)
  %cmp34 = icmp ult i32 %sub31, 188
  br i1 %cmp34, label %if.then27.while.end42_crit_edge, label %if.then27.if.end39_crit_edge

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then27.while.end42_crit_edge:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end42

if.end39:                                         ; preds = %if.then27.if.end39_crit_edge, %tsin_find_offset.exit.if.end39_crit_edge, %for.inc.i.if.end39_crit_edge, %if.then24.if.end39_crit_edge, %while.body21.if.end39_crit_edge
  %len.addr.3 = phi i32 [ %sub31, %if.then27.if.end39_crit_edge ], [ %len.addr.2131, %tsin_find_offset.exit.if.end39_crit_edge ], [ %len.addr.2131, %while.body21.if.end39_crit_edge ], [ %len.addr.2131, %if.then24.if.end39_crit_edge ], [ %len.addr.2131, %for.inc.i.if.end39_crit_edge ]
  %buf.addr.3 = phi ptr [ %add.ptr30, %if.then27.if.end39_crit_edge ], [ %buf.addr.2132, %tsin_find_offset.exit.if.end39_crit_edge ], [ %buf.addr.2132, %while.body21.if.end39_crit_edge ], [ %buf.addr.2132, %if.then24.if.end39_crit_edge ], [ %buf.addr.2132, %for.inc.i.if.end39_crit_edge ]
  %bcmp.i117 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %buf.addr.3, ptr noundef nonnull dereferenceable(5) @fill_ts, i32 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i117)
  %cmp.not.i118 = icmp eq i32 %bcmp.i117, 0
  br i1 %cmp.not.i118, label %if.end39.tsin_copy_stripped.exit126_crit_edge, label %if.then.i122

if.end39.tsin_copy_stripped.exit126_crit_edge:    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsin_copy_stripped.exit126

if.then.i122:                                     ; preds = %if.end39
  %call1.i120 = tail call i32 @dvb_ringbuffer_free(ptr noundef %tsin_rbuf.i119) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 187, i32 %call1.i120)
  %cmp2.i121 = icmp sgt i32 %call1.i120, 187
  br i1 %cmp2.i121, label %if.then3.i125, label %if.then.i122.tsin_copy_stripped.exit126_crit_edge

if.then.i122.tsin_copy_stripped.exit126_crit_edge: ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsin_copy_stripped.exit126

if.then3.i125:                                    ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i123 = tail call i32 @dvb_ringbuffer_write(ptr noundef %tsin_rbuf.i119, ptr noundef %buf.addr.3, i32 noundef 188) #6
  tail call void @__wake_up(ptr noundef %queue.i124, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %tsin_copy_stripped.exit126

tsin_copy_stripped.exit126:                       ; preds = %if.then3.i125, %if.then.i122.tsin_copy_stripped.exit126_crit_edge, %if.end39.tsin_copy_stripped.exit126_crit_edge
  %add.ptr40 = getelementptr i8, ptr %buf.addr.3, i32 188
  %sub41 = add i32 %len.addr.3, -188
  %cmp20 = icmp ugt i32 %sub41, 187
  br i1 %cmp20, label %tsin_copy_stripped.exit126.while.body21_crit_edge, label %tsin_copy_stripped.exit126.while.end42_crit_edge

tsin_copy_stripped.exit126.while.end42_crit_edge: ; preds = %tsin_copy_stripped.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end42

tsin_copy_stripped.exit126.while.body21_crit_edge: ; preds = %tsin_copy_stripped.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body21

while.end42:                                      ; preds = %tsin_copy_stripped.exit126.while.end42_crit_edge, %if.then27.while.end42_crit_edge, %if.end18.while.end42_crit_edge
  %len.addr.4 = phi i32 [ %len.addr.1, %if.end18.while.end42_crit_edge ], [ %sub31, %if.then27.while.end42_crit_edge ], [ %sub41, %tsin_copy_stripped.exit126.while.end42_crit_edge ]
  %buf.addr.4 = phi ptr [ %buf.addr.1, %if.end18.while.end42_crit_edge ], [ %add.ptr30, %if.then27.while.end42_crit_edge ], [ %add.ptr40, %tsin_copy_stripped.exit126.while.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.4)
  %cmp43.not = icmp eq i32 %len.addr.4, 0
  br i1 %cmp43.not, label %while.end42.cleanup_crit_edge, label %if.then48

while.end42.cleanup_crit_edge:                    ; preds = %while.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then48:                                        ; preds = %while.end42
  call void @__sanitizer_cov_trace_pc() #8
  %tsin_buffer49 = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 65
  %26 = call ptr @memcpy(ptr %tsin_buffer49, ptr %buf.addr.4, i32 %len.addr.4)
  br label %cleanup

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %users = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 19
  %27 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp52 = icmp sgt i32 %28, 0
  br i1 %cmp52, label %if.then54, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %demux = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 15
  tail call void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %buf, i32 noundef %len) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end51.cleanup_crit_edge, %if.then48, %while.end42.cleanup_crit_edge, %tsin_copy_stripped.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  ret ptr null
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tsout_exchange(ptr nocapture noundef readonly %priv, ptr noundef returned %buf, i32 noundef %len, i32 noundef %clock, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %tsout_rbuf = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 45
  %call = tail call i32 @dvb_ringbuffer_avail(ptr noundef %tsout_rbuf) #6
  %rem = urem i32 %call, 188
  %sub = sub i32 %call, %rem
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp = icmp ult i32 %sub, %len
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub
  %sub2 = sub i32 %len, %sub
  tail call void @FillTSBuffer(ptr noundef %add.ptr, i32 noundef %sub2, i32 noundef %flags) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %alen.0 = phi i32 [ %sub, %if.then ], [ %len, %entry.if.end_crit_edge ]
  tail call void @dvb_ringbuffer_read(ptr noundef %tsout_rbuf, ptr noundef %buf, i32 noundef %alen.0) #6
  %and = and i32 %flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alen.0)
  %tobool.not4.i = icmp eq i32 %alen.0, 0
  %or.cond = or i1 %tobool.not, %tobool.not4.i
  br i1 %or.cond, label %if.end.if.end5_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %len.addr.06.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %alen.0, %if.end.while.body.i_crit_edge ]
  %p.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %buf, %if.end.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %p.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p.addr.05.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %5 = ptrtoint ptr %p.addr.05.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p.addr.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.05.i, i32 1
  %sub.i = add i32 %len.addr.06.i, -4
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end5_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.if.end5_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %while.body.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %queue = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 45, i32 5
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_avail(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @FillTSBuffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ngene_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %users = getelementptr inbounds %struct.ngene_channel, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.ngene_channel, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %cmd_timeout_workaround = getelementptr inbounds %struct.ngene, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %cmd_timeout_workaround to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_timeout_workaround, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then.if.then2_crit_edge, label %lor.lhs.false

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.then
  %running = getelementptr inbounds %struct.ngene_channel, ptr %3, i32 0, i32 63
  %10 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then2_crit_edge, label %lor.lhs.false.if.end3_crit_edge

lor.lhs.false.if.end3_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.then.if.then2_crit_edge
  tail call void @set_transfer(ptr noundef %3, i32 noundef 1) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %lor.lhs.false.if.end3_crit_edge, %entry.if.end3_crit_edge
  %12 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %users, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %users, align 8
  ret i32 %inc
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_transfer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ngene_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %users = getelementptr inbounds %struct.ngene_channel, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.ngene_channel, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %cmd_timeout_workaround = getelementptr inbounds %struct.ngene, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %cmd_timeout_workaround to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_timeout_workaround, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @set_transfer(ptr noundef %3, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %dec
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @my_dvb_dmx_ts_card_init(ptr noundef %dvbdemux, ptr nocapture noundef readnone %id, ptr noundef %start_feed, ptr noundef %stop_feed, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %priv1, align 4
  %filternum = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 2
  %1 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 3
  %2 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %feednum, align 4
  %start_feed2 = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 4
  %3 = ptrtoint ptr %start_feed2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %start_feed, ptr %start_feed2, align 8
  %stop_feed3 = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 5
  %4 = ptrtoint ptr %stop_feed3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %stop_feed, ptr %stop_feed3, align 4
  %write_to_decoder = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 6
  %5 = ptrtoint ptr %write_to_decoder to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %write_to_decoder, align 8
  %6 = ptrtoint ptr %dvbdemux to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 13, ptr %dvbdemux, align 8
  %call = tail call i32 @dvb_dmx_init(ptr noundef %dvbdemux) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @my_dvb_dmxdev_ts_card_init(ptr noundef %dmxdev, ptr noundef %dvbdemux, ptr noundef %hw_frontend, ptr noundef %mem_frontend, ptr noundef %dvb_adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %filternum = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 4
  %0 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %filternum, align 4
  %demux = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 3
  %1 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dvbdemux, ptr %demux, align 4
  %capabilities = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 5
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %capabilities, align 4
  %call = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %source = getelementptr inbounds %struct.dmx_frontend, ptr %hw_frontend, i32 0, i32 1
  %3 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %source, align 4
  %add_frontend = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 10
  %4 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add_frontend, align 8
  %call3 = tail call i32 %5(ptr noundef %dvbdemux, ptr noundef %hw_frontend) #6
  %source4 = getelementptr inbounds %struct.dmx_frontend, ptr %mem_frontend, i32 0, i32 1
  %6 = ptrtoint ptr %source4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %source4, align 4
  %7 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add_frontend, align 8
  %call8 = tail call i32 %8(ptr noundef %dvbdemux, ptr noundef %mem_frontend) #6
  %connect_frontend = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 13
  %9 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connect_frontend, align 4
  %call11 = tail call i32 %10(ptr noundef %dvbdemux, ptr noundef %hw_frontend) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not66 = icmp eq i32 %count, 0
  br i1 %tobool.not66, label %entry.cleanup29_crit_edge, label %while.body.lr.ph

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

while.body.lr.ph:                                 ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.ngene_channel, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %tsin_rbuf = getelementptr inbounds %struct.ngene, ptr %5, i32 0, i32 47
  %queue = getelementptr inbounds %struct.ngene, ptr %5, i32 0, i32 47, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.068 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end21.while.body_crit_edge ]
  %left.067 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %if.end21.while.body_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 65) #6
  %call = call i32 @dvb_ringbuffer_avail(ptr noundef %tsin_rbuf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body.if.end21_crit_edge, label %if.then

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call762 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %call963 = call i32 @dvb_ringbuffer_avail(ptr noundef %tsin_rbuf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call963)
  %cmp1064 = icmp sgt i32 %call963, 0
  br i1 %cmp1064, label %if.then.if.end17.thread57_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.if.end17.thread57_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.thread57

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call765 = phi i32 [ %call7, %cleanup.if.end_crit_edge ], [ %call762, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call765)
  %tobool12.not = icmp eq i32 %call765, 0
  br i1 %tobool12.not, label %cleanup, label %if.end17

cleanup:                                          ; preds = %if.end
  call void @schedule() #6
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %call9 = call i32 @dvb_ringbuffer_avail(ptr noundef %tsin_rbuf) #6
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %cleanup.if.end17.thread57_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cleanup.if.end17.thread57_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.thread57

if.end17.thread57:                                ; preds = %cleanup.if.end17.thread57_crit_edge, %if.then.if.end17.thread57_crit_edge
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end21

if.end17:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call765)
  %cmp19 = icmp slt i32 %call765, 0
  br i1 %cmp19, label %if.end17.cleanup29_crit_edge, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end17.cleanup29_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

if.end21:                                         ; preds = %if.end17.if.end21_crit_edge, %if.end17.thread57, %while.body.if.end21_crit_edge
  %call23 = call i32 @dvb_ringbuffer_avail(ptr noundef %tsin_rbuf) #6
  %7 = call i32 @llvm.smin.i32(i32 %call23, i32 %left.067)
  %call28 = call i32 @dvb_ringbuffer_read_user(ptr noundef %tsin_rbuf, ptr noundef %buf.addr.068, i32 noundef %7) #6
  %sub = sub i32 %left.067, %7
  %add.ptr = getelementptr i8, ptr %buf.addr.068, i32 %7
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end21.cleanup29_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end21.cleanup29_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

cleanup29:                                        ; preds = %if.end21.cleanup29_crit_edge, %if.end17.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup29_crit_edge ], [ %count, %if.end21.cleanup29_crit_edge ], [ -11, %if.end17.cleanup29_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.ngene_channel, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 45) #6
  %tsout_rbuf = getelementptr inbounds %struct.ngene, ptr %5, i32 0, i32 45
  %call = tail call i32 @dvb_ringbuffer_free(ptr noundef %tsout_rbuf) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %count)
  %cmp.not = icmp ult i32 %call, %count
  br i1 %cmp.not, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %queue = getelementptr inbounds %struct.ngene, ptr %5, i32 0, i32 45, i32 5
  %call748 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %call949 = call i32 @dvb_ringbuffer_free(ptr noundef %tsout_rbuf) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call949, i32 %count)
  %cmp10.not50 = icmp ult i32 %call949, %count
  br i1 %cmp10.not50, label %if.then.if.end_crit_edge, label %if.then.if.end16.thread43_crit_edge

if.then.if.end16.thread43_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.thread43

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call751 = phi i32 [ %call7, %cleanup.if.end_crit_edge ], [ %call748, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call751)
  %tobool.not = icmp eq i32 %call751, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

cleanup:                                          ; preds = %if.end
  call void @schedule() #6
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %call9 = call i32 @dvb_ringbuffer_free(ptr noundef %tsout_rbuf) #6
  %cmp10.not = icmp ult i32 %call9, %count
  br i1 %cmp10.not, label %cleanup.if.end_crit_edge, label %cleanup.if.end16.thread43_crit_edge

cleanup.if.end16.thread43_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.thread43

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end16.thread43:                                ; preds = %cleanup.if.end16.thread43_crit_edge, %if.then.if.end16.thread43_crit_edge
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end20

if.end16:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call751)
  %cmp18 = icmp slt i32 %call751, 0
  br i1 %cmp18, label %if.end16.cleanup23_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end16.cleanup23_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %if.end16.thread43, %entry.if.end20_crit_edge
  %call22 = call i32 @dvb_ringbuffer_write_user(ptr noundef %tsout_rbuf, ptr noundef %buf, i32 noundef %count) #6
  br label %cleanup23

cleanup23:                                        ; preds = %if.end20, %if.end16.cleanup23_crit_edge
  %retval.0 = phi i32 [ %count, %if.end20 ], [ 0, %if.end16.cleanup23_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.ngene_channel, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %queue = getelementptr inbounds %struct.ngene, ptr %5, i32 0, i32 47, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit21_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit21_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit21

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i19_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i19_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i19

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %file, ptr noundef nonnull %queue, ptr noundef nonnull %wait) #6
  br label %land.lhs.true.i19

land.lhs.true.i19:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i19_crit_edge
  %queue222 = getelementptr inbounds %struct.ngene, ptr %5, i32 0, i32 45, i32 5
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait, align 4
  %tobool1.not.i16 = icmp eq ptr %9, null
  %tobool3.not.i17 = icmp eq ptr %queue222, null
  %or.cond.i18 = or i1 %tobool3.not.i17, %tobool1.not.i16
  br i1 %or.cond.i18, label %land.lhs.true.i19.poll_wait.exit21_crit_edge, label %if.then.i20

land.lhs.true.i19.poll_wait.exit21_crit_edge:     ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit21

if.then.i20:                                      ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %file, ptr noundef nonnull %queue222, ptr noundef nonnull %wait) #6
  br label %poll_wait.exit21

poll_wait.exit21:                                 ; preds = %if.then.i20, %land.lhs.true.i19.poll_wait.exit21_crit_edge, %entry.poll_wait.exit21_crit_edge
  %tsout_rbuf = getelementptr inbounds %struct.ngene, ptr %5, i32 0, i32 45
  %tsin_rbuf = getelementptr inbounds %struct.ngene, ptr %5, i32 0, i32 47
  %call = tail call i32 @dvb_ringbuffer_empty(ptr noundef %tsin_rbuf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 65, i32 0
  %call3 = tail call i32 @dvb_ringbuffer_free(ptr noundef %tsout_rbuf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 187, i32 %call3)
  %cmp = icmp sgt i32 %call3, 187
  %or5 = or i32 %spec.select, 260
  %mask.1 = select i1 %cmp, i32 %or5, i32 %spec.select
  ret i32 %mask.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_read_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_write_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__param_ci_tsfix, !1, !"__param_ci_tsfix", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ngene/ngene-dvb.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_ci_tsfixtype383, !1, !"__UNIQUE_ID_ci_tsfixtype383", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ci_tsfix384, !4, !"__UNIQUE_ID_ci_tsfix384", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/ngene/ngene-dvb.c", i32 30, i32 1}
!5 = !{ptr @ngene_dvbdev_ci, !6, !"ngene_dvbdev_ci", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/ngene/ngene-dvb.c", i32 107, i32 19}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/ngene/ngene-dvb.c", i32 216, i32 6}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tsin_exchange._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @tsin_exchange._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__param_str_ci_tsfix, !1, !"__param_str_ci_tsfix", i1 false, i1 false}
!16 = !{ptr @ci_tsfix, !17, !"ci_tsfix", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/ngene/ngene-dvb.c", i32 28, i32 12}
!18 = !{ptr @ci_fops, !19, !"ci_fops", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ngene/ngene-dvb.c", i32 97, i32 37}
!20 = !{ptr @fill_ts, !21, !"fill_ts", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/ngene/ngene-dvb.c", i32 130, i32 11}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
