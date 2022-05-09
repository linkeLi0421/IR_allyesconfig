; ModuleID = '/llk/IR_all_yes/drivers/media/pci/smipcie/smipcie-ir.c_pt.bc'
source_filename = "../drivers/media/pci/smipcie/smipcie-ir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.smi_dev = type { i32, ptr, ptr, ptr, [2 x %struct.smi_port], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], %struct.smi_rc }
%struct.smi_port = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x ptr], i32, i32, i32, %struct.tasklet_struct, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_adapter, %struct.dvb_demux, %struct.dvb_net, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.126, i32 }
%union.anon.126 = type { ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
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
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.smi_rc = type { ptr, ptr, [64 x i8], [64 x i8], [256 x i8], i32 }
%struct.ir_raw_event = type { %union.anon.143, i8, i8 }
%union.anon.143 = type { i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.smi_cfg_info = type { i32, ptr, i32, i32, i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.125, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.125 = type { ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IR (%s)\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-%s/ir0\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMI_PCIe\00", [23 x i8] zeroinitializer }, align 32
@smi_ir_decode.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smipcie\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smi_ir_decode\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/smipcie/smipcie-ir.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ircontrol: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@smi_ir_decode.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ircount %d\0A\00", [20 x i8] zeroinitializer }, align 32
@smi_ir_decode.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IRData 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@smi_ir_decode.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"high idle\0A\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 143, i32 53 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 145, i32 51 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 149, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 68, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 73, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 80, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [42 x i8] c"../drivers/media/pci/smipcie/smipcie-ir.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 93, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smi_ir_irq(ptr nocapture noundef %ir, i32 noundef %int_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %int_status, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 518
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 524288) #5, !srcloc !31
  %4 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ir, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %lmmio.i4 = getelementptr inbounds %struct.smi_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %lmmio.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio.i4, align 4
  %add.ptr.i5 = getelementptr i32, ptr %7, i32 515
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 524288) #5, !srcloc !31
  tail call fastcc void @smi_ir_decode(ptr noundef %ir)
  %8 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ir, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %lmmio.i6 = getelementptr inbounds %struct.smi_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %lmmio.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio.i6, align 4
  %add.ptr.i7 = getelementptr i32, ptr %11, i32 519
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 524288) #5, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %handled.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %handled.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smi_ir_decode(ptr nocapture noundef %ir) unnamed_addr #0 align 64 {
entry:
  %rawir.i = alloca %struct.ir_raw_event, align 8
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 4
  %rc_dev2 = getelementptr inbounds %struct.smi_rc, ptr %ir, i32 0, i32 1
  %2 = ptrtoint ptr %rc_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc_dev2, align 4
  %lmmio = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 576
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !34
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_ir_decode.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_ir_decode, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !36

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_ir_decode.__UNIQUE_ID_ddebug383, ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.end.if.end99_crit_edge, label %if.then10

do.end.if.end99_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then10:                                        ; preds = %do.end
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr14 = getelementptr i32, ptr %9, i32 578
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !34
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_ir_decode.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_ir_decode, %if.then30)) #5
          to label %do.end35 [label %if.then30], !srcloc !36

if.then30:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_ir_decode.__UNIQUE_ID_ddebug384, ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %11) #5
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %if.then10
  %div167 = lshr i32 %10, 26
  %12 = and i32 %10, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool39.not = icmp ne i32 %12, 0
  %add = zext i1 %tobool39.not to i32
  %spec.select = add nuw nsw i32 %div167, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp181.not = icmp eq i32 %spec.select, 0
  br i1 %cmp181.not, label %do.end35.for.end_crit_edge, label %do.end35.for.body_crit_edge

do.end35.for.body_crit_edge:                      ; preds = %do.end35
  br label %for.body

do.end35.for.end_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %do.end72.for.body_crit_edge, %do.end35.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %do.end72.for.body_crit_edge ], [ 0, %do.end35.for.body_crit_edge ]
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %mul = shl nuw nsw i32 %indvars.iv, 2
  %add51 = add nuw nsw i32 %mul, 3840
  %15 = lshr exact i32 %add51, 2
  %add.ptr52 = getelementptr i32, ptr %14, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #5, !srcloc !34
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_ir_decode.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_ir_decode, %if.then68)) #5
          to label %do.end72 [label %if.then68], !srcloc !36

if.then68:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_ir_decode.__UNIQUE_ID_ddebug385, ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %17) #5
  br label %do.end72

do.end72:                                         ; preds = %if.then68, %for.body
  %conv73 = trunc i32 %17 to i8
  %arrayidx = getelementptr %struct.smi_rc, ptr %ir, i32 0, i32 4, i32 %mul
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv73, ptr %arrayidx, align 1
  %shr77 = lshr i32 %17, 8
  %conv78 = trunc i32 %shr77 to i8
  %add82 = or i32 %mul, 1
  %arrayidx83 = getelementptr %struct.smi_rc, ptr %ir, i32 0, i32 4, i32 %add82
  %19 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv78, ptr %arrayidx83, align 1
  %shr84 = lshr i32 %17, 16
  %conv85 = trunc i32 %shr84 to i8
  %add89 = or i32 %mul, 2
  %arrayidx90 = getelementptr %struct.smi_rc, ptr %ir, i32 0, i32 4, i32 %add89
  %20 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv85, ptr %arrayidx90, align 1
  %shr91 = lshr i32 %17, 24
  %conv92 = trunc i32 %shr91 to i8
  %add96 = or i32 %mul, 3
  %arrayidx97 = getelementptr %struct.smi_rc, ptr %ir, i32 0, i32 4, i32 %add96
  %21 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv92, ptr %arrayidx97, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %spec.select
  br i1 %exitcond.not, label %do.end72.for.end_crit_edge, label %do.end72.for.body_crit_edge

do.end72.for.body_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end72.for.end_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.end72.for.end_crit_edge, %do.end35.for.end_crit_edge
  %irData98 = getelementptr inbounds %struct.smi_rc, ptr %ir, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i) #5
  %22 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %rawir.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %10)
  %cmp21.not.i = icmp ult i32 %10, 16777216
  br i1 %cmp21.not.i, label %for.end.smi_raw_process.exit_crit_edge, label %for.body.lr.ph.i

for.end.smi_raw_process.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %smi_raw_process.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %pulse.i = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i, i32 0, i32 2
  %rx_resolution.i = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 37
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cnt.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %irData98, i32 %cnt.022.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = and i8 %24, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = and i8 %24, -128
  %27 = ptrtoint ptr %pulse.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %pulse.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 127
  %28 = or i8 %bf.clear.i, %26
  %bf.set.i = xor i8 %28, -128
  store i8 %bf.set.i, ptr %pulse.i, align 1
  %and10.i = zext i8 %25 to i32
  %.lobit.i = ashr i8 %24, 7
  %29 = sext i8 %.lobit.i to i32
  %add.i = add nsw i32 %and10.i, %29
  %30 = ptrtoint ptr %rx_resolution.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_resolution.i, align 8
  %mul.i = mul i32 %31, %add.i
  %32 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul.i, ptr %rawir.i, align 8
  %call.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %3, ptr noundef nonnull %rawir.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %cnt.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.smi_raw_process.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.smi_raw_process.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smi_raw_process.exit

smi_raw_process.exit:                             ; preds = %for.inc.i.smi_raw_process.exit_crit_edge, %for.end.smi_raw_process.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i) #5
  br label %if.end99

if.end99:                                         ; preds = %smi_raw_process.exit, %do.end.if.end99_crit_edge
  %and100 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.do.body122_crit_edge, label %if.then102

if.end99.do.body122_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body122

if.then102:                                       ; preds = %if.end99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #5
  %33 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %rawir, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_ir_decode.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_ir_decode, %if.then115)) #5
          to label %do.end119 [label %if.then115], !srcloc !36

if.then115:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_ir_decode.__UNIQUE_ID_ddebug386, ptr noundef %3, ptr noundef nonnull @.str.9) #5
  br label %do.end119

do.end119:                                        ; preds = %if.then115, %if.then102
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %34 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %pulse, align 1
  %35 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 9960, ptr %rawir, align 8
  %call120 = call i32 @ir_raw_event_store_with_filter(ptr noundef %3, ptr noundef nonnull %rawir) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #5
  br label %do.body122

do.body122:                                       ; preds = %do.end119, %if.end99.do.body122_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio, align 4
  %add.ptr128 = getelementptr i32, ptr %37, i32 576
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #5, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %39 = or i32 %38, 67108864
  %40 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio, align 4
  %add.ptr134 = getelementptr i32, ptr %41, i32 576
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %39) #5, !srcloc !31
  call void @ir_raw_event_handle(ptr noundef %3) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smi_ir_start(ptr nocapture noundef readonly %ir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 577
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2013286912) #5, !srcloc !31
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr6 = getelementptr i32, ptr %5, i32 576
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %7 = or i32 %6, -1879048192
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr9 = getelementptr i32, ptr %9, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %7) #5, !srcloc !31
  %10 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ir, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %13, i32 519
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 524288) #5, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smi_ir_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rc_allocate_device(i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ir1 = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 7
  %device_name = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 7, i32 3
  %info = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %name = getelementptr inbounds %struct.smi_cfg_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %device_name, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %3)
  %input_phys = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 7, i32 2
  %pci_dev = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.end.pci_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input_phys, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i)
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 16
  %10 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 130023420, ptr %allowed_protocols, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.2, ptr %driver_name, align 8
  %input_phys8 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %input_phys8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %input_phys, ptr %input_phys8, align 4
  %device_name11 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %device_name11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %device_name, ptr %device_name11, align 8
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %version, align 2
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor, align 4
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %vendor, align 2
  %21 = load ptr, ptr %pci_dev, align 8
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subsystem_device, align 2
  %product = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %product, align 4
  %25 = load ptr, ptr %pci_dev, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev18, ptr %parent, align 8
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %rc_map = getelementptr inbounds %struct.smi_cfg_info, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %rc_map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rc_map, align 4
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 7
  %31 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %map_name, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 34
  %32 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 9960, ptr %timeout, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 37
  %33 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 83, ptr %rx_resolution, align 8
  %rc_dev21 = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %rc_dev21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %rc_dev21, align 4
  %35 = ptrtoint ptr %ir1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %ir1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 3
  %36 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %37, i32 518
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 524288) #5, !srcloc !31
  %call23 = tail call i32 @rc_register_device(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %pci_name.exit.cleanup_crit_edge, label %ir_err

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_err:                                           ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rc_free_device(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %ir_err, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %ir_err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %pci_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smi_ir_exit(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 7
  %rc_dev2 = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %rc_dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc_dev2, align 4
  tail call void @rc_unregister_device(ptr noundef %1) #5
  %2 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %lmmio.i.i = getelementptr inbounds %struct.smi_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 518
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 524288) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %7, i32 576
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %9 = and i32 %8, 2147483647
  %10 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %11, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %9) #5, !srcloc !31
  %12 = ptrtoint ptr %rc_dev2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rc_dev2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/smipcie/smipcie-ir.c", i32 143, i32 53}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/smipcie/smipcie-ir.c", i32 145, i32 51}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/smipcie/smipcie-ir.c", i32 149, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/smipcie/smipcie-ir.c", i32 68, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @smi_ir_decode.__UNIQUE_ID_ddebug383, !7, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/smipcie/smipcie-ir.c", i32 73, i32 3}
!14 = !{ptr @smi_ir_decode.__UNIQUE_ID_ddebug384, !13, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/smipcie/smipcie-ir.c", i32 80, i32 4}
!17 = !{ptr @smi_ir_decode.__UNIQUE_ID_ddebug385, !16, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/smipcie/smipcie-ir.c", i32 93, i32 3}
!20 = !{ptr @smi_ir_decode.__UNIQUE_ID_ddebug386, !19, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2158206721}
!31 = !{i64 6837676}
!32 = !{i64 2158207325}
!33 = !{i64 2158206117}
!34 = !{i64 6838094}
!35 = !{i64 2158210726}
!36 = !{i64 2149001712, i64 2149001717, i64 2149001730, i64 2149001774, i64 2149001808, i64 2149001829}
!37 = !{i64 2158213648}
!38 = !{i64 2158216497}
!39 = !{i64 2158222304}
!40 = !{i64 2158223399}
!41 = !{i64 2158223960}
!42 = !{i64 2158225798}
!43 = !{i64 2158226935}
!44 = !{i64 2158208935}
!45 = !{i64 2158210016}
