; ModuleID = '/llk/IR_all_yes/drivers/of/resolver.c_pt.bc'
source_filename = "../drivers/of/resolver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_resolve_phandles\22, \22a\22\09"
module asm "\09.weak\09__crc_of_resolve_phandles\09\09\09\09"
module asm "\09.long\09__crc_of_resolve_phandles\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_resolve_phandles:\09\09\09\09\09"
module asm "\09.asciz \09\22of_resolve_phandles\22\09\09\09\09\09"
module asm "__kstrtabns_of_resolve_phandles:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }

@of_resolve_phandles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013OF: resolver: null overlay\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"of_resolve_phandles\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/of/resolver.c\00", [42 x i8] zeroinitializer }, align 32
@of_resolve_phandles._entry_ptr = internal global ptr @of_resolve_phandles._entry, section ".printk_index", align 4
@of_resolve_phandles._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013OF: resolver: overlay not detached\0A\00", [58 x i8] zeroinitializer }, align 32
@of_resolve_phandles._entry_ptr.5 = internal global ptr @of_resolve_phandles._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__local_fixups__\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__fixups__\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"/__symbols__\00", [19 x i8] zeroinitializer }, align 32
@of_resolve_phandles._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013OF: resolver: no symbols in root of device tree.\0A\00", [44 x i8] zeroinitializer }, align 32
@of_resolve_phandles._entry_ptr.11 = internal global ptr @of_resolve_phandles._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@of_resolve_phandles._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013OF: resolver: node label '%s' not found in live devicetree symbols table\0A\00", [52 x i8] zeroinitializer }, align 32
@of_resolve_phandles._entry_ptr.15 = internal global ptr @of_resolve_phandles._entry.13, section ".printk_index", align 4
@of_resolve_phandles._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013OF: resolver: overlay phandle fixup failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@of_resolve_phandles._entry_ptr.18 = internal global ptr @of_resolve_phandles._entry.16, section ".printk_index", align 4
@__kstrtab_of_resolve_phandles = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_resolve_phandles = external dso_local constant [0 x i8], align 1
@__ksymtab_of_resolve_phandles = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_resolve_phandles to i32), ptr @__kstrtab_of_resolve_phandles, ptr @__kstrtabns_of_resolve_phandles }, section "___ksymtab_gpl+of_resolve_phandles", align 4
@devtree_lock = external dso_local global %struct.raw_spinlock, align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phandle\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"linux,phandle\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3735928559]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 275, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 281, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 290, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 300, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 309, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 311, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 319, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 325, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 346, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 54, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [25 x i8] c"../drivers/of/resolver.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 55, i32 7 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_of_resolve_phandles, ptr @of_resolve_phandles._entry, ptr @of_resolve_phandles._entry.13, ptr @of_resolve_phandles._entry.16, ptr @of_resolve_phandles._entry.3, ptr @of_resolve_phandles._entry.9, ptr @of_resolve_phandles._entry_ptr, ptr @of_resolve_phandles._entry_ptr.11, ptr @of_resolve_phandles._entry_ptr.15, ptr @of_resolve_phandles._entry_ptr.18, ptr @of_resolve_phandles._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_resolve_phandles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_resolve_phandles._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_resolve_phandles._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_resolve_phandles._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_resolve_phandles._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_resolve_phandles(ptr noundef %overlay) #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  %refpath = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refpath) #7
  %0 = ptrtoint ptr %refpath to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %refpath, align 4, !annotation !45
  %tobool.not = icmp eq ptr %overlay, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %do.end75

if.end:                                           ; preds = %entry
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %overlay, i32 0, i32 10
  %1 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %_flags.i, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %do.end75

if.end9:                                          ; preds = %if.end
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #7
  %call1.i = tail call ptr @__of_find_all_nodes(ptr noundef null) #7
  %tobool.not23.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not23.i, label %if.end9.live_tree_max_phandle.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.live_tree_max_phandle.exit_crit_edge:     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %live_tree_max_phandle.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %node.025.i = phi ptr [ %call9.i, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %if.end9.for.body.i_crit_edge ]
  %phandle.024.i = phi i32 [ %phandle.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %phandle2.i = getelementptr inbounds %struct.device_node, ptr %node.025.i, i32 0, i32 1
  %4 = ptrtoint ptr %phandle2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phandle2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %5)
  %cmp3.not.i = icmp ne i32 %5, -559038737
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %phandle.024.i)
  %cmp6.i = icmp ugt i32 %5, %phandle.024.i
  %or.cond.i = select i1 %cmp3.not.i, i1 %cmp6.i, i1 false
  %phandle.1.i = select i1 %or.cond.i, i32 %5, i32 %phandle.024.i
  %call9.i = tail call ptr @__of_find_all_nodes(ptr noundef nonnull %node.025.i) #7
  %tobool.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i, label %live_tree_max_phandle.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

live_tree_max_phandle.exit.loopexit:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = add i32 %phandle.1.i, 1
  br label %live_tree_max_phandle.exit

live_tree_max_phandle.exit:                       ; preds = %live_tree_max_phandle.exit.loopexit, %if.end9.live_tree_max_phandle.exit_crit_edge
  %phandle.0.lcssa.i = phi i32 [ 1, %if.end9.live_tree_max_phandle.exit_crit_edge ], [ %phi.bo, %live_tree_max_phandle.exit.loopexit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %call.i) #7
  tail call fastcc void @adjust_overlay_phandles(ptr noundef nonnull %overlay, i32 noundef %phandle.0.lcssa.i)
  %call11 = tail call ptr @of_get_next_child(ptr noundef nonnull %overlay, ptr noundef null) #7
  %cmp.not147 = icmp eq ptr %call11, null
  br i1 %cmp.not147, label %live_tree_max_phandle.exit.for.end_crit_edge, label %live_tree_max_phandle.exit.for.body_crit_edge

live_tree_max_phandle.exit.for.body_crit_edge:    ; preds = %live_tree_max_phandle.exit
  br label %for.body

live_tree_max_phandle.exit.for.end_crit_edge:     ; preds = %live_tree_max_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %live_tree_max_phandle.exit.for.body_crit_edge
  %local_fixups.0148 = phi ptr [ %call15, %for.inc.for.body_crit_edge ], [ %call11, %live_tree_max_phandle.exit.for.body_crit_edge ]
  %call12 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %local_fixups.0148, ptr noundef nonnull @.str.6) #7
  br i1 %call12, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %call15 = tail call ptr @of_get_next_child(ptr noundef nonnull %overlay, ptr noundef nonnull %local_fixups.0148) #7
  %cmp.not = icmp eq ptr %call15, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %live_tree_max_phandle.exit.for.end_crit_edge
  %local_fixups.0.lcssa = phi ptr [ null, %live_tree_max_phandle.exit.for.end_crit_edge ], [ %local_fixups.0148, %for.body.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call16 = tail call fastcc i32 @adjust_local_phandle_references(ptr noundef %local_fixups.0.lcssa, ptr noundef nonnull %overlay, i32 noundef %phandle.0.lcssa.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %for.end.do.end75_crit_edge

for.end.do.end75_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75

if.end19:                                         ; preds = %for.end
  %call20 = tail call ptr @of_get_next_child(ptr noundef nonnull %overlay, ptr noundef null) #7
  %cmp22.not150 = icmp eq ptr %call20, null
  br i1 %cmp22.not150, label %if.end19.if.end78_crit_edge, label %if.end19.for.body23_crit_edge

if.end19.for.body23_crit_edge:                    ; preds = %if.end19
  br label %for.body23

if.end19.if.end78_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %if.end19.for.body23_crit_edge
  %child.0152 = phi ptr [ %call28, %for.body23.for.body23_crit_edge ], [ %call20, %if.end19.for.body23_crit_edge ]
  %overlay_fixups.0151 = phi ptr [ %spec.select, %for.body23.for.body23_crit_edge ], [ null, %if.end19.for.body23_crit_edge ]
  %call24 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0152, ptr noundef nonnull @.str.7) #7
  %spec.select = select i1 %call24, ptr %child.0152, ptr %overlay_fixups.0151
  %call28 = tail call ptr @of_get_next_child(ptr noundef nonnull %overlay, ptr noundef nonnull %child.0152) #7
  %cmp22.not = icmp eq ptr %call28, null
  br i1 %cmp22.not, label %for.end29, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

for.end29:                                        ; preds = %for.body23
  %tobool30.not = icmp eq ptr %spec.select, null
  br i1 %tobool30.not, label %for.end29.if.end78_crit_edge, label %if.end32

for.end29.if.end78_crit_edge:                     ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.end32:                                         ; preds = %for.end29
  %call.i109 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.8, ptr noundef null) #7
  %tobool34.not = icmp eq ptr %call.i109, null
  br i1 %tobool34.not, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %do.end75

if.end41:                                         ; preds = %if.end32
  %properties = getelementptr inbounds %struct.device_node, ptr %spec.select, i32 0, i32 4
  %6 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %prop.0154 = load ptr, ptr %properties, align 4
  %cmp43.not155 = icmp eq ptr %prop.0154, null
  br i1 %cmp43.not155, label %if.end41.if.end78_crit_edge, label %if.end41.for.body44_crit_edge

if.end41.for.body44_crit_edge:                    ; preds = %if.end41
  br label %for.body44

if.end41.if.end78_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

for.body44:                                       ; preds = %for.inc69.for.body44_crit_edge, %if.end41.for.body44_crit_edge
  %prop.0156 = phi ptr [ %prop.0, %for.inc69.for.body44_crit_edge ], [ %prop.0154, %if.end41.for.body44_crit_edge ]
  %7 = ptrtoint ptr %prop.0156 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prop.0156, align 4
  %call45 = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(5) @.str.12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.body44.for.inc69_crit_edge, label %if.end48

for.body44.for.inc69_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc69

if.end48:                                         ; preds = %for.body44
  %call50 = call i32 @of_property_read_string(ptr noundef nonnull %call.i109, ptr noundef %8, ptr noundef nonnull %refpath) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end59, label %do.end55

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %prop.0156 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prop.0156, align 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %10) #10
  br label %do.end75

if.end59:                                         ; preds = %if.end48
  %11 = ptrtoint ptr %refpath to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %refpath, align 4
  %call.i110 = call ptr @of_find_node_opts_by_path(ptr noundef %12, ptr noundef null) #7
  %tobool61.not = icmp eq ptr %call.i110, null
  br i1 %tobool61.not, label %if.end59.do.end75_crit_edge, label %if.end63

if.end59.do.end75_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75

if.end63:                                         ; preds = %if.end59
  %phandle64 = getelementptr inbounds %struct.device_node, ptr %call.i110, i32 0, i32 1
  %13 = ptrtoint ptr %phandle64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phandle64, align 4
  call void @of_node_put(ptr noundef nonnull %call.i110) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #7
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %offset.i, align 4, !annotation !45
  %value1.i = getelementptr inbounds %struct.property, ptr %prop.0156, i32 0, i32 2
  %16 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value1.i, align 4
  %length.i = getelementptr inbounds %struct.property, ptr %prop.0156, i32 0, i32 1
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 4
  %call.i111 = call ptr @kmemdup(ptr noundef %17, i32 noundef %19, i32 noundef 3264) #7
  %tobool.not.i112 = icmp eq ptr %call.i111, null
  br i1 %tobool.not.i112, label %update_usages_of_a_phandle_reference.exit.thread, label %if.end.i

update_usages_of_a_phandle_reference.exit.thread: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #7
  br label %do.end75

if.end.i:                                         ; preds = %if.end63
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i111, i32 %21
  %cmp81.i = icmp ult ptr %call.i111, %add.ptr.i
  br i1 %cmp81.i, label %if.end.i.for.body.i113_crit_edge, label %if.end.i.update_usages_of_a_phandle_reference.exit_crit_edge

if.end.i.update_usages_of_a_phandle_reference.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_usages_of_a_phandle_reference.exit

if.end.i.for.body.i113_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i113

for.body.i113:                                    ; preds = %for.inc39.i.for.body.i113_crit_edge, %if.end.i.for.body.i113_crit_edge
  %cur.082.i = phi ptr [ %add.ptr41.i, %for.inc39.i.for.body.i113_crit_edge ], [ %call.i111, %if.end.i.for.body.i113_crit_edge ]
  %call3.i = call i32 @strlen(ptr noundef %cur.082.i) #12
  %call4.i = call ptr @strchr(ptr noundef %cur.082.i, i32 noundef 58) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %for.body.i113.update_usages_of_a_phandle_reference.exit.thread116_crit_edge, label %if.end7.i

for.body.i113.update_usages_of_a_phandle_reference.exit.thread116_crit_edge: ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_usages_of_a_phandle_reference.exit.thread116

if.end7.i:                                        ; preds = %for.body.i113
  %incdec.ptr.i = getelementptr i8, ptr %call4.i, i32 1
  %22 = ptrtoint ptr %call4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %call4.i, align 1
  %call8.i = call ptr @strchr(ptr noundef %incdec.ptr.i, i32 noundef 58) #7
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end7.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge, label %if.end11.i

if.end7.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_usages_of_a_phandle_reference.exit.thread116

if.end11.i:                                       ; preds = %if.end7.i
  %incdec.ptr12.i = getelementptr i8, ptr %call8.i, i32 1
  %23 = ptrtoint ptr %call8.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %call8.i, align 1
  %call13.i = call i32 @kstrtoint(ptr noundef %incdec.ptr12.i, i32 noundef 10, ptr noundef nonnull %offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge

if.end11.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_usages_of_a_phandle_reference.exit.thread116

if.end16.i:                                       ; preds = %if.end11.i
  %call17.i = call ptr @of_node_get(ptr noundef nonnull %overlay) #7
  %call18.i = call ptr @__of_find_node_by_full_path(ptr noundef %call17.i, ptr noundef %cur.082.i) #7
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end16.i.for.inc39.i_crit_edge, label %if.end21.i

if.end16.i.for.inc39.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.i

if.end21.i:                                       ; preds = %if.end16.i
  %properties.i = getelementptr inbounds %struct.device_node, ptr %call18.i, i32 0, i32 4
  %24 = ptrtoint ptr %properties.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %prop.077.i = load ptr, ptr %properties.i, align 4
  %cmp23.not78.i = icmp eq ptr %prop.077.i, null
  br i1 %cmp23.not78.i, label %if.end21.i.if.then30.critedge.i_crit_edge, label %if.end21.i.for.body24.i_crit_edge

if.end21.i.for.body24.i_crit_edge:                ; preds = %if.end21.i
  br label %for.body24.i

if.end21.i.if.then30.critedge.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.critedge.i

for.body24.i:                                     ; preds = %for.inc.i.for.body24.i_crit_edge, %if.end21.i.for.body24.i_crit_edge
  %prop.079.i = phi ptr [ %prop.0.i, %for.inc.i.for.body24.i_crit_edge ], [ %prop.077.i, %if.end21.i.for.body24.i_crit_edge ]
  %25 = ptrtoint ptr %prop.079.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prop.079.i, align 4
  %call25.i = call i32 @strcmp(ptr noundef %26, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end31.critedge.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body24.i
  %next.i = getelementptr inbounds %struct.property, ptr %prop.079.i, i32 0, i32 3
  %27 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %prop.0.i = load ptr, ptr %next.i, align 4
  %cmp23.not.i = icmp eq ptr %prop.0.i, null
  br i1 %cmp23.not.i, label %for.inc.i.if.then30.critedge.i_crit_edge, label %for.inc.i.for.body24.i_crit_edge

for.inc.i.for.body24.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.i

for.inc.i.if.then30.critedge.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.critedge.i

if.then30.critedge.i:                             ; preds = %for.inc.i.if.then30.critedge.i_crit_edge, %if.end21.i.if.then30.critedge.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call18.i) #7
  br label %update_usages_of_a_phandle_reference.exit.thread116

if.end31.critedge.i:                              ; preds = %for.body24.i
  call void @of_node_put(ptr noundef nonnull %call18.i) #7
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp32.i = icmp slt i32 %29, 0
  br i1 %cmp32.i, label %if.end31.critedge.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge, label %lor.lhs.false.i

if.end31.critedge.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge: ; preds = %if.end31.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_usages_of_a_phandle_reference.exit.thread116

lor.lhs.false.i:                                  ; preds = %if.end31.critedge.i
  %add.i = add nuw i32 %29, 4
  %length33.i = getelementptr inbounds %struct.property, ptr %prop.079.i, i32 0, i32 1
  %30 = ptrtoint ptr %length33.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %31)
  %cmp34.i = icmp ugt i32 %add.i, %31
  br i1 %cmp34.i, label %lor.lhs.false.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge, label %if.end36.i

lor.lhs.false.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_usages_of_a_phandle_reference.exit.thread116

if.end36.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %value37.i = getelementptr inbounds %struct.property, ptr %prop.079.i, i32 0, i32 2
  %32 = ptrtoint ptr %value37.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %value37.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %33, i32 %29
  %34 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %14, ptr %add.ptr38.i, align 4
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %if.end36.i, %if.end16.i.for.inc39.i_crit_edge
  %add40.i = add i32 %call3.i, 1
  %add.ptr41.i = getelementptr i8, ptr %cur.082.i, i32 %add40.i
  %cmp.i = icmp ult ptr %add.ptr41.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc39.i.for.body.i113_crit_edge, label %for.inc39.i.update_usages_of_a_phandle_reference.exit_crit_edge

for.inc39.i.update_usages_of_a_phandle_reference.exit_crit_edge: ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_usages_of_a_phandle_reference.exit

for.inc39.i.for.body.i113_crit_edge:              ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i113

update_usages_of_a_phandle_reference.exit.thread116: ; preds = %lor.lhs.false.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge, %if.end31.critedge.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge, %if.then30.critedge.i, %if.end11.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge, %if.end7.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge, %for.body.i113.update_usages_of_a_phandle_reference.exit.thread116_crit_edge
  %err.1.i.ph = phi i32 [ -2, %if.then30.critedge.i ], [ %call13.i, %if.end11.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge ], [ -22, %for.body.i113.update_usages_of_a_phandle_reference.exit.thread116_crit_edge ], [ -22, %if.end7.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge ], [ -22, %lor.lhs.false.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge ], [ -22, %if.end31.critedge.i.update_usages_of_a_phandle_reference.exit.thread116_crit_edge ]
  call void @kfree(ptr noundef nonnull %call.i111) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #7
  br label %do.end75

update_usages_of_a_phandle_reference.exit:        ; preds = %for.inc39.i.update_usages_of_a_phandle_reference.exit_crit_edge, %if.end.i.update_usages_of_a_phandle_reference.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call.i111) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #7
  br label %for.inc69

for.inc69:                                        ; preds = %update_usages_of_a_phandle_reference.exit, %for.body44.for.inc69_crit_edge
  %next = getelementptr inbounds %struct.property, ptr %prop.0156, i32 0, i32 3
  %35 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %35)
  %prop.0 = load ptr, ptr %next, align 4
  %cmp43.not = icmp eq ptr %prop.0, null
  br i1 %cmp43.not, label %for.inc69.if.end78_crit_edge, label %for.inc69.for.body44_crit_edge

for.inc69.for.body44_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44

for.inc69.if.end78_crit_edge:                     ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end75:                                         ; preds = %update_usages_of_a_phandle_reference.exit.thread116, %update_usages_of_a_phandle_reference.exit.thread, %if.end59.do.end75_crit_edge, %do.end55, %do.end38, %for.end.do.end75_crit_edge, %do.end6, %do.end
  %err.2.ph = phi i32 [ %err.1.i.ph, %update_usages_of_a_phandle_reference.exit.thread116 ], [ -12, %update_usages_of_a_phandle_reference.exit.thread ], [ -22, %do.end ], [ -22, %do.end6 ], [ -22, %do.end38 ], [ %call50, %do.end55 ], [ %call16, %for.end.do.end75_crit_edge ], [ -2, %if.end59.do.end75_crit_edge ]
  %tree_symbols.0.ph = phi ptr [ %call.i109, %update_usages_of_a_phandle_reference.exit.thread116 ], [ %call.i109, %update_usages_of_a_phandle_reference.exit.thread ], [ null, %do.end ], [ null, %do.end6 ], [ null, %do.end38 ], [ %call.i109, %do.end55 ], [ null, %for.end.do.end75_crit_edge ], [ %call.i109, %if.end59.do.end75_crit_edge ]
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %err.2.ph) #10
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %for.inc69.if.end78_crit_edge, %if.end41.if.end78_crit_edge, %for.end29.if.end78_crit_edge, %if.end19.if.end78_crit_edge
  %tree_symbols.0125 = phi ptr [ %tree_symbols.0.ph, %do.end75 ], [ null, %for.end29.if.end78_crit_edge ], [ %call.i109, %if.end41.if.end78_crit_edge ], [ null, %if.end19.if.end78_crit_edge ], [ %call.i109, %for.inc69.if.end78_crit_edge ]
  %err.2123 = phi i32 [ %err.2.ph, %do.end75 ], [ 0, %for.end29.if.end78_crit_edge ], [ 0, %if.end41.if.end78_crit_edge ], [ 0, %if.end19.if.end78_crit_edge ], [ 0, %for.inc69.if.end78_crit_edge ]
  call void @of_node_put(ptr noundef %tree_symbols.0125) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refpath) #7
  ret i32 %err.2123
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adjust_overlay_phandles(ptr noundef %overlay, i32 noundef %phandle_delta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phandle1 = getelementptr inbounds %struct.device_node, ptr %overlay, i32 0, i32 1
  %0 = ptrtoint ptr %phandle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phandle1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then [
    i32 0, label %entry.if.end_crit_edge
    i32 -559038737, label %entry.if.end_crit_edge49
  ]

entry.if.end_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %1, %phandle_delta
  %3 = ptrtoint ptr %phandle1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %phandle1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge49
  %properties = getelementptr inbounds %struct.device_node, ptr %overlay, i32 0, i32 4
  %4 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %4)
  %prop.043 = load ptr, ptr %properties, align 4
  %cmp5.not44 = icmp eq ptr %prop.043, null
  br i1 %cmp5.not44, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %prop.045 = phi ptr [ %prop.0, %for.inc.for.body_crit_edge ], [ %prop.043, %if.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %prop.045 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prop.045, align 4
  %call = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(8) @.str.19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.if.end11_crit_edge, label %land.lhs.true6

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true6:                                   ; preds = %for.body
  %call8 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(14) @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true6.if.end11_crit_edge, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true6.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %length = getelementptr inbounds %struct.property, ptr %prop.045, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp12 = icmp slt i32 %8, 4
  br i1 %cmp12, label %if.end11.for.inc_crit_edge, label %if.end14

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14:                                         ; preds = %if.end11
  %value = getelementptr inbounds %struct.property, ptr %prop.045, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %12)
  %cmp16 = icmp eq i32 %12, -559038737
  br i1 %cmp16, label %if.end14.for.inc_crit_edge, label %if.end18

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %phandle1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phandle1, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %10, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.end14.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %land.lhs.true6.for.inc_crit_edge
  %next = getelementptr inbounds %struct.property, ptr %prop.045, i32 0, i32 3
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %prop.0 = load ptr, ptr %next, align 4
  %cmp5.not = icmp eq ptr %prop.0, null
  br i1 %cmp5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %call21 = tail call ptr @of_get_next_child(ptr noundef %overlay, ptr noundef null) #7
  %cmp23.not47 = icmp eq ptr %call21, null
  br i1 %cmp23.not47, label %for.end.for.end27_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %child.048 = phi ptr [ %call26, %for.body24.for.body24_crit_edge ], [ %call21, %for.end.for.body24_crit_edge ]
  tail call fastcc void @adjust_overlay_phandles(ptr noundef nonnull %child.048, i32 noundef %phandle_delta)
  %call26 = tail call ptr @of_get_next_child(ptr noundef %overlay, ptr noundef nonnull %child.048) #7
  %cmp23.not = icmp eq ptr %call26, null
  br i1 %cmp23.not, label %for.body24.for.end27_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.body24.for.end27_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.end27:                                        ; preds = %for.body24.for.end27_crit_edge, %for.end.for.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adjust_local_phandle_references(ptr noundef %local_fixups, ptr noundef %overlay, i32 noundef %phandle_delta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %local_fixups, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %properties = getelementptr inbounds %struct.device_node, ptr %local_fixups, i32 0, i32 4
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %prop_fix.0123 = load ptr, ptr %properties, align 4
  %cmp.not124 = icmp eq ptr %prop_fix.0123, null
  br i1 %cmp.not124, label %if.end.for.end43_crit_edge, label %for.body.lr.ph

if.end.for.end43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43

for.body.lr.ph:                                   ; preds = %if.end
  %properties18 = getelementptr inbounds %struct.device_node, ptr %overlay, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %for.body.lr.ph
  %prop_fix.0125 = phi ptr [ %prop_fix.0123, %for.body.lr.ph ], [ %prop_fix.0, %for.inc41.for.body_crit_edge ]
  %1 = ptrtoint ptr %prop_fix.0125 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prop_fix.0125, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.body.for.inc41_crit_edge, label %lor.lhs.false

for.body.for.inc41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

lor.lhs.false:                                    ; preds = %for.body
  %call3 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(8) @.str.19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false.for.inc41_crit_edge, label %lor.lhs.false5

lor.lhs.false.for.inc41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(14) @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false5.for.inc41_crit_edge, label %if.end10

lor.lhs.false5.for.inc41_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

if.end10:                                         ; preds = %lor.lhs.false5
  %length = getelementptr inbounds %struct.property, ptr %prop_fix.0125, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 4
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp14 = icmp eq i32 %4, 0
  %or.cond = or i1 %cmp14, %cmp11.not
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %div110 = lshr i32 %4, 2
  %6 = ptrtoint ptr %properties18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %prop.0118 = load ptr, ptr %properties18, align 4
  %cmp20.not119 = icmp eq ptr %prop.0118, null
  br i1 %cmp20.not119, label %if.end16.cleanup_crit_edge, label %if.end16.for.body21_crit_edge

if.end16.for.body21_crit_edge:                    ; preds = %if.end16
  br label %for.body21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %if.end16.for.body21_crit_edge
  %prop.0120 = phi ptr [ %prop.0, %for.inc.for.body21_crit_edge ], [ %prop.0118, %if.end16.for.body21_crit_edge ]
  %7 = ptrtoint ptr %prop.0120 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prop.0120, align 4
  %call24 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.cond31.preheader, label %for.inc

for.cond31.preheader:                             ; preds = %for.body21
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp32121.not = icmp ult i32 %4, 4
  br i1 %cmp32121.not, label %for.cond31.preheader.for.inc41_crit_edge, label %for.body33.lr.ph

for.cond31.preheader.for.inc41_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

for.body33.lr.ph:                                 ; preds = %for.cond31.preheader
  %value = getelementptr inbounds %struct.property, ptr %prop_fix.0125, i32 0, i32 2
  %length34 = getelementptr inbounds %struct.property, ptr %prop.0120, i32 0, i32 1
  %value38 = getelementptr inbounds %struct.property, ptr %prop.0120, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %div110, i32 1)
  br label %for.body33

for.inc:                                          ; preds = %for.body21
  %next = getelementptr inbounds %struct.property, ptr %prop.0120, i32 0, i32 3
  %9 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %9)
  %prop.0 = load ptr, ptr %next, align 4
  %cmp20.not = icmp eq ptr %prop.0, null
  br i1 %cmp20.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body21_crit_edge

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body33:                                       ; preds = %if.end37.for.body33_crit_edge, %for.body33.lr.ph
  %i.0122 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc, %if.end37.for.body33_crit_edge ]
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %i.0122
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, 4
  %14 = ptrtoint ptr %length34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp35 = icmp ugt i32 %add, %15
  br i1 %cmp35, label %for.body33.cleanup_crit_edge, label %if.end37

for.body33.cleanup_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %for.body33
  %16 = ptrtoint ptr %value38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value38, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %13
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %add.i = add i32 %19, %phandle_delta
  store i32 %add.i, ptr %add.ptr, align 4
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end37.for.inc41_crit_edge, label %if.end37.for.body33_crit_edge

if.end37.for.body33_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

if.end37.for.inc41_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

for.inc41:                                        ; preds = %if.end37.for.inc41_crit_edge, %for.cond31.preheader.for.inc41_crit_edge, %lor.lhs.false5.for.inc41_crit_edge, %lor.lhs.false.for.inc41_crit_edge, %for.body.for.inc41_crit_edge
  %next42 = getelementptr inbounds %struct.property, ptr %prop_fix.0125, i32 0, i32 3
  %20 = ptrtoint ptr %next42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %prop_fix.0 = load ptr, ptr %next42, align 4
  %cmp.not = icmp eq ptr %prop_fix.0, null
  br i1 %cmp.not, label %for.inc41.for.end43_crit_edge, label %for.inc41.for.body_crit_edge

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc41.for.end43_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43

for.end43:                                        ; preds = %for.inc41.for.end43_crit_edge, %if.end.for.end43_crit_edge
  %call44 = tail call ptr @of_get_next_child(ptr noundef nonnull %local_fixups, ptr noundef null) #7
  %cmp46.not129 = icmp eq ptr %call44, null
  br i1 %cmp46.not129, label %for.end43.cleanup_crit_edge, label %for.end43.for.body47_crit_edge

for.end43.for.body47_crit_edge:                   ; preds = %for.end43
  br label %for.body47

for.end43.cleanup_crit_edge:                      ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body47:                                       ; preds = %for.inc66.for.body47_crit_edge, %for.end43.for.body47_crit_edge
  %child.0130 = phi ptr [ %call67, %for.inc66.for.body47_crit_edge ], [ %call44, %for.end43.for.body47_crit_edge ]
  %call48 = tail call ptr @of_get_next_child(ptr noundef %overlay, ptr noundef null) #7
  %cmp50.not126 = icmp eq ptr %call48, null
  br i1 %cmp50.not126, label %for.body47.cleanup.sink.split_crit_edge, label %for.body51.lr.ph

for.body47.cleanup.sink.split_crit_edge:          ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body51.lr.ph:                                 ; preds = %for.body47
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %child.0130, i32 0, i32 2
  br label %for.body51

for.body51:                                       ; preds = %for.inc56.for.body51_crit_edge, %for.body51.lr.ph
  %overlay_child.0127 = phi ptr [ %call48, %for.body51.lr.ph ], [ %call57, %for.inc56.for.body51_crit_edge ]
  %21 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %full_name.i, align 4
  %call.i.i = tail call ptr @strrchr(ptr noundef %22, i32 noundef 47) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 1
  %cond.i.i = select i1 %tobool.not.i.i, ptr %22, ptr %add.ptr.i.i
  %full_name1.i = getelementptr inbounds %struct.device_node, ptr %overlay_child.0127, i32 0, i32 2
  %23 = ptrtoint ptr %full_name1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %full_name1.i, align 4
  %call.i4.i = tail call ptr @strrchr(ptr noundef %24, i32 noundef 47) #7
  %tobool.not.i5.i = icmp eq ptr %call.i4.i, null
  %add.ptr.i6.i = getelementptr i8, ptr %call.i4.i, i32 1
  %cond.i7.i = select i1 %tobool.not.i5.i, ptr %24, ptr %add.ptr.i6.i
  %call3.i = tail call i32 @strcasecmp(ptr noundef %cond.i.i, ptr noundef %cond.i7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool53.not = icmp eq i32 %call3.i, 0
  br i1 %tobool53.not, label %if.then54, label %for.inc56

if.then54:                                        ; preds = %for.body51
  tail call void @of_node_put(ptr noundef nonnull %overlay_child.0127) #7
  %call62 = tail call fastcc i32 @adjust_local_phandle_references(ptr noundef nonnull %child.0130, ptr noundef nonnull %overlay_child.0127, i32 noundef %phandle_delta)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %for.inc66, label %if.then54.cleanup.sink.split_crit_edge

if.then54.cleanup.sink.split_crit_edge:           ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc56:                                        ; preds = %for.body51
  %call57 = tail call ptr @of_get_next_child(ptr noundef %overlay, ptr noundef nonnull %overlay_child.0127) #7
  %cmp50.not = icmp eq ptr %call57, null
  br i1 %cmp50.not, label %for.inc56.cleanup.sink.split_crit_edge, label %for.inc56.for.body51_crit_edge

for.inc56.for.body51_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.inc56.cleanup.sink.split_crit_edge:           ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc66:                                        ; preds = %if.then54
  %call67 = tail call ptr @of_get_next_child(ptr noundef nonnull %local_fixups, ptr noundef nonnull %child.0130) #7
  %cmp46.not = icmp eq ptr %call67, null
  br i1 %cmp46.not, label %for.inc66.cleanup_crit_edge, label %for.inc66.for.body47_crit_edge

for.inc66.for.body47_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47

for.inc66.cleanup_crit_edge:                      ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.inc56.cleanup.sink.split_crit_edge, %if.then54.cleanup.sink.split_crit_edge, %for.body47.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %for.inc56.cleanup.sink.split_crit_edge ], [ -22, %for.body47.cleanup.sink.split_crit_edge ], [ %call62, %if.then54.cleanup.sink.split_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %child.0130) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc66.cleanup_crit_edge, %for.end43.cleanup_crit_edge, %for.body33.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end43.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.inc66.cleanup_crit_edge ], [ -22, %for.body33.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_find_all_nodes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_find_node_by_full_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/of/resolver.c", i32 275, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @of_resolve_phandles._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @of_resolve_phandles._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/of/resolver.c", i32 281, i32 3}
!8 = !{ptr @of_resolve_phandles._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @of_resolve_phandles._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/of/resolver.c", i32 290, i32 37}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/of/resolver.c", i32 300, i32 30}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/of/resolver.c", i32 309, i32 38}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/of/resolver.c", i32 311, i32 3}
!18 = !{ptr @of_resolve_phandles._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @of_resolve_phandles._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/of/resolver.c", i32 319, i32 8}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/of/resolver.c", i32 325, i32 4}
!24 = !{ptr @of_resolve_phandles._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @of_resolve_phandles._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/of/resolver.c", i32 346, i32 3}
!28 = !{ptr @of_resolve_phandles._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @of_resolve_phandles._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_of_resolve_phandles, !31, !"__ksymtab_of_resolve_phandles", i1 false, i1 false}
!31 = !{!"../drivers/of/resolver.c", i32 351, i32 1}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/of/resolver.c", i32 54, i32 7}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/of/resolver.c", i32 55, i32 7}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
