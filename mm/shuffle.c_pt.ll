; ModuleID = '/llk/IR_all_yes/mm/shuffle.c_pt.bc'
source_filename = "../mm/shuffle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.page = type { i32, %union.anon.4, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }

@page_alloc_shuffle_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__param_str_shuffle = internal constant [19 x i8] c"page_alloc.shuffle\00", align 1
@__param_ops_shuffle = internal constant %struct.kernel_param_ops { i32 0, ptr @shuffle_store, ptr @shuffle_show, ptr null }, align 4
@shuffle_param = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_shuffle = internal constant %struct.kernel_param { ptr @__param_str_shuffle, ptr null, ptr @__param_ops_shuffle, i16 256, i8 -1, i8 0, %union.anon.0 { ptr @shuffle_param } }, section "__param", align 4
@__shuffle_zone.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"page_alloc\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__shuffle_zone\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/shuffle.c\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: failed to swap %#lx\0A\00", [39 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__shuffle_zone.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: migratetype mismatch %#lx\0A\00", [33 x i8] zeroinitializer }, align 32
@__shuffle_zone.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: swap: %#lx -> %#lx\0A\00", [40 x i8] zeroinitializer }, align 32
@shuffle_pick_tail.rand = internal global { i64, [24 x i8] } zeroinitializer, align 32
@shuffle_pick_tail.rand_bits = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c\0A\00", [28 x i8] zeroinitializer }, align 32
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"page_alloc_shuffle_key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 12, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"shuffle_param\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 14, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 121, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 132, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 138, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 164, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"rand_bits\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 165, i32 12 }
@___asan_gen_.39 = private constant [16 x i8] c"../mm/shuffle.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 17, i32 25 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1368, i32 10 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__param_shuffle, ptr @page_alloc_shuffle_key, ptr @shuffle_param, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @shuffle_pick_tail.rand, ptr @shuffle_pick_tail.rand_bits, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_alloc_shuffle_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_param to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_pick_tail.rand to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_pick_tail.rand_bits to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @__shuffle_zone(ptr noundef %z) local_unnamed_addr #0 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %zone_start_pfn = getelementptr inbounds %struct.zone, ptr %z, i32 0, i32 10
  %0 = ptrtoint ptr %zone_start_pfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_start_pfn, align 4
  %spanned_pages.i = getelementptr inbounds %struct.zone, ptr %z, i32 0, i32 12
  %2 = ptrtoint ptr %spanned_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spanned_pages.i, align 4
  %add.i = add i32 %3, %1
  %lock = getelementptr inbounds %struct.zone, ptr %z, i32 0, i32 22
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %add = add i32 %1, 2047
  %and = and i32 %add, -2048
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add.i)
  %cmp6155 = icmp ult i32 %and, %add.i
  br i1 %cmp6155, label %entry.for.body_crit_edge, label %entry.for.end111_crit_edge

entry.for.end111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end111

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0157 = phi i32 [ %add110, %cleanup.for.body_crit_edge ], [ %and, %entry.for.body_crit_edge ]
  %flags.0156 = phi i32 [ %flags.2, %cleanup.for.body_crit_edge ], [ %call3, %entry.for.body_crit_edge ]
  %call8 = tail call fastcc ptr @shuffle_valid_page(ptr noundef %z, i32 noundef %i.0157) #8
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.body12_crit_edge

for.body.for.body12_crit_edge:                    ; preds = %for.body
  br label %for.body12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond9:                                        ; preds = %for.body12
  %inc = add nuw nsw i32 %retry.0154, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body27, label %for.cond9.for.body12_crit_edge

for.cond9.for.body12_crit_edge:                   ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body12

for.body12:                                       ; preds = %for.cond9.for.body12_crit_edge, %for.body.for.body12_crit_edge
  %retry.0154 = phi i32 [ %inc, %for.cond9.for.body12_crit_edge ], [ 0, %for.body.for.body12_crit_edge ]
  %4 = ptrtoint ptr %zone_start_pfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zone_start_pfn, align 4
  %call.i = tail call i32 @get_random_u32() #5
  %6 = ptrtoint ptr %spanned_pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spanned_pages.i, align 4
  %rem = urem i32 %call.i, %7
  %and16 = and i32 %rem, -2048
  %add17 = add i32 %and16, %5
  %call18 = tail call fastcc ptr @shuffle_valid_page(ptr noundef %z, i32 noundef %add17) #8
  %tobool19.not = icmp eq ptr %call18, null
  %cmp20.not = icmp eq ptr %call18, %call8
  %or.cond = select i1 %tobool19.not, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %for.cond9, label %if.end37

do.body27:                                        ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shuffle_zone.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shuffle_zone, %if.then33)) #5
          to label %cleanup [label %if.then33], !srcloc !37

if.then33:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__shuffle_zone.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %i.0157) #5
  br label %cleanup

if.end37:                                         ; preds = %for.body12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add38 = add i32 %sub.ptr.div, %9
  %call39 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %call8, i32 noundef %add38, i32 noundef 7) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast40 = ptrtoint ptr %call18 to i32
  %sub.ptr.rhs.cast41 = ptrtoint ptr %10 to i32
  %sub.ptr.sub42 = sub i32 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %sub.ptr.div43 = sdiv exact i32 %sub.ptr.sub42, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add44 = add i32 %sub.ptr.div43, %11
  %call45 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %call18, i32 noundef %add44, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call45, i32 %call39)
  %cmp46.not = icmp eq i32 %call45, %call39
  br i1 %cmp46.not, label %if.end65, label %do.body49

do.body49:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shuffle_zone.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shuffle_zone, %if.then61)) #5
          to label %cleanup [label %if.then61], !srcloc !37

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__shuffle_zone.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %i.0157) #5
  br label %cleanup

if.end65:                                         ; preds = %if.end37
  %12 = getelementptr inbounds %struct.page, ptr %call8, i32 0, i32 1
  %13 = getelementptr inbounds %struct.page, ptr %call18, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.page, ptr %call18, i32 0, i32 1, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end65.list_del.exit.i_crit_edge

if.end65.list_del.exit.i_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end65.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %12, align 4
  store ptr %25, ptr %13, align 4
  %prev.i7.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %13, ptr %prev.i7.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %call8, i32 0, i32 1, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev3.i.i, align 4
  store ptr %28, ptr %prev.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %13, ptr %28, align 4
  %cmp.i = icmp eq ptr %15, %12
  %spec.select.i = select i1 %cmp.i, ptr %13, ptr %15
  %30 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spec.select.i, align 4
  %call.i.i8.i = tail call zeroext i1 @__list_add_valid(ptr noundef %12, ptr noundef %spec.select.i, ptr noundef %31) #5
  br i1 %call.i.i8.i, label %if.end.i.i9.i, label %list_del.exit.i.list_swap.exit_crit_edge

list_del.exit.i.list_swap.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_swap.exit

if.end.i.i9.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %12, align 4
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %spec.select.i, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %12, ptr %spec.select.i, align 4
  br label %list_swap.exit

list_swap.exit:                                   ; preds = %if.end.i.i9.i, %list_del.exit.i.list_swap.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shuffle_zone.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shuffle_zone, %if.then79)) #5
          to label %do.end82 [label %if.then79], !srcloc !37

if.then79:                                        ; preds = %list_swap.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__shuffle_zone.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %i.0157, i32 noundef %add17) #5
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %list_swap.exit
  %rem83 = urem i32 %i.0157, 204800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem83)
  %cmp84 = icmp eq i32 %rem83, 0
  br i1 %cmp84, label %if.then86, label %do.end82.cleanup_crit_edge

do.end82.cleanup_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then86:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0156) #5
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 143, i32 noundef 0) #5
  %call.i147 = tail call i32 @__cond_resched() #5
  %call99 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.end82.cleanup_crit_edge, %if.then61, %do.body49, %if.then33, %do.body27, %for.body.cleanup_crit_edge
  %flags.2 = phi i32 [ %flags.0156, %for.body.cleanup_crit_edge ], [ %flags.0156, %if.then33 ], [ %flags.0156, %if.then61 ], [ %call99, %if.then86 ], [ %flags.0156, %do.end82.cleanup_crit_edge ], [ %flags.0156, %do.body27 ], [ %flags.0156, %do.body49 ]
  %add110 = add i32 %i.0157, 2048
  %cmp6 = icmp ult i32 %add110, %add.i
  br i1 %cmp6, label %cleanup.for.body_crit_edge, label %cleanup.for.end111_crit_edge

cleanup.for.end111_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end111

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end111:                                       ; preds = %cleanup.for.end111_crit_edge, %entry.for.end111_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %entry.for.end111_crit_edge ], [ %flags.2, %cleanup.for.end111_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @shuffle_valid_page(ptr noundef readnone %zone, i32 noundef %pfn) unnamed_addr #0 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @pfn_valid(i32 noundef %pfn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn, %1
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub
  %tobool1.not = icmp eq ptr %add.ptr, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !38

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef nonnull %add.ptr, ptr noundef nonnull @.str.7) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #5, !srcloc !39
  unreachable

page_zone.exit:                                   ; preds = %if.end3
  %shr.i.i = lshr i32 %3, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  %cmp.not = icmp eq ptr %arrayidx.i, %zone
  br i1 %cmp.not, label %if.end6, label %page_zone.exit.cleanup_crit_edge

page_zone.exit.cleanup_crit_edge:                 ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %page_zone.exit
  %4 = getelementptr %struct.page, ptr %0, i32 %sub, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i = and i32 %6, -268435328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %private.i = getelementptr %struct.page, ptr %0, i32 %sub, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %8)
  %cmp12.not = icmp eq i32 %8, 11
  %___page.0. = select i1 %cmp12.not, ptr %add.ptr, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %page_zone.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ null, %page_zone.exit.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ], [ %___page.0., %if.end10 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @__shuffle_free_memory(ptr noundef %pgdat) local_unnamed_addr #0 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr %struct.zone, ptr %pgdat, i32 4
  %cmp6 = icmp ugt ptr %add.ptr, %pgdat
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %shuffle_zone.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %z.07 = phi ptr [ %incdec.ptr, %shuffle_zone.exit.for.body_crit_edge ], [ %pgdat, %entry.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @page_alloc_shuffle_key, ptr blockaddress(@__shuffle_free_memory, %if.end.i)) #5
          to label %shuffle_zone.exit [label %if.end.i], !srcloc !37

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__shuffle_zone(ptr noundef %z.07) #5
  br label %shuffle_zone.exit

shuffle_zone.exit:                                ; preds = %if.end.i, %for.body
  %incdec.ptr = getelementptr %struct.zone, ptr %z.07, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %shuffle_zone.exit.for.body_crit_edge, label %shuffle_zone.exit.for.end_crit_edge

shuffle_zone.exit.for.end_crit_edge:              ; preds = %shuffle_zone.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

shuffle_zone.exit.for.body_crit_edge:             ; preds = %shuffle_zone.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %shuffle_zone.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @shuffle_pick_tail() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @shuffle_pick_tail.rand_bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i8 64, ptr @shuffle_pick_tail.rand_bits, align 1
  %call = tail call i64 @get_random_u64() #5
  store i64 %call, ptr @shuffle_pick_tail.rand, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i64, ptr @shuffle_pick_tail.rand, align 8
  %and = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  %2 = load i8, ptr @shuffle_pick_tail.rand_bits, align 1
  %dec = add i8 %2, -1
  store i8 %dec, ptr @shuffle_pick_tail.rand_bits, align 1
  %shr = lshr i64 %1, 1
  store i64 %shr, ptr @shuffle_pick_tail.rand, align 8
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_random_u64() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @shuffle_store(ptr noundef %val, ptr noundef %kp) #0 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @param_set_bool(ptr noundef %val, ptr noundef %kp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @shuffle_param, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @static_key_enable(ptr noundef nonnull @page_alloc_shuffle_key) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shuffle_show(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @shuffle_param, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, i32 78, i32 89
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.6, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_bool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @page_alloc_shuffle_key, !1, !"page_alloc_shuffle_key", i1 false, i1 false}
!1 = !{!"../mm/shuffle.c", i32 12, i32 1}
!2 = !{ptr @__param_shuffle, !3, !"__param_shuffle", i1 false, i1 false}
!3 = !{!"../mm/shuffle.c", i32 31, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/shuffle.c", i32 121, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__shuffle_zone.__UNIQUE_ID_ddebug234, !5, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/shuffle.c", i32 132, i32 4}
!12 = !{ptr @__shuffle_zone.__UNIQUE_ID_ddebug235, !11, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../mm/shuffle.c", i32 138, i32 3}
!15 = !{ptr @__shuffle_zone.__UNIQUE_ID_ddebug236, !14, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!16 = !{ptr @shuffle_pick_tail.rand, !17, !"rand", i1 false, i1 false}
!17 = !{!"../mm/shuffle.c", i32 164, i32 13}
!18 = !{ptr @shuffle_pick_tail.rand_bits, !19, !"rand_bits", i1 false, i1 false}
!19 = !{!"../mm/shuffle.c", i32 165, i32 12}
!20 = !{ptr @shuffle_param, !21, !"shuffle_param", i1 false, i1 false}
!21 = !{!"../mm/shuffle.c", i32 14, i32 13}
!22 = !{ptr @__param_str_shuffle, !3, !"__param_str_shuffle", i1 false, i1 false}
!23 = !{ptr @__param_ops_shuffle, !3, !"__param_ops_shuffle", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/shuffle.c", i32 17, i32 25}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148268740, i64 2148268745, i64 2148268758, i64 2148268802, i64 2148268836, i64 2148268857}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2153143814, i64 2153144298, i64 2153143851, i64 2153143907, i64 2153143941, i64 2153143965, i64 2153144006, i64 2153144027, i64 2153144055, i64 2153144089}
!40 = !{i8 0, i8 2}
