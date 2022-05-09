; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/ws.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/ws.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.irdma_sc_vsi = type { i16, ptr, ptr, i32, %struct.irdma_virt_mem, ptr, i32, %struct.irdma_virt_mem, ptr, i32, i16, i16, i8, i32, i8, [8 x %struct.irdma_qos], ptr, %struct.atomic_t, ptr, ptr, i8, i8 }
%struct.irdma_virt_mem = type { ptr, i32 }
%struct.irdma_qos = type { %struct.list_head, %struct.mutex, i64, i32, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irdma_sc_dev = type { %struct.list_head, %struct.spinlock, [128 x i8], [32 x %struct.irdma_dma_mem], i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr], i32, [6 x i64], [6 x i64], [13 x i64], [33 x i64], [27 x i64], [51 x i64], %struct.irdma_hw_attrs, ptr, ptr, ptr, [1024 x ptr], ptr, ptr, %struct.irdma_hmc_fpm_misc, ptr, %struct.mutex, i16, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.irdma_hw_attrs = type { %struct.irdma_uk_attrs, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_hmc_fpm_misc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irdma_ws_node = type { %struct.list_head, %struct.list_head, ptr, i64, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.irdma_ws_node_info = type { i16, i16, i16, i16, i8, i8, i8, i8 }

@irdma_ws_add.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"irdma_ws_add\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/irdma/ws.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WS: Creating root node\0A\00", [40 x i8] zeroinitializer }, align 32
@irdma_ws_add.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WS: Node not found matching VSI %d\0A\00", [60 x i8] zeroinitializer }, align 32
@irdma_ws_add.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"WS: Using node %d which represents VSI %d\0A\00", [53 x i8] zeroinitializer }, align 32
@irdma_ws_add.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"WS: Node not found matching VSI %d and TC %d\0A\00", [50 x i8] zeroinitializer }, align 32
@irdma_ws_add.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"WS: Using node %d which represents VSI %d TC %d\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irdma_ws_cqp_cmd.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irdma_ws_cqp_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WS: CQP WS CMD failed\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 257, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 280, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 299, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 307, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 338, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [36 x i8] c"../drivers/infiniband/hw/irdma/ws.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 108, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_ws_add(ptr noundef %vsi, i8 noundef zeroext %user_pri) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ws_mutex = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ws_mutex, i32 noundef 0) #4
  %tc_change_pending = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 14
  %2 = ptrtoint ptr %tc_change_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %tc_change_pending, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end:                                           ; preds = %entry
  %idxprom = zext i8 %user_pri to i32
  %valid = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom, i32 8
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end2, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end2:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %ws_tree_root4 = getelementptr inbounds %struct.irdma_sc_dev, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %ws_tree_root4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ws_tree_root4, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %do.body, label %if.end2.if.end24_crit_edge

if.end2.if.end24_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

do.body:                                          ; preds = %if.end2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ws_add.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ws_add, %if.then10)) #4
          to label %do.end [label %if.then10], !srcloc !32

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call12 = tail call ptr @to_ibdev(ptr noundef %11) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ws_add.__UNIQUE_ID_ddebug497, ptr noundef %call12, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 48) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.exit_crit_edge, label %if.end17

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end17:                                         ; preds = %do.end
  %index.i = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %index.i, align 4
  %14 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsi, align 8
  %vsi_index.i = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %vsi_index.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %vsi_index.i, align 8
  %child_list_head.i = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %child_list_head.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %child_list_head.i, ptr %child_list_head.i, align 8
  %prev.i.i = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %child_list_head.i, ptr %prev.i.i, align 4
  %type_leaf.i = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i, i32 0, i32 13
  %19 = ptrtoint ptr %type_leaf.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %type_leaf.i, align 1
  %bf.set33.i = or i8 %bf.load.i, 64
  store i8 %bf.set33.i, ptr %type_leaf.i, align 1
  %20 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %20, align 4
  %22 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i, i32 0, i32 12
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %22, align 2
  %parent35.i = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %parent35.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %parent35.i, align 8
  %call18 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i, i8 noundef zeroext 39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  %25 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i304 = icmp eq i16 %26, 0
  br i1 %tobool.not.i304, label %if.then20.irdma_free_node.exit_crit_edge, label %if.then.i

if.then20.irdma_free_node.exit_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_free_node.exit

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void @irdma_free_ws_node_id(ptr noundef %28, i16 noundef zeroext %26) #4
  br label %irdma_free_node.exit

irdma_free_node.exit:                             ; preds = %if.then.i, %if.then20.irdma_free_node.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %exit

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %ws_tree_root23 = getelementptr inbounds %struct.irdma_sc_dev, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %ws_tree_root23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %ws_tree_root23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end2.if.end24_crit_edge
  %ws_tree_root.0 = phi ptr [ %9, %if.end2.if.end24_crit_edge ], [ %call7.i.i.i, %if.end21 ]
  %32 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vsi, align 8
  %child_list_head.i306 = getelementptr inbounds %struct.irdma_ws_node, ptr %ws_tree_root.0, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end24
  %node.0.in.i = phi ptr [ %child_list_head.i306, %if.end24 ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %34 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %node.0.i = load ptr, ptr %node.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %node.0.i, %child_list_head.i306
  br i1 %cmp.not.i, label %for.cond.i.do.body28_crit_edge, label %for.body.i

for.cond.i.do.body28_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body28

for.body.i:                                       ; preds = %for.cond.i
  %vsi_index.i307 = getelementptr inbounds %struct.irdma_ws_node, ptr %node.0.i, i32 0, i32 7
  %35 = ptrtoint ptr %vsi_index.i307 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vsi_index.i307, align 8
  %cmp3.i = icmp eq i16 %36, %33
  br i1 %cmp3.i, label %ws_find_node.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

ws_find_node.exit:                                ; preds = %for.body.i
  %tobool26.not = icmp eq ptr %node.0.i, null
  br i1 %tobool26.not, label %ws_find_node.exit.do.body28_crit_edge, label %ws_find_node.exit.do.body56_crit_edge

ws_find_node.exit.do.body56_crit_edge:            ; preds = %ws_find_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body56

ws_find_node.exit.do.body28_crit_edge:            ; preds = %ws_find_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body28

do.body28:                                        ; preds = %ws_find_node.exit.do.body28_crit_edge, %for.cond.i.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ws_add.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ws_add, %if.then40)) #4
          to label %do.end46 [label %if.then40], !srcloc !32

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %call42 = tail call ptr @to_ibdev(ptr noundef %38) #4
  %39 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vsi, align 8
  %conv = zext i16 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ws_add.__UNIQUE_ID_ddebug498, ptr noundef %call42, ptr noundef nonnull @.str.4, i32 noundef %conv) #4
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i309 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 48) #7
  %tobool.not.i310 = icmp eq ptr %call7.i.i.i309, null
  br i1 %tobool.not.i310, label %do.end46.vsi_add_err_crit_edge, label %if.end.i311

do.end46.vsi_add_err_crit_edge:                   ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %vsi_add_err

if.end.i311:                                      ; preds = %do.end46
  %tobool3.not.i = icmp eq ptr %ws_tree_root.0, null
  br i1 %tobool3.not.i, label %if.end.i311.if.end50_crit_edge, label %if.then4.i

if.end.i311.if.end50_crit_edge:                   ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then4.i:                                       ; preds = %if.end.i311
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %call5.i = tail call zeroext i16 @irdma_alloc_ws_node_id(ptr noundef %43) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call5.i)
  %cmp.i = icmp eq i16 %call5.i, -1
  br i1 %cmp.i, label %if.then7.i, label %if.then4.i.if.end50_crit_edge

if.then4.i.if.end50_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i309) #4
  br label %vsi_add_err

if.end50:                                         ; preds = %if.then4.i.if.end50_crit_edge, %if.end.i311.if.end50_crit_edge
  %node_index.0.i = phi i16 [ %call5.i, %if.then4.i.if.end50_crit_edge ], [ 0, %if.end.i311.if.end50_crit_edge ]
  %index.i313 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i309, i32 0, i32 5
  %44 = ptrtoint ptr %index.i313 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %node_index.0.i, ptr %index.i313, align 4
  %45 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vsi, align 8
  %vsi_index.i314 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i309, i32 0, i32 7
  %47 = ptrtoint ptr %vsi_index.i314 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %vsi_index.i314, align 8
  %child_list_head.i315 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i309, i32 0, i32 1
  %48 = ptrtoint ptr %child_list_head.i315 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %child_list_head.i315, ptr %child_list_head.i315, align 8
  %prev.i.i316 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i309, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i.i316 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %child_list_head.i315, ptr %prev.i.i316, align 4
  %type_leaf.i317 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i309, i32 0, i32 13
  %50 = ptrtoint ptr %type_leaf.i317 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i318 = load i8, ptr %type_leaf.i317, align 1
  %bf.set33.i319 = or i8 %bf.load.i318, 64
  store i8 %bf.set33.i319, ptr %type_leaf.i317, align 1
  %51 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i309, i32 0, i32 10
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %51, align 4
  %53 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i309, i32 0, i32 12
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %53, align 2
  %parent35.i320 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i309, i32 0, i32 2
  %55 = ptrtoint ptr %parent35.i320 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ws_tree_root.0, ptr %parent35.i320, align 8
  %call51 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i309, i8 noundef zeroext 39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @irdma_free_node(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i309)
  br label %vsi_add_err

if.end54:                                         ; preds = %if.end50
  %56 = ptrtoint ptr %child_list_head.i306 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %child_list_head.i306, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i309, ptr noundef %child_list_head.i306, ptr noundef %57) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end54.do.body56_crit_edge

if.end54.do.body56_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body56

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i.i309, ptr %prev1.i.i, align 4
  %59 = ptrtoint ptr %call7.i.i.i309 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %call7.i.i.i309, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i309, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %child_list_head.i306, ptr %prev3.i.i, align 4
  %61 = ptrtoint ptr %child_list_head.i306 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call7.i.i.i309, ptr %child_list_head.i306, align 4
  br label %do.body56

do.body56:                                        ; preds = %if.end.i.i, %if.end54.do.body56_crit_edge, %ws_find_node.exit.do.body56_crit_edge
  %vsi_node.0 = phi ptr [ %node.0.i, %ws_find_node.exit.do.body56_crit_edge ], [ %call7.i.i.i309, %if.end54.do.body56_crit_edge ], [ %call7.i.i.i309, %if.end.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ws_add.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ws_add, %if.then68)) #4
          to label %do.end76 [label %if.then68], !srcloc !32

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %call70 = tail call ptr @to_ibdev(ptr noundef %63) #4
  %index = getelementptr inbounds %struct.irdma_ws_node, ptr %vsi_node.0, i32 0, i32 5
  %64 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %index, align 4
  %conv71 = zext i16 %65 to i32
  %66 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vsi, align 8
  %conv73 = zext i16 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ws_add.__UNIQUE_ID_ddebug499, ptr noundef %call70, ptr noundef nonnull @.str.5, i32 noundef %conv71, i32 noundef %conv73) #4
  br label %do.end76

do.end76:                                         ; preds = %if.then68, %do.body56
  %traffic_class80 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom, i32 5
  %68 = ptrtoint ptr %traffic_class80 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %traffic_class80, align 2
  %child_list_head12.i = getelementptr inbounds %struct.irdma_ws_node, ptr %vsi_node.0, i32 0, i32 1
  br label %for.cond16.i

for.cond16.i:                                     ; preds = %for.body22.i.for.cond16.i_crit_edge, %do.end76
  %node.1.in.i = phi ptr [ %child_list_head12.i, %do.end76 ], [ %node.1.i, %for.body22.i.for.cond16.i_crit_edge ]
  %70 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %node.1.i = load ptr, ptr %node.1.in.i, align 8
  %cmp19.not.i = icmp eq ptr %node.1.i, %child_list_head12.i
  br i1 %cmp19.not.i, label %for.cond16.i.do.body85_crit_edge, label %for.body22.i

for.cond16.i.do.body85_crit_edge:                 ; preds = %for.cond16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body85

for.body22.i:                                     ; preds = %for.cond16.i
  %traffic_class.i = getelementptr inbounds %struct.irdma_ws_node, ptr %node.1.i, i32 0, i32 8
  %71 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %traffic_class.i, align 2
  %cmp25.i = icmp eq i8 %72, %69
  br i1 %cmp25.i, label %ws_find_node.exit324, label %for.body22.i.for.cond16.i_crit_edge

for.body22.i.for.cond16.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond16.i

ws_find_node.exit324:                             ; preds = %for.body22.i
  %tobool83.not = icmp eq ptr %node.1.i, null
  br i1 %tobool83.not, label %ws_find_node.exit324.do.body85_crit_edge, label %ws_find_node.exit324.do.body127_crit_edge

ws_find_node.exit324.do.body127_crit_edge:        ; preds = %ws_find_node.exit324
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body127

ws_find_node.exit324.do.body85_crit_edge:         ; preds = %ws_find_node.exit324
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body85

do.body85:                                        ; preds = %ws_find_node.exit324.do.body85_crit_edge, %for.cond16.i.do.body85_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ws_add.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ws_add, %if.then97)) #4
          to label %do.end105 [label %if.then97], !srcloc !32

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %call99 = tail call ptr @to_ibdev(ptr noundef %74) #4
  %75 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vsi, align 8
  %conv101 = zext i16 %76 to i32
  %conv102 = zext i8 %69 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ws_add.__UNIQUE_ID_ddebug500, ptr noundef %call99, ptr noundef nonnull @.str.6, i32 noundef %conv101, i32 noundef %conv102) #4
  br label %do.end105

do.end105:                                        ; preds = %if.then97, %do.body85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i325 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3520, i32 noundef 48) #7
  %tobool.not.i326 = icmp eq ptr %call7.i.i.i325, null
  br i1 %tobool.not.i326, label %do.end105.leaf_add_err_crit_edge, label %if.end.i328

do.end105.leaf_add_err_crit_edge:                 ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %leaf_add_err

if.end.i328:                                      ; preds = %do.end105
  %tobool3.not.i327 = icmp eq ptr %vsi_node.0, null
  br i1 %tobool3.not.i327, label %if.end.i328.if.end109_crit_edge, label %if.then4.i332

if.end.i328.if.end109_crit_edge:                  ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

if.then4.i332:                                    ; preds = %if.end.i328
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %call5.i330 = tail call zeroext i16 @irdma_alloc_ws_node_id(ptr noundef %79) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call5.i330)
  %cmp.i331 = icmp eq i16 %call5.i330, -1
  br i1 %cmp.i331, label %if.then7.i333, label %if.then4.i332.if.end109_crit_edge

if.then4.i332.if.end109_crit_edge:                ; preds = %if.then4.i332
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

if.then7.i333:                                    ; preds = %if.then4.i332
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i325) #4
  br label %leaf_add_err

if.end109:                                        ; preds = %if.then4.i332.if.end109_crit_edge, %if.end.i328.if.end109_crit_edge
  %node_index.0.i334 = phi i16 [ %call5.i330, %if.then4.i332.if.end109_crit_edge ], [ 0, %if.end.i328.if.end109_crit_edge ]
  %index.i335 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 5
  %80 = ptrtoint ptr %index.i335 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %node_index.0.i334, ptr %index.i335, align 4
  %81 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vsi, align 8
  %vsi_index.i336 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 7
  %83 = ptrtoint ptr %vsi_index.i336 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %vsi_index.i336, align 8
  %child_list_head.i337 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 1
  %84 = ptrtoint ptr %child_list_head.i337 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %child_list_head.i337, ptr %child_list_head.i337, align 8
  %prev.i.i338 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %prev.i.i338 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %child_list_head.i337, ptr %prev.i.i338, align 4
  %type_leaf.i339 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 13
  %86 = ptrtoint ptr %type_leaf.i339 to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i340 = load i8, ptr %type_leaf.i339, align 1
  %bf.set.i = or i8 %bf.load.i340, -128
  store i8 %bf.set.i, ptr %type_leaf.i339, align 1
  %87 = ptrtoint ptr %traffic_class80 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %traffic_class80, align 2
  %traffic_class15.i = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 8
  %89 = ptrtoint ptr %traffic_class15.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %traffic_class15.i, align 2
  %user_pri16.i = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 9
  %90 = ptrtoint ptr %user_pri16.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %user_pri, ptr %user_pri16.i, align 1
  %rel_bw.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom, i32 6
  %91 = ptrtoint ptr %rel_bw.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rel_bw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool22.not.i = icmp eq i8 %92, 0
  %spec.select.i = select i1 %tobool22.not.i, i8 1, i8 %92
  %lan_qos_handle.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom, i32 2
  %93 = ptrtoint ptr %lan_qos_handle.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %lan_qos_handle.i, align 8
  %lan_qs_handle.i = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 3
  %95 = ptrtoint ptr %lan_qs_handle.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %lan_qs_handle.i, align 8
  %96 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 10
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %spec.select.i, ptr %96, align 4
  %98 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 12
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %98, align 2
  %parent35.i343 = getelementptr inbounds %struct.irdma_ws_node, ptr %call7.i.i.i325, i32 0, i32 2
  %100 = ptrtoint ptr %parent35.i343 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %vsi_node.0, ptr %parent35.i343, align 8
  %call110 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i325, i8 noundef zeroext 39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @irdma_free_node(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i325)
  br label %leaf_add_err

if.end113:                                        ; preds = %if.end109
  %101 = ptrtoint ptr %child_list_head12.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %child_list_head12.i, align 4
  %call.i.i346 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i325, ptr noundef %child_list_head12.i, ptr noundef %102) #4
  br i1 %call.i.i346, label %if.end.i.i349, label %if.end113.list_add.exit350_crit_edge

if.end113.list_add.exit350_crit_edge:             ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit350

if.end.i.i349:                                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i347 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i347 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i.i325, ptr %prev1.i.i347, align 4
  %104 = ptrtoint ptr %call7.i.i.i325 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %102, ptr %call7.i.i.i325, align 8
  %prev3.i.i348 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i325, i32 0, i32 1
  %105 = ptrtoint ptr %prev3.i.i348 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %child_list_head12.i, ptr %prev3.i.i348, align 4
  %106 = ptrtoint ptr %child_list_head12.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %call7.i.i.i325, ptr %child_list_head12.i, align 4
  br label %list_add.exit350

list_add.exit350:                                 ; preds = %if.end.i.i349, %if.end113.list_add.exit350_crit_edge
  %register_qset = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 18
  %107 = ptrtoint ptr %register_qset to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %register_qset, align 8
  %call116 = tail call i32 %108(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i325) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %list_add.exit350.reg_err_crit_edge

list_add.exit350.reg_err_crit_edge:               ; preds = %list_add.exit350
  call void @__sanitizer_cov_trace_pc() #6
  br label %reg_err

if.end119:                                        ; preds = %list_add.exit350
  %109 = ptrtoint ptr %type_leaf.i339 to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load120 = load i8, ptr %type_leaf.i339, align 1
  %bf.set = or i8 %bf.load120, 64
  store i8 %bf.set, ptr %type_leaf.i339, align 1
  %call122 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i325, i8 noundef zeroext 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end119.do.body127_crit_edge, label %if.then124

if.end119.do.body127_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body127

if.then124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  %unregister_qset = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 19
  %110 = ptrtoint ptr %unregister_qset to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %unregister_qset, align 4
  tail call void %111(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i325) #4
  br label %reg_err

do.body127:                                       ; preds = %if.end119.do.body127_crit_edge, %ws_find_node.exit324.do.body127_crit_edge
  %tc_node.0 = phi ptr [ %node.1.i, %ws_find_node.exit324.do.body127_crit_edge ], [ %call7.i.i.i325, %if.end119.do.body127_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ws_add.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ws_add, %if.then139)) #4
          to label %do.end149 [label %if.then139], !srcloc !32

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #6
  %112 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev, align 4
  %call141 = tail call ptr @to_ibdev(ptr noundef %113) #4
  %index142 = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node.0, i32 0, i32 5
  %114 = ptrtoint ptr %index142 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %index142, align 4
  %conv143 = zext i16 %115 to i32
  %116 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %vsi, align 8
  %conv145 = zext i16 %117 to i32
  %conv146 = zext i8 %69 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ws_add.__UNIQUE_ID_ddebug501, ptr noundef %call141, ptr noundef nonnull @.str.7, i32 noundef %conv143, i32 noundef %conv145, i32 noundef %conv146) #4
  br label %do.end149

do.end149:                                        ; preds = %if.then139, %do.body127
  %qs_handle = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node.0, i32 0, i32 6
  %lan_qs_handle = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node.0, i32 0, i32 3
  %l2_sched_node_id = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node.0, i32 0, i32 4
  %traffic_class153 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 0, i32 5
  %118 = ptrtoint ptr %traffic_class153 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %traffic_class153, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %119, i8 %69)
  %cmp156 = icmp eq i8 %119, %69
  br i1 %cmp156, label %if.then158, label %do.end149.for.inc_crit_edge

do.end149.for.inc_crit_edge:                      ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then158:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #6
  %120 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %qs_handle, align 2
  %qs_handle161 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 0, i32 4
  %122 = ptrtoint ptr %qs_handle161 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %qs_handle161, align 4
  %123 = ptrtoint ptr %lan_qs_handle to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %lan_qs_handle, align 8
  %lan_qos_handle = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 0, i32 2
  %125 = ptrtoint ptr %lan_qos_handle to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %lan_qos_handle, align 8
  %126 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %l2_sched_node_id, align 8
  %l2_sched_node_id166 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 0, i32 3
  %128 = ptrtoint ptr %l2_sched_node_id166 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %l2_sched_node_id166, align 8
  %valid169 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 0, i32 8
  %129 = ptrtoint ptr %valid169 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %valid169, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then158, %do.end149.for.inc_crit_edge
  %traffic_class153.1 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 1, i32 5
  %130 = ptrtoint ptr %traffic_class153.1 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %traffic_class153.1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %69)
  %cmp156.1 = icmp eq i8 %131, %69
  br i1 %cmp156.1, label %if.then158.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then158.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %132 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %qs_handle, align 2
  %qs_handle161.1 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 1, i32 4
  %134 = ptrtoint ptr %qs_handle161.1 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %qs_handle161.1, align 4
  %135 = ptrtoint ptr %lan_qs_handle to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %lan_qs_handle, align 8
  %lan_qos_handle.1 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 1, i32 2
  %137 = ptrtoint ptr %lan_qos_handle.1 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %lan_qos_handle.1, align 8
  %138 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %l2_sched_node_id, align 8
  %l2_sched_node_id166.1 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 1, i32 3
  %140 = ptrtoint ptr %l2_sched_node_id166.1 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %l2_sched_node_id166.1, align 8
  %valid169.1 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 1, i32 8
  %141 = ptrtoint ptr %valid169.1 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %valid169.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then158.1, %for.inc.for.inc.1_crit_edge
  %traffic_class153.2 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 2, i32 5
  %142 = ptrtoint ptr %traffic_class153.2 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %traffic_class153.2, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %69)
  %cmp156.2 = icmp eq i8 %143, %69
  br i1 %cmp156.2, label %if.then158.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then158.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %144 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %qs_handle, align 2
  %qs_handle161.2 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 2, i32 4
  %146 = ptrtoint ptr %qs_handle161.2 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %qs_handle161.2, align 4
  %147 = ptrtoint ptr %lan_qs_handle to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %lan_qs_handle, align 8
  %lan_qos_handle.2 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 2, i32 2
  %149 = ptrtoint ptr %lan_qos_handle.2 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %lan_qos_handle.2, align 8
  %150 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %l2_sched_node_id, align 8
  %l2_sched_node_id166.2 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 2, i32 3
  %152 = ptrtoint ptr %l2_sched_node_id166.2 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %l2_sched_node_id166.2, align 8
  %valid169.2 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 2, i32 8
  %153 = ptrtoint ptr %valid169.2 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %valid169.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then158.2, %for.inc.1.for.inc.2_crit_edge
  %traffic_class153.3 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 3, i32 5
  %154 = ptrtoint ptr %traffic_class153.3 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %traffic_class153.3, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %155, i8 %69)
  %cmp156.3 = icmp eq i8 %155, %69
  br i1 %cmp156.3, label %if.then158.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then158.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %156 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %qs_handle, align 2
  %qs_handle161.3 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 3, i32 4
  %158 = ptrtoint ptr %qs_handle161.3 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %qs_handle161.3, align 4
  %159 = ptrtoint ptr %lan_qs_handle to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %lan_qs_handle, align 8
  %lan_qos_handle.3 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 3, i32 2
  %161 = ptrtoint ptr %lan_qos_handle.3 to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %160, ptr %lan_qos_handle.3, align 8
  %162 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %l2_sched_node_id, align 8
  %l2_sched_node_id166.3 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 3, i32 3
  %164 = ptrtoint ptr %l2_sched_node_id166.3 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %l2_sched_node_id166.3, align 8
  %valid169.3 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 3, i32 8
  %165 = ptrtoint ptr %valid169.3 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %valid169.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then158.3, %for.inc.2.for.inc.3_crit_edge
  %traffic_class153.4 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 4, i32 5
  %166 = ptrtoint ptr %traffic_class153.4 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %traffic_class153.4, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %167, i8 %69)
  %cmp156.4 = icmp eq i8 %167, %69
  br i1 %cmp156.4, label %if.then158.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then158.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %168 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %qs_handle, align 2
  %qs_handle161.4 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 4, i32 4
  %170 = ptrtoint ptr %qs_handle161.4 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %qs_handle161.4, align 4
  %171 = ptrtoint ptr %lan_qs_handle to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %lan_qs_handle, align 8
  %lan_qos_handle.4 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 4, i32 2
  %173 = ptrtoint ptr %lan_qos_handle.4 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %lan_qos_handle.4, align 8
  %174 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %l2_sched_node_id, align 8
  %l2_sched_node_id166.4 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 4, i32 3
  %176 = ptrtoint ptr %l2_sched_node_id166.4 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %l2_sched_node_id166.4, align 8
  %valid169.4 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 4, i32 8
  %177 = ptrtoint ptr %valid169.4 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %valid169.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then158.4, %for.inc.3.for.inc.4_crit_edge
  %traffic_class153.5 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 5, i32 5
  %178 = ptrtoint ptr %traffic_class153.5 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %traffic_class153.5, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %179, i8 %69)
  %cmp156.5 = icmp eq i8 %179, %69
  br i1 %cmp156.5, label %if.then158.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then158.5:                                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %180 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %qs_handle, align 2
  %qs_handle161.5 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 5, i32 4
  %182 = ptrtoint ptr %qs_handle161.5 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %qs_handle161.5, align 4
  %183 = ptrtoint ptr %lan_qs_handle to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %lan_qs_handle, align 8
  %lan_qos_handle.5 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 5, i32 2
  %185 = ptrtoint ptr %lan_qos_handle.5 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %184, ptr %lan_qos_handle.5, align 8
  %186 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %l2_sched_node_id, align 8
  %l2_sched_node_id166.5 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 5, i32 3
  %188 = ptrtoint ptr %l2_sched_node_id166.5 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %l2_sched_node_id166.5, align 8
  %valid169.5 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 5, i32 8
  %189 = ptrtoint ptr %valid169.5 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %valid169.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then158.5, %for.inc.4.for.inc.5_crit_edge
  %traffic_class153.6 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 6, i32 5
  %190 = ptrtoint ptr %traffic_class153.6 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %traffic_class153.6, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %191, i8 %69)
  %cmp156.6 = icmp eq i8 %191, %69
  br i1 %cmp156.6, label %if.then158.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then158.6:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %192 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %qs_handle, align 2
  %qs_handle161.6 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 6, i32 4
  %194 = ptrtoint ptr %qs_handle161.6 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %qs_handle161.6, align 4
  %195 = ptrtoint ptr %lan_qs_handle to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %lan_qs_handle, align 8
  %lan_qos_handle.6 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 6, i32 2
  %197 = ptrtoint ptr %lan_qos_handle.6 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %lan_qos_handle.6, align 8
  %198 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %l2_sched_node_id, align 8
  %l2_sched_node_id166.6 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 6, i32 3
  %200 = ptrtoint ptr %l2_sched_node_id166.6 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %l2_sched_node_id166.6, align 8
  %valid169.6 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 6, i32 8
  %201 = ptrtoint ptr %valid169.6 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 1, ptr %valid169.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then158.6, %for.inc.5.for.inc.6_crit_edge
  %traffic_class153.7 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 7, i32 5
  %202 = ptrtoint ptr %traffic_class153.7 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %traffic_class153.7, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %203, i8 %69)
  %cmp156.7 = icmp eq i8 %203, %69
  br i1 %cmp156.7, label %if.then158.7, label %for.inc.6.exit_crit_edge

for.inc.6.exit_crit_edge:                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.then158.7:                                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  %204 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %qs_handle, align 2
  %qs_handle161.7 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 7, i32 4
  %206 = ptrtoint ptr %qs_handle161.7 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %qs_handle161.7, align 4
  %207 = ptrtoint ptr %lan_qs_handle to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %lan_qs_handle, align 8
  %lan_qos_handle.7 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 7, i32 2
  %209 = ptrtoint ptr %lan_qos_handle.7 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %208, ptr %lan_qos_handle.7, align 8
  %210 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %l2_sched_node_id, align 8
  %l2_sched_node_id166.7 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 7, i32 3
  %212 = ptrtoint ptr %l2_sched_node_id166.7 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %l2_sched_node_id166.7, align 8
  %valid169.7 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 7, i32 8
  %213 = ptrtoint ptr %valid169.7 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %valid169.7, align 1
  br label %exit

reg_err:                                          ; preds = %if.then124, %list_add.exit350.reg_err_crit_edge
  %ret.3 = phi i32 [ %call116, %list_add.exit350.reg_err_crit_edge ], [ %call122, %if.then124 ]
  %call171 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i325, i8 noundef zeroext 41)
  %call.i.i351 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i325) #4
  br i1 %call.i.i351, label %if.end.i.i353, label %reg_err.list_del.exit_crit_edge

reg_err.list_del.exit_crit_edge:                  ; preds = %reg_err
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i353:                                    ; preds = %reg_err
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i352 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i325, i32 0, i32 1
  %214 = ptrtoint ptr %prev.i.i352 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %prev.i.i352, align 4
  %216 = ptrtoint ptr %call7.i.i.i325 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %call7.i.i.i325, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %215, ptr %prev1.i.i.i, align 4
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %217, ptr %215, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i353, %reg_err.list_del.exit_crit_edge
  %220 = ptrtoint ptr %call7.i.i.i325 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i325, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i325, i32 0, i32 1
  %221 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @irdma_free_node(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i325)
  br label %leaf_add_err

leaf_add_err:                                     ; preds = %list_del.exit, %if.then112, %if.then7.i333, %do.end105.leaf_add_err_crit_edge
  %ret.4 = phi i32 [ %call110, %if.then112 ], [ %ret.3, %list_del.exit ], [ -9, %if.then7.i333 ], [ -9, %do.end105.leaf_add_err_crit_edge ]
  %222 = ptrtoint ptr %child_list_head12.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile ptr, ptr %child_list_head12.i, align 4
  %cmp.i354.not = icmp eq ptr %223, %child_list_head12.i
  br i1 %cmp.i354.not, label %if.then176, label %leaf_add_err.vsi_add_err_crit_edge

leaf_add_err.vsi_add_err_crit_edge:               ; preds = %leaf_add_err
  call void @__sanitizer_cov_trace_pc() #6
  br label %vsi_add_err

if.then176:                                       ; preds = %leaf_add_err
  %call177 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef %vsi_node.0, i8 noundef zeroext 41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %if.then176.exit_crit_edge

if.then176.exit_crit_edge:                        ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end180:                                        ; preds = %if.then176
  %call.i.i355 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vsi_node.0) #4
  br i1 %call.i.i355, label %if.end.i.i358, label %if.end180.list_del.exit360_crit_edge

if.end180.list_del.exit360_crit_edge:             ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit360

if.end.i.i358:                                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i356 = getelementptr inbounds %struct.list_head, ptr %vsi_node.0, i32 0, i32 1
  %224 = ptrtoint ptr %prev.i.i356 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %prev.i.i356, align 4
  %226 = ptrtoint ptr %vsi_node.0 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %vsi_node.0, align 4
  %prev1.i.i.i357 = getelementptr inbounds %struct.list_head, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %prev1.i.i.i357 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %225, ptr %prev1.i.i.i357, align 4
  %229 = ptrtoint ptr %225 to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile ptr %227, ptr %225, align 4
  br label %list_del.exit360

list_del.exit360:                                 ; preds = %if.end.i.i358, %if.end180.list_del.exit360_crit_edge
  %230 = ptrtoint ptr %vsi_node.0 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr inttoptr (i32 256 to ptr), ptr %vsi_node.0, align 4
  %prev.i359 = getelementptr inbounds %struct.list_head, ptr %vsi_node.0, i32 0, i32 1
  %231 = ptrtoint ptr %prev.i359 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i359, align 4
  tail call fastcc void @irdma_free_node(ptr noundef %vsi, ptr noundef %vsi_node.0)
  br label %vsi_add_err

vsi_add_err:                                      ; preds = %list_del.exit360, %leaf_add_err.vsi_add_err_crit_edge, %if.then53, %if.then7.i, %do.end46.vsi_add_err_crit_edge
  %ret.5 = phi i32 [ %ret.4, %list_del.exit360 ], [ %ret.4, %leaf_add_err.vsi_add_err_crit_edge ], [ %call51, %if.then53 ], [ -9, %if.then7.i ], [ -9, %do.end46.vsi_add_err_crit_edge ]
  %232 = ptrtoint ptr %child_list_head.i306 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load volatile ptr, ptr %child_list_head.i306, align 4
  %cmp.i361.not = icmp eq ptr %233, %child_list_head.i306
  br i1 %cmp.i361.not, label %if.then186, label %vsi_add_err.exit_crit_edge

vsi_add_err.exit_crit_edge:                       ; preds = %vsi_add_err
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.then186:                                       ; preds = %vsi_add_err
  %call187 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef %ws_tree_root.0, i8 noundef zeroext 41)
  %234 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev, align 4
  %ws_tree_root189 = getelementptr inbounds %struct.irdma_sc_dev, ptr %235, i32 0, i32 33
  %236 = ptrtoint ptr %ws_tree_root189 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr null, ptr %ws_tree_root189, align 4
  %index.i363 = getelementptr inbounds %struct.irdma_ws_node, ptr %ws_tree_root.0, i32 0, i32 5
  %237 = ptrtoint ptr %index.i363 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %index.i363, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool.not.i364 = icmp eq i16 %238, 0
  br i1 %tobool.not.i364, label %if.then186.irdma_free_node.exit368_crit_edge, label %if.then.i366

if.then186.irdma_free_node.exit368_crit_edge:     ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_free_node.exit368

if.then.i366:                                     ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #6
  %239 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev, align 4
  tail call void @irdma_free_ws_node_id(ptr noundef %240, i16 noundef zeroext %238) #4
  br label %irdma_free_node.exit368

irdma_free_node.exit368:                          ; preds = %if.then.i366, %if.then186.irdma_free_node.exit368_crit_edge
  tail call void @kfree(ptr noundef %ws_tree_root.0) #4
  br label %exit

exit:                                             ; preds = %irdma_free_node.exit368, %vsi_add_err.exit_crit_edge, %if.then176.exit_crit_edge, %if.then158.7, %for.inc.6.exit_crit_edge, %irdma_free_node.exit, %do.end.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.6 = phi i32 [ 0, %if.end.exit_crit_edge ], [ %ret.4, %if.then176.exit_crit_edge ], [ %ret.5, %irdma_free_node.exit368 ], [ %ret.5, %vsi_add_err.exit_crit_edge ], [ %call18, %irdma_free_node.exit ], [ -48, %entry.exit_crit_edge ], [ -9, %do.end.exit_crit_edge ], [ 0, %if.then158.7 ], [ 0, %for.inc.6.exit_crit_edge ]
  %241 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev, align 4
  %ws_mutex192 = getelementptr inbounds %struct.irdma_sc_dev, ptr %242, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ws_mutex192) #4
  ret i32 %ret.6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_ibdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_ws_cqp_cmd(ptr nocapture noundef %vsi, ptr nocapture noundef %node, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %node_info = alloca %struct.irdma_ws_node_info, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %node_info) #4
  %0 = getelementptr inbounds i8, ptr %node_info, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 0, ptr %0, align 2
  %index = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 4
  %4 = ptrtoint ptr %node_info to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %node_info, align 2
  %vsi_index = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 7
  %5 = ptrtoint ptr %vsi_index to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vsi_index, align 8
  %vsi1 = getelementptr inbounds %struct.irdma_ws_node_info, ptr %node_info, i32 0, i32 1
  %7 = ptrtoint ptr %vsi1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %vsi1, align 2
  %parent = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 2
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %index3 = getelementptr inbounds %struct.irdma_ws_node, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %index3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i16 [ %11, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.irdma_ws_node_info, ptr %node_info, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %.sink, ptr %12, align 2
  %rel_bw = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 10
  %14 = ptrtoint ptr %rel_bw to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rel_bw, align 4
  %weight = getelementptr inbounds %struct.irdma_ws_node_info, ptr %node_info, i32 0, i32 7
  %16 = ptrtoint ptr %weight to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %weight, align 1
  %traffic_class = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 8
  %17 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %traffic_class, align 2
  %tc = getelementptr inbounds %struct.irdma_ws_node_info, ptr %node_info, i32 0, i32 6
  %19 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tc, align 2
  %prio_type = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 12
  %20 = ptrtoint ptr %prio_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %prio_type, align 2
  %prio_type6 = getelementptr inbounds %struct.irdma_ws_node_info, ptr %node_info, i32 0, i32 5
  %22 = ptrtoint ptr %prio_type6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %prio_type6, align 1
  %type_leaf = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 13
  %23 = ptrtoint ptr %type_leaf to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %type_leaf, align 1
  %type_leaf7 = getelementptr inbounds %struct.irdma_ws_node_info, ptr %node_info, i32 0, i32 4
  %24 = ptrtoint ptr %type_leaf7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load8 = load i8, ptr %type_leaf7, align 2
  %bf.clear = and i8 %bf.load8, 63
  %bf.set = and i8 %bf.load, -64
  %bf.set18 = or i8 %bf.set, %bf.clear
  store i8 %bf.set18, ptr %type_leaf7, align 2
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call = call i32 @irdma_cqp_ws_node_cmd(ptr noundef %26, i8 noundef zeroext %cmd, ptr noundef nonnull %node_info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end30, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ws_cqp_cmd.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ws_cqp_cmd, %if.then26)) #4
          to label %cleanup [label %if.then26], !srcloc !32

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call28 = call ptr @to_ibdev(ptr noundef %28) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ws_cqp_cmd.__UNIQUE_ID_ddebug496, ptr noundef %call28, ptr noundef nonnull @.str.9) #4
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %29 = ptrtoint ptr %type_leaf to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load32 = load i8, ptr %type_leaf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load32)
  %bf.cast34.not = icmp slt i8 %bf.load32, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %cmd)
  %cmp = icmp eq i8 %cmd, 39
  %or.cond = and i1 %cmp, %bf.cast34.not
  br i1 %or.cond, label %if.then36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %qs_handle = getelementptr inbounds %struct.irdma_ws_node_info, ptr %node_info, i32 0, i32 3
  %30 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %qs_handle, align 2
  %qs_handle37 = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 6
  %32 = ptrtoint ptr %qs_handle37 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %qs_handle37, align 2
  %user_pri = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 9
  %33 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %user_pri, align 1
  %idxprom = zext i8 %34 to i32
  %qs_handle39 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom, i32 4
  %35 = ptrtoint ptr %qs_handle39 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %31, ptr %qs_handle39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end30.cleanup_crit_edge, %if.then26, %do.body
  %retval.0 = phi i32 [ -9, %if.then26 ], [ 0, %if.then36 ], [ 0, %if.end30.cleanup_crit_edge ], [ -9, %do.body ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %node_info) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_free_node(ptr nocapture noundef readonly %vsi, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.irdma_ws_node, ptr %node, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @irdma_free_ws_node_id(ptr noundef %3, i16 noundef zeroext %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %node) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_ws_remove(ptr noundef %vsi, i8 noundef zeroext %user_pri) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ws_mutex = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ws_mutex, i32 noundef 0) #4
  %idxprom.i = zext i8 %user_pri to i32
  %arrayidx.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom.i
  %qos_mutex.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom.i, i32 1
  tail call void @mutex_lock_nested(ptr noundef %qos_mutex.i, i32 noundef 0) #4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.cond.preheader.i, label %entry.irdma_tc_in_use.exit.thread_crit_edge

entry.irdma_tc_in_use.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_tc_in_use.exit.thread

for.cond.preheader.i:                             ; preds = %entry
  %traffic_class13.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom.i, i32 5
  %4 = ptrtoint ptr %traffic_class13.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %traffic_class13.i, align 2
  %traffic_class.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 0, i32 5
  %6 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %traffic_class.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %5)
  %cmp15.i = icmp eq i8 %7, %5
  br i1 %cmp15.i, label %land.lhs.true.i, label %for.cond.preheader.i.for.inc.i_crit_edge

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  %arrayidx9.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 0
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx9.i, align 4
  %cmp.i47.not.i = icmp eq ptr %9, %arrayidx9.i
  br i1 %cmp.i47.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.irdma_tc_in_use.exit.thread_crit_edge

land.lhs.true.i.irdma_tc_in_use.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_tc_in_use.exit.thread

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %traffic_class.1.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 1, i32 5
  %10 = ptrtoint ptr %traffic_class.1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %traffic_class.1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %5)
  %cmp15.1.i = icmp eq i8 %11, %5
  br i1 %cmp15.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx9.1.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx9.1.i, align 4
  %cmp.i47.not.1.i = icmp eq ptr %13, %arrayidx9.1.i
  br i1 %cmp.i47.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.irdma_tc_in_use.exit.thread_crit_edge

land.lhs.true.1.i.irdma_tc_in_use.exit.thread_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_tc_in_use.exit.thread

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %traffic_class.2.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 2, i32 5
  %14 = ptrtoint ptr %traffic_class.2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %traffic_class.2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %5)
  %cmp15.2.i = icmp eq i8 %15, %5
  br i1 %cmp15.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx9.2.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 2
  %16 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx9.2.i, align 4
  %cmp.i47.not.2.i = icmp eq ptr %17, %arrayidx9.2.i
  br i1 %cmp.i47.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.irdma_tc_in_use.exit.thread_crit_edge

land.lhs.true.2.i.irdma_tc_in_use.exit.thread_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_tc_in_use.exit.thread

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %traffic_class.3.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 3, i32 5
  %18 = ptrtoint ptr %traffic_class.3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %traffic_class.3.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %5)
  %cmp15.3.i = icmp eq i8 %19, %5
  br i1 %cmp15.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx9.3.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 3
  %20 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx9.3.i, align 4
  %cmp.i47.not.3.i = icmp eq ptr %21, %arrayidx9.3.i
  br i1 %cmp.i47.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.irdma_tc_in_use.exit.thread_crit_edge

land.lhs.true.3.i.irdma_tc_in_use.exit.thread_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_tc_in_use.exit.thread

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %traffic_class.4.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 4, i32 5
  %22 = ptrtoint ptr %traffic_class.4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %traffic_class.4.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %5)
  %cmp15.4.i = icmp eq i8 %23, %5
  br i1 %cmp15.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx9.4.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 4
  %24 = ptrtoint ptr %arrayidx9.4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %arrayidx9.4.i, align 4
  %cmp.i47.not.4.i = icmp eq ptr %25, %arrayidx9.4.i
  br i1 %cmp.i47.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i.irdma_tc_in_use.exit.thread_crit_edge

land.lhs.true.4.i.irdma_tc_in_use.exit.thread_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_tc_in_use.exit.thread

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %traffic_class.5.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 5, i32 5
  %26 = ptrtoint ptr %traffic_class.5.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %traffic_class.5.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %5)
  %cmp15.5.i = icmp eq i8 %27, %5
  br i1 %cmp15.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx9.5.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 5
  %28 = ptrtoint ptr %arrayidx9.5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx9.5.i, align 4
  %cmp.i47.not.5.i = icmp eq ptr %29, %arrayidx9.5.i
  br i1 %cmp.i47.not.5.i, label %land.lhs.true.5.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i.irdma_tc_in_use.exit.thread_crit_edge

land.lhs.true.5.i.irdma_tc_in_use.exit.thread_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_tc_in_use.exit.thread

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %traffic_class.6.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 6, i32 5
  %30 = ptrtoint ptr %traffic_class.6.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %traffic_class.6.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %5)
  %cmp15.6.i = icmp eq i8 %31, %5
  br i1 %cmp15.6.i, label %land.lhs.true.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %arrayidx9.6.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 6
  %32 = ptrtoint ptr %arrayidx9.6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx9.6.i, align 4
  %cmp.i47.not.6.i = icmp eq ptr %33, %arrayidx9.6.i
  br i1 %cmp.i47.not.6.i, label %land.lhs.true.6.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i.irdma_tc_in_use.exit.thread_crit_edge

land.lhs.true.6.i.irdma_tc_in_use.exit.thread_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_tc_in_use.exit.thread

land.lhs.true.6.i.for.inc.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %land.lhs.true.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %traffic_class.7.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 7, i32 5
  %34 = ptrtoint ptr %traffic_class.7.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %traffic_class.7.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %5)
  %cmp15.7.i = icmp eq i8 %35, %5
  br i1 %cmp15.7.i, label %land.lhs.true.7.i, label %for.inc.6.i.if.end_crit_edge

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %arrayidx9.7.i = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 7
  %36 = ptrtoint ptr %arrayidx9.7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx9.7.i, align 4
  %cmp.i47.not.7.i = icmp eq ptr %37, %arrayidx9.7.i
  br i1 %cmp.i47.not.7.i, label %land.lhs.true.7.i.if.end_crit_edge, label %land.lhs.true.7.i.irdma_tc_in_use.exit.thread_crit_edge

land.lhs.true.7.i.irdma_tc_in_use.exit.thread_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_tc_in_use.exit.thread

land.lhs.true.7.i.if.end_crit_edge:               ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

irdma_tc_in_use.exit.thread:                      ; preds = %land.lhs.true.7.i.irdma_tc_in_use.exit.thread_crit_edge, %land.lhs.true.6.i.irdma_tc_in_use.exit.thread_crit_edge, %land.lhs.true.5.i.irdma_tc_in_use.exit.thread_crit_edge, %land.lhs.true.4.i.irdma_tc_in_use.exit.thread_crit_edge, %land.lhs.true.3.i.irdma_tc_in_use.exit.thread_crit_edge, %land.lhs.true.2.i.irdma_tc_in_use.exit.thread_crit_edge, %land.lhs.true.1.i.irdma_tc_in_use.exit.thread_crit_edge, %land.lhs.true.i.irdma_tc_in_use.exit.thread_crit_edge, %entry.irdma_tc_in_use.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %qos_mutex.i) #4
  br label %exit

if.end:                                           ; preds = %land.lhs.true.7.i.if.end_crit_edge, %for.inc.6.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %qos_mutex.i) #4
  tail call fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext %user_pri)
  br label %exit

exit:                                             ; preds = %if.end, %irdma_tc_in_use.exit.thread
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %ws_mutex2 = getelementptr inbounds %struct.irdma_sc_dev, ptr %39, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ws_mutex2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext %user_pri) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %user_pri to i32
  %traffic_class1 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom, i32 5
  %0 = ptrtoint ptr %traffic_class1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %traffic_class1, align 2
  %traffic_class5 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 0, i32 5
  %2 = ptrtoint ptr %traffic_class5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %traffic_class5, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp8 = icmp eq i8 %3, %1
  br i1 %cmp8, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %valid = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 0, i32 8
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %valid, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %traffic_class5.1 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 1, i32 5
  %5 = ptrtoint ptr %traffic_class5.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %traffic_class5.1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %1)
  %cmp8.1 = icmp eq i8 %6, %1
  br i1 %cmp8.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %valid.1 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 1, i32 8
  %7 = ptrtoint ptr %valid.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %valid.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %traffic_class5.2 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 2, i32 5
  %8 = ptrtoint ptr %traffic_class5.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %traffic_class5.2, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %1)
  %cmp8.2 = icmp eq i8 %9, %1
  br i1 %cmp8.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %valid.2 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 2, i32 8
  %10 = ptrtoint ptr %valid.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %valid.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %traffic_class5.3 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 3, i32 5
  %11 = ptrtoint ptr %traffic_class5.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %traffic_class5.3, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %1)
  %cmp8.3 = icmp eq i8 %12, %1
  br i1 %cmp8.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %valid.3 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 3, i32 8
  %13 = ptrtoint ptr %valid.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %valid.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %traffic_class5.4 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 4, i32 5
  %14 = ptrtoint ptr %traffic_class5.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %traffic_class5.4, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %1)
  %cmp8.4 = icmp eq i8 %15, %1
  br i1 %cmp8.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %valid.4 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 4, i32 8
  %16 = ptrtoint ptr %valid.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %valid.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %traffic_class5.5 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 5, i32 5
  %17 = ptrtoint ptr %traffic_class5.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %traffic_class5.5, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %1)
  %cmp8.5 = icmp eq i8 %18, %1
  br i1 %cmp8.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %valid.5 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 5, i32 8
  %19 = ptrtoint ptr %valid.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %valid.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %traffic_class5.6 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 6, i32 5
  %20 = ptrtoint ptr %traffic_class5.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %traffic_class5.6, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %1)
  %cmp8.6 = icmp eq i8 %21, %1
  br i1 %cmp8.6, label %if.then.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %valid.6 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 6, i32 8
  %22 = ptrtoint ptr %valid.6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %valid.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %traffic_class5.7 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 7, i32 5
  %23 = ptrtoint ptr %traffic_class5.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %traffic_class5.7, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %1)
  %cmp8.7 = icmp eq i8 %24, %1
  br i1 %cmp8.7, label %if.then.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  %valid.7 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 7, i32 8
  %25 = ptrtoint ptr %valid.7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %valid.7, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %ws_tree_root12 = getelementptr inbounds %struct.irdma_sc_dev, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %ws_tree_root12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ws_tree_root12, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %for.inc.7.cleanup_crit_edge, label %if.end14

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %for.inc.7
  %30 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vsi, align 8
  %child_list_head.i = getelementptr inbounds %struct.irdma_ws_node, ptr %29, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end14
  %node.0.in.i = phi ptr [ %child_list_head.i, %if.end14 ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %32 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %node.0.i = load ptr, ptr %node.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %node.0.i, %child_list_head.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %vsi_index.i = getelementptr inbounds %struct.irdma_ws_node, ptr %node.0.i, i32 0, i32 7
  %33 = ptrtoint ptr %vsi_index.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vsi_index.i, align 8
  %cmp3.i = icmp eq i16 %34, %31
  br i1 %cmp3.i, label %ws_find_node.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

ws_find_node.exit:                                ; preds = %for.body.i
  %tobool15.not = icmp eq ptr %node.0.i, null
  br i1 %tobool15.not, label %ws_find_node.exit.cleanup_crit_edge, label %if.end17

ws_find_node.exit.cleanup_crit_edge:              ; preds = %ws_find_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %ws_find_node.exit
  %child_list_head12.i = getelementptr inbounds %struct.irdma_ws_node, ptr %node.0.i, i32 0, i32 1
  br label %for.cond16.i

for.cond16.i:                                     ; preds = %for.body22.i.for.cond16.i_crit_edge, %if.end17
  %node.1.in.i = phi ptr [ %child_list_head12.i, %if.end17 ], [ %node.1.i, %for.body22.i.for.cond16.i_crit_edge ]
  %35 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %node.1.i = load ptr, ptr %node.1.in.i, align 8
  %cmp19.not.i = icmp eq ptr %node.1.i, %child_list_head12.i
  br i1 %cmp19.not.i, label %for.cond16.i.cleanup_crit_edge, label %for.body22.i

for.cond16.i.cleanup_crit_edge:                   ; preds = %for.cond16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body22.i:                                     ; preds = %for.cond16.i
  %traffic_class.i = getelementptr inbounds %struct.irdma_ws_node, ptr %node.1.i, i32 0, i32 8
  %36 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %traffic_class.i, align 2
  %cmp25.i = icmp eq i8 %37, %1
  br i1 %cmp25.i, label %ws_find_node.exit78, label %for.body22.i.for.cond16.i_crit_edge

for.body22.i.for.cond16.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond16.i

ws_find_node.exit78:                              ; preds = %for.body22.i
  %tobool24.not = icmp eq ptr %node.1.i, null
  br i1 %tobool24.not, label %ws_find_node.exit78.cleanup_crit_edge, label %if.end26

ws_find_node.exit78.cleanup_crit_edge:            ; preds = %ws_find_node.exit78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %ws_find_node.exit78
  %call27 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef nonnull %node.1.i, i8 noundef zeroext 41)
  %unregister_qset = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 19
  %38 = ptrtoint ptr %unregister_qset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %unregister_qset, align 4
  tail call void %39(ptr noundef %vsi, ptr noundef nonnull %node.1.i) #4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %node.1.i) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_del.exit_crit_edge

if.end26.list_del.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.1.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %node.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %node.1.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end26.list_del.exit_crit_edge
  %46 = ptrtoint ptr %node.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %node.1.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.1.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %index.i = getelementptr inbounds %struct.irdma_ws_node, ptr %node.1.i, i32 0, i32 5
  %48 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i = icmp eq i16 %49, 0
  br i1 %tobool.not.i, label %list_del.exit.irdma_free_node.exit_crit_edge, label %if.then.i

list_del.exit.irdma_free_node.exit_crit_edge:     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_free_node.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void @irdma_free_ws_node_id(ptr noundef %51, i16 noundef zeroext %49) #4
  br label %irdma_free_node.exit

irdma_free_node.exit:                             ; preds = %if.then.i, %list_del.exit.irdma_free_node.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %node.1.i) #4
  %52 = ptrtoint ptr %child_list_head12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %child_list_head12.i, align 4
  %cmp.i.not = icmp eq ptr %53, %child_list_head12.i
  br i1 %cmp.i.not, label %if.then30, label %irdma_free_node.exit.cleanup_crit_edge

irdma_free_node.exit.cleanup_crit_edge:           ; preds = %irdma_free_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then30:                                        ; preds = %irdma_free_node.exit
  %call31 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef nonnull %node.0.i, i8 noundef zeroext 41)
  %call.i.i79 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %node.0.i) #4
  br i1 %call.i.i79, label %if.end.i.i82, label %if.then30.list_del.exit84_crit_edge

if.then30.list_del.exit84_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit84

if.end.i.i82:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i80 = getelementptr inbounds %struct.list_head, ptr %node.0.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i80, align 4
  %56 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %node.0.i, align 4
  %prev1.i.i.i81 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i81, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit84

list_del.exit84:                                  ; preds = %if.end.i.i82, %if.then30.list_del.exit84_crit_edge
  %60 = ptrtoint ptr %node.0.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %node.0.i, align 4
  %prev.i83 = getelementptr inbounds %struct.list_head, ptr %node.0.i, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i83, align 4
  %index.i85 = getelementptr inbounds %struct.irdma_ws_node, ptr %node.0.i, i32 0, i32 5
  %62 = ptrtoint ptr %index.i85 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %index.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.i86 = icmp eq i16 %63, 0
  br i1 %tobool.not.i86, label %list_del.exit84.irdma_free_node.exit89_crit_edge, label %if.then.i88

list_del.exit84.irdma_free_node.exit89_crit_edge: ; preds = %list_del.exit84
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_free_node.exit89

if.then.i88:                                      ; preds = %list_del.exit84
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  tail call void @irdma_free_ws_node_id(ptr noundef %65, i16 noundef zeroext %63) #4
  br label %irdma_free_node.exit89

irdma_free_node.exit89:                           ; preds = %if.then.i88, %list_del.exit84.irdma_free_node.exit89_crit_edge
  tail call void @kfree(ptr noundef nonnull %node.0.i) #4
  %66 = ptrtoint ptr %child_list_head.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %child_list_head.i, align 4
  %cmp.i90.not = icmp eq ptr %67, %child_list_head.i
  br i1 %cmp.i90.not, label %if.then36, label %irdma_free_node.exit89.cleanup_crit_edge

irdma_free_node.exit89.cleanup_crit_edge:         ; preds = %irdma_free_node.exit89
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then36:                                        ; preds = %irdma_free_node.exit89
  %call37 = tail call fastcc i32 @irdma_ws_cqp_cmd(ptr noundef %vsi, ptr noundef nonnull %29, i8 noundef zeroext 41)
  %index.i92 = getelementptr inbounds %struct.irdma_ws_node, ptr %29, i32 0, i32 5
  %68 = ptrtoint ptr %index.i92 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %index.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.i93 = icmp eq i16 %69, 0
  br i1 %tobool.not.i93, label %if.then36.irdma_free_node.exit96_crit_edge, label %if.then.i95

if.then36.irdma_free_node.exit96_crit_edge:       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %irdma_free_node.exit96

if.then.i95:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  tail call void @irdma_free_ws_node_id(ptr noundef %71, i16 noundef zeroext %69) #4
  br label %irdma_free_node.exit96

irdma_free_node.exit96:                           ; preds = %if.then.i95, %if.then36.irdma_free_node.exit96_crit_edge
  tail call void @kfree(ptr noundef nonnull %29) #4
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %ws_tree_root39 = getelementptr inbounds %struct.irdma_sc_dev, ptr %73, i32 0, i32 33
  %74 = ptrtoint ptr %ws_tree_root39 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %ws_tree_root39, align 4
  br label %cleanup

cleanup:                                          ; preds = %irdma_free_node.exit96, %irdma_free_node.exit89.cleanup_crit_edge, %irdma_free_node.exit.cleanup_crit_edge, %ws_find_node.exit78.cleanup_crit_edge, %for.cond16.i.cleanup_crit_edge, %ws_find_node.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_ws_reset(ptr noundef %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ws_mutex = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ws_mutex, i32 noundef 0) #4
  tail call fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext 0)
  tail call fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext 1)
  tail call fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext 2)
  tail call fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext 3)
  tail call fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext 4)
  tail call fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext 5)
  tail call fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext 6)
  tail call fastcc void @irdma_remove_leaf(ptr noundef %vsi, i8 noundef zeroext 7)
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ws_mutex3 = getelementptr inbounds %struct.irdma_sc_dev, ptr %3, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ws_mutex3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @irdma_alloc_ws_node_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_cqp_ws_node_cmd(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_free_ws_node_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/ws.c", i32 257, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @irdma_ws_add.__UNIQUE_ID_ddebug497, !1, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/ws.c", i32 280, i32 3}
!8 = !{ptr @irdma_ws_add.__UNIQUE_ID_ddebug498, !7, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/irdma/ws.c", i32 299, i32 2}
!11 = !{ptr @irdma_ws_add.__UNIQUE_ID_ddebug499, !10, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/irdma/ws.c", i32 307, i32 3}
!14 = !{ptr @irdma_ws_add.__UNIQUE_ID_ddebug500, !13, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/irdma/ws.c", i32 338, i32 2}
!17 = !{ptr @irdma_ws_add.__UNIQUE_ID_ddebug501, !16, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/irdma/ws.c", i32 108, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @irdma_ws_cqp_cmd.__UNIQUE_ID_ddebug496, !19, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
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
!32 = !{i64 2148496751, i64 2148496756, i64 2148496769, i64 2148496813, i64 2148496847, i64 2148496868}
