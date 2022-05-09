; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ddbridge/ddbridge-ci.c_pt.bc'
source_filename = "../drivers/media/pci/ddbridge/ddbridge-ci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2099_cfg = type { i32, i8, i8, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ddb_port = type { ptr, i32, i32, i32, i32, ptr, %struct.mutex, i32, ptr, ptr, i32, [2 x ptr], ptr, ptr, i8, [2 x %struct.ddb_dvb], i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ddb_dvb = type { ptr, i32, ptr, [1 x ptr], ptr, ptr, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ddb = type { ptr, ptr, ptr, i32, ptr, i32, [4 x %struct.ddb_link], ptr, i32, i32, [32 x %struct.ddb_port], i32, [32 x %struct.ddb_i2c], [64 x %struct.ddb_io], [32 x %struct.ddb_io], [64 x %struct.dvb_adapter], [64 x %struct.ddb_dma], [32 x %struct.ddb_dma], ptr, i32, i32, [1028 x i8], i8, i32, i32, %struct.mutex, [4096 x i8] }
%struct.ddb_link = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.mutex, %struct.ddb_lnb, %struct.tasklet_struct, %struct.ddb_ids, %struct.spinlock, i32, [11 x i8], [256 x %struct.ddb_irq] }
%struct.ddb_lnb = type { %struct.mutex, i32, [4 x i32], [4 x i32], i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.ddb_ids = type { i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ddb_irq = type { ptr, ptr }
%struct.ddb_io = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.ddb_dma = type { ptr, i32, i32, [32 x i32], [32 x ptr], i32, i32, i32, i32, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i32, i32 }
%struct.ddb_ci = type { %struct.dvb_ca_en50221, ptr, i32 }

@cxd_cfgtmpl = internal constant { %struct.cxd2099_cfg, [16 x i8] } { %struct.cxd2099_cfg { i32 72000, i8 1, i8 1, i32 512, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cxd2099\00", [24 x i8] zeroinitializer }, align 32
@ci_cxd2099_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CXD2099AR attach failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ci_cxd2099_attach\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/ddbridge/ddbridge-ci.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ci_cxd2099_attach._entry_ptr = internal global ptr @ci_cxd2099_attach._entry, section ".printk_index", align 4
@en_xo2_templ = internal constant { %struct.dvb_ca_en50221, [44 x i8] } { %struct.dvb_ca_en50221 { ptr null, ptr @read_attribute_mem_xo2, ptr @write_attribute_mem_xo2, ptr @read_cam_control_xo2, ptr @write_cam_control_xo2, ptr null, ptr null, ptr @slot_reset_xo2, ptr @slot_shutdown_xo2, ptr @slot_ts_enable_xo2, ptr @poll_slot_status_xo2, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@slot_reset_xo2.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddbridge\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slot_reset_xo2\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@slot_shutdown_xo2.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.8, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slot_shutdown_xo2\00", [46 x i8] zeroinitializer }, align 32
@slot_ts_enable_xo2.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str.3, ptr @.str.8, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slot_ts_enable_xo2\00", [45 x i8] zeroinitializer }, align 32
@en_templ = internal constant { %struct.dvb_ca_en50221, [44 x i8] } { %struct.dvb_ca_en50221 { ptr null, ptr @read_attribute_mem, ptr @write_attribute_mem, ptr @read_cam_control, ptr @write_cam_control, ptr null, ptr null, ptr @slot_reset, ptr @slot_shutdown, ptr @slot_ts_enable, ptr @poll_slot_status, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 12, i64 13]
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"cxd_cfgtmpl\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 314, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 329, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 339, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"en_xo2_templ\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 285, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 239, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 253, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 263, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"en_templ\00", align 1
@___asan_gen_.54 = private constant [44 x i8] c"../drivers/media/pci/ddbridge/ddbridge-ci.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 152, i32 30 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @ci_cxd2099_attach._entry, ptr @ci_cxd2099_attach._entry_ptr, ptr @cxd_cfgtmpl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @en_xo2_templ, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @en_templ], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd_cfgtmpl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_cxd2099_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @en_xo2_templ to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @en_templ to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddb_ci_attach(ptr noundef %port, i32 noundef %bitrate) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i21.i = alloca %struct.i2c_msg, align 4
  %msg.i.i22.i = alloca [2 x i8], align 1
  %msg.i.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca [2 x i8], align 1
  %cxd_cfg.i = alloca %struct.cxd2099_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 12, label %entry.sw.bb1_crit_edge
    i32 13, label %entry.sw.bb1_crit_edge29
    i32 5, label %sw.bb2
  ]

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cxd_cfg.i) #6
  %3 = call ptr @memcpy(ptr %cxd_cfg.i, ptr @cxd_cfgtmpl, i32 12)
  %4 = ptrtoint ptr %cxd_cfg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bitrate, ptr %cxd_cfg.i, align 4
  %en.i = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 13
  %en2.i = getelementptr inbounds %struct.cxd2099_cfg, ptr %cxd_cfg.i, i32 0, i32 4
  %5 = ptrtoint ptr %en2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %en.i, ptr %en2.i, align 4
  %i2c.i = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 5
  %6 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c.i, align 4
  %adap.i = getelementptr inbounds %struct.ddb_i2c, ptr %7, i32 0, i32 4
  %call.i = call ptr @dvb_module_probe(ptr noundef nonnull @.str, ptr noundef null, ptr noundef %adap.i, i8 noundef zeroext 64, ptr noundef nonnull %cxd_cfg.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %ci_cxd2099_attach.exit, label %ci_cxd2099_attach.exit.thread

ci_cxd2099_attach.exit.thread:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client.i = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 15, i32 0, i32 3
  %8 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %i2c_client.i, align 4
  %en_freedata.i = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 14
  %9 = ptrtoint ptr %en_freedata.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %en_freedata.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cxd_cfg.i) #6
  br label %sw.epilog

ci_cxd2099_attach.exit:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %dev4.i = getelementptr inbounds %struct.ddb, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cxd_cfg.i) #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not.i14 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i14, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i16

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i16:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call ptr @memcpy(ptr %call7.i.i.i, ptr @en_xo2_templ, i32 52)
  %data.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %data.i, align 4
  %en3.i = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 13
  %17 = ptrtoint ptr %en3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %en3.i, align 8
  %en_freedata.i15 = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 14
  %18 = ptrtoint ptr %en_freedata.i15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %en_freedata.i15, align 4
  %port4.i = getelementptr inbounds %struct.ddb_ci, ptr %call7.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %port4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %port, ptr %port4.i, align 4
  %nr.i = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 1
  %20 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i, align 4
  %sub.i = add i32 %21, -2
  %nr5.i = getelementptr inbounds %struct.ddb_ci, ptr %call7.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %nr5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i, ptr %nr5.i, align 8
  %creg.i = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 18
  %i2c1.i.i = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 5
  %23 = ptrtoint ptr %i2c1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c1.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.ddb_i2c, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 12
  %27 = ptrtoint ptr %creg.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 16, ptr %creg.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %28 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %msg.i.i.i, align 1
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 16, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i) #6
  %31 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %conv.i.i.i.i = select i1 %cmp.i.i, i16 18, i16 19
  %33 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i, ptr %buf.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %adap.i.i, ptr noundef nonnull %msg.i.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %36 = ptrtoint ptr %port4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port4.i, align 4
  %i2c1.i24.i = getelementptr inbounds %struct.ddb_port, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %i2c1.i24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c1.i24.i, align 4
  %adap.i25.i = getelementptr inbounds %struct.ddb_i2c, ptr %39, i32 0, i32 4
  %type.i26.i = getelementptr inbounds %struct.ddb_port, ptr %37, i32 0, i32 10
  %40 = ptrtoint ptr %type.i26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %41)
  %cmp.i27.i = icmp eq i32 %41, 12
  %creg.i28.i = getelementptr inbounds %struct.ddb_port, ptr %37, i32 0, i32 18
  %42 = ptrtoint ptr %creg.i28.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %creg.i28.i, align 8
  %or.i.i = or i8 %43, 8
  store i8 %or.i.i, ptr %creg.i28.i, align 8
  %44 = ptrtoint ptr %port4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port4.i, align 4
  %creg11.i29.i = getelementptr inbounds %struct.ddb_port, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %creg11.i29.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %creg11.i29.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i22.i) #6
  %48 = getelementptr inbounds [2 x i8], ptr %msg.i.i22.i, i32 0, i32 1
  %49 = ptrtoint ptr %msg.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %msg.i.i22.i, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %47, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i21.i) #6
  %51 = getelementptr inbounds i8, ptr %msg.i.i.i21.i, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 196607, ptr %51, align 4
  %conv.i.i.i30.i = select i1 %cmp.i27.i, i16 18, i16 19
  %53 = ptrtoint ptr %msg.i.i.i21.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.i.i30.i, ptr %msg.i.i.i21.i, align 4
  %flags.i.i.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i21.i, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i.i.i31.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i.i.i31.i, align 2
  %buf.i.i.i32.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i21.i, i32 0, i32 3
  %55 = ptrtoint ptr %buf.i.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i22.i, ptr %buf.i.i.i32.i, align 4
  %call.i.i.i33.i = call i32 @i2c_transfer(ptr noundef %adap.i25.i, ptr noundef nonnull %msg.i.i.i21.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i21.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i22.i) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not.i18 = icmp eq ptr %call7.i.i.i17, null
  br i1 %tobool.not.i18, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i26

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i26:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %57 = call ptr @memcpy(ptr %call7.i.i.i17, ptr @en_templ, i32 52)
  %data.i19 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i.i17, i32 0, i32 11
  %58 = ptrtoint ptr %data.i19 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i.i17, ptr %data.i19, align 4
  %en3.i20 = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 13
  %59 = ptrtoint ptr %en3.i20 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i17, ptr %en3.i20, align 8
  %en_freedata.i21 = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 14
  %60 = ptrtoint ptr %en_freedata.i21 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %en_freedata.i21, align 4
  %port4.i22 = getelementptr inbounds %struct.ddb_ci, ptr %call7.i.i.i17, i32 0, i32 1
  %61 = ptrtoint ptr %port4.i22 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %port, ptr %port4.i22, align 4
  %nr.i23 = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 1
  %62 = ptrtoint ptr %nr.i23 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr.i23, align 4
  %sub.i24 = add i32 %63, -2
  %nr5.i25 = getelementptr inbounds %struct.ddb_ci, ptr %call7.i.i.i17, i32 0, i32 2
  %64 = ptrtoint ptr %nr5.i25 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub.i24, ptr %nr5.i25, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i26, %sw.bb2.sw.epilog_crit_edge, %if.end.i16, %sw.bb1.sw.epilog_crit_edge, %ci_cxd2099_attach.exit.thread
  %en = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 13
  %65 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %en, align 8
  %tobool3.not = icmp eq ptr %66, null
  br i1 %tobool3.not, label %sw.epilog.cleanup_crit_edge, label %if.end5

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %dvb = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 15
  %67 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dvb, align 8
  %call7 = call i32 @dvb_ca_en50221_init(ptr noundef %68, ptr noundef nonnull %66, i32 noundef 0, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %sw.epilog.cleanup_crit_edge, %ci_cxd2099_attach.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -19, %ci_cxd2099_attach.exit ], [ -19, %entry.cleanup_crit_edge ], [ -19, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ddb_ci_detach(ptr nocapture noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 15, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dvb_unregister_device(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %en = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 13
  %2 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %en, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.if.end19_crit_edge, label %if.then5

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then5:                                         ; preds = %if.end
  tail call void @dvb_ca_en50221_release(ptr noundef nonnull %3) #6
  %i2c_client = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client, align 4
  tail call void @dvb_module_release(ptr noundef %5) #6
  %6 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %i2c_client, align 4
  %en_freedata = getelementptr inbounds %struct.ddb_port, ptr %port, i32 0, i32 14
  %7 = ptrtoint ptr %en_freedata to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %en_freedata, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool14.not = icmp eq i8 %8, 0
  br i1 %tobool14.not, label %if.then5.if.end17_crit_edge, label %if.then15

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %en, align 8
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %12) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then5.if.end17_crit_edge
  %13 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %en, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_attribute_mem_xo2(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address) #0 align 64 {
entry:
  %msg.i.i = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %i2c1 = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c1, align 4
  %adap = getelementptr inbounds %struct.ddb_i2c, ptr %5, i32 0, i32 4
  %type = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp = icmp eq i32 %7, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val, align 1, !annotation !36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %9 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %conv38 = lshr i32 %address, 8
  %10 = trunc i32 %conv38 to i8
  %conv1.i.i = or i8 %10, -128
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1.i.i, ptr %msg.i.i, align 1
  %conv3.i.i = trunc i32 %address to i8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i.i, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %13 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 16)
  %conv5.i.i = select i1 %cmp, i16 18, i16 19
  %15 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %13, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %buf.i.i, align 4
  %arrayinit.element7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %19 = ptrtoint ptr %arrayinit.element7.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv5.i.i, ptr %arrayinit.element7.i.i, align 4
  %flags10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags10.i.i, align 2
  %len11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %21 = ptrtoint ptr %len11.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %len11.i.i, align 4
  %buf13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf13.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %val, ptr %buf13.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %adap, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.i.not = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  br i1 %cmp.i.i.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1
  %conv4 = zext i8 %24 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond5 = phi i32 [ %conv4, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %cond5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_attribute_mem_xo2(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address, i8 noundef zeroext %value) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %i2c1 = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c1, align 4
  %adap = getelementptr inbounds %struct.ddb_i2c, ptr %5, i32 0, i32 4
  %type = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp = icmp eq i32 %7, 12
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 2
  %conv35 = lshr i32 %address, 8
  %10 = trunc i32 %conv35 to i8
  %conv1.i = or i8 %10, -128
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1.i, ptr %msg.i, align 1
  %conv3.i = trunc i32 %address to i8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i, ptr %8, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %value, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262143, ptr %14, align 4
  %conv.i.i = select i1 %cmp, i16 18, i16 19
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %adap, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp ne i32 %call.i.i, 1
  %cond.i.i = sext i1 %cmp.i.i to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg.i) #6
  ret i32 %cond.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_cam_control_xo2(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address) #0 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %i2c1 = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c1, align 4
  %adap = getelementptr inbounds %struct.ddb_i2c, ptr %5, i32 0, i32 4
  %type = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp = icmp eq i32 %7, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val, align 1, !annotation !36
  %9 = and i8 %address, 3
  %10 = or i8 %9, 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %11 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %12 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  %conv.i.i = select i1 %cmp, i16 18, i16 19
  %14 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i, align 2
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %12, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags4.i.i, align 2
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len5.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val, ptr %buf7.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %adap, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.i.not = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  br i1 %cmp.i.i.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val, align 1
  %conv5 = zext i8 %23 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond6 = phi i32 [ %conv5, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %cond6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_cam_control_xo2(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address, i8 noundef zeroext %value) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %i2c1 = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c1, align 4
  %adap = getelementptr inbounds %struct.ddb_i2c, ptr %5, i32 0, i32 4
  %type = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp = icmp eq i32 %7, 12
  %8 = and i8 %address, 3
  %9 = or i8 %8, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #6
  %10 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %msg.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %value, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196607, ptr %13, align 4
  %conv.i.i = select i1 %cmp, i16 18, i16 19
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %adap, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp ne i32 %call.i.i, 1
  %cond.i.i = sext i1 %cmp.i.i to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #6
  ret i32 %cond.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_reset_xo2(ptr nocapture noundef readonly %ca, i32 noundef %slot) #0 align 64 {
entry:
  %msg.i.i.i58 = alloca %struct.i2c_msg, align 4
  %msg.i.i59 = alloca [2 x i8], align 1
  %msg.i.i.i44 = alloca %struct.i2c_msg, align 4
  %msg.i.i45 = alloca [2 x i8], align 1
  %msg.i.i.i29 = alloca %struct.i2c_msg, align 4
  %msg.i.i30 = alloca [2 x i8], align 1
  %msg.i.i.i14 = alloca %struct.i2c_msg, align 4
  %msg.i.i15 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slot_reset_xo2.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slot_reset_xo2, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev3 = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slot_reset_xo2.__UNIQUE_ID_ddebug385, ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port.i = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %i2c1.i = getelementptr inbounds %struct.ddb_port, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c1.i, align 4
  %adap.i = getelementptr inbounds %struct.ddb_i2c, ptr %11, i32 0, i32 4
  %type.i = getelementptr inbounds %struct.ddb_port, ptr %9, i32 0, i32 10
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %cmp.i = icmp eq i32 %13, 12
  %creg.i = getelementptr inbounds %struct.ddb_port, ptr %9, i32 0, i32 18
  %14 = ptrtoint ptr %creg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %creg.i, align 8
  %or.i = or i8 %15, 1
  store i8 %or.i, ptr %creg.i, align 8
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port.i, align 4
  %creg11.i = getelementptr inbounds %struct.ddb_port, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %creg11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %creg11.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %20 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %msg.i.i, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %19, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %23 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 196607, ptr %23, align 4
  %conv.i.i.i = select i1 %cmp.i, i16 18, i16 19
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %adap.i, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i, align 4
  %i2c1.i17 = getelementptr inbounds %struct.ddb_port, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %i2c1.i17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c1.i17, align 4
  %adap.i18 = getelementptr inbounds %struct.ddb_i2c, ptr %31, i32 0, i32 4
  %type.i19 = getelementptr inbounds %struct.ddb_port, ptr %29, i32 0, i32 10
  %32 = ptrtoint ptr %type.i19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %33)
  %cmp.i20 = icmp eq i32 %33, 12
  %creg.i21 = getelementptr inbounds %struct.ddb_port, ptr %29, i32 0, i32 18
  %34 = ptrtoint ptr %creg.i21 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %creg.i21, align 8
  %or.i23 = or i8 %35, 4
  store i8 %or.i23, ptr %creg.i21, align 8
  %36 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port.i, align 4
  %creg11.i24 = getelementptr inbounds %struct.ddb_port, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %creg11.i24 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %creg11.i24, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i15) #6
  %40 = getelementptr inbounds [2 x i8], ptr %msg.i.i15, i32 0, i32 1
  %41 = ptrtoint ptr %msg.i.i15 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %msg.i.i15, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i14) #6
  %43 = getelementptr inbounds i8, ptr %msg.i.i.i14, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %conv.i.i.i25 = select i1 %cmp.i20, i16 18, i16 19
  %45 = ptrtoint ptr %msg.i.i.i14 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i.i.i25, ptr %msg.i.i.i14, align 4
  %flags.i.i.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i14, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i.i.i26 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i.i.i26, align 2
  %buf.i.i.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i14, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i15, ptr %buf.i.i.i27, align 4
  %call.i.i.i28 = call i32 @i2c_transfer(ptr noundef %adap.i18, ptr noundef nonnull %msg.i.i.i14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i14) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i15) #6
  call void @msleep(i32 noundef 20) #6
  %48 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port.i, align 4
  %i2c1.i32 = getelementptr inbounds %struct.ddb_port, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %i2c1.i32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c1.i32, align 4
  %adap.i33 = getelementptr inbounds %struct.ddb_i2c, ptr %51, i32 0, i32 4
  %type.i34 = getelementptr inbounds %struct.ddb_port, ptr %49, i32 0, i32 10
  %52 = ptrtoint ptr %type.i34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %53)
  %cmp.i35 = icmp eq i32 %53, 12
  %creg.i36 = getelementptr inbounds %struct.ddb_port, ptr %49, i32 0, i32 18
  %54 = ptrtoint ptr %creg.i36 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %creg.i36, align 8
  %or.i38 = or i8 %55, 2
  store i8 %or.i38, ptr %creg.i36, align 8
  %56 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port.i, align 4
  %creg11.i39 = getelementptr inbounds %struct.ddb_port, ptr %57, i32 0, i32 18
  %58 = ptrtoint ptr %creg11.i39 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %creg11.i39, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i30) #6
  %60 = getelementptr inbounds [2 x i8], ptr %msg.i.i30, i32 0, i32 1
  %61 = ptrtoint ptr %msg.i.i30 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %msg.i.i30, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %59, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i29) #6
  %63 = getelementptr inbounds i8, ptr %msg.i.i.i29, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196607, ptr %63, align 4
  %conv.i.i.i40 = select i1 %cmp.i35, i16 18, i16 19
  %65 = ptrtoint ptr %msg.i.i.i29 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i.i40, ptr %msg.i.i.i29, align 4
  %flags.i.i.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i29, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i.i.i41 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i.i.i41, align 2
  %buf.i.i.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i29, i32 0, i32 3
  %67 = ptrtoint ptr %buf.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i30, ptr %buf.i.i.i42, align 4
  %call.i.i.i43 = call i32 @i2c_transfer(ptr noundef %adap.i33, ptr noundef nonnull %msg.i.i.i29, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i29) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i30) #6
  %68 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port.i, align 4
  %i2c1.i47 = getelementptr inbounds %struct.ddb_port, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %i2c1.i47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c1.i47, align 4
  %adap.i48 = getelementptr inbounds %struct.ddb_i2c, ptr %71, i32 0, i32 4
  %type.i49 = getelementptr inbounds %struct.ddb_port, ptr %69, i32 0, i32 10
  %72 = ptrtoint ptr %type.i49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %73)
  %cmp.i50 = icmp eq i32 %73, 12
  %creg.i51 = getelementptr inbounds %struct.ddb_port, ptr %69, i32 0, i32 18
  %74 = ptrtoint ptr %creg.i51 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %creg.i51, align 8
  %and.i52 = and i8 %75, -5
  store i8 %and.i52, ptr %creg.i51, align 8
  %76 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %port.i, align 4
  %creg11.i53 = getelementptr inbounds %struct.ddb_port, ptr %77, i32 0, i32 18
  %78 = ptrtoint ptr %creg11.i53 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %creg11.i53, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i45) #6
  %80 = getelementptr inbounds [2 x i8], ptr %msg.i.i45, i32 0, i32 1
  %81 = ptrtoint ptr %msg.i.i45 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %msg.i.i45, align 1
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %79, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i44) #6
  %83 = getelementptr inbounds i8, ptr %msg.i.i.i44, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 196607, ptr %83, align 4
  %conv.i.i.i54 = select i1 %cmp.i50, i16 18, i16 19
  %85 = ptrtoint ptr %msg.i.i.i44 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i.i.i54, ptr %msg.i.i.i44, align 4
  %flags.i.i.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i44, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i.i.i55 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i.i.i55, align 2
  %buf.i.i.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i44, i32 0, i32 3
  %87 = ptrtoint ptr %buf.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %msg.i.i45, ptr %buf.i.i.i56, align 4
  %call.i.i.i57 = call i32 @i2c_transfer(ptr noundef %adap.i48, ptr noundef nonnull %msg.i.i.i44, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i44) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i45) #6
  %88 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %port.i, align 4
  %i2c1.i61 = getelementptr inbounds %struct.ddb_port, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %i2c1.i61 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c1.i61, align 4
  %adap.i62 = getelementptr inbounds %struct.ddb_i2c, ptr %91, i32 0, i32 4
  %type.i63 = getelementptr inbounds %struct.ddb_port, ptr %89, i32 0, i32 10
  %92 = ptrtoint ptr %type.i63 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %type.i63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %93)
  %cmp.i64 = icmp eq i32 %93, 12
  %creg.i65 = getelementptr inbounds %struct.ddb_port, ptr %89, i32 0, i32 18
  %94 = ptrtoint ptr %creg.i65 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %creg.i65, align 8
  %or.i67 = or i8 %95, 24
  store i8 %or.i67, ptr %creg.i65, align 8
  %96 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %port.i, align 4
  %creg11.i68 = getelementptr inbounds %struct.ddb_port, ptr %97, i32 0, i32 18
  %98 = ptrtoint ptr %creg11.i68 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %creg11.i68, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i59) #6
  %100 = getelementptr inbounds [2 x i8], ptr %msg.i.i59, i32 0, i32 1
  %101 = ptrtoint ptr %msg.i.i59 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 2, ptr %msg.i.i59, align 1
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %99, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i58) #6
  %103 = getelementptr inbounds i8, ptr %msg.i.i.i58, i32 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 196607, ptr %103, align 4
  %conv.i.i.i69 = select i1 %cmp.i64, i16 18, i16 19
  %105 = ptrtoint ptr %msg.i.i.i58 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i.i.i69, ptr %msg.i.i.i58, align 4
  %flags.i.i.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i58, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i.i.i70 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i.i.i70, align 2
  %buf.i.i.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i58, i32 0, i32 3
  %107 = ptrtoint ptr %buf.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %msg.i.i59, ptr %buf.i.i.i71, align 4
  %call.i.i.i72 = call i32 @i2c_transfer(ptr noundef %adap.i62, ptr noundef nonnull %msg.i.i.i58, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i58) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i59) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_shutdown_xo2(ptr nocapture noundef readonly %ca, i32 noundef %slot) #0 align 64 {
entry:
  %msg.i.i.i8 = alloca %struct.i2c_msg, align 4
  %msg.i.i9 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slot_shutdown_xo2.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slot_shutdown_xo2, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev3 = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slot_shutdown_xo2.__UNIQUE_ID_ddebug386, ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port.i = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %i2c1.i = getelementptr inbounds %struct.ddb_port, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c1.i, align 4
  %adap.i = getelementptr inbounds %struct.ddb_i2c, ptr %11, i32 0, i32 4
  %type.i = getelementptr inbounds %struct.ddb_port, ptr %9, i32 0, i32 10
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %cmp.i = icmp eq i32 %13, 12
  %creg.i = getelementptr inbounds %struct.ddb_port, ptr %9, i32 0, i32 18
  %14 = ptrtoint ptr %creg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %creg.i, align 8
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port.i, align 4
  %creg11.i = getelementptr inbounds %struct.ddb_port, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %creg11.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %creg11.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %19 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %msg.i.i, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %22 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196607, ptr %22, align 4
  %conv.i.i.i = select i1 %cmp.i, i16 18, i16 19
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %adap.i, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port.i, align 4
  %i2c1.i11 = getelementptr inbounds %struct.ddb_port, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %i2c1.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c1.i11, align 4
  %adap.i12 = getelementptr inbounds %struct.ddb_i2c, ptr %30, i32 0, i32 4
  %type.i13 = getelementptr inbounds %struct.ddb_port, ptr %28, i32 0, i32 10
  %31 = ptrtoint ptr %type.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type.i13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %32)
  %cmp.i14 = icmp eq i32 %32, 12
  %creg.i15 = getelementptr inbounds %struct.ddb_port, ptr %28, i32 0, i32 18
  %33 = ptrtoint ptr %creg.i15 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %creg.i15, align 8
  %or.i = or i8 %34, 8
  store i8 %or.i, ptr %creg.i15, align 8
  %35 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port.i, align 4
  %creg11.i16 = getelementptr inbounds %struct.ddb_port, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %creg11.i16 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %creg11.i16, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i9) #6
  %39 = getelementptr inbounds [2 x i8], ptr %msg.i.i9, i32 0, i32 1
  %40 = ptrtoint ptr %msg.i.i9 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %msg.i.i9, align 1
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %38, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i8) #6
  %42 = getelementptr inbounds i8, ptr %msg.i.i.i8, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 196607, ptr %42, align 4
  %conv.i.i.i17 = select i1 %cmp.i14, i16 18, i16 19
  %44 = ptrtoint ptr %msg.i.i.i8 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i.i.i17, ptr %msg.i.i.i8, align 4
  %flags.i.i.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i8, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i.i.i18 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i.i.i18, align 2
  %buf.i.i.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i8, i32 0, i32 3
  %46 = ptrtoint ptr %buf.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i9, ptr %buf.i.i.i19, align 4
  %call.i.i.i20 = call i32 @i2c_transfer(ptr noundef %adap.i12, ptr noundef nonnull %msg.i.i.i8, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i8) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_ts_enable_xo2(ptr nocapture noundef readonly %ca, i32 noundef %slot) #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slot_ts_enable_xo2.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slot_ts_enable_xo2, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev3 = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slot_ts_enable_xo2.__UNIQUE_ID_ddebug387, ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port.i = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %i2c1.i = getelementptr inbounds %struct.ddb_port, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c1.i, align 4
  %adap.i = getelementptr inbounds %struct.ddb_i2c, ptr %11, i32 0, i32 4
  %type.i = getelementptr inbounds %struct.ddb_port, ptr %9, i32 0, i32 10
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %cmp.i = icmp eq i32 %13, 12
  %creg.i = getelementptr inbounds %struct.ddb_port, ptr %9, i32 0, i32 18
  %14 = ptrtoint ptr %creg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %creg.i, align 8
  %and.i = and i8 %15, -17
  store i8 %and.i, ptr %creg.i, align 8
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port.i, align 4
  %creg11.i = getelementptr inbounds %struct.ddb_port, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %creg11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %creg11.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %20 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %msg.i.i, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %19, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %23 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 196607, ptr %23, align 4
  %conv.i.i.i = select i1 %cmp.i, i16 18, i16 19
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %adap.i, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poll_slot_status_xo2(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %open) #0 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %i2c1 = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c1, align 4
  %adap = getelementptr inbounds %struct.ddb_i2c, ptr %5, i32 0, i32 4
  %type = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp = icmp eq i32 %7, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %9 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %10 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %conv.i.i = select i1 %cmp, i16 18, i16 19
  %12 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %10, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags4.i.i, align 2
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %18 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len5.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %val, ptr %buf7.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %adap, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  %22 = lshr i8 %21, 1
  %.lobit = and i8 %22, 1
  %23 = shl i8 %21, 2
  %24 = and i8 %23, 4
  %25 = or i8 %24, %.lobit
  %26 = zext i8 %25 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %address)
  %cmp = icmp sgt i32 %address, 2048
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = lshr i32 %address, 1
  %and = and i32 %0, 2047
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %or = or i32 %address, 1073807360
  %nr = getelementptr inbounds %struct.ddb_ci, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  %mul = shl i32 %8, 5
  %add1 = add i32 %mul, 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %6, i32 0, i32 7
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #6, !srcloc !39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %count.0.i = phi i32 [ 10, %if.end ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr, align 4
  %mul.i = shl i32 %18, 5
  %add.i = add i32 %mul.i, 1024
  %regs.i.i = getelementptr inbounds %struct.ddb, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %add.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %.mask.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.wait_ci_ready.exit_crit_edge

do.body.i.wait_ci_ready.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_ci_ready.exit

if.end.i:                                         ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %dec.i = add nsw i32 %count.0.i, -1
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.end.i.wait_ci_ready.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.wait_ci_ready.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_ci_ready.exit

wait_ci_ready.exit:                               ; preds = %if.end.i.wait_ci_ready.exit_crit_edge, %do.body.i.wait_ci_ready.exit_crit_edge
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr, align 4
  %mul5 = shl i32 %27, 11
  %add6 = add i32 %mul5, 12288
  %add7 = or i32 %add6, %and
  %regs.i18 = getelementptr inbounds %struct.ddb, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %regs.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i18, align 8
  %add.ptr.i19 = getelementptr i8, ptr %29, i32 %add7
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #6, !srcloc !40
  %31 = lshr i32 %30, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %wait_ci_ready.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %wait_ci_ready.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %conv = zext i8 %value to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, %address
  %or1 = or i32 %or, -2147483648
  %nr = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %mul = shl i32 %7, 5
  %add2 = add i32 %mul, 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or1) #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %count.0.i = phi i32 [ 10, %entry ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %mul.i = shl i32 %17, 5
  %add.i = add i32 %mul.i, 1024
  %regs.i.i = getelementptr inbounds %struct.ddb, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %add.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %.mask.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.wait_ci_ready.exit_crit_edge

do.body.i.wait_ci_ready.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_ci_ready.exit

if.end.i:                                         ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %dec.i = add nsw i32 %count.0.i, -1
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.end.i.wait_ci_ready.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.wait_ci_ready.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_ci_ready.exit

wait_ci_ready.exit:                               ; preds = %if.end.i.wait_ci_ready.exit_crit_edge, %do.body.i.wait_ci_ready.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %conv = zext i8 %address to i32
  %or = or i32 %conv, 1073741824
  %nr = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %mul = shl i32 %7, 5
  %add1 = add i32 %mul, 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 100, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %mul5 = shl i32 %17, 5
  %add7 = add i32 %mul5, 1036
  %regs.i18 = getelementptr inbounds %struct.ddb, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %regs.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i18, align 8
  %add.ptr.i19 = getelementptr i8, ptr %19, i32 %add7
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #6, !srcloc !40
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool.not = icmp sgt i32 %21, -1
  br i1 %tobool.not, label %if.end, label %do.end

if.end:                                           ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %dec = add nsw i32 %count.0, -1
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %and11 = and i32 %21, 255
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %and11, %do.end ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %conv = zext i8 %value to i32
  %shl = shl nuw nsw i32 %conv, 16
  %conv1 = zext i8 %address to i32
  %or = or i32 %shl, %conv1
  %or2 = or i32 %or, -2147483648
  %nr = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %mul = shl i32 %7, 5
  %add3 = add i32 %mul, 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or2) #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %count.0.i = phi i32 [ 10, %entry ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %mul.i = shl i32 %17, 5
  %add.i = add i32 %mul.i, 1024
  %regs.i.i = getelementptr inbounds %struct.ddb, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %add.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %.mask.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.wait_ci_ready.exit_crit_edge

do.body.i.wait_ci_ready.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_ci_ready.exit

if.end.i:                                         ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %dec.i = add nsw i32 %count.0.i, -1
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.end.i.wait_ci_ready.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.wait_ci_ready.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_ci_ready.exit

wait_ci_ready.exit:                               ; preds = %if.end.i.wait_ci_ready.exit_crit_edge, %do.body.i.wait_ci_ready.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_reset(ptr nocapture noundef readonly %ca, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %nr = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %mul = shl i32 %7, 5
  %add = add i32 %mul, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #6, !srcloc !39
  tail call void @msleep(i32 noundef 100) #6
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr, align 4
  %mul5 = shl i32 %15, 5
  %add6 = add i32 %mul5, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %regs.i27 = getelementptr inbounds %struct.ddb, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %regs.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i27, align 8
  %add.ptr.i28 = getelementptr i8, ptr %17, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 50331648) #6, !srcloc !39
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr, align 4
  %mul11 = shl i32 %23, 5
  %add12 = add i32 %mul11, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %regs.i29 = getelementptr inbounds %struct.ddb, ptr %21, i32 0, i32 7
  %24 = ptrtoint ptr %regs.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i29, align 8
  %add.ptr.i30 = getelementptr i8, ptr %25, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 117440512) #6, !srcloc !39
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 25, i32 noundef 2) #6
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr, align 4
  %mul17 = shl i32 %31, 5
  %add18 = add i32 %mul17, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %regs.i31 = getelementptr inbounds %struct.ddb, ptr %29, i32 0, i32 7
  %32 = ptrtoint ptr %regs.i31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i31, align 8
  %add.ptr.i32 = getelementptr i8, ptr %33, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 100663296) #6, !srcloc !39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_shutdown(ptr nocapture noundef readonly %ca, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %nr = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %mul = shl i32 %7, 5
  %add = add i32 %mul, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !39
  tail call void @msleep(i32 noundef 300) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_ts_enable(ptr nocapture noundef readonly %ca, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %nr = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %mul = shl i32 %7, 5
  %add = add i32 %mul, 1024
  %regs.i = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = or i32 %10, 268435456
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %mul5 = shl i32 %17, 5
  %add6 = add i32 %mul5, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %regs.i11 = getelementptr inbounds %struct.ddb, ptr %14, i32 0, i32 7
  %18 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i11, align 8
  %add.ptr.i12 = getelementptr i8, ptr %19, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %15) #6, !srcloc !39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poll_slot_status(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %open) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %nr = getelementptr inbounds %struct.ddb_ci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %mul = shl i32 %7, 5
  %add = add i32 %mul, 1024
  %regs.i = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %and = lshr i32 %11, 17
  %and.lobit = and i32 %and, 1
  %and2 = lshr i32 %11, 14
  %12 = and i32 %and2, 4
  %13 = or i32 %12, %and.lobit
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ddbridge/ddbridge-ci.c", i32 329, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/ddbridge/ddbridge-ci.c", i32 339, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ci_cxd2099_attach._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ci_cxd2099_attach._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @cxd_cfgtmpl, !11, !"cxd_cfgtmpl", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ddbridge/ddbridge-ci.c", i32 314, i32 33}
!12 = !{ptr @en_xo2_templ, !13, !"en_xo2_templ", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/ddbridge/ddbridge-ci.c", i32 285, i32 30}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ddbridge/ddbridge-ci.c", i32 239, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @slot_reset_xo2.__UNIQUE_ID_ddebug385, !15, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/ddbridge/ddbridge-ci.c", i32 253, i32 2}
!21 = !{ptr @slot_shutdown_xo2.__UNIQUE_ID_ddebug386, !20, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/ddbridge/ddbridge-ci.c", i32 263, i32 2}
!24 = !{ptr @slot_ts_enable_xo2.__UNIQUE_ID_ddebug387, !23, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!25 = !{ptr @en_templ, !26, !"en_templ", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/ddbridge/ddbridge-ci.c", i32 152, i32 30}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i64 2148739707, i64 2148739712, i64 2148739725, i64 2148739769, i64 2148739803, i64 2148739824}
!38 = !{i64 2158293266}
!39 = !{i64 4911197}
!40 = !{i64 4911615}
!41 = !{i64 2158292885}
