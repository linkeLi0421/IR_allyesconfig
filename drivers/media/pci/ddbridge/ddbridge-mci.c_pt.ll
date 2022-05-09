; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ddbridge/ddbridge-mci.c_pt.bc'
source_filename = "../drivers/media/pci/ddbridge/ddbridge-mci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mci_base = type { %struct.list_head, ptr, ptr, %struct.completion, ptr, %struct.mutex, %struct.mutex, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ddb_link = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.mutex, %struct.ddb_lnb, %struct.tasklet_struct, %struct.ddb_ids, %struct.spinlock, i32, [11 x i8], [256 x %struct.ddb_irq] }
%struct.ddb_lnb = type { %struct.mutex, i32, [4 x i32], [4 x i32], i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%union.anon.2 = type { ptr }
%struct.ddb_ids = type { i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ddb_irq = type { ptr, ptr }
%struct.ddb = type { ptr, ptr, ptr, i32, ptr, i32, [4 x %struct.ddb_link], ptr, i32, i32, [32 x %struct.ddb_port], i32, [32 x %struct.ddb_i2c], [64 x %struct.ddb_io], [32 x %struct.ddb_io], [64 x %struct.dvb_adapter], [64 x %struct.ddb_dma], [32 x %struct.ddb_dma], ptr, i32, i32, [1028 x i8], i8, i32, i32, %struct.mutex, [4096 x i8] }
%struct.ddb_port = type { ptr, i32, i32, i32, i32, ptr, %struct.mutex, i32, ptr, ptr, i32, [2 x ptr], ptr, ptr, i8, [2 x %struct.ddb_dvb], i32, i32, i8 }
%struct.ddb_dvb = type { ptr, i32, ptr, [1 x ptr], ptr, ptr, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.ddb_i2c = type { ptr, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, %struct.completion }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ddb_io = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.ddb_dma = type { ptr, i32, i32, [32 x i32], [32 x ptr], i32, i32, i32, i32, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i32, i32 }
%struct.mci = type { ptr, %struct.dvb_frontend, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.104], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.104 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.105 }>
%union.anon.105 = type { i64 }
%struct.mci_cfg = type { i32, ptr, i32, i32, ptr, ptr, ptr }

@ddb_mci_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&base->mci_lock\00", [16 x i8] zeroinitializer }, align 32
@ddb_mci_attach.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&base->tuner_lock\00", [46 x i8] zeroinitializer }, align 32
@mci_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mci_list, ptr @mci_list }, [24 x i8] zeroinitializer }, align 32
@_mci_cmd_unlocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 80, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MCI-%d: MCI timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_mci_cmd_unlocked\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/ddbridge/ddbridge-mci.c\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_mci_cmd_unlocked._entry_ptr = internal global ptr @_mci_cmd_unlocked._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 153, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 154, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"mci_list\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 23, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private constant [45 x i8] c"../drivers/media/pci/ddbridge/ddbridge-mci.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 80, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 87, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @_mci_cmd_unlocked._entry, ptr @_mci_cmd_unlocked._entry_ptr, ptr @ddb_mci_attach.__key, ptr @.str, ptr @ddb_mci_attach.__key.1, ptr @.str.2, ptr @mci_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @init_completion.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_mci_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_mci_attach.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mci_cmd_unlocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddb_mci_config(ptr nocapture noundef readonly %state, i32 noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %link1 = getelementptr inbounds %struct.mci_base, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link1, align 4
  %device = getelementptr inbounds %struct.ddb_link, ptr %3, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %cmp.not = icmp eq i16 %5, 9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %config) #5
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %regs.i = getelementptr inbounds %struct.ddb, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddb_mci_cmd(ptr nocapture noundef readonly %state, ptr noundef readonly %command, ptr noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %mci_lock = getelementptr inbounds %struct.mci_base, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mci_lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %link1.i = getelementptr inbounds %struct.mci_base, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %link1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %regs.i.i = getelementptr inbounds %struct.ddb, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 1280
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !30
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and.i = and i32 %11, 32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry._mci_cmd_unlocked.exit_crit_edge

entry._mci_cmd_unlocked.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_mci_cmd_unlocked.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %command, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %command, i32 %i.07.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl nuw nsw i32 %i.07.i, 2
  %add.i = add nuw nsw i32 %mul.i, 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %regs.i1.i = getelementptr inbounds %struct.ddb, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %regs.i1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i1.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %18, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %14) #5, !srcloc !29
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.i.if.end5.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.if.end5.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %for.body.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %or.i = or i32 %11, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %regs.i3.i = getelementptr inbounds %struct.ddb, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %regs.i3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i3.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %23, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %19) #5, !srcloc !29
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %completion.i = getelementptr inbounds %struct.mci_base, ptr %25, i32 0, i32 3
  %call7.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  %dev.i = getelementptr inbounds %struct.mci_base, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %nr.i = getelementptr inbounds %struct.mci, ptr %state, i32 0, i32 2
  %30 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.3, i32 noundef %31) #8
  br label %_mci_cmd_unlocked.exit

if.end11.i:                                       ; preds = %if.end5.i
  %tobool12.not.i = icmp eq ptr %result, null
  br i1 %tobool12.not.i, label %if.end11.i._mci_cmd_unlocked.exit_crit_edge, label %if.end11.i.for.body18.i_crit_edge

if.end11.i.for.body18.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body18.i

if.end11.i._mci_cmd_unlocked.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_mci_cmd_unlocked.exit

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %if.end11.i.for.body18.i_crit_edge
  %i.18.i = phi i32 [ %inc24.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %if.end11.i.for.body18.i_crit_edge ]
  %mul19.i = shl nuw nsw i32 %i.18.i, 2
  %add20.i = add nuw nsw i32 %mul19.i, 1664
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %regs.i5.i = getelementptr inbounds %struct.ddb, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %35, i32 %add20.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #5, !srcloc !30
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %arrayidx22.i = getelementptr i32, ptr %result, i32 %i.18.i
  %38 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx22.i, align 4
  %inc24.i = add nuw nsw i32 %i.18.i, 1
  %exitcond9.not.i = icmp eq i32 %inc24.i, 32
  br i1 %exitcond9.not.i, label %for.body18.i._mci_cmd_unlocked.exit_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18.i

for.body18.i._mci_cmd_unlocked.exit_crit_edge:    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_mci_cmd_unlocked.exit

_mci_cmd_unlocked.exit:                           ; preds = %for.body18.i._mci_cmd_unlocked.exit_crit_edge, %if.end11.i._mci_cmd_unlocked.exit_crit_edge, %do.end.i, %entry._mci_cmd_unlocked.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ -5, %entry._mci_cmd_unlocked.exit_crit_edge ], [ 0, %if.end11.i._mci_cmd_unlocked.exit_crit_edge ], [ 0, %for.body18.i._mci_cmd_unlocked.exit_crit_edge ]
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state, align 4
  %mci_lock2 = getelementptr inbounds %struct.mci_base, ptr %40, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mci_lock2) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ddb_mci_attach(ptr nocapture noundef readonly %input, ptr nocapture noundef readonly %cfg, i32 noundef %nr, ptr nocapture noundef writeonly %fn_set_input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %lnr = getelementptr inbounds %struct.ddb_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lnr, align 8
  %arrayidx = getelementptr %struct.ddb, ptr %3, i32 0, i32 6, i32 %5
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %arrayidx. = select i1 %tobool.not, ptr %arrayidx, ptr %1
  %state_size = getelementptr inbounds %struct.mci_cfg, ptr %cfg, i32 0, i32 3
  %8 = ptrtoint ptr %state_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %p.0.in.i = phi ptr [ %p.0.i, %for.body.i.for.cond.i_crit_edge ], [ @mci_list, %entry.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, @mci_list
  br i1 %cmp.not.i, label %for.cond.i.if.end8.i.i117_crit_edge, label %for.body.i

for.cond.i.if.end8.i.i117_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i117

for.body.i:                                       ; preds = %for.cond.i
  %key1.i = getelementptr inbounds %struct.mci_base, ptr %p.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %key1.i, align 4
  %cmp2.i = icmp eq ptr %12, %arrayidx.
  br i1 %cmp2.i, label %match_base.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

match_base.exit:                                  ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %p.0.i, null
  br i1 %tobool6.not, label %match_base.exit.if.end8.i.i117_crit_edge, label %if.then7

match_base.exit.if.end8.i.i117_crit_edge:         ; preds = %match_base.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i117

if.then7:                                         ; preds = %match_base.exit
  call void @__sanitizer_cov_trace_pc() #7
  %count = getelementptr inbounds %struct.mci_base, ptr %p.0.i, i32 0, i32 7
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %count, align 4
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %p.0.i, ptr %call9.i.i, align 128
  br label %if.end32

if.end8.i.i117:                                   ; preds = %match_base.exit.if.end8.i.i117_crit_edge, %for.cond.i.if.end8.i.i117_crit_edge
  %base_size = getelementptr inbounds %struct.mci_cfg, ptr %cfg, i32 0, i32 2
  %16 = ptrtoint ptr %base_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_size, align 4
  %call9.i.i116 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #9
  %tobool10.not = icmp eq ptr %call9.i.i116, null
  br i1 %tobool10.not, label %fail, label %if.end12

if.end12:                                         ; preds = %if.end8.i.i117
  %key13 = getelementptr inbounds %struct.mci_base, ptr %call9.i.i116, i32 0, i32 1
  %18 = ptrtoint ptr %key13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx., ptr %key13, align 8
  %count14 = getelementptr inbounds %struct.mci_base, ptr %call9.i.i116, i32 0, i32 7
  %19 = ptrtoint ptr %count14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %count14, align 4
  %link15 = getelementptr inbounds %struct.mci_base, ptr %call9.i.i116, i32 0, i32 2
  %20 = ptrtoint ptr %link15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %link15, align 4
  %dev16 = getelementptr inbounds %struct.ddb, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev16, align 8
  %dev17 = getelementptr inbounds %struct.mci_base, ptr %call9.i.i116, i32 0, i32 4
  %23 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dev17, align 8
  %mci_lock = getelementptr inbounds %struct.mci_base, ptr %call9.i.i116, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mci_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ddb_mci_attach.__key) #5
  %tuner_lock = getelementptr inbounds %struct.mci_base, ptr %call9.i.i116, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %tuner_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ddb_mci_attach.__key.1) #5
  %nr21 = getelementptr %struct.ddb, ptr %3, i32 0, i32 6, i32 %5, i32 2
  %24 = ptrtoint ptr %nr21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr21, align 4
  %call22 = tail call ptr @ddb_irq_set(ptr noundef %3, i32 noundef %25, i32 noundef 0, ptr noundef nonnull @mci_handler, ptr noundef nonnull %call9.i.i116) #5
  %completion = getelementptr inbounds %struct.mci_base, ptr %call9.i.i116, i32 0, i32 3
  %26 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %completion, align 16
  %wait.i = getelementptr inbounds %struct.mci_base, ptr %call9.i.i116, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #5
  %27 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i116, ptr %call9.i.i, align 128
  %28 = ptrtoint ptr %link15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %regs.i.i.i = getelementptr inbounds %struct.ddb, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 8388608) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  %regs.i1.i.i = getelementptr inbounds %struct.ddb, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %regs.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i1.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %37, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 0) #5, !srcloc !29
  tail call void @msleep(i32 noundef 300) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %29, align 4
  %regs.i3.i.i = getelementptr inbounds %struct.ddb, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %regs.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i3.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %41, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 0) #5, !srcloc !29
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %29, align 4
  %regs.i59.i.i = getelementptr inbounds %struct.ddb, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %regs.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i59.i.i, align 8
  %add.ptr.i610.i.i = getelementptr i8, ptr %45, i32 1280
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i610.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %47 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cond11.i.i = icmp eq i32 %47, 0
  br i1 %cond11.i.i, label %if.end12.if.end.i.i120_crit_edge, label %if.end12.if.end8.i.i122_crit_edge

if.end12.if.end8.i.i122_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i122

if.end12.if.end.i.i120_crit_edge:                 ; preds = %if.end12
  br label %if.end.i.i120

if.end.i.i120:                                    ; preds = %if.end4.i.i121.if.end.i.i120_crit_edge, %if.end12.if.end.i.i120_crit_edge
  %timeout.012.i.i = phi i32 [ %dec.i.i, %if.end4.i.i121.if.end.i.i120_crit_edge ], [ 40, %if.end12.if.end.i.i120_crit_edge ]
  %dec.i.i = add nsw i32 %timeout.012.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp2.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i120.probe.exit_crit_edge, label %if.end4.i.i121

if.end.i.i120.probe.exit_crit_edge:               ; preds = %if.end.i.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %probe.exit

if.end4.i.i121:                                   ; preds = %if.end.i.i120
  tail call void @msleep(i32 noundef 50) #5
  %48 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %29, align 4
  %regs.i5.i.i = getelementptr inbounds %struct.ddb, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %regs.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i5.i.i, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %51, i32 1280
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %53 = and i32 %52, 256
  %cond.i.i = icmp eq i32 %53, 0
  br i1 %cond.i.i, label %if.end4.i.i121.if.end.i.i120_crit_edge, label %if.end4.i.i121.if.end8.i.i122_crit_edge

if.end4.i.i121.if.end8.i.i122_crit_edge:          ; preds = %if.end4.i.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i122

if.end4.i.i121.if.end.i.i120_crit_edge:           ; preds = %if.end4.i.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i120

if.end8.i.i122:                                   ; preds = %if.end4.i.i121.if.end8.i.i122_crit_edge, %if.end12.if.end8.i.i122_crit_edge
  %device.i.i = getelementptr inbounds %struct.ddb_link, ptr %29, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %55)
  %cmp9.i.i = icmp eq i16 %55, 9
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end8.i.i122.probe.exit_crit_edge

if.end8.i.i122.probe.exit_crit_edge:              ; preds = %if.end8.i.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %probe.exit

if.then11.i.i:                                    ; preds = %if.end8.i.i122
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %29, align 4
  %regs.i7.i.i = getelementptr inbounds %struct.ddb, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %regs.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i7.i.i, align 8
  %add.ptr.i8.i.i = getelementptr i8, ptr %59, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 16777216) #5, !srcloc !29
  br label %probe.exit

probe.exit:                                       ; preds = %if.then11.i.i, %if.end8.i.i122.probe.exit_crit_edge, %if.end.i.i120.probe.exit_crit_edge
  %60 = load ptr, ptr @mci_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i116, ptr noundef nonnull @mci_list, ptr noundef %60) #5
  br i1 %call.i.i, label %if.end.i.i123, label %probe.exit.list_add.exit_crit_edge

probe.exit.list_add.exit_crit_edge:               ; preds = %probe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i123:                                    ; preds = %probe.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call9.i.i116, ptr %prev1.i.i, align 4
  %62 = ptrtoint ptr %call9.i.i116 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %call9.i.i116, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i116, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @mci_list, ptr %prev3.i.i, align 4
  store volatile ptr %call9.i.i116, ptr @mci_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i123, %probe.exit.list_add.exit_crit_edge
  %base_init = getelementptr inbounds %struct.mci_cfg, ptr %cfg, i32 0, i32 5
  %64 = ptrtoint ptr %base_init to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base_init, align 4
  %tobool27.not = icmp eq ptr %65, null
  br i1 %tobool27.not, label %list_add.exit.if.end32_crit_edge, label %if.then28

list_add.exit.if.end32_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then28:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 %65(ptr noundef nonnull %call9.i.i116) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %list_add.exit.if.end32_crit_edge, %if.then7
  %fe = getelementptr inbounds %struct.mci, ptr %call9.i.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.mci, ptr %call9.i.i, i32 0, i32 1, i32 1
  %fe_ops = getelementptr inbounds %struct.mci_cfg, ptr %cfg, i32 0, i32 1
  %66 = ptrtoint ptr %fe_ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fe_ops, align 4
  %68 = call ptr @memcpy(ptr %ops, ptr %67, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.mci, ptr %call9.i.i, i32 0, i32 1, i32 3
  %69 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call9.i.i, ptr %demodulator_priv, align 4
  %nr34 = getelementptr inbounds %struct.mci, ptr %call9.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %nr34 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %nr, ptr %nr34, align 4
  %set_input = getelementptr inbounds %struct.mci_cfg, ptr %cfg, i32 0, i32 6
  %71 = ptrtoint ptr %set_input to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %set_input, align 4
  %73 = ptrtoint ptr %fn_set_input to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %fn_set_input, align 4
  %tuner = getelementptr inbounds %struct.mci, ptr %call9.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %tuner to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %nr, ptr %tuner, align 4
  %demod = getelementptr inbounds %struct.mci, ptr %call9.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %demod to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %nr, ptr %demod, align 8
  %init = getelementptr inbounds %struct.mci_cfg, ptr %cfg, i32 0, i32 4
  %76 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init, align 4
  %tobool35.not = icmp eq ptr %77, null
  br i1 %tobool35.not, label %if.end32.cleanup_crit_edge, label %if.then36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call i32 %77(ptr noundef nonnull %call9.i.i) #5
  br label %cleanup

fail:                                             ; preds = %if.end8.i.i117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then36, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ null, %entry.cleanup_crit_edge ], [ %fe, %if.then36 ], [ %fe, %if.end32.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ddb_irq_set(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mci_handler(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.mci_base, ptr %priv, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @ddb_mci_attach.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ddbridge/ddbridge-mci.c", i32 153, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ddb_mci_attach.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/ddbridge/ddbridge-mci.c", i32 154, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ddbridge/ddbridge-mci.c", i32 80, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @_mci_cmd_unlocked._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @_mci_cmd_unlocked._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @init_completion.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../include/linux/completion.h", i32 87, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mci_list, !18, !"mci_list", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/ddbridge/ddbridge-mci.c", i32 23, i32 8}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2158280971}
!29 = !{i64 4906258}
!30 = !{i64 4906676}
!31 = !{i64 2158280584}
