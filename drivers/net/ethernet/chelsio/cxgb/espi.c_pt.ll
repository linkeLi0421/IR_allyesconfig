; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/espi.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/espi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adapter = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, ptr, ptr, ptr, %struct.napi_struct, [4 x %struct.port_info], %struct.delayed_work, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, [80 x i8], %struct.spinlock, i32, i32, i32, [72 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.chelsio_pci_params, ptr, [8 x i16], i32, i32, i16, i8, i8, i8 }
%struct.sge_params = type { [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.mc5_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chelsio_pci_params = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.port_info = type { ptr, ptr, ptr, %struct.link_config }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.peespi = type { ptr, %struct.espi_intr_counts, i32, %struct.spinlock }
%struct.espi_intr_counts = type { i32, i32, i32, i32, i32, i32 }

@t1_espi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&espi->lock\00", [20 x i8] zeroinitializer }, align 32
@tricn_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cxgb: %s: ESPI clock not ready\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tricn_init\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb/espi.c\00", [55 x i8] zeroinitializer }, align 32
@tricn_init._entry_ptr = internal global ptr @tricn_init._entry, section ".printk_index", align 4
@tricn_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013cxgb: %s: TRICN write timed out\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tricn_write\00", [20 x i8] zeroinitializer }, align 32
@tricn_write._entry_ptr = internal global ptr @tricn_write._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 279, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 88, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb/espi.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 78, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @tricn_init._entry, ptr @tricn_init._entry_ptr, ptr @tricn_write._entry, ptr @tricn_write._entry_ptr, ptr @t1_espi_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_espi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tricn_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tricn_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_espi_intr_enable(ptr nocapture noundef readonly %espi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %espi, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %5 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %espi, align 4
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 8, i32 9
  %7 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i = icmp eq i8 %8, 1
  br i1 %cmp.i, label %adapter_matches_type.exit, label %entry.adapter_matches_type.exit.thread_crit_edge

entry.adapter_matches_type.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adapter_matches_type.exit.thread

adapter_matches_type.exit:                        ; preds = %entry
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 8, i32 8
  %9 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp4.i.not = icmp eq i16 %10, 1
  br i1 %cmp4.i.not, label %adapter_matches_type.exit._crit_edge, label %adapter_matches_type.exit.adapter_matches_type.exit.thread_crit_edge

adapter_matches_type.exit.adapter_matches_type.exit.thread_crit_edge: ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %adapter_matches_type.exit.thread

adapter_matches_type.exit._crit_edge:             ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %11

adapter_matches_type.exit.thread:                 ; preds = %adapter_matches_type.exit.adapter_matches_type.exit.thread_crit_edge, %entry.adapter_matches_type.exit.thread_crit_edge
  br label %11

11:                                               ; preds = %adapter_matches_type.exit.thread, %adapter_matches_type.exit._crit_edge
  %12 = phi i32 [ 1056964608, %adapter_matches_type.exit.thread ], [ 0, %adapter_matches_type.exit._crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %espi, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 128
  %add.ptr6 = getelementptr i8, ptr %16, i32 2252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %17 = or i32 %4, 65536
  %18 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %espi, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 128
  %add.ptr12 = getelementptr i8, ptr %21, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %17) #6, !srcloc !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_espi_intr_clear(ptr nocapture noundef readonly %espi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %espi, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2292
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %espi, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %add.ptr4 = getelementptr i8, ptr %8, i32 2248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %espi, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 128
  %add.ptr9 = getelementptr i8, ptr %12, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 65536) #6, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_espi_intr_disable(ptr nocapture noundef readonly %espi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %espi, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %espi, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %add.ptr4 = getelementptr i8, ptr %8, i32 2252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %9 = and i32 %4, -65537
  %10 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %espi, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %add.ptr10 = getelementptr i8, ptr %13, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %9) #6, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_espi_intr_handler(ptr nocapture noundef %espi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %espi, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2248
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !23
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intr_cnt = getelementptr inbounds %struct.peespi, ptr %espi, i32 0, i32 1
  %6 = ptrtoint ptr %intr_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr_cnt, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %intr_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rx_drops = getelementptr inbounds %struct.peespi, ptr %espi, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %rx_drops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_drops, align 4
  %inc6 = add i32 %9, 1
  store i32 %inc6, ptr %rx_drops, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %and8 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %tx_drops = getelementptr inbounds %struct.peespi, ptr %espi, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %tx_drops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_drops, align 4
  %inc12 = add i32 %11, 1
  store i32 %inc12, ptr %tx_drops, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %and14 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ovflw = getelementptr inbounds %struct.peespi, ptr %espi, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %rx_ovflw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ovflw, align 4
  %inc18 = add i32 %13, 1
  store i32 %inc18, ptr %rx_ovflw, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %and20 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %parity_err = getelementptr inbounds %struct.peespi, ptr %espi, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %parity_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parity_err, align 4
  %inc24 = add i32 %15, 1
  store i32 %inc24, ptr %parity_err, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %and26 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end39_crit_edge, label %if.then28

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %DIP2_parity_err = getelementptr inbounds %struct.peespi, ptr %espi, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %DIP2_parity_err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DIP2_parity_err, align 4
  %inc30 = add i32 %17, 1
  store i32 %inc30, ptr %DIP2_parity_err, align 4
  %18 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %espi, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 128
  %add.ptr35 = getelementptr i8, ptr %21, i32 2292
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %if.end25.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool40.not = icmp eq i32 %4, 0
  br i1 %tobool40.not, label %if.end39.do.body_crit_edge, label %land.lhs.true

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %if.end39
  %23 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %espi, align 4
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %24, i32 0, i32 8, i32 9
  %25 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i = icmp eq i8 %26, 1
  br i1 %cmp.i, label %adapter_matches_type.exit, label %land.lhs.true.adapter_matches_type.exit.thread_crit_edge

land.lhs.true.adapter_matches_type.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %adapter_matches_type.exit.thread

adapter_matches_type.exit:                        ; preds = %land.lhs.true
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %24, i32 0, i32 8, i32 8
  %27 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp4.i.not = icmp eq i16 %28, 1
  br i1 %cmp4.i.not, label %adapter_matches_type.exit.do.body_crit_edge, label %adapter_matches_type.exit.adapter_matches_type.exit.thread_crit_edge

adapter_matches_type.exit.adapter_matches_type.exit.thread_crit_edge: ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %adapter_matches_type.exit.thread

adapter_matches_type.exit.do.body_crit_edge:      ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

adapter_matches_type.exit.thread:                 ; preds = %adapter_matches_type.exit.adapter_matches_type.exit.thread_crit_edge, %land.lhs.true.adapter_matches_type.exit.thread_crit_edge
  br label %do.body

do.body:                                          ; preds = %adapter_matches_type.exit.thread, %adapter_matches_type.exit.do.body_crit_edge, %if.end39.do.body_crit_edge
  %status.0 = phi i32 [ 0, %if.end39.do.body_crit_edge ], [ %5, %adapter_matches_type.exit.thread ], [ 1, %adapter_matches_type.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %status.0)
  %30 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %espi, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 128
  %add.ptr48 = getelementptr i8, ptr %33, i32 2248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %29) #6, !srcloc !26
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @t1_espi_get_intr_counts(ptr noundef readnone %espi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_cnt = getelementptr inbounds %struct.peespi, ptr %espi, i32 0, i32 1
  ret ptr %intr_cnt
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_espi_init(ptr noundef %espi, i32 noundef %mac_type, i32 noundef %nports) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %espi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !26
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 9
  %4 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %adapter_matches_type.exit, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

adapter_matches_type.exit:                        ; preds = %entry
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %6 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp4.i.not = icmp eq i16 %7, 3
  br i1 %cmp4.i.not, label %do.body2, label %adapter_matches_type.exit.do.body12_crit_edge

adapter_matches_type.exit.do.body12_crit_edge:    ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.body2:                                         ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %add.ptr6 = getelementptr i8, ptr %9, i32 2288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 1677852672) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nports)
  %cmp = icmp eq i32 %nports, 4
  %cond = select i1 %cmp, i32 2097216, i32 16777344
  %10 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %add.ptr11 = getelementptr i8, ptr %12, i32 2216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %10) #6, !srcloc !26
  br label %if.end

do.body12:                                        ; preds = %adapter_matches_type.exit.do.body12_crit_edge, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  %add.ptr16 = getelementptr i8, ptr %14, i32 2216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 98304) #6, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %do.body12, %do.body2
  %15 = zext i32 %mac_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mac_type, label %if.end.cleanup_crit_edge [
    i32 2, label %if.then18
    i32 3, label %if.then21
    i32 1, label %if.then24
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end
  %16 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i.i = icmp eq i8 %17, 1
  br i1 %cmp.i.i, label %adapter_matches_type.exit.i, label %if.then18.adapter_matches_type.exit.thread.i_crit_edge

if.then18.adapter_matches_type.exit.thread.i_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %adapter_matches_type.exit.thread.i

adapter_matches_type.exit.i:                      ; preds = %if.then18
  %chip_revision.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %18 = ptrtoint ptr %chip_revision.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %chip_revision.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp4.i.not.i = icmp eq i16 %19, 1
  br i1 %cmp4.i.not.i, label %adapter_matches_type.exit.i.espi_setup_for_pm3393.exit_crit_edge, label %adapter_matches_type.exit.i.adapter_matches_type.exit.thread.i_crit_edge

adapter_matches_type.exit.i.adapter_matches_type.exit.thread.i_crit_edge: ; preds = %adapter_matches_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adapter_matches_type.exit.thread.i

adapter_matches_type.exit.i.espi_setup_for_pm3393.exit_crit_edge: ; preds = %adapter_matches_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %espi_setup_for_pm3393.exit

adapter_matches_type.exit.thread.i:               ; preds = %adapter_matches_type.exit.i.adapter_matches_type.exit.thread.i_crit_edge, %if.then18.adapter_matches_type.exit.thread.i_crit_edge
  br label %espi_setup_for_pm3393.exit

espi_setup_for_pm3393.exit:                       ; preds = %adapter_matches_type.exit.thread.i, %adapter_matches_type.exit.i.espi_setup_for_pm3393.exit_crit_edge
  %20 = phi i32 [ 3276800, %adapter_matches_type.exit.thread.i ], [ 4194304, %adapter_matches_type.exit.i.espi_setup_for_pm3393.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %22, i32 2176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -201261056) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  %add.ptr5.i = getelementptr i8, ptr %24, i32 2180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -201261056) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  %add.ptr10.i = getelementptr i8, ptr %26, i32 2184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 -201261056) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  %add.ptr15.i = getelementptr i8, ptr %28, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 -201261056) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 128
  %add.ptr20.i = getelementptr i8, ptr %30, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 65536) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  %add.ptr25.i = getelementptr i8, ptr %32, i32 2196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %20) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 128
  %add.ptr30.i = getelementptr i8, ptr %34, i32 2200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 50331648) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 128
  %add.ptr35.i = getelementptr i8, ptr %36, i32 2220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 134217736) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 128
  %add.ptr40.i = getelementptr i8, ptr %38, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 16842752) #6, !srcloc !26
  br label %do.body29

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 128
  %add.ptr.i85 = getelementptr i8, ptr %40, i32 2176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 -201261056) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 128
  %add.ptr4.i = getelementptr i8, ptr %42, i32 2180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -201198591) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 128
  %add.ptr8.i = getelementptr i8, ptr %44, i32 2184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -201261056) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 128
  %add.ptr12.i = getelementptr i8, ptr %46, i32 2196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 655360) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 128
  %add.ptr16.i = getelementptr i8, ptr %48, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 -16711680) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 128
  %add.ptr20.i86 = getelementptr i8, ptr %50, i32 2200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i86, i32 16777216) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 128
  %add.ptr24.i = getelementptr i8, ptr %52, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 67371008) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 128
  %add.ptr28.i = getelementptr i8, ptr %54, i32 2220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 134217736) #6, !srcloc !26
  br label %do.body29

if.then24:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 128
  %add.ptr.i87 = getelementptr i8, ptr %56, i32 2200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 16777216) #6, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nports)
  %cmp.i88 = icmp eq i32 %nports, 4
  br i1 %cmp.i88, label %if.then.i, label %do.body19.i

if.then.i:                                        ; preds = %if.then24
  %57 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp.i.i90 = icmp eq i8 %58, 2
  br i1 %cmp.i.i90, label %adapter_matches_type.exit.i93, label %if.then.i.do.body10.i_crit_edge

if.then.i.do.body10.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10.i

adapter_matches_type.exit.i93:                    ; preds = %if.then.i
  %chip_revision.i.i91 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %59 = ptrtoint ptr %chip_revision.i.i91 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %chip_revision.i.i91, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %60)
  %cmp4.i.not.i92 = icmp eq i16 %60, 3
  br i1 %cmp4.i.not.i92, label %do.body2.i, label %adapter_matches_type.exit.i93.do.body10.i_crit_edge

adapter_matches_type.exit.i93.do.body10.i_crit_edge: ; preds = %adapter_matches_type.exit.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10.i

do.body2.i:                                       ; preds = %adapter_matches_type.exit.i93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 128
  %add.ptr5.i94 = getelementptr i8, ptr %62, i32 2196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i94, i32 983040) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 128
  %add.ptr9.i = getelementptr i8, ptr %64, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 -1073545216) #6, !srcloc !26
  br label %espi_setup_for_ixf1010.exit

do.body10.i:                                      ; preds = %adapter_matches_type.exit.i93.do.body10.i_crit_edge, %if.then.i.do.body10.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 128
  %add.ptr13.i = getelementptr i8, ptr %66, i32 2196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 -16318464) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 128
  %add.ptr17.i = getelementptr i8, ptr %68, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 -16711680) #6, !srcloc !26
  br label %espi_setup_for_ixf1010.exit

do.body19.i:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 128
  %add.ptr22.i = getelementptr i8, ptr %70, i32 2196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 -14745600) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 128
  %add.ptr26.i = getelementptr i8, ptr %72, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 -16318464) #6, !srcloc !26
  br label %espi_setup_for_ixf1010.exit

espi_setup_for_ixf1010.exit:                      ; preds = %do.body19.i, %do.body10.i, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %shl30.i = shl i32 %nports, 8
  %or.i = or i32 %shl30.i, %nports
  %73 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 128
  %add.ptr32.i = getelementptr i8, ptr %75, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %73) #6, !srcloc !26
  br label %do.body29

do.body29:                                        ; preds = %espi_setup_for_ixf1010.exit, %if.then21, %espi_setup_for_pm3393.exit
  %status_enable_extra.0 = phi i32 [ 16777216, %espi_setup_for_pm3393.exit ], [ 16777216, %if.then21 ], [ 285212672, %espi_setup_for_ixf1010.exit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 128
  %add.ptr33 = getelementptr i8, ptr %77, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %status_enable_extra.0) #6, !srcloc !26
  %78 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %79)
  %cmp.i97 = icmp eq i8 %79, 2
  br i1 %cmp.i97, label %adapter_matches_type.exit103, label %do.body29.cleanup_crit_edge

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

adapter_matches_type.exit103:                     ; preds = %do.body29
  %chip_revision.i98 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %80 = ptrtoint ptr %chip_revision.i98 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %chip_revision.i98, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %81)
  %cmp4.i100.not = icmp eq i16 %81, 3
  br i1 %cmp4.i100.not, label %if.then36, label %adapter_matches_type.exit103.cleanup_crit_edge

adapter_matches_type.exit103.cleanup_crit_edge:   ; preds = %adapter_matches_type.exit103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %adapter_matches_type.exit103
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 128
  %add.ptr.i104 = getelementptr i8, ptr %83, i32 2284
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %85 = and i32 %84, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body4.i

do.end.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %86 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %87) #9
  br label %tricn_init.exit

do.body4.i:                                       ; preds = %if.then36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 128
  %add.ptr8.i105 = getelementptr i8, ptr %89, i32 2284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i105, i32 33554432) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 128
  %add.ptr.i.i = getelementptr i8, ptr %91, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2129788895) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 128
  %add.ptr13.i.i = getelementptr i8, ptr %93, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 0) #6, !srcloc !26
  br label %do.body14.i.i

do.body14.i.i:                                    ; preds = %do.body14.i.i.do.body14.i.i_crit_edge, %do.body4.i
  %attempts.0.i.i = phi i32 [ 10, %do.body4.i ], [ %dec.i.i, %do.body14.i.i.do.body14.i.i_crit_edge ]
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 128
  %add.ptr16.i.i = getelementptr i8, ptr %95, i32 2300
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %97 = and i32 %96, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i.i = icmp eq i32 %97, 0
  %dec.i.i = add nsw i32 %attempts.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool19.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool19.not.i.i
  br i1 %or.cond.i.i, label %do.end20.i.i, label %do.body14.i.i.do.body14.i.i_crit_edge

do.body14.i.i.do.body14.i.i_crit_edge:            ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i.i

do.end20.i.i:                                     ; preds = %do.body14.i.i
  br i1 %tobool.not.i.i, label %do.end20.i.i.tricn_write.exit.i_crit_edge, label %do.end24.i.i

do.end20.i.i.tricn_write.exit.i_crit_edge:        ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit.i

do.end24.i.i:                                     ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %98 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name.i.i, align 4
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %99) #9
  br label %tricn_write.exit.i

tricn_write.exit.i:                               ; preds = %do.end24.i.i, %do.end20.i.i.tricn_write.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 128
  %add.ptr.i1.i = getelementptr i8, ptr %101, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 -2129788639) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 128
  %add.ptr13.i2.i = getelementptr i8, ptr %103, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i2.i, i32 0) #6, !srcloc !26
  br label %do.body14.i9.i

do.body14.i9.i:                                   ; preds = %do.body14.i9.i.do.body14.i9.i_crit_edge, %tricn_write.exit.i
  %attempts.0.i3.i = phi i32 [ 10, %tricn_write.exit.i ], [ %dec.i6.i, %do.body14.i9.i.do.body14.i9.i_crit_edge ]
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 128
  %add.ptr16.i4.i = getelementptr i8, ptr %105, i32 2300
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i4.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %107 = and i32 %106, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i5.i = icmp eq i32 %107, 0
  %dec.i6.i = add nsw i32 %attempts.0.i3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i6.i)
  %tobool19.not.i7.i = icmp eq i32 %dec.i6.i, 0
  %or.cond.i8.i = select i1 %tobool.not.i5.i, i1 true, i1 %tobool19.not.i7.i
  br i1 %or.cond.i8.i, label %do.end20.i10.i, label %do.body14.i9.i.do.body14.i9.i_crit_edge

do.body14.i9.i.do.body14.i9.i_crit_edge:          ; preds = %do.body14.i9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i9.i

do.end20.i10.i:                                   ; preds = %do.body14.i9.i
  br i1 %tobool.not.i5.i, label %do.end20.i10.i.tricn_write.exit14.i_crit_edge, label %do.end24.i13.i

do.end20.i10.i.tricn_write.exit14.i_crit_edge:    ; preds = %do.end20.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit14.i

do.end24.i13.i:                                   ; preds = %do.end20.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i11.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %108 = ptrtoint ptr %name.i11.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name.i11.i, align 4
  %call26.i12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %109) #9
  br label %tricn_write.exit14.i

tricn_write.exit14.i:                             ; preds = %do.end24.i13.i, %do.end20.i10.i.tricn_write.exit14.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 128
  %add.ptr.i15.i = getelementptr i8, ptr %111, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 -2129788383) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 128
  %add.ptr13.i16.i = getelementptr i8, ptr %113, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i16.i, i32 0) #6, !srcloc !26
  br label %do.body14.i23.i

do.body14.i23.i:                                  ; preds = %do.body14.i23.i.do.body14.i23.i_crit_edge, %tricn_write.exit14.i
  %attempts.0.i17.i = phi i32 [ 10, %tricn_write.exit14.i ], [ %dec.i20.i, %do.body14.i23.i.do.body14.i23.i_crit_edge ]
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 128
  %add.ptr16.i18.i = getelementptr i8, ptr %115, i32 2300
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i18.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %117 = and i32 %116, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i19.i = icmp eq i32 %117, 0
  %dec.i20.i = add nsw i32 %attempts.0.i17.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i20.i)
  %tobool19.not.i21.i = icmp eq i32 %dec.i20.i, 0
  %or.cond.i22.i = select i1 %tobool.not.i19.i, i1 true, i1 %tobool19.not.i21.i
  br i1 %or.cond.i22.i, label %do.end20.i24.i, label %do.body14.i23.i.do.body14.i23.i_crit_edge

do.body14.i23.i.do.body14.i23.i_crit_edge:        ; preds = %do.body14.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i23.i

do.end20.i24.i:                                   ; preds = %do.body14.i23.i
  br i1 %tobool.not.i19.i, label %do.end20.i24.i.tricn_write.exit28.i_crit_edge, label %do.end24.i27.i

do.end20.i24.i.tricn_write.exit28.i_crit_edge:    ; preds = %do.end20.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit28.i

do.end24.i27.i:                                   ; preds = %do.end20.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i25.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %118 = ptrtoint ptr %name.i25.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name.i25.i, align 4
  %call26.i26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %119) #9
  br label %tricn_write.exit28.i

tricn_write.exit28.i:                             ; preds = %do.end24.i27.i, %do.end20.i24.i.tricn_write.exit28.i_crit_edge
  %name.i39.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  br label %for.body.i

for.cond16.preheader.i:                           ; preds = %tricn_write.exit42.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 128
  %add.ptr.i46.i = getelementptr i8, ptr %121, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 -249691871) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 128
  %add.ptr13.i47.i = getelementptr i8, ptr %123, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i47.i, i32 0) #6, !srcloc !26
  br label %do.body14.i54.i

for.body.i:                                       ; preds = %tricn_write.exit42.i.for.body.i_crit_edge, %tricn_write.exit28.i
  %i.0147.i = phi i32 [ 1, %tricn_write.exit28.i ], [ %inc.i, %tricn_write.exit42.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %shl2.i.i = shl i32 %i.0147.i, 12
  %or8.i.i = or i32 %shl2.i.i, 553651953
  %124 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #6
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 128
  %add.ptr.i29.i = getelementptr i8, ptr %126, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %124) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 128
  %add.ptr13.i30.i = getelementptr i8, ptr %128, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i30.i, i32 0) #6, !srcloc !26
  br label %do.body14.i37.i

do.body14.i37.i:                                  ; preds = %do.body14.i37.i.do.body14.i37.i_crit_edge, %for.body.i
  %attempts.0.i31.i = phi i32 [ 10, %for.body.i ], [ %dec.i34.i, %do.body14.i37.i.do.body14.i37.i_crit_edge ]
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 128
  %add.ptr16.i32.i = getelementptr i8, ptr %130, i32 2300
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i32.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %132 = and i32 %131, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i33.i = icmp eq i32 %132, 0
  %dec.i34.i = add nsw i32 %attempts.0.i31.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i34.i)
  %tobool19.not.i35.i = icmp eq i32 %dec.i34.i, 0
  %or.cond.i36.i = select i1 %tobool.not.i33.i, i1 true, i1 %tobool19.not.i35.i
  br i1 %or.cond.i36.i, label %do.end20.i38.i, label %do.body14.i37.i.do.body14.i37.i_crit_edge

do.body14.i37.i.do.body14.i37.i_crit_edge:        ; preds = %do.body14.i37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i37.i

do.end20.i38.i:                                   ; preds = %do.body14.i37.i
  br i1 %tobool.not.i33.i, label %do.end20.i38.i.tricn_write.exit42.i_crit_edge, label %do.end24.i41.i

do.end20.i38.i.tricn_write.exit42.i_crit_edge:    ; preds = %do.end20.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit42.i

do.end24.i41.i:                                   ; preds = %do.end20.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %name.i39.i, align 4
  %call26.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %134) #9
  br label %tricn_write.exit42.i

tricn_write.exit42.i:                             ; preds = %do.end24.i41.i, %do.end20.i38.i.tricn_write.exit42.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0147.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.cond16.preheader.i, label %tricn_write.exit42.i.for.body.i_crit_edge

tricn_write.exit42.i.for.body.i_crit_edge:        ; preds = %tricn_write.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.body14.i54.i:                                  ; preds = %do.body14.i54.i.do.body14.i54.i_crit_edge, %for.cond16.preheader.i
  %attempts.0.i48.i = phi i32 [ 10, %for.cond16.preheader.i ], [ %dec.i51.i, %do.body14.i54.i.do.body14.i54.i_crit_edge ]
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 128
  %add.ptr16.i49.i = getelementptr i8, ptr %136, i32 2300
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i49.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %138 = and i32 %137, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i50.i = icmp eq i32 %138, 0
  %dec.i51.i = add nsw i32 %attempts.0.i48.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i51.i)
  %tobool19.not.i52.i = icmp eq i32 %dec.i51.i, 0
  %or.cond.i53.i = select i1 %tobool.not.i50.i, i1 true, i1 %tobool19.not.i52.i
  br i1 %or.cond.i53.i, label %do.end20.i55.i, label %do.body14.i54.i.do.body14.i54.i_crit_edge

do.body14.i54.i.do.body14.i54.i_crit_edge:        ; preds = %do.body14.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i54.i

do.end20.i55.i:                                   ; preds = %do.body14.i54.i
  br i1 %tobool.not.i50.i, label %do.end20.i55.i.tricn_write.exit59.i_crit_edge, label %do.end24.i58.i

do.end20.i55.i.tricn_write.exit59.i_crit_edge:    ; preds = %do.end20.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit59.i

do.end24.i58.i:                                   ; preds = %do.end20.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %name.i39.i, align 4
  %call26.i57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %140) #9
  br label %tricn_write.exit59.i

tricn_write.exit59.i:                             ; preds = %do.end24.i58.i, %do.end20.i55.i.tricn_write.exit59.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 128
  %add.ptr.i46.1.i = getelementptr i8, ptr %142, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.1.i, i32 -248643295) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 128
  %add.ptr13.i47.1.i = getelementptr i8, ptr %144, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i47.1.i, i32 0) #6, !srcloc !26
  br label %do.body14.i54.1.i

do.body14.i54.1.i:                                ; preds = %do.body14.i54.1.i.do.body14.i54.1.i_crit_edge, %tricn_write.exit59.i
  %attempts.0.i48.1.i = phi i32 [ 10, %tricn_write.exit59.i ], [ %dec.i51.1.i, %do.body14.i54.1.i.do.body14.i54.1.i_crit_edge ]
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 128
  %add.ptr16.i49.1.i = getelementptr i8, ptr %146, i32 2300
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i49.1.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %148 = and i32 %147, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i50.1.i = icmp eq i32 %148, 0
  %dec.i51.1.i = add nsw i32 %attempts.0.i48.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i51.1.i)
  %tobool19.not.i52.1.i = icmp eq i32 %dec.i51.1.i, 0
  %or.cond.i53.1.i = select i1 %tobool.not.i50.1.i, i1 true, i1 %tobool19.not.i52.1.i
  br i1 %or.cond.i53.1.i, label %do.end20.i55.1.i, label %do.body14.i54.1.i.do.body14.i54.1.i_crit_edge

do.body14.i54.1.i.do.body14.i54.1.i_crit_edge:    ; preds = %do.body14.i54.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i54.1.i

do.end20.i55.1.i:                                 ; preds = %do.body14.i54.1.i
  br i1 %tobool.not.i50.1.i, label %do.end20.i55.1.i.tricn_write.exit59.1.i_crit_edge, label %do.end24.i58.1.i

do.end20.i55.1.i.tricn_write.exit59.1.i_crit_edge: ; preds = %do.end20.i55.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit59.1.i

do.end24.i58.1.i:                                 ; preds = %do.end20.i55.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name.i39.i, align 4
  %call26.i57.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %150) #9
  br label %tricn_write.exit59.1.i

tricn_write.exit59.1.i:                           ; preds = %do.end24.i58.1.i, %do.end20.i55.1.i.tricn_write.exit59.1.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 128
  %add.ptr.i63.i = getelementptr i8, ptr %152, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 -518127071) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 128
  %add.ptr13.i64.i = getelementptr i8, ptr %154, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i64.i, i32 0) #6, !srcloc !26
  br label %do.body14.i71.i

do.body14.i71.i:                                  ; preds = %do.body14.i71.i.do.body14.i71.i_crit_edge, %tricn_write.exit59.1.i
  %attempts.0.i65.i = phi i32 [ 10, %tricn_write.exit59.1.i ], [ %dec.i68.i, %do.body14.i71.i.do.body14.i71.i_crit_edge ]
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 128
  %add.ptr16.i66.i = getelementptr i8, ptr %156, i32 2300
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i66.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %158 = and i32 %157, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i67.i = icmp eq i32 %158, 0
  %dec.i68.i = add nsw i32 %attempts.0.i65.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i68.i)
  %tobool19.not.i69.i = icmp eq i32 %dec.i68.i, 0
  %or.cond.i70.i = select i1 %tobool.not.i67.i, i1 true, i1 %tobool19.not.i69.i
  br i1 %or.cond.i70.i, label %do.end20.i72.i, label %do.body14.i71.i.do.body14.i71.i_crit_edge

do.body14.i71.i.do.body14.i71.i_crit_edge:        ; preds = %do.body14.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i71.i

do.end20.i72.i:                                   ; preds = %do.body14.i71.i
  br i1 %tobool.not.i67.i, label %do.end20.i72.i.tricn_write.exit76.i_crit_edge, label %do.end24.i75.i

do.end20.i72.i.tricn_write.exit76.i_crit_edge:    ; preds = %do.end20.i72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit76.i

do.end24.i75.i:                                   ; preds = %do.end20.i72.i
  call void @__sanitizer_cov_trace_pc() #8
  %159 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %name.i39.i, align 4
  %call26.i74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %160) #9
  br label %tricn_write.exit76.i

tricn_write.exit76.i:                             ; preds = %do.end24.i75.i, %do.end20.i72.i.tricn_write.exit76.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 128
  %add.ptr.i63.1.i = getelementptr i8, ptr %162, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.1.i, i32 -517078495) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 128
  %add.ptr13.i64.1.i = getelementptr i8, ptr %164, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i64.1.i, i32 0) #6, !srcloc !26
  br label %do.body14.i71.1.i

do.body14.i71.1.i:                                ; preds = %do.body14.i71.1.i.do.body14.i71.1.i_crit_edge, %tricn_write.exit76.i
  %attempts.0.i65.1.i = phi i32 [ 10, %tricn_write.exit76.i ], [ %dec.i68.1.i, %do.body14.i71.1.i.do.body14.i71.1.i_crit_edge ]
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 128
  %add.ptr16.i66.1.i = getelementptr i8, ptr %166, i32 2300
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i66.1.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %168 = and i32 %167, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i67.1.i = icmp eq i32 %168, 0
  %dec.i68.1.i = add nsw i32 %attempts.0.i65.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i68.1.i)
  %tobool19.not.i69.1.i = icmp eq i32 %dec.i68.1.i, 0
  %or.cond.i70.1.i = select i1 %tobool.not.i67.1.i, i1 true, i1 %tobool19.not.i69.1.i
  br i1 %or.cond.i70.1.i, label %do.end20.i72.1.i, label %do.body14.i71.1.i.do.body14.i71.1.i_crit_edge

do.body14.i71.1.i.do.body14.i71.1.i_crit_edge:    ; preds = %do.body14.i71.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i71.1.i

do.end20.i72.1.i:                                 ; preds = %do.body14.i71.1.i
  br i1 %tobool.not.i67.1.i, label %do.end20.i72.1.i.tricn_write.exit76.1.i_crit_edge, label %do.end24.i75.1.i

do.end20.i72.1.i.tricn_write.exit76.1.i_crit_edge: ; preds = %do.end20.i72.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit76.1.i

do.end24.i75.1.i:                                 ; preds = %do.end20.i72.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %169 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %name.i39.i, align 4
  %call26.i74.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %170) #9
  br label %tricn_write.exit76.1.i

tricn_write.exit76.1.i:                           ; preds = %do.end24.i75.1.i, %do.end20.i72.1.i.tricn_write.exit76.1.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 128
  %add.ptr.i63.2.i = getelementptr i8, ptr %172, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.2.i, i32 -516029919) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 128
  %add.ptr13.i64.2.i = getelementptr i8, ptr %174, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i64.2.i, i32 0) #6, !srcloc !26
  br label %do.body14.i71.2.i

do.body14.i71.2.i:                                ; preds = %do.body14.i71.2.i.do.body14.i71.2.i_crit_edge, %tricn_write.exit76.1.i
  %attempts.0.i65.2.i = phi i32 [ 10, %tricn_write.exit76.1.i ], [ %dec.i68.2.i, %do.body14.i71.2.i.do.body14.i71.2.i_crit_edge ]
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 128
  %add.ptr16.i66.2.i = getelementptr i8, ptr %176, i32 2300
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i66.2.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %178 = and i32 %177, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.i67.2.i = icmp eq i32 %178, 0
  %dec.i68.2.i = add nsw i32 %attempts.0.i65.2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i68.2.i)
  %tobool19.not.i69.2.i = icmp eq i32 %dec.i68.2.i, 0
  %or.cond.i70.2.i = select i1 %tobool.not.i67.2.i, i1 true, i1 %tobool19.not.i69.2.i
  br i1 %or.cond.i70.2.i, label %do.end20.i72.2.i, label %do.body14.i71.2.i.do.body14.i71.2.i_crit_edge

do.body14.i71.2.i.do.body14.i71.2.i_crit_edge:    ; preds = %do.body14.i71.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i71.2.i

do.end20.i72.2.i:                                 ; preds = %do.body14.i71.2.i
  br i1 %tobool.not.i67.2.i, label %do.end20.i72.2.i.tricn_write.exit76.2.i_crit_edge, label %do.end24.i75.2.i

do.end20.i72.2.i.tricn_write.exit76.2.i_crit_edge: ; preds = %do.end20.i72.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit76.2.i

do.end24.i75.2.i:                                 ; preds = %do.end20.i72.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %name.i39.i, align 4
  %call26.i74.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %180) #9
  br label %tricn_write.exit76.2.i

tricn_write.exit76.2.i:                           ; preds = %do.end24.i75.2.i, %do.end20.i72.2.i.tricn_write.exit76.2.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 128
  %add.ptr.i77.i = getelementptr i8, ptr %182, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 -246545887) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 128
  %add.ptr13.i78.i = getelementptr i8, ptr %184, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i78.i, i32 0) #6, !srcloc !26
  br label %do.body14.i85.i

do.body14.i85.i:                                  ; preds = %do.body14.i85.i.do.body14.i85.i_crit_edge, %tricn_write.exit76.2.i
  %attempts.0.i79.i = phi i32 [ 10, %tricn_write.exit76.2.i ], [ %dec.i82.i, %do.body14.i85.i.do.body14.i85.i_crit_edge ]
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 128
  %add.ptr16.i80.i = getelementptr i8, ptr %186, i32 2300
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i80.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %188 = and i32 %187, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i81.i = icmp eq i32 %188, 0
  %dec.i82.i = add nsw i32 %attempts.0.i79.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i82.i)
  %tobool19.not.i83.i = icmp eq i32 %dec.i82.i, 0
  %or.cond.i84.i = select i1 %tobool.not.i81.i, i1 true, i1 %tobool19.not.i83.i
  br i1 %or.cond.i84.i, label %do.end20.i86.i, label %do.body14.i85.i.do.body14.i85.i_crit_edge

do.body14.i85.i.do.body14.i85.i_crit_edge:        ; preds = %do.body14.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i85.i

do.end20.i86.i:                                   ; preds = %do.body14.i85.i
  br i1 %tobool.not.i81.i, label %do.end20.i86.i.tricn_write.exit90.i_crit_edge, label %do.end24.i89.i

do.end20.i86.i.tricn_write.exit90.i_crit_edge:    ; preds = %do.end20.i86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit90.i

do.end24.i89.i:                                   ; preds = %do.end20.i86.i
  call void @__sanitizer_cov_trace_pc() #8
  %189 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %name.i39.i, align 4
  %call26.i88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %190) #9
  br label %tricn_write.exit90.i

tricn_write.exit90.i:                             ; preds = %do.end24.i89.i, %do.end20.i86.i.tricn_write.exit90.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 128
  %add.ptr.i91.i = getelementptr i8, ptr %192, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 -513932767) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 128
  %add.ptr13.i92.i = getelementptr i8, ptr %194, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i92.i, i32 0) #6, !srcloc !26
  br label %do.body14.i99.i

do.body14.i99.i:                                  ; preds = %do.body14.i99.i.do.body14.i99.i_crit_edge, %tricn_write.exit90.i
  %attempts.0.i93.i = phi i32 [ 10, %tricn_write.exit90.i ], [ %dec.i96.i, %do.body14.i99.i.do.body14.i99.i_crit_edge ]
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 128
  %add.ptr16.i94.i = getelementptr i8, ptr %196, i32 2300
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i94.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %198 = and i32 %197, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i95.i = icmp eq i32 %198, 0
  %dec.i96.i = add nsw i32 %attempts.0.i93.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i96.i)
  %tobool19.not.i97.i = icmp eq i32 %dec.i96.i, 0
  %or.cond.i98.i = select i1 %tobool.not.i95.i, i1 true, i1 %tobool19.not.i97.i
  br i1 %or.cond.i98.i, label %do.end20.i100.i, label %do.body14.i99.i.do.body14.i99.i_crit_edge

do.body14.i99.i.do.body14.i99.i_crit_edge:        ; preds = %do.body14.i99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i99.i

do.end20.i100.i:                                  ; preds = %do.body14.i99.i
  br i1 %tobool.not.i95.i, label %do.end20.i100.i.tricn_write.exit104.i_crit_edge, label %do.end24.i103.i

do.end20.i100.i.tricn_write.exit104.i_crit_edge:  ; preds = %do.end20.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit104.i

do.end24.i103.i:                                  ; preds = %do.end20.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  %199 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %name.i39.i, align 4
  %call26.i102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %200) #9
  br label %tricn_write.exit104.i

tricn_write.exit104.i:                            ; preds = %do.end24.i103.i, %do.end20.i100.i.tricn_write.exit104.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 128
  %add.ptr.i105.i = getelementptr i8, ptr %202, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 -244448735) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %1, align 128
  %add.ptr13.i106.i = getelementptr i8, ptr %204, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i106.i, i32 0) #6, !srcloc !26
  br label %do.body14.i113.i

do.body14.i113.i:                                 ; preds = %do.body14.i113.i.do.body14.i113.i_crit_edge, %tricn_write.exit104.i
  %attempts.0.i107.i = phi i32 [ 10, %tricn_write.exit104.i ], [ %dec.i110.i, %do.body14.i113.i.do.body14.i113.i_crit_edge ]
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %1, align 128
  %add.ptr16.i108.i = getelementptr i8, ptr %206, i32 2300
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i108.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %208 = and i32 %207, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.not.i109.i = icmp eq i32 %208, 0
  %dec.i110.i = add nsw i32 %attempts.0.i107.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i110.i)
  %tobool19.not.i111.i = icmp eq i32 %dec.i110.i, 0
  %or.cond.i112.i = select i1 %tobool.not.i109.i, i1 true, i1 %tobool19.not.i111.i
  br i1 %or.cond.i112.i, label %do.end20.i114.i, label %do.body14.i113.i.do.body14.i113.i_crit_edge

do.body14.i113.i.do.body14.i113.i_crit_edge:      ; preds = %do.body14.i113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i113.i

do.end20.i114.i:                                  ; preds = %do.body14.i113.i
  br i1 %tobool.not.i109.i, label %do.end20.i114.i.tricn_write.exit118.i_crit_edge, label %do.end24.i117.i

do.end20.i114.i.tricn_write.exit118.i_crit_edge:  ; preds = %do.end20.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit118.i

do.end24.i117.i:                                  ; preds = %do.end20.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  %209 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %name.i39.i, align 4
  %call26.i116.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %210) #9
  br label %tricn_write.exit118.i

tricn_write.exit118.i:                            ; preds = %do.end24.i117.i, %do.end20.i114.i.tricn_write.exit118.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %211 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %1, align 128
  %add.ptr.i119.i = getelementptr i8, ptr %212, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 -2139225567) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 128
  %add.ptr13.i120.i = getelementptr i8, ptr %214, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i120.i, i32 0) #6, !srcloc !26
  br label %do.body14.i127.i

do.body14.i127.i:                                 ; preds = %do.body14.i127.i.do.body14.i127.i_crit_edge, %tricn_write.exit118.i
  %attempts.0.i121.i = phi i32 [ 10, %tricn_write.exit118.i ], [ %dec.i124.i, %do.body14.i127.i.do.body14.i127.i_crit_edge ]
  %215 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %1, align 128
  %add.ptr16.i122.i = getelementptr i8, ptr %216, i32 2300
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i122.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %218 = and i32 %217, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool.not.i123.i = icmp eq i32 %218, 0
  %dec.i124.i = add nsw i32 %attempts.0.i121.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i124.i)
  %tobool19.not.i125.i = icmp eq i32 %dec.i124.i, 0
  %or.cond.i126.i = select i1 %tobool.not.i123.i, i1 true, i1 %tobool19.not.i125.i
  br i1 %or.cond.i126.i, label %do.end20.i128.i, label %do.body14.i127.i.do.body14.i127.i_crit_edge

do.body14.i127.i.do.body14.i127.i_crit_edge:      ; preds = %do.body14.i127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i127.i

do.end20.i128.i:                                  ; preds = %do.body14.i127.i
  br i1 %tobool.not.i123.i, label %do.end20.i128.i.tricn_write.exit132.i_crit_edge, label %do.end24.i131.i

do.end20.i128.i.tricn_write.exit132.i_crit_edge:  ; preds = %do.end20.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit132.i

do.end24.i131.i:                                  ; preds = %do.end20.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  %219 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %name.i39.i, align 4
  %call26.i130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %220) #9
  br label %tricn_write.exit132.i

tricn_write.exit132.i:                            ; preds = %do.end24.i131.i, %do.end20.i128.i.tricn_write.exit132.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %221 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %1, align 128
  %add.ptr.i133.i = getelementptr i8, ptr %222, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 -242351583) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %223 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %1, align 128
  %add.ptr13.i134.i = getelementptr i8, ptr %224, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i134.i, i32 0) #6, !srcloc !26
  br label %do.body14.i141.i

do.body14.i141.i:                                 ; preds = %do.body14.i141.i.do.body14.i141.i_crit_edge, %tricn_write.exit132.i
  %attempts.0.i135.i = phi i32 [ 10, %tricn_write.exit132.i ], [ %dec.i138.i, %do.body14.i141.i.do.body14.i141.i_crit_edge ]
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %1, align 128
  %add.ptr16.i136.i = getelementptr i8, ptr %226, i32 2300
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i136.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %228 = and i32 %227, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.not.i137.i = icmp eq i32 %228, 0
  %dec.i138.i = add nsw i32 %attempts.0.i135.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i138.i)
  %tobool19.not.i139.i = icmp eq i32 %dec.i138.i, 0
  %or.cond.i140.i = select i1 %tobool.not.i137.i, i1 true, i1 %tobool19.not.i139.i
  br i1 %or.cond.i140.i, label %do.end20.i142.i, label %do.body14.i141.i.do.body14.i141.i_crit_edge

do.body14.i141.i.do.body14.i141.i_crit_edge:      ; preds = %do.body14.i141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i141.i

do.end20.i142.i:                                  ; preds = %do.body14.i141.i
  br i1 %tobool.not.i137.i, label %do.end20.i142.i.tricn_write.exit146.i_crit_edge, label %do.end24.i145.i

do.end20.i142.i.tricn_write.exit146.i_crit_edge:  ; preds = %do.end20.i142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tricn_write.exit146.i

do.end24.i145.i:                                  ; preds = %do.end20.i142.i
  call void @__sanitizer_cov_trace_pc() #8
  %229 = ptrtoint ptr %name.i39.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %name.i39.i, align 4
  %call26.i144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %230) #9
  br label %tricn_write.exit146.i

tricn_write.exit146.i:                            ; preds = %do.end24.i145.i, %do.end20.i142.i.tricn_write.exit146.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %231 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %1, align 128
  %add.ptr39.i = getelementptr i8, ptr %232, i32 2284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 50331648) #6, !srcloc !26
  br label %tricn_init.exit

tricn_init.exit:                                  ; preds = %tricn_write.exit146.i, %do.end.i
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %1, align 128
  %add.ptr39 = getelementptr i8, ptr %234, i32 2288
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %misc_ctrl = getelementptr inbounds %struct.peespi, ptr %espi, i32 0, i32 2
  %236 = and i32 %235, -31
  %237 = or i32 %236, 8
  %238 = tail call i32 @llvm.bswap.i32(i32 %237)
  %239 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %misc_ctrl, align 4
  %nports45 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 6
  %240 = ptrtoint ptr %nports45 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %nports45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %241)
  %cmp46 = icmp eq i32 %241, 1
  br i1 %cmp46, label %if.then47, label %tricn_init.exit.do.body51_crit_edge

tricn_init.exit.do.body51_crit_edge:              ; preds = %tricn_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

if.then47:                                        ; preds = %tricn_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or49 = or i32 %238, 268435456
  %242 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %or49, ptr %misc_ctrl, align 4
  br label %do.body51

do.body51:                                        ; preds = %if.then47, %tricn_init.exit.do.body51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %243 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %misc_ctrl, align 4
  %245 = tail call i32 @llvm.bswap.i32(i32 %244)
  %246 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %1, align 128
  %add.ptr56 = getelementptr i8, ptr %247, i32 2288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %245) #6, !srcloc !26
  %lock = getelementptr inbounds %struct.peespi, ptr %espi, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @t1_espi_init.__key, i16 noundef signext 3) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body51, %adapter_matches_type.exit103.cleanup_crit_edge, %do.body29.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ 0, %do.body51 ], [ 0, %adapter_matches_type.exit103.cleanup_crit_edge ], [ 0, %do.body29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_espi_destroy(ptr noundef %espi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %espi) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @t1_espi_create(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %call7.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_espi_get_mon(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i8 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %espi1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %0 = ptrtoint ptr %espi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %espi1, align 4
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 9
  %2 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.i = icmp eq i8 %3, 2
  br i1 %cmp.i, label %adapter_matches_type.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

adapter_matches_type.exit:                        ; preds = %entry
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 8
  %4 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp4.i.not = icmp eq i16 %5, 3
  br i1 %cmp4.i.not, label %if.end, label %adapter_matches_type.exit.cleanup_crit_edge

adapter_matches_type.exit.cleanup_crit_edge:      ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %adapter_matches_type.exit
  %6 = shl i32 %addr, 23
  %shl = and i32 %6, 503316480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wait)
  %tobool2.not = icmp eq i8 %wait, 0
  %lock = getelementptr inbounds %struct.peespi, ptr %1, i32 0, i32 3
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3.if.end9_crit_edge
  %misc_ctrl = getelementptr inbounds %struct.peespi, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %misc_ctrl, align 4
  %and10 = and i32 %8, 503316480
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and10)
  %cmp.not = icmp eq i32 %shl, %and10
  br i1 %cmp.not, label %if.else24, label %do.body

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %misc_ctrl, align 4
  %and13 = and i32 %10, -503316481
  %or = or i32 %and13, %shl
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %13, i32 2288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #6, !srcloc !26
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 128
  %add.ptr15 = getelementptr i8, ptr %15, i32 2188
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !23
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %misc_ctrl, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 128
  %add.ptr23 = getelementptr i8, ptr %22, i32 2288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %20) #6, !srcloc !26
  br label %if.end32

if.else24:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 128
  %add.ptr28 = getelementptr i8, ptr %24, i32 2188
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !23
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  br label %if.end32

if.end32:                                         ; preds = %if.else24, %do.body
  %sel.0 = phi i32 [ %17, %do.body ], [ %26, %if.else24 ]
  %lock33 = getelementptr inbounds %struct.peespi, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock33) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then3.cleanup_crit_edge, %adapter_matches_type.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sel.0, %if.end32 ], [ 0, %adapter_matches_type.exit.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_espi_get_mon_t204(ptr nocapture noundef readonly %adapter, ptr nocapture noundef writeonly %valp, i8 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %espi1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %0 = ptrtoint ptr %espi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %espi1, align 4
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wait)
  %tobool.not = icmp eq i8 %wait, 0
  %lock = getelementptr inbounds %struct.peespi, ptr %1, i32 0, i32 3
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then.if.end5_crit_edge
  %misc_ctrl = getelementptr inbounds %struct.peespi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %misc_ctrl, align 4
  %and = and i32 %5, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %and)
  %cmp.not = icmp eq i32 %and, 134217728
  br i1 %cmp.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i32 %5, -503316481
  %or = or i32 %and9, 134217728
  %6 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %misc_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %misc_ctrl, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %11, i32 2288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !26
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end5.if.end12_crit_edge
  %conv14 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv14)
  %cmp1558.not = icmp eq i32 %conv14, 0
  br i1 %cmp1558.not, label %if.end12.do.body32_crit_edge, label %if.end27.peel

if.end12.do.body32_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

if.end27.peel:                                    ; preds = %if.end12
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 128
  %add.ptr29.peel = getelementptr i8, ptr %13, i32 2188
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.peel) #6, !srcloc !23
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %16 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %valp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv14)
  %exitcond.peel.not = icmp eq i32 %conv14, 1
  br i1 %exitcond.peel.not, label %if.end27.peel.do.body32_crit_edge, label %if.end27.peel.if.end27_crit_edge

if.end27.peel.if.end27_crit_edge:                 ; preds = %if.end27.peel
  br label %if.end27

if.end27.peel.do.body32_crit_edge:                ; preds = %if.end27.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

if.end27:                                         ; preds = %if.end27.if.end27_crit_edge, %if.end27.peel.if.end27_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end27.if.end27_crit_edge ], [ 1, %if.end27.peel.if.end27_crit_edge ]
  %valp.addr.060.pn = phi ptr [ %valp.addr.060, %if.end27.if.end27_crit_edge ], [ %valp, %if.end27.peel.if.end27_crit_edge ]
  %valp.addr.060 = getelementptr i32, ptr %valp.addr.060.pn, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %misc_ctrl, align 4
  %shl = shl i32 %indvars.iv, 25
  %or24 = or i32 %18, %shl
  %19 = tail call i32 @llvm.bswap.i32(i32 %or24)
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 128
  %add.ptr26 = getelementptr i8, ptr %21, i32 2288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %19) #6, !srcloc !26
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 128
  %add.ptr29 = getelementptr i8, ptr %23, i32 2188
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #6, !srcloc !23
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %26 = ptrtoint ptr %valp.addr.060 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %valp.addr.060, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv14
  br i1 %exitcond.not, label %if.end27.do.body32_crit_edge, label %if.end27.if.end27_crit_edge, !llvm.loop !82

if.end27.if.end27_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27.do.body32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

do.body32:                                        ; preds = %if.end27.do.body32_crit_edge, %if.end27.peel.do.body32_crit_edge, %if.end12.do.body32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %misc_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %misc_ctrl, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 128
  %add.ptr37 = getelementptr i8, ptr %31, i32 2288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %29) #6, !srcloc !26
  %lock38 = getelementptr inbounds %struct.peespi, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock38) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body32 ], [ -1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @t1_espi_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb/espi.c", i32 279, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/chelsio/cxgb/espi.c", i32 88, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @tricn_init._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @tricn_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/chelsio/cxgb/espi.c", i32 78, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tricn_write._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @tricn_write._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 6731416}
!24 = !{i64 2156837741}
!25 = !{i64 2156838380}
!26 = !{i64 6730998}
!27 = !{i64 2156838873}
!28 = !{i64 2156839653}
!29 = !{i64 2156839890}
!30 = !{i64 2156840385}
!31 = !{i64 2156841135}
!32 = !{i64 2156841363}
!33 = !{i64 2156841843}
!34 = !{i64 2156842629}
!35 = !{i64 2156843413}
!36 = !{i64 2156843711}
!37 = !{i64 2156855019}
!38 = !{i64 2156855612}
!39 = !{i64 2156856172}
!40 = !{i64 2156856673}
!41 = !{i64 2156844190}
!42 = !{i64 2156844601}
!43 = !{i64 2156845012}
!44 = !{i64 2156845423}
!45 = !{i64 2156845834}
!46 = !{i64 2156846245}
!47 = !{i64 2156846652}
!48 = !{i64 2156847056}
!49 = !{i64 2156847556}
!50 = !{i64 2156848039}
!51 = !{i64 2156848454}
!52 = !{i64 2156848877}
!53 = !{i64 2156849288}
!54 = !{i64 2156849699}
!55 = !{i64 2156850106}
!56 = !{i64 2156850579}
!57 = !{i64 2156851067}
!58 = !{i64 2156851489}
!59 = !{i64 2156851946}
!60 = !{i64 2156852357}
!61 = !{i64 2156852768}
!62 = !{i64 2156853179}
!63 = !{i64 2156853591}
!64 = !{i64 2156854005}
!65 = !{i64 2156854510}
!66 = !{i64 2156857226}
!67 = !{i64 2156834351}
!68 = !{i64 2156836339}
!69 = !{i64 2156830642}
!70 = !{i64 2156831457}
!71 = !{i64 2156832138}
!72 = !{i64 2156836946}
!73 = !{i64 2156858070}
!74 = !{i64 2156858674}
!75 = !{i64 2156860164}
!76 = !{i64 2156861097}
!77 = !{i64 2156861333}
!78 = !{i64 2156862056}
!79 = !{i64 2156862902}
!80 = !{i64 2156864179}
!81 = !{i64 2156863405}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.peeled.count", i32 1}
!84 = !{i64 2156864415}
