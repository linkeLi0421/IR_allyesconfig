; ModuleID = '/llk/IR_all_yes/mm/page_ext.c_pt.bc'
source_filename = "../mm/page_ext.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.page_ext_operations = type { i32, i32, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }

@page_ext_size = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@page_ext_init_flatmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016allocated %ld bytes of page_ext\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"page_ext_init_flatmem\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/page_ext.c\00", [18 x i8] zeroinitializer }, align 32
@page_ext_init_flatmem._entry_ptr = internal global ptr @page_ext_init_flatmem._entry, section ".printk_index", align 4
@total_usage = internal global { i32, [28 x i8] } zeroinitializer, align 32
@page_ext_init_flatmem._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012allocation of page_ext failed.\0A\00", [62 x i8] zeroinitializer }, align 32
@page_ext_init_flatmem._entry_ptr.5 = internal global ptr @page_ext_init_flatmem._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Out of memory\00", [18 x i8] zeroinitializer }, align 32
@page_ext_ops = internal unnamed_addr constant [2 x ptr] [ptr @page_owner_ops, ptr @page_idle_ops], section ".init.data", align 4
@page_owner_ops = external dso_local global %struct.page_ext_operations, align 4
@page_idle_ops = internal global %struct.page_ext_operations { i32 0, i32 0, ptr @need_page_idle, ptr null }, section ".init.data", align 4
@contig_page_data = external dso_local local_unnamed_addr global %struct.pglist_data, align 128
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@arm_dma_zone_size = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"page_ext_size\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 84, i32 15 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 200, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"total_usage\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 86, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 204, i32 2 }
@___asan_gen_.33 = private constant [17 x i8] c"../mm/page_ext.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 205, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 1368, i32 10 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @page_ext_init_flatmem._entry, ptr @page_ext_init_flatmem._entry.3, ptr @page_ext_init_flatmem._entry_ptr, ptr @page_ext_init_flatmem._entry_ptr.5, ptr @page_ext_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @total_usage, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_ext_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_ext_init_flatmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_usage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_ext_init_flatmem._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @page_ext_init_flatmem_late() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %cmp.i = phi i1 [ true, %entry ], [ false, %for.inc.i.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ 0, %entry ], [ 1, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr @page_ext_ops, i32 0, i32 %i.06.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %init.i = getelementptr inbounds %struct.page_ext_operations, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %invoke_init_callbacks.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

invoke_init_callbacks.exit:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pgdat_page_ext_init(ptr nocapture noundef writeonly %pgdat) local_unnamed_addr #1 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %node_page_ext = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 4
  %0 = ptrtoint ptr %node_page_ext to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %node_page_ext, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lookup_page_ext(ptr noundef %page) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %page_to_nid.exit, !prof !31

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !32
  unreachable

page_to_nid.exit:                                 ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 4) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 4), align 16
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %page_to_nid.exit.cleanup_crit_edge, label %if.end, !prof !31

page_to_nid.exit.cleanup_crit_edge:               ; preds = %page_to_nid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %page_to_nid.exit
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i13 = icmp eq i32 %6, -1
  br i1 %cmp.i.not.i13, label %if.then.i14, label %page_to_nid.exit15, !prof !31

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !32
  unreachable

page_to_nid.exit15:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %add = add i32 %sub.ptr.div, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 5) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 5), align 4
  %and = and i32 %7, -2048
  %sub = sub i32 %add, %and
  %8 = load i32, ptr @page_ext_size, align 4
  %mul.i = mul i32 %sub, %8
  %add.ptr.i = getelementptr i8, ptr %4, i32 %mul.i
  br label %cleanup

cleanup:                                          ; preds = %page_to_nid.exit15, %page_to_nid.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.i, %page_to_nid.exit15 ], [ null, %page_to_nid.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @page_ext_init_flatmem() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %entry
  %need.0.off015.i.ph = phi i1 [ true, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ false, %entry ]
  %cmp.i.ph = phi i1 [ false, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ true, %entry ]
  %i.014.i.ph = phi i32 [ 1, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %entry ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %cmp.i = phi i1 [ false, %for.inc.i.for.body.i_crit_edge ], [ %cmp.i.ph, %for.body.i.outer ]
  %i.014.i = phi i32 [ 1, %for.inc.i.for.body.i_crit_edge ], [ %i.014.i.ph, %for.body.i.outer ]
  %arrayidx.i = getelementptr [2 x ptr], ptr @page_ext_ops, i32 0, i32 %i.014.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %need1.i = getelementptr inbounds %struct.page_ext_operations, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %need1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %need1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call.i = tail call zeroext i1 %3() #7
  br i1 %call.i, label %for.inc.i.thread, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %invoke_need_callbacks.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %land.lhs.true.i
  %4 = load i32, ptr @page_ext_size, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %1, align 4
  %size.i = getelementptr inbounds %struct.page_ext_operations, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %8 = load i32, ptr @page_ext_size, align 4
  %add.i = add i32 %8, %7
  store i32 %add.i, ptr @page_ext_size, align 4
  br i1 %cmp.i, label %for.inc.i.thread.for.body.i.outer_crit_edge, label %for.inc.i.thread.for.body_crit_edge

for.inc.i.thread.for.body_crit_edge:              ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.outer

invoke_need_callbacks.exit:                       ; preds = %for.inc.i
  br i1 %need.0.off015.i.ph, label %invoke_need_callbacks.exit.for.body_crit_edge, label %invoke_need_callbacks.exit.cleanup_crit_edge

invoke_need_callbacks.exit.cleanup_crit_edge:     ; preds = %invoke_need_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

invoke_need_callbacks.exit.for.body_crit_edge:    ; preds = %invoke_need_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %invoke_need_callbacks.exit.for.body_crit_edge, %for.inc.i.thread.for.body_crit_edge
  %call1 = tail call fastcc i32 @alloc_node_page_ext() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %do.end8

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i32, ptr @total_usage, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9) #11
  br label %cleanup

do.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #12
  unreachable

cleanup:                                          ; preds = %do.end, %invoke_need_callbacks.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_node_page_ext() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 7) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 5) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 5), align 4
  %and = and i32 %1, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %add.i = add i32 %1, %0
  %and4 = and i32 %add.i, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %add = add i32 %0, 2048
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false.if.end7_crit_edge
  %nr_pages.0 = phi i32 [ %0, %lor.lhs.false.if.end7_crit_edge ], [ %add, %if.then6 ]
  %2 = load i32, ptr @page_ext_size, align 4
  %mul = mul i32 %2, %nr_pages.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_dma_zone_size to i32))
  %3 = load i32, ptr @arm_dma_zone_size, align 4
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177279, i32 %4)
  %5 = icmp ult i32 %4, 1342177279
  %add10 = add i32 %3, -1073741824
  %cond = select i1 %5, i32 %add10, i32 -1
  %call11 = tail call i32 @__virt_to_phys(i32 noundef %cond) #7
  %call12 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul, i32 noundef 4096, i32 noundef %call11, i32 noundef 0, i32 noundef 0) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end7.cleanup_crit_edge, label %if.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 4) to i32))
  store ptr %call12, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 4), align 16
  %6 = load i32, ptr @total_usage, align 4
  %add17 = add i32 %6, %mul
  store i32 %add17, ptr @total_usage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @need_page_idle() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @page_ext_size, !1, !"page_ext_size", i1 false, i1 false}
!1 = !{!"../mm/page_ext.c", i32 84, i32 15}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/page_ext.c", i32 200, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @page_ext_init_flatmem._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @page_ext_init_flatmem._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/page_ext.c", i32 204, i32 2}
!10 = !{ptr @page_ext_init_flatmem._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @page_ext_init_flatmem._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/page_ext.c", i32 205, i32 8}
!14 = !{ptr @total_usage, !15, !"total_usage", i1 false, i1 false}
!15 = !{!"../mm/page_ext.c", i32 86, i32 22}
!16 = !{ptr @page_ext_ops, !17, !"page_ext_ops", i1 false, i1 false}
!17 = !{!"../mm/page_ext.c", i32 72, i32 36}
!18 = !{ptr @page_idle_ops, !19, !"page_idle_ops", i1 false, i1 false}
!19 = !{!"../mm/page_ext.c", i32 67, i32 35}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2153150465, i64 2153150949, i64 2153150502, i64 2153150558, i64 2153150592, i64 2153150616, i64 2153150657, i64 2153150678, i64 2153150706, i64 2153150740}
