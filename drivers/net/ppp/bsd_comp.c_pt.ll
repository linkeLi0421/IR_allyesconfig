; ModuleID = '/llk/IR_all_yes/drivers/net/ppp/bsd_comp.c_pt.bc'
source_filename = "../drivers/net/ppp/bsd_comp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.compressor = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bsd_db = type { i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.bsd_dict = type { %union.anon.43, i16, i16 }
%union.anon.43 = type { i32 }
%struct.compstat = type { i32, i32, i32, i32, i32, i32, i32, i32, double }
%struct.anon.44 = type { i8, i8, i16 }

@ppp_bsd_compress = internal global { %struct.compressor, [32 x i8] } { %struct.compressor { i32 21, ptr @bsd_comp_alloc, ptr @bsd_free, ptr @bsd_comp_init, ptr @bsd_reset, ptr @bsd_compress, ptr @bsd_comp_stats, ptr @bsd_decomp_alloc, ptr @bsd_free, ptr @bsd_decomp_init, ptr @bsd_reset, ptr @bsd_decompress, ptr @bsd_incomp, ptr @bsd_comp_stats, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_bsd_comp__173_1167_bsdcomp_init6 = internal global ptr @bsdcomp_init, section ".initcall6.init", align 4
@__exitcall_bsdcomp_cleanup = internal global ptr @bsdcomp_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [39 x i8] c"bsd_comp.file=drivers/net/ppp/bsd_comp\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [30 x i8] c"bsd_comp.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias176 = internal constant [31 x i8] c"bsd_comp.alias=ppp-compress-21\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bsd_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bsd_decomp%d: bad sequence # %d, expected %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bsd_decompress\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/ppp/bsd_comp.c\00", [37 x i8] zeroinitializer }, align 32
@bsd_decompress._entry_ptr = internal global ptr @bsd_decompress._entry, section ".printk_index", align 4
@bsd_decompress._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bsd_decomp%d: bad CLEAR\0A\00", [39 x i8] zeroinitializer }, align 32
@bsd_decompress._entry_ptr.5 = internal global ptr @bsd_decompress._entry.3, section ".printk_index", align 4
@bsd_decompress._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bsd_decomp%d: bad code 0x%x oldcode=0x%x \00", [54 x i8] zeroinitializer }, align 32
@bsd_decompress._entry_ptr.8 = internal global ptr @bsd_decompress._entry.6, section ".printk_index", align 4
@bsd_decompress._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max_ent=0x%x explen=%d seqno=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@bsd_decompress._entry_ptr.11 = internal global ptr @bsd_decompress._entry.9, section ".printk_index", align 4
@bsd_decompress._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bsd_decomp%d: ran out of mru\0A\00", [34 x i8] zeroinitializer }, align 32
@bsd_decompress._entry_ptr.14 = internal global ptr @bsd_decompress._entry.12, section ".printk_index", align 4
@bsd_decompress._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"bsd_decomp%d: peer should have cleared dictionary on %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bsd_decompress._entry_ptr.17 = internal global ptr @bsd_decompress._entry.15, section ".printk_index", align 4
@bsdcomp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016PPP BSD Compression module registered\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bsdcomp_init\00", [19 x i8] zeroinitializer }, align 32
@bsdcomp_init._entry_ptr = internal global ptr @bsdcomp_init._entry, section ".printk_index", align 4
@switch.table.bsd_alloc = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 5003, i32 5003, i32 5003, i32 5003, i32 9001, i32 18013, i32 35023], [36 x i8] zeroinitializer }, align 32
@switch.table.bsd_alloc.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\04\04\04\04\05\06\07", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"ppp_bsd_compress\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1132, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 879, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 941, i32 7 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 955, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 957, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 981, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1121, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [30 x i8] c"../drivers/net/ppp/bsd_comp.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1158, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"switch.table.bsd_alloc\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"switch.table.bsd_alloc.20\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_bsdcomp_cleanup, ptr @__initcall__kmod_bsd_comp__173_1167_bsdcomp_init6, ptr @bsd_decompress._entry, ptr @bsd_decompress._entry.12, ptr @bsd_decompress._entry.15, ptr @bsd_decompress._entry.3, ptr @bsd_decompress._entry.6, ptr @bsd_decompress._entry.9, ptr @bsd_decompress._entry_ptr, ptr @bsd_decompress._entry_ptr.11, ptr @bsd_decompress._entry_ptr.14, ptr @bsd_decompress._entry_ptr.17, ptr @bsd_decompress._entry_ptr.5, ptr @bsd_decompress._entry_ptr.8, ptr @bsdcomp_cleanup, ptr @bsdcomp_init._entry, ptr @bsdcomp_init._entry_ptr, ptr @ppp_bsd_compress, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @switch.table.bsd_alloc, ptr @switch.table.bsd_alloc.20], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_bsd_compress to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsd_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsd_decompress._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsd_decompress._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsd_decompress._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsd_decompress._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsd_decompress._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsdcomp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bsd_alloc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bsd_alloc.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bsdcomp_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ppp_unregister_compressor(ptr noundef nonnull @ppp_bsd_compress) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_unregister_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bsdcomp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ppp_register_compressor(ptr noundef nonnull @ppp_bsd_compress) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bsd_comp_alloc(ptr nocapture noundef readonly %options, i32 noundef %opt_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @bsd_alloc(ptr noundef %options, i32 noundef %opt_len, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bsd_free(ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dict = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 23
  %0 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dict, align 4
  tail call void @vfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %dict to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dict, align 4
  %lens = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 22
  %3 = ptrtoint ptr %lens to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lens, align 4
  tail call void @vfree(ptr noundef %4) #9
  %5 = ptrtoint ptr %lens to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %lens, align 4
  tail call void @kfree(ptr noundef nonnull %state) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsd_comp_init(ptr nocapture noundef %state, ptr nocapture noundef readonly %options, i32 noundef %opt_len, i32 noundef %unit, i32 noundef %opthdr, i32 noundef %debug) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %opt_len)
  %cmp.not.i = icmp eq i32 %opt_len, 3
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.bsd_init.exit_crit_edge

entry.bsd_init.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %1)
  %cmp1.not.i = icmp eq i8 %1, 21
  br i1 %cmp1.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.bsd_init.exit_crit_edge

lor.lhs.false.i.bsd_init.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx4.i = getelementptr i8, ptr %options, i32 1
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp6.not.i = icmp eq i8 %3, 3
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false3.i.bsd_init.exit_crit_edge

lor.lhs.false3.i.bsd_init.exit_crit_edge:         ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false3.i
  %arrayidx9.i = getelementptr i8, ptr %options, i32 2
  %4 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %5 to i32
  %.mask.i = and i32 %conv10.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.mask.i)
  %cmp11.not.i = icmp eq i32 %.mask.i, 32
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %lor.lhs.false8.i.bsd_init.exit_crit_edge

lor.lhs.false8.i.bsd_init.exit_crit_edge:         ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false13.i:                                ; preds = %lor.lhs.false8.i
  %and.i = and i32 %conv10.i, 31
  %maxbits.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %maxbits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %maxbits.i, align 2
  %conv16.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv16.i)
  %cmp17.not.i = icmp eq i32 %and.i, %conv16.i
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %lor.lhs.false13.i.bsd_init.exit_crit_edge

lor.lhs.false13.i.bsd_init.exit_crit_edge:        ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false19.i:                                ; preds = %lor.lhs.false13.i
  %hsize.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %hsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp30.not59.i = icmp eq i32 %9, 0
  br i1 %cmp30.not59.i, label %lor.lhs.false19.i.while.end.i_crit_edge, label %while.body.lr.ph.i

lor.lhs.false19.i.while.end.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %lor.lhs.false19.i
  %dict.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 23
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %indx.160.i = phi i32 [ %9, %while.body.lr.ph.i ], [ %dec29.i, %while.body.i.while.body.i_crit_edge ]
  %dec29.i = add i32 %indx.160.i, -1
  %10 = ptrtoint ptr %dict.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dict.i, align 4
  %codem1.i = getelementptr %struct.bsd_dict, ptr %11, i32 %dec29.i, i32 1
  %12 = ptrtoint ptr %codem1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 32767, ptr %codem1.i, align 4
  %13 = load ptr, ptr %dict.i, align 4
  %cptr.i = getelementptr %struct.bsd_dict, ptr %13, i32 %dec29.i, i32 2
  %14 = ptrtoint ptr %cptr.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %cptr.i, align 2
  %cmp30.not.i = icmp eq i32 %dec29.i, 0
  br i1 %cmp30.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %lor.lhs.false19.i.while.end.i_crit_edge
  %conv35.i = trunc i32 %unit to i8
  %unit36.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 6
  %15 = ptrtoint ptr %unit36.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv35.i, ptr %unit36.i, align 4
  %mru.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 8
  %16 = ptrtoint ptr %mru.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mru.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %debug)
  %tobool37.not.i = icmp eq i32 %debug, 0
  br i1 %tobool37.not.i, label %while.end.i.if.end40.i_crit_edge, label %if.then38.i

while.end.i.if.end40.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then38.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %debug39.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 5
  %17 = ptrtoint ptr %debug39.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %debug39.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %while.end.i.if.end40.i_crit_edge
  %clear_count.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 15
  %max_ent.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 10
  %18 = ptrtoint ptr %max_ent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 256, ptr %max_ent.i.i.i, align 4
  %n_bits.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 3
  %19 = ptrtoint ptr %n_bits.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 9, ptr %n_bits.i.i.i, align 1
  %bytes_out.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 12
  %20 = ptrtoint ptr %bytes_out.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bytes_out.i.i.i, align 4
  %in_count.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 11
  %21 = ptrtoint ptr %in_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %in_count.i.i.i, align 4
  %ratio.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 13
  %22 = ptrtoint ptr %ratio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ratio.i.i.i, align 4
  %checkpoint.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 14
  %23 = ptrtoint ptr %checkpoint.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10000, ptr %checkpoint.i.i.i, align 4
  %seqno.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 7
  %24 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %seqno.i.i, align 2
  %25 = ptrtoint ptr %clear_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %clear_count.i.i.i, align 4
  br label %bsd_init.exit

bsd_init.exit:                                    ; preds = %if.end40.i, %lor.lhs.false13.i.bsd_init.exit_crit_edge, %lor.lhs.false8.i.bsd_init.exit_crit_edge, %lor.lhs.false3.i.bsd_init.exit_crit_edge, %lor.lhs.false.i.bsd_init.exit_crit_edge, %entry.bsd_init.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end40.i ], [ 0, %lor.lhs.false13.i.bsd_init.exit_crit_edge ], [ 0, %lor.lhs.false8.i.bsd_init.exit_crit_edge ], [ 0, %lor.lhs.false3.i.bsd_init.exit_crit_edge ], [ 0, %lor.lhs.false.i.bsd_init.exit_crit_edge ], [ 0, %entry.bsd_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bsd_reset(ptr nocapture noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clear_count.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 15
  %max_ent.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 10
  %0 = ptrtoint ptr %max_ent.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %max_ent.i, align 4
  %n_bits.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 3
  %1 = ptrtoint ptr %n_bits.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 9, ptr %n_bits.i, align 1
  %bytes_out.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 12
  %2 = ptrtoint ptr %bytes_out.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bytes_out.i, align 4
  %in_count.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 11
  %3 = ptrtoint ptr %in_count.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %in_count.i, align 4
  %ratio.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 13
  %4 = ptrtoint ptr %ratio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ratio.i, align 4
  %checkpoint.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 14
  %5 = ptrtoint ptr %checkpoint.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10000, ptr %checkpoint.i, align 4
  %seqno = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 7
  %6 = ptrtoint ptr %seqno to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %seqno, align 2
  %7 = ptrtoint ptr %clear_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %clear_count.i, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsd_compress(ptr noundef %state, ptr nocapture noundef readonly %rptr, ptr noundef writeonly %obuf, i32 noundef %isize, i32 noundef %osize) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %rptr, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %rptr, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %add = or i32 %shl, %conv2
  %4 = add nsw i32 %add, -250
  call void @__sanitizer_cov_trace_const_cmp4(i32 -217, i32 %4)
  %5 = icmp ult i32 %4, -217
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hshift6 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %hshift6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hshift6, align 4
  %conv7 = zext i8 %7 to i32
  %max_ent8 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 10
  %8 = ptrtoint ptr %max_ent8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_ent8, align 4
  %n_bits9 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 3
  %10 = ptrtoint ptr %n_bits9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n_bits9, align 1
  %conv10 = zext i8 %11 to i32
  %notmask = shl nsw i32 -1, %conv10
  %sub = xor i32 %notmask, -1
  %12 = tail call i32 @llvm.smin.i32(i32 %osize, i32 %isize)
  %tobool.not = icmp eq ptr %obuf, null
  br i1 %tobool.not, label %if.end.if.end28_crit_edge, label %if.then16

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %rptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rptr, align 1
  %incdec.ptr = getelementptr i8, ptr %obuf, i32 1
  %15 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %obuf, align 1
  %arrayidx18 = getelementptr i8, ptr %rptr, i32 1
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  %incdec.ptr19 = getelementptr i8, ptr %obuf, i32 2
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %incdec.ptr, align 1
  %incdec.ptr20 = getelementptr i8, ptr %obuf, i32 3
  %19 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %incdec.ptr19, align 1
  %incdec.ptr21 = getelementptr i8, ptr %obuf, i32 4
  %20 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -3, ptr %incdec.ptr20, align 1
  %seqno = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 7
  %21 = ptrtoint ptr %seqno to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %seqno, align 2
  %23 = lshr i16 %22, 8
  %conv23 = trunc i16 %23 to i8
  %incdec.ptr24 = getelementptr i8, ptr %obuf, i32 5
  %24 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv23, ptr %incdec.ptr21, align 1
  %25 = load i16, ptr %seqno, align 2
  %conv26 = trunc i16 %25 to i8
  %incdec.ptr27 = getelementptr i8, ptr %obuf, i32 6
  %26 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv26, ptr %incdec.ptr24, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then16, %if.end.if.end28_crit_edge
  %wptr.0 = phi ptr [ %incdec.ptr27, %if.then16 ], [ null, %if.end.if.end28_crit_edge ]
  %inc = add i32 %isize, -3
  %dec415435 = add i32 %isize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec415435)
  %cmp30416436 = icmp sgt i32 %dec415435, 0
  br i1 %cmp30416436, label %while.body.lr.ph.lr.ph, label %if.end28.while.end_crit_edge

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %if.end28
  %add.ptr = getelementptr i8, ptr %rptr, i32 4
  %dict = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 23
  %hsize = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 1
  %maxmaxcode = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 9
  %lens = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 22
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end136.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %dec415453 = phi i32 [ %dec415435, %while.body.lr.ph.lr.ph ], [ %dec415, %if.end136.while.body.lr.ph_crit_edge ]
  %rptr.addr.0.ph452 = phi ptr [ %add.ptr, %while.body.lr.ph.lr.ph ], [ %incdec.ptr32, %if.end136.while.body.lr.ph_crit_edge ]
  %olen.0.ph450 = phi i32 [ 6, %while.body.lr.ph.lr.ph ], [ %inc77.lcssa, %if.end136.while.body.lr.ph_crit_edge ]
  %wptr.1.ph448 = phi ptr [ %wptr.0, %while.body.lr.ph.lr.ph ], [ %wptr.3.lcssa, %if.end136.while.body.lr.ph_crit_edge ]
  %mxcode.0.ph446 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %mxcode.2, %if.end136.while.body.lr.ph_crit_edge ]
  %ent.0.ph445 = phi i32 [ %add, %while.body.lr.ph.lr.ph ], [ %conv33.le523, %if.end136.while.body.lr.ph_crit_edge ]
  %accm.0.ph443 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %shl88.lcssa, %if.end136.while.body.lr.ph_crit_edge ]
  %bitno.0.ph441 = phi i32 [ 32, %while.body.lr.ph.lr.ph ], [ %add89.lcssa, %if.end136.while.body.lr.ph_crit_edge ]
  %n_bits.0.ph439 = phi i32 [ %conv10, %while.body.lr.ph.lr.ph ], [ %n_bits.2, %if.end136.while.body.lr.ph_crit_edge ]
  %max_ent.0.ph437 = phi i32 [ %9, %while.body.lr.ph.lr.ph ], [ %max_ent.1, %if.end136.while.body.lr.ph_crit_edge ]
  %27 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dict, align 4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %dec419 = phi i32 [ %dec415453, %while.body.lr.ph ], [ %dec, %while.cond.backedge.while.body_crit_edge ]
  %rptr.addr.0418 = phi ptr [ %rptr.addr.0.ph452, %while.body.lr.ph ], [ %incdec.ptr32, %while.cond.backedge.while.body_crit_edge ]
  %ent.0417 = phi i32 [ %ent.0.ph445, %while.body.lr.ph ], [ %ent.0.be, %while.cond.backedge.while.body_crit_edge ]
  %incdec.ptr32 = getelementptr i8, ptr %rptr.addr.0418, i32 1
  %29 = ptrtoint ptr %rptr.addr.0418 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rptr.addr.0418, align 1
  %conv33 = zext i8 %30 to i32
  %shl34 = shl nuw nsw i32 %conv33, 16
  %add35 = add nsw i32 %shl34, %ent.0417
  %shl37 = shl i32 %conv33, %conv7
  %xor = xor i32 %shl37, %ent.0417
  %arrayidx38 = getelementptr %struct.bsd_dict, ptr %28, i32 %xor
  %codem1 = getelementptr %struct.bsd_dict, ptr %28, i32 %xor, i32 1
  %31 = ptrtoint ptr %codem1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %codem1, align 4
  %conv39 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph437, i32 %conv39)
  %cmp40.not = icmp ugt i32 %max_ent.0.ph437, %conv39
  br i1 %cmp40.not, label %if.end43, label %while.body.nomatch_crit_edge

while.body.nomatch_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %nomatch

if.end43:                                         ; preds = %while.body
  %33 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add35)
  %cmp44 = icmp eq i32 %34, %add35
  br i1 %cmp44, label %if.end43.while.cond.backedge_crit_edge, label %if.end50

if.end43.while.cond.backedge_crit_edge:           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge.loopexit:                     ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  %conv63.le = zext i16 %38 to i32
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.loopexit, %if.end43.while.cond.backedge_crit_edge
  %ent.0.be.in = phi i32 [ %conv39, %if.end43.while.cond.backedge_crit_edge ], [ %conv63.le, %while.cond.backedge.loopexit ]
  %ent.0.be = add nuw nsw i32 %ent.0.be.in, 1
  %dec = add i32 %dec419, -1
  %cmp30 = icmp sgt i32 %dec, 0
  br i1 %cmp30, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %cmp51 = icmp eq i32 %xor, 0
  %spec.select383 = select i1 %cmp51, i32 1, i32 %xor
  %35 = ptrtoint ptr %hsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hsize, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end50
  %hval.0 = phi i32 [ %xor, %if.end50 ], [ %spec.select384, %do.cond.do.body_crit_edge ]
  %add53 = add i32 %hval.0, %spec.select383
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %36)
  %cmp54.not = icmp ult i32 %add53, %36
  %sub58 = select i1 %cmp54.not, i32 0, i32 %36
  %spec.select384 = sub i32 %add53, %sub58
  %arrayidx61 = getelementptr %struct.bsd_dict, ptr %28, i32 %spec.select384
  %codem162 = getelementptr %struct.bsd_dict, ptr %28, i32 %spec.select384, i32 1
  %37 = ptrtoint ptr %codem162 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %codem162, align 4
  %conv63 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph437, i32 %conv63)
  %cmp64.not = icmp ugt i32 %max_ent.0.ph437, %conv63
  br i1 %cmp64.not, label %do.cond, label %do.body.nomatch_crit_edge

do.body.nomatch_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %nomatch

do.cond:                                          ; preds = %do.body
  %39 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx61, align 4
  %cmp69.not = icmp eq i32 %40, %add35
  br i1 %cmp69.not, label %while.cond.backedge.loopexit, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

nomatch:                                          ; preds = %do.body.nomatch_crit_edge, %while.body.nomatch_crit_edge
  %dictp.0 = phi ptr [ %arrayidx61, %do.body.nomatch_crit_edge ], [ %arrayidx38, %while.body.nomatch_crit_edge ]
  %hval.2 = phi i32 [ %spec.select384, %do.body.nomatch_crit_edge ], [ %xor, %while.body.nomatch_crit_edge ]
  %conv33.le523 = zext i8 %30 to i32
  %sub74 = sub i32 %bitno.0.ph441, %n_bits.0.ph439
  %shl75 = shl i32 %ent.0417, %sub74
  %or = or i32 %shl75, %accm.0.ph443
  %inc77 = add i32 %olen.0.ph450, 1
  %tobool78.not = icmp eq ptr %wptr.1.ph448, null
  br i1 %tobool78.not, label %nomatch.if.end87_crit_edge, label %if.then79

nomatch.if.end87_crit_edge:                       ; preds = %nomatch
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then79:                                        ; preds = %nomatch
  call void @__sanitizer_cov_trace_pc() #11
  %shr80 = lshr i32 %or, 24
  %conv81 = trunc i32 %shr80 to i8
  %incdec.ptr82 = getelementptr i8, ptr %wptr.1.ph448, i32 1
  %41 = ptrtoint ptr %wptr.1.ph448 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv81, ptr %wptr.1.ph448, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc77, i32 %12)
  %cmp83.not = icmp slt i32 %inc77, %12
  %spec.select385 = select i1 %cmp83.not, ptr %incdec.ptr82, ptr null
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %nomatch.if.end87_crit_edge
  %wptr.3 = phi ptr [ null, %nomatch.if.end87_crit_edge ], [ %spec.select385, %if.then79 ]
  %shl88 = shl i32 %or, 8
  %add89 = add i32 %sub74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add89)
  %cmp91 = icmp ult i32 %add89, 25
  br i1 %cmp91, label %do.body76.1, label %if.end87.do.end93_crit_edge

if.end87.do.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end93

do.body76.1:                                      ; preds = %if.end87
  %inc77.1 = add i32 %olen.0.ph450, 2
  %tobool78.not.1 = icmp eq ptr %wptr.3, null
  br i1 %tobool78.not.1, label %do.body76.1.if.end87.1_crit_edge, label %if.then79.1

do.body76.1.if.end87.1_crit_edge:                 ; preds = %do.body76.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.1

if.then79.1:                                      ; preds = %do.body76.1
  call void @__sanitizer_cov_trace_pc() #11
  %shr80.1 = lshr i32 %shl88, 24
  %conv81.1 = trunc i32 %shr80.1 to i8
  %incdec.ptr82.1 = getelementptr i8, ptr %wptr.3, i32 1
  %42 = ptrtoint ptr %wptr.3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv81.1, ptr %wptr.3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc77.1, i32 %12)
  %cmp83.not.1 = icmp slt i32 %inc77.1, %12
  %spec.select385.1 = select i1 %cmp83.not.1, ptr %incdec.ptr82.1, ptr null
  br label %if.end87.1

if.end87.1:                                       ; preds = %if.then79.1, %do.body76.1.if.end87.1_crit_edge
  %wptr.3.1 = phi ptr [ null, %do.body76.1.if.end87.1_crit_edge ], [ %spec.select385.1, %if.then79.1 ]
  %shl88.1 = shl i32 %or, 16
  %add89.1 = add i32 %sub74, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add89.1)
  %cmp91.1 = icmp ult i32 %add89.1, 25
  br i1 %cmp91.1, label %do.body76.2, label %if.end87.1.do.end93_crit_edge

if.end87.1.do.end93_crit_edge:                    ; preds = %if.end87.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end93

do.body76.2:                                      ; preds = %if.end87.1
  %inc77.2 = add i32 %olen.0.ph450, 3
  %tobool78.not.2 = icmp eq ptr %wptr.3.1, null
  br i1 %tobool78.not.2, label %do.body76.2.if.end87.2_crit_edge, label %if.then79.2

do.body76.2.if.end87.2_crit_edge:                 ; preds = %do.body76.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.2

if.then79.2:                                      ; preds = %do.body76.2
  call void @__sanitizer_cov_trace_pc() #11
  %shr80.2 = lshr i32 %shl88.1, 24
  %conv81.2 = trunc i32 %shr80.2 to i8
  %incdec.ptr82.2 = getelementptr i8, ptr %wptr.3.1, i32 1
  %43 = ptrtoint ptr %wptr.3.1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv81.2, ptr %wptr.3.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc77.2, i32 %12)
  %cmp83.not.2 = icmp slt i32 %inc77.2, %12
  %spec.select385.2 = select i1 %cmp83.not.2, ptr %incdec.ptr82.2, ptr null
  br label %if.end87.2

if.end87.2:                                       ; preds = %if.then79.2, %do.body76.2.if.end87.2_crit_edge
  %wptr.3.2 = phi ptr [ null, %do.body76.2.if.end87.2_crit_edge ], [ %spec.select385.2, %if.then79.2 ]
  %shl88.2 = shl i32 %or, 24
  %add89.2 = add i32 %sub74, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add89.2)
  %cmp91.2 = icmp ult i32 %add89.2, 25
  br i1 %cmp91.2, label %do.body76.3, label %if.end87.2.do.end93_crit_edge

if.end87.2.do.end93_crit_edge:                    ; preds = %if.end87.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end93

do.body76.3:                                      ; preds = %if.end87.2
  %inc77.3 = add i32 %olen.0.ph450, 4
  %tobool78.not.3 = icmp eq ptr %wptr.3.2, null
  br i1 %tobool78.not.3, label %do.body76.3.if.end87.3_crit_edge, label %if.then79.3

do.body76.3.if.end87.3_crit_edge:                 ; preds = %do.body76.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.3

if.then79.3:                                      ; preds = %do.body76.3
  call void @__sanitizer_cov_trace_pc() #11
  %conv81.3 = trunc i32 %or to i8
  %incdec.ptr82.3 = getelementptr i8, ptr %wptr.3.2, i32 1
  %44 = ptrtoint ptr %wptr.3.2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv81.3, ptr %wptr.3.2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc77.3, i32 %12)
  %cmp83.not.3 = icmp slt i32 %inc77.3, %12
  %spec.select385.3 = select i1 %cmp83.not.3, ptr %incdec.ptr82.3, ptr null
  br label %if.end87.3

if.end87.3:                                       ; preds = %if.then79.3, %do.body76.3.if.end87.3_crit_edge
  %wptr.3.3 = phi ptr [ null, %do.body76.3.if.end87.3_crit_edge ], [ %spec.select385.3, %if.then79.3 ]
  %add89.3 = add i32 %sub74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add89.3)
  %cmp91.3 = icmp ult i32 %add89.3, 25
  br i1 %cmp91.3, label %do.body76.4, label %if.end87.3.do.end93_crit_edge

if.end87.3.do.end93_crit_edge:                    ; preds = %if.end87.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end93

do.body76.4:                                      ; preds = %if.end87.3
  %inc77.4 = add i32 %olen.0.ph450, 5
  %tobool78.not.4 = icmp eq ptr %wptr.3.3, null
  br i1 %tobool78.not.4, label %do.body76.4.if.end87.4_crit_edge, label %if.then79.4

do.body76.4.if.end87.4_crit_edge:                 ; preds = %do.body76.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.4

if.then79.4:                                      ; preds = %do.body76.4
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr82.4 = getelementptr i8, ptr %wptr.3.3, i32 1
  %45 = ptrtoint ptr %wptr.3.3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %wptr.3.3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc77.4, i32 %12)
  %cmp83.not.4 = icmp slt i32 %inc77.4, %12
  %spec.select385.4 = select i1 %cmp83.not.4, ptr %incdec.ptr82.4, ptr null
  br label %if.end87.4

if.end87.4:                                       ; preds = %if.then79.4, %do.body76.4.if.end87.4_crit_edge
  %wptr.3.4 = phi ptr [ null, %do.body76.4.if.end87.4_crit_edge ], [ %spec.select385.4, %if.then79.4 ]
  %add89.4 = add i32 %sub74, 40
  br label %do.end93

do.end93:                                         ; preds = %if.end87.4, %if.end87.3.do.end93_crit_edge, %if.end87.2.do.end93_crit_edge, %if.end87.1.do.end93_crit_edge, %if.end87.do.end93_crit_edge
  %wptr.3.lcssa = phi ptr [ %wptr.3, %if.end87.do.end93_crit_edge ], [ %wptr.3.1, %if.end87.1.do.end93_crit_edge ], [ %wptr.3.2, %if.end87.2.do.end93_crit_edge ], [ %wptr.3.3, %if.end87.3.do.end93_crit_edge ], [ %wptr.3.4, %if.end87.4 ]
  %shl88.lcssa = phi i32 [ %shl88, %if.end87.do.end93_crit_edge ], [ %shl88.1, %if.end87.1.do.end93_crit_edge ], [ %shl88.2, %if.end87.2.do.end93_crit_edge ], [ 0, %if.end87.3.do.end93_crit_edge ], [ 0, %if.end87.4 ]
  %add89.lcssa = phi i32 [ %add89, %if.end87.do.end93_crit_edge ], [ %add89.1, %if.end87.1.do.end93_crit_edge ], [ %add89.2, %if.end87.2.do.end93_crit_edge ], [ %add89.3, %if.end87.3.do.end93_crit_edge ], [ %add89.4, %if.end87.4 ]
  %inc77.lcssa = phi i32 [ %inc77, %if.end87.do.end93_crit_edge ], [ %inc77.1, %if.end87.1.do.end93_crit_edge ], [ %inc77.2, %if.end87.2.do.end93_crit_edge ], [ %inc77.3, %if.end87.3.do.end93_crit_edge ], [ %inc77.4, %if.end87.4 ]
  %46 = ptrtoint ptr %maxmaxcode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %maxmaxcode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph437, i32 %47)
  %cmp94 = icmp ult i32 %max_ent.0.ph437, %47
  br i1 %cmp94, label %if.then96, label %do.end93.if.end136_crit_edge

do.end93.if.end136_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then96:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph437, i32 %mxcode.0.ph446)
  %cmp97.not = icmp ult i32 %max_ent.0.ph437, %mxcode.0.ph446
  br i1 %cmp97.not, label %if.then96.if.end105_crit_edge, label %if.then99

if.then96.if.end105_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then99:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %inc100 = add i32 %n_bits.0.ph439, 1
  %conv101 = trunc i32 %inc100 to i8
  %48 = ptrtoint ptr %n_bits9 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv101, ptr %n_bits9, align 1
  %notmask382 = shl nsw i32 -1, %inc100
  %sub104 = xor i32 %notmask382, -1
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.then96.if.end105_crit_edge
  %n_bits.1 = phi i32 [ %inc100, %if.then99 ], [ %n_bits.0.ph439, %if.then96.if.end105_crit_edge ]
  %mxcode.1 = phi i32 [ %sub104, %if.then99 ], [ %mxcode.0.ph446, %if.then96.if.end105_crit_edge ]
  %49 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dict, align 4
  %add107 = add nuw i32 %max_ent.0.ph437, 1
  %cptr = getelementptr %struct.bsd_dict, ptr %50, i32 %add107, i32 2
  %51 = ptrtoint ptr %cptr to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cptr, align 2
  %conv109 = zext i16 %52 to i32
  %codem1112 = getelementptr %struct.bsd_dict, ptr %50, i32 %conv109, i32 1
  %53 = ptrtoint ptr %codem1112 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %codem1112, align 4
  %conv113 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph437, i32 %conv113)
  %cmp114 = icmp eq i32 %max_ent.0.ph437, %conv113
  br i1 %cmp114, label %if.then116, label %if.end105.if.end118_crit_edge

if.end105.if.end118_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then116:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %codem1112 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 32767, ptr %codem1112, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end105.if.end118_crit_edge
  %conv119 = trunc i32 %hval.2 to i16
  %56 = ptrtoint ptr %cptr to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv119, ptr %cptr, align 2
  %conv121 = trunc i32 %max_ent.0.ph437 to i16
  %codem1122 = getelementptr inbounds %struct.bsd_dict, ptr %dictp.0, i32 0, i32 1
  %57 = ptrtoint ptr %codem1122 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv121, ptr %codem1122, align 4
  %58 = ptrtoint ptr %dictp.0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add35, ptr %dictp.0, align 4
  %59 = ptrtoint ptr %max_ent8 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add107, ptr %max_ent8, align 4
  %60 = ptrtoint ptr %lens to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lens, align 4
  %tobool126.not = icmp eq ptr %61, null
  br i1 %tobool126.not, label %if.end118.if.end136_crit_edge, label %if.then127

if.end118.if.end136_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then127:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx129 = getelementptr i16, ptr %61, i32 %add107
  %arrayidx131 = getelementptr i16, ptr %61, i32 %ent.0417
  %62 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx131, align 2
  %add133 = add i16 %63, 1
  %64 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %add133, ptr %arrayidx129, align 2
  br label %if.end136

if.end136:                                        ; preds = %if.then127, %if.end118.if.end136_crit_edge, %do.end93.if.end136_crit_edge
  %max_ent.1 = phi i32 [ %max_ent.0.ph437, %do.end93.if.end136_crit_edge ], [ %add107, %if.then127 ], [ %add107, %if.end118.if.end136_crit_edge ]
  %n_bits.2 = phi i32 [ %n_bits.0.ph439, %do.end93.if.end136_crit_edge ], [ %n_bits.1, %if.then127 ], [ %n_bits.1, %if.end118.if.end136_crit_edge ]
  %mxcode.2 = phi i32 [ %mxcode.0.ph446, %do.end93.if.end136_crit_edge ], [ %mxcode.1, %if.then127 ], [ %mxcode.1, %if.end118.if.end136_crit_edge ]
  %dec415 = add i32 %dec419, -1
  %cmp30416 = icmp sgt i32 %dec415, 0
  br i1 %cmp30416, label %if.end136.while.body.lr.ph_crit_edge, label %if.end136.while.end_crit_edge

if.end136.while.end_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end136.while.body.lr.ph_crit_edge:             ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end136.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %if.end28.while.end_crit_edge
  %max_ent.0.ph.lcssa = phi i32 [ %9, %if.end28.while.end_crit_edge ], [ %max_ent.0.ph437, %while.cond.backedge.while.end_crit_edge ], [ %max_ent.1, %if.end136.while.end_crit_edge ]
  %n_bits.0.ph.lcssa = phi i32 [ %conv10, %if.end28.while.end_crit_edge ], [ %n_bits.0.ph439, %while.cond.backedge.while.end_crit_edge ], [ %n_bits.2, %if.end136.while.end_crit_edge ]
  %bitno.0.ph.lcssa = phi i32 [ 32, %if.end28.while.end_crit_edge ], [ %bitno.0.ph441, %while.cond.backedge.while.end_crit_edge ], [ %add89.lcssa, %if.end136.while.end_crit_edge ]
  %accm.0.ph.lcssa = phi i32 [ 0, %if.end28.while.end_crit_edge ], [ %accm.0.ph443, %while.cond.backedge.while.end_crit_edge ], [ %shl88.lcssa, %if.end136.while.end_crit_edge ]
  %mxcode.0.ph.lcssa = phi i32 [ %sub, %if.end28.while.end_crit_edge ], [ %mxcode.0.ph446, %while.cond.backedge.while.end_crit_edge ], [ %mxcode.2, %if.end136.while.end_crit_edge ]
  %wptr.1.ph.lcssa = phi ptr [ %wptr.0, %if.end28.while.end_crit_edge ], [ %wptr.1.ph448, %while.cond.backedge.while.end_crit_edge ], [ %wptr.3.lcssa, %if.end136.while.end_crit_edge ]
  %olen.0.ph.lcssa = phi i32 [ 6, %if.end28.while.end_crit_edge ], [ %olen.0.ph450, %while.cond.backedge.while.end_crit_edge ], [ %inc77.lcssa, %if.end136.while.end_crit_edge ]
  %ent.0.lcssa = phi i32 [ %add, %if.end28.while.end_crit_edge ], [ %ent.0.be, %while.cond.backedge.while.end_crit_edge ], [ %conv33.le523, %if.end136.while.end_crit_edge ]
  %sub138 = sub i32 %bitno.0.ph.lcssa, %n_bits.0.ph.lcssa
  %shl139 = shl i32 %ent.0.lcssa, %sub138
  %or140 = or i32 %shl139, %accm.0.ph.lcssa
  %inc142 = add i32 %olen.0.ph.lcssa, 1
  %tobool143.not = icmp eq ptr %wptr.1.ph.lcssa, null
  br i1 %tobool143.not, label %while.end.if.end152_crit_edge, label %if.then144

while.end.if.end152_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then144:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %shr145 = lshr i32 %or140, 24
  %conv146 = trunc i32 %shr145 to i8
  %incdec.ptr147 = getelementptr i8, ptr %wptr.1.ph.lcssa, i32 1
  %65 = ptrtoint ptr %wptr.1.ph.lcssa to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv146, ptr %wptr.1.ph.lcssa, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc142, i32 %12)
  %cmp148.not = icmp slt i32 %inc142, %12
  %spec.select386 = select i1 %cmp148.not, ptr %incdec.ptr147, ptr null
  br label %if.end152

if.end152:                                        ; preds = %if.then144, %while.end.if.end152_crit_edge
  %wptr.5 = phi ptr [ null, %while.end.if.end152_crit_edge ], [ %spec.select386, %if.then144 ]
  %shl153 = shl i32 %or140, 8
  %add154 = add i32 %sub138, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add154)
  %cmp156 = icmp ult i32 %add154, 25
  br i1 %cmp156, label %do.body141.1, label %if.end152.do.end158_crit_edge

if.end152.do.end158_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

do.body141.1:                                     ; preds = %if.end152
  %inc142.1 = add i32 %olen.0.ph.lcssa, 2
  %tobool143.not.1 = icmp eq ptr %wptr.5, null
  br i1 %tobool143.not.1, label %do.body141.1.if.end152.1_crit_edge, label %if.then144.1

do.body141.1.if.end152.1_crit_edge:               ; preds = %do.body141.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.1

if.then144.1:                                     ; preds = %do.body141.1
  call void @__sanitizer_cov_trace_pc() #11
  %shr145.1 = lshr i32 %shl153, 24
  %conv146.1 = trunc i32 %shr145.1 to i8
  %incdec.ptr147.1 = getelementptr i8, ptr %wptr.5, i32 1
  %66 = ptrtoint ptr %wptr.5 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv146.1, ptr %wptr.5, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc142.1, i32 %12)
  %cmp148.not.1 = icmp slt i32 %inc142.1, %12
  %spec.select386.1 = select i1 %cmp148.not.1, ptr %incdec.ptr147.1, ptr null
  br label %if.end152.1

if.end152.1:                                      ; preds = %if.then144.1, %do.body141.1.if.end152.1_crit_edge
  %wptr.5.1 = phi ptr [ null, %do.body141.1.if.end152.1_crit_edge ], [ %spec.select386.1, %if.then144.1 ]
  %shl153.1 = shl i32 %or140, 16
  %add154.1 = add i32 %sub138, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add154.1)
  %cmp156.1 = icmp ult i32 %add154.1, 25
  br i1 %cmp156.1, label %do.body141.2, label %if.end152.1.do.end158_crit_edge

if.end152.1.do.end158_crit_edge:                  ; preds = %if.end152.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

do.body141.2:                                     ; preds = %if.end152.1
  %inc142.2 = add i32 %olen.0.ph.lcssa, 3
  %tobool143.not.2 = icmp eq ptr %wptr.5.1, null
  br i1 %tobool143.not.2, label %do.body141.2.if.end152.2_crit_edge, label %if.then144.2

do.body141.2.if.end152.2_crit_edge:               ; preds = %do.body141.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.2

if.then144.2:                                     ; preds = %do.body141.2
  call void @__sanitizer_cov_trace_pc() #11
  %shr145.2 = lshr i32 %shl153.1, 24
  %conv146.2 = trunc i32 %shr145.2 to i8
  %incdec.ptr147.2 = getelementptr i8, ptr %wptr.5.1, i32 1
  %67 = ptrtoint ptr %wptr.5.1 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv146.2, ptr %wptr.5.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc142.2, i32 %12)
  %cmp148.not.2 = icmp slt i32 %inc142.2, %12
  %spec.select386.2 = select i1 %cmp148.not.2, ptr %incdec.ptr147.2, ptr null
  br label %if.end152.2

if.end152.2:                                      ; preds = %if.then144.2, %do.body141.2.if.end152.2_crit_edge
  %wptr.5.2 = phi ptr [ null, %do.body141.2.if.end152.2_crit_edge ], [ %spec.select386.2, %if.then144.2 ]
  %shl153.2 = shl i32 %or140, 24
  %add154.2 = add i32 %sub138, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add154.2)
  %cmp156.2 = icmp ult i32 %add154.2, 25
  br i1 %cmp156.2, label %do.body141.3, label %if.end152.2.do.end158_crit_edge

if.end152.2.do.end158_crit_edge:                  ; preds = %if.end152.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

do.body141.3:                                     ; preds = %if.end152.2
  %inc142.3 = add i32 %olen.0.ph.lcssa, 4
  %tobool143.not.3 = icmp eq ptr %wptr.5.2, null
  br i1 %tobool143.not.3, label %do.body141.3.if.end152.3_crit_edge, label %if.then144.3

do.body141.3.if.end152.3_crit_edge:               ; preds = %do.body141.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.3

if.then144.3:                                     ; preds = %do.body141.3
  call void @__sanitizer_cov_trace_pc() #11
  %conv146.3 = trunc i32 %or140 to i8
  %incdec.ptr147.3 = getelementptr i8, ptr %wptr.5.2, i32 1
  %68 = ptrtoint ptr %wptr.5.2 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv146.3, ptr %wptr.5.2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc142.3, i32 %12)
  %cmp148.not.3 = icmp slt i32 %inc142.3, %12
  %spec.select386.3 = select i1 %cmp148.not.3, ptr %incdec.ptr147.3, ptr null
  br label %if.end152.3

if.end152.3:                                      ; preds = %if.then144.3, %do.body141.3.if.end152.3_crit_edge
  %wptr.5.3 = phi ptr [ null, %do.body141.3.if.end152.3_crit_edge ], [ %spec.select386.3, %if.then144.3 ]
  %add154.3 = add i32 %sub138, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add154.3)
  %cmp156.3 = icmp ult i32 %add154.3, 25
  br i1 %cmp156.3, label %do.body141.4, label %if.end152.3.do.end158_crit_edge

if.end152.3.do.end158_crit_edge:                  ; preds = %if.end152.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

do.body141.4:                                     ; preds = %if.end152.3
  %inc142.4 = add i32 %olen.0.ph.lcssa, 5
  %tobool143.not.4 = icmp eq ptr %wptr.5.3, null
  br i1 %tobool143.not.4, label %do.body141.4.if.end152.4_crit_edge, label %if.then144.4

do.body141.4.if.end152.4_crit_edge:               ; preds = %do.body141.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.4

if.then144.4:                                     ; preds = %do.body141.4
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr147.4 = getelementptr i8, ptr %wptr.5.3, i32 1
  %69 = ptrtoint ptr %wptr.5.3 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %wptr.5.3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc142.4, i32 %12)
  %cmp148.not.4 = icmp slt i32 %inc142.4, %12
  %spec.select386.4 = select i1 %cmp148.not.4, ptr %incdec.ptr147.4, ptr null
  br label %if.end152.4

if.end152.4:                                      ; preds = %if.then144.4, %do.body141.4.if.end152.4_crit_edge
  %wptr.5.4 = phi ptr [ null, %do.body141.4.if.end152.4_crit_edge ], [ %spec.select386.4, %if.then144.4 ]
  %add154.4 = add i32 %sub138, 40
  br label %do.end158

do.end158:                                        ; preds = %if.end152.4, %if.end152.3.do.end158_crit_edge, %if.end152.2.do.end158_crit_edge, %if.end152.1.do.end158_crit_edge, %if.end152.do.end158_crit_edge
  %wptr.5.lcssa = phi ptr [ %wptr.5, %if.end152.do.end158_crit_edge ], [ %wptr.5.1, %if.end152.1.do.end158_crit_edge ], [ %wptr.5.2, %if.end152.2.do.end158_crit_edge ], [ %wptr.5.3, %if.end152.3.do.end158_crit_edge ], [ %wptr.5.4, %if.end152.4 ]
  %shl153.lcssa = phi i32 [ %shl153, %if.end152.do.end158_crit_edge ], [ %shl153.1, %if.end152.1.do.end158_crit_edge ], [ %shl153.2, %if.end152.2.do.end158_crit_edge ], [ 0, %if.end152.3.do.end158_crit_edge ], [ 0, %if.end152.4 ]
  %add154.lcssa = phi i32 [ %add154, %if.end152.do.end158_crit_edge ], [ %add154.1, %if.end152.1.do.end158_crit_edge ], [ %add154.2, %if.end152.2.do.end158_crit_edge ], [ %add154.3, %if.end152.3.do.end158_crit_edge ], [ %add154.4, %if.end152.4 ]
  %olen.2.lcssa = phi i32 [ %olen.0.ph.lcssa, %if.end152.do.end158_crit_edge ], [ %inc142, %if.end152.1.do.end158_crit_edge ], [ %inc142.1, %if.end152.2.do.end158_crit_edge ], [ %inc142.2, %if.end152.3.do.end158_crit_edge ], [ %inc142.3, %if.end152.4 ]
  %inc142.lcssa = phi i32 [ %inc142, %if.end152.do.end158_crit_edge ], [ %inc142.1, %if.end152.1.do.end158_crit_edge ], [ %inc142.2, %if.end152.2.do.end158_crit_edge ], [ %inc142.3, %if.end152.3.do.end158_crit_edge ], [ %inc142.4, %if.end152.4 ]
  %sub160 = add i32 %olen.2.lcssa, -5
  %bytes_out = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 12
  %70 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bytes_out, align 4
  %add161 = add i32 %sub160, %71
  store i32 %add161, ptr %bytes_out, align 4
  %uncomp_bytes = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 19
  %72 = ptrtoint ptr %uncomp_bytes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %uncomp_bytes, align 4
  %add162 = add i32 %73, %inc
  store i32 %add162, ptr %uncomp_bytes, align 4
  %in_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 11
  %74 = ptrtoint ptr %in_count to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %in_count, align 4
  %add163 = add i32 %75, %inc
  store i32 %add163, ptr %in_count, align 4
  %uncomp_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 18
  %76 = ptrtoint ptr %uncomp_count to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %uncomp_count, align 4
  %inc164 = add i32 %77, 1
  store i32 %inc164, ptr %uncomp_count, align 4
  %seqno165 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 7
  %78 = ptrtoint ptr %seqno165 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %seqno165, align 2
  %inc166 = add i16 %79, 1
  store i16 %inc166, ptr %seqno165, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add154.lcssa)
  %cmp167 = icmp ult i32 %add154.lcssa, 32
  br i1 %cmp167, label %if.then169, label %do.end158.if.end172_crit_edge

do.end158.if.end172_crit_edge:                    ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then169:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #11
  %inc171 = add i32 %add161, 1
  %80 = ptrtoint ptr %bytes_out to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %inc171, ptr %bytes_out, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %do.end158.if.end172_crit_edge
  %checkpoint.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 14
  %81 = ptrtoint ptr %checkpoint.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %checkpoint.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add163, i32 %82)
  %cmp.not.i = icmp ult i32 %add163, %82
  br i1 %cmp.not.i, label %if.end172.if.end196_crit_edge, label %if.then.i

if.end172.if.end196_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.then.i:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388606, i32 %add163)
  %cmp2.i = icmp ugt i32 %add163, 8388606
  br i1 %cmp2.i, label %if.then.i.if.then4.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then4.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %83 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bytes_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388606, i32 %84)
  %cmp3.i = icmp ugt i32 %84, 8388606
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then4.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false.i.if.then4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

if.then4.i:                                       ; preds = %lor.lhs.false.i.if.then4.i_crit_edge, %if.then.i.if.then4.i_crit_edge
  %shr.i = lshr i32 %add163, 2
  %sub.i = sub i32 %add163, %shr.i
  %85 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub.i, ptr %in_count, align 4
  %86 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bytes_out, align 4
  %shr8.i = lshr i32 %87, 2
  %sub10.i = sub i32 %87, %shr8.i
  store i32 %sub10.i, ptr %bytes_out, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %lor.lhs.false.i.if.end.i_crit_edge
  %88 = ptrtoint ptr %in_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %in_count, align 4
  %add.i = add i32 %89, 10000
  %90 = ptrtoint ptr %checkpoint.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add.i, ptr %checkpoint.i, align 4
  %91 = ptrtoint ptr %max_ent8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_ent8, align 4
  %maxmaxcode.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 9
  %93 = ptrtoint ptr %maxmaxcode.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %maxmaxcode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp13.not.i = icmp ult i32 %92, %94
  br i1 %cmp13.not.i, label %if.end.i.if.end196_crit_edge, label %if.then14.i

if.end.i.if.end196_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.then14.i:                                      ; preds = %if.end.i
  %shl.i = shl i32 %89, 8
  %95 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bytes_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp17.not.i = icmp eq i32 %96, 0
  br i1 %cmp17.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then18.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = udiv i32 %shl.i, %96
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.then14.i.if.end20.i_crit_edge
  %new_ratio.0.i = phi i32 [ %div.i, %if.then18.i ], [ %shl.i, %if.then14.i.if.end20.i_crit_edge ]
  %ratio.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 13
  %97 = ptrtoint ptr %ratio.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ratio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_ratio.0.i, i32 %98)
  %cmp21.i = icmp ult i32 %new_ratio.0.i, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %new_ratio.0.i)
  %cmp23.i = icmp ult i32 %new_ratio.0.i, 256
  %or.cond.i = or i1 %cmp23.i, %cmp21.i
  br i1 %or.cond.i, label %if.then174, label %if.end25.i

if.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %ratio.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %new_ratio.0.i, ptr %ratio.i, align 4
  br label %if.end196

if.then174:                                       ; preds = %if.end20.i
  %clear_count.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 15
  %100 = ptrtoint ptr %clear_count.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %clear_count.i.i, align 4
  %inc.i.i = add i32 %101, 1
  store i32 %inc.i.i, ptr %clear_count.i.i, align 4
  %102 = ptrtoint ptr %max_ent8 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 256, ptr %max_ent8, align 4
  %103 = ptrtoint ptr %n_bits9 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 9, ptr %n_bits9, align 1
  %104 = ptrtoint ptr %bytes_out to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %bytes_out, align 4
  %105 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %in_count, align 4
  %106 = ptrtoint ptr %ratio.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %ratio.i, align 4
  %107 = ptrtoint ptr %checkpoint.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 10000, ptr %checkpoint.i, align 4
  %sub175 = sub i32 %add154.lcssa, %n_bits.0.ph.lcssa
  %shl176 = shl i32 256, %sub175
  %or177 = or i32 %shl176, %shl153.lcssa
  %inc179 = add i32 %inc142.lcssa, 1
  %tobool180.not = icmp eq ptr %wptr.5.lcssa, null
  br i1 %tobool180.not, label %if.then174.if.end189_crit_edge, label %if.then181

if.then174.if.end189_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then181:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  %shr182 = lshr i32 %or177, 24
  %conv183 = trunc i32 %shr182 to i8
  %incdec.ptr184 = getelementptr i8, ptr %wptr.5.lcssa, i32 1
  %108 = ptrtoint ptr %wptr.5.lcssa to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv183, ptr %wptr.5.lcssa, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc179, i32 %12)
  %cmp185.not = icmp slt i32 %inc179, %12
  %spec.select387 = select i1 %cmp185.not, ptr %incdec.ptr184, ptr null
  br label %if.end189

if.end189:                                        ; preds = %if.then181, %if.then174.if.end189_crit_edge
  %wptr.7 = phi ptr [ null, %if.then174.if.end189_crit_edge ], [ %spec.select387, %if.then181 ]
  %shl190 = shl i32 %or177, 8
  %add191 = add i32 %sub175, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add191)
  %cmp193 = icmp ult i32 %add191, 25
  br i1 %cmp193, label %do.body178.1, label %if.end189.if.end196_crit_edge

if.end189.if.end196_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

do.body178.1:                                     ; preds = %if.end189
  %inc179.1 = add i32 %inc142.lcssa, 2
  %tobool180.not.1 = icmp eq ptr %wptr.7, null
  br i1 %tobool180.not.1, label %do.body178.1.if.end189.1_crit_edge, label %if.then181.1

do.body178.1.if.end189.1_crit_edge:               ; preds = %do.body178.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189.1

if.then181.1:                                     ; preds = %do.body178.1
  call void @__sanitizer_cov_trace_pc() #11
  %shr182.1 = lshr i32 %shl190, 24
  %conv183.1 = trunc i32 %shr182.1 to i8
  %incdec.ptr184.1 = getelementptr i8, ptr %wptr.7, i32 1
  %109 = ptrtoint ptr %wptr.7 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv183.1, ptr %wptr.7, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc179.1, i32 %12)
  %cmp185.not.1 = icmp slt i32 %inc179.1, %12
  %spec.select387.1 = select i1 %cmp185.not.1, ptr %incdec.ptr184.1, ptr null
  br label %if.end189.1

if.end189.1:                                      ; preds = %if.then181.1, %do.body178.1.if.end189.1_crit_edge
  %wptr.7.1 = phi ptr [ null, %do.body178.1.if.end189.1_crit_edge ], [ %spec.select387.1, %if.then181.1 ]
  %shl190.1 = shl i32 %or177, 16
  %add191.1 = add i32 %sub175, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add191.1)
  %cmp193.1 = icmp ult i32 %add191.1, 25
  br i1 %cmp193.1, label %do.body178.2, label %if.end189.1.if.end196_crit_edge

if.end189.1.if.end196_crit_edge:                  ; preds = %if.end189.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

do.body178.2:                                     ; preds = %if.end189.1
  %inc179.2 = add i32 %inc142.lcssa, 3
  %tobool180.not.2 = icmp eq ptr %wptr.7.1, null
  br i1 %tobool180.not.2, label %do.body178.2.if.end189.2_crit_edge, label %if.then181.2

do.body178.2.if.end189.2_crit_edge:               ; preds = %do.body178.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189.2

if.then181.2:                                     ; preds = %do.body178.2
  call void @__sanitizer_cov_trace_pc() #11
  %shr182.2 = lshr exact i32 %shl190.1, 24
  %conv183.2 = trunc i32 %shr182.2 to i8
  %incdec.ptr184.2 = getelementptr i8, ptr %wptr.7.1, i32 1
  %110 = ptrtoint ptr %wptr.7.1 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv183.2, ptr %wptr.7.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc179.2, i32 %12)
  %cmp185.not.2 = icmp slt i32 %inc179.2, %12
  %spec.select387.2 = select i1 %cmp185.not.2, ptr %incdec.ptr184.2, ptr null
  br label %if.end189.2

if.end189.2:                                      ; preds = %if.then181.2, %do.body178.2.if.end189.2_crit_edge
  %wptr.7.2 = phi ptr [ null, %do.body178.2.if.end189.2_crit_edge ], [ %spec.select387.2, %if.then181.2 ]
  %add191.2 = add i32 %sub175, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add191.2)
  %cmp193.2 = icmp ult i32 %add191.2, 25
  br i1 %cmp193.2, label %do.body178.3, label %if.end189.2.if.end196_crit_edge

if.end189.2.if.end196_crit_edge:                  ; preds = %if.end189.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

do.body178.3:                                     ; preds = %if.end189.2
  %inc179.3 = add i32 %inc142.lcssa, 4
  %tobool180.not.3 = icmp eq ptr %wptr.7.2, null
  br i1 %tobool180.not.3, label %do.body178.3.if.end189.3_crit_edge, label %if.then181.3

do.body178.3.if.end189.3_crit_edge:               ; preds = %do.body178.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189.3

if.then181.3:                                     ; preds = %do.body178.3
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr184.3 = getelementptr i8, ptr %wptr.7.2, i32 1
  %111 = ptrtoint ptr %wptr.7.2 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %wptr.7.2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc179.3, i32 %12)
  %cmp185.not.3 = icmp slt i32 %inc179.3, %12
  %spec.select387.3 = select i1 %cmp185.not.3, ptr %incdec.ptr184.3, ptr null
  br label %if.end189.3

if.end189.3:                                      ; preds = %if.then181.3, %do.body178.3.if.end189.3_crit_edge
  %wptr.7.3 = phi ptr [ null, %do.body178.3.if.end189.3_crit_edge ], [ %spec.select387.3, %if.then181.3 ]
  %add191.3 = add i32 %sub175, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add191.3)
  %cmp193.3 = icmp ult i32 %add191.3, 25
  br i1 %cmp193.3, label %do.body178.4, label %if.end189.3.if.end196_crit_edge

if.end189.3.if.end196_crit_edge:                  ; preds = %if.end189.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

do.body178.4:                                     ; preds = %if.end189.3
  %inc179.4 = add i32 %inc142.lcssa, 5
  %tobool180.not.4 = icmp eq ptr %wptr.7.3, null
  br i1 %tobool180.not.4, label %do.body178.4.if.end189.4_crit_edge, label %if.then181.4

do.body178.4.if.end189.4_crit_edge:               ; preds = %do.body178.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189.4

if.then181.4:                                     ; preds = %do.body178.4
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr184.4 = getelementptr i8, ptr %wptr.7.3, i32 1
  %112 = ptrtoint ptr %wptr.7.3 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %wptr.7.3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc179.4, i32 %12)
  %cmp185.not.4 = icmp slt i32 %inc179.4, %12
  %spec.select387.4 = select i1 %cmp185.not.4, ptr %incdec.ptr184.4, ptr null
  br label %if.end189.4

if.end189.4:                                      ; preds = %if.then181.4, %do.body178.4.if.end189.4_crit_edge
  %wptr.7.4 = phi ptr [ null, %do.body178.4.if.end189.4_crit_edge ], [ %spec.select387.4, %if.then181.4 ]
  %add191.4 = add i32 %sub175, 40
  br label %if.end196

if.end196:                                        ; preds = %if.end189.4, %if.end189.3.if.end196_crit_edge, %if.end189.2.if.end196_crit_edge, %if.end189.1.if.end196_crit_edge, %if.end189.if.end196_crit_edge, %if.end25.i, %if.end.i.if.end196_crit_edge, %if.end172.if.end196_crit_edge
  %bitno.4 = phi i32 [ %add154.lcssa, %if.end.i.if.end196_crit_edge ], [ %add154.lcssa, %if.end25.i ], [ %add154.lcssa, %if.end172.if.end196_crit_edge ], [ %add191, %if.end189.if.end196_crit_edge ], [ %add191.1, %if.end189.1.if.end196_crit_edge ], [ %add191.2, %if.end189.2.if.end196_crit_edge ], [ %add191.3, %if.end189.3.if.end196_crit_edge ], [ %add191.4, %if.end189.4 ]
  %accm.4 = phi i32 [ %shl153.lcssa, %if.end.i.if.end196_crit_edge ], [ %shl153.lcssa, %if.end25.i ], [ %shl153.lcssa, %if.end172.if.end196_crit_edge ], [ %shl190, %if.end189.if.end196_crit_edge ], [ %shl190.1, %if.end189.1.if.end196_crit_edge ], [ 0, %if.end189.2.if.end196_crit_edge ], [ 0, %if.end189.3.if.end196_crit_edge ], [ 0, %if.end189.4 ]
  %wptr.8 = phi ptr [ %wptr.5.lcssa, %if.end.i.if.end196_crit_edge ], [ %wptr.5.lcssa, %if.end25.i ], [ %wptr.5.lcssa, %if.end172.if.end196_crit_edge ], [ %wptr.7, %if.end189.if.end196_crit_edge ], [ %wptr.7.1, %if.end189.1.if.end196_crit_edge ], [ %wptr.7.2, %if.end189.2.if.end196_crit_edge ], [ %wptr.7.3, %if.end189.3.if.end196_crit_edge ], [ %wptr.7.4, %if.end189.4 ]
  %olen.4 = phi i32 [ %inc142.lcssa, %if.end.i.if.end196_crit_edge ], [ %inc142.lcssa, %if.end25.i ], [ %inc142.lcssa, %if.end172.if.end196_crit_edge ], [ %inc179, %if.end189.if.end196_crit_edge ], [ %inc179.1, %if.end189.1.if.end196_crit_edge ], [ %inc179.2, %if.end189.2.if.end196_crit_edge ], [ %inc179.3, %if.end189.3.if.end196_crit_edge ], [ %inc179.4, %if.end189.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitno.4)
  %cmp197.not = icmp eq i32 %bitno.4, 32
  br i1 %cmp197.not, label %if.end196.if.end214_crit_edge, label %if.then199

if.end196.if.end214_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.then199:                                       ; preds = %if.end196
  %inc200 = add i32 %olen.4, 1
  %tobool201.not = icmp eq ptr %wptr.8, null
  br i1 %tobool201.not, label %if.then199.if.end214_crit_edge, label %if.then202

if.then199.if.end214_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.then202:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #11
  %sub203 = add i32 %bitno.4, -8
  %shl204 = shl i32 255, %sub203
  %or205 = or i32 %shl204, %accm.4
  %shr206 = lshr i32 %or205, 24
  %conv207 = trunc i32 %shr206 to i8
  %incdec.ptr208 = getelementptr i8, ptr %wptr.8, i32 1
  %113 = ptrtoint ptr %wptr.8 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv207, ptr %wptr.8, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc200, i32 %12)
  %cmp209.not = icmp slt i32 %inc200, %12
  %spec.select388 = select i1 %cmp209.not, ptr %incdec.ptr208, ptr null
  br label %if.end214

if.end214:                                        ; preds = %if.then202, %if.then199.if.end214_crit_edge, %if.end196.if.end214_crit_edge
  %wptr.9 = phi ptr [ null, %if.then199.if.end214_crit_edge ], [ %wptr.8, %if.end196.if.end214_crit_edge ], [ %spec.select388, %if.then202 ]
  %olen.5 = phi i32 [ %inc200, %if.then199.if.end214_crit_edge ], [ %olen.4, %if.end196.if.end214_crit_edge ], [ %inc200, %if.then202 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph.lcssa, i32 %mxcode.0.ph.lcssa)
  %cmp215.not = icmp ult i32 %max_ent.0.ph.lcssa, %mxcode.0.ph.lcssa
  br i1 %cmp215.not, label %if.end214.if.end223_crit_edge, label %land.lhs.true

if.end214.if.end223_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end223

land.lhs.true:                                    ; preds = %if.end214
  %maxmaxcode217 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 9
  %114 = ptrtoint ptr %maxmaxcode217 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %maxmaxcode217, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph.lcssa, i32 %115)
  %cmp218 = icmp ult i32 %max_ent.0.ph.lcssa, %115
  br i1 %cmp218, label %if.then220, label %land.lhs.true.if.end223_crit_edge

land.lhs.true.if.end223_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end223

if.then220:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %n_bits9 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %n_bits9, align 1
  %inc222 = add i8 %117, 1
  store i8 %inc222, ptr %n_bits9, align 1
  br label %if.end223

if.end223:                                        ; preds = %if.then220, %land.lhs.true.if.end223_crit_edge, %if.end214.if.end223_crit_edge
  %cmp224 = icmp eq ptr %wptr.9, null
  br i1 %cmp224, label %if.then226, label %if.else

if.then226:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  %incomp_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 16
  %118 = ptrtoint ptr %incomp_count to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %incomp_count, align 4
  %inc227 = add i32 %119, 1
  store i32 %inc227, ptr %incomp_count, align 4
  %incomp_bytes = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 17
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  %comp_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 20
  %120 = ptrtoint ptr %comp_count to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %comp_count, align 4
  %inc229 = add i32 %121, 1
  store i32 %inc229, ptr %comp_count, align 4
  %comp_bytes = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 21
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then226
  %incomp_bytes.sink525 = phi ptr [ %incomp_bytes, %if.then226 ], [ %comp_bytes, %if.else ]
  %inc.sink = phi i32 [ %inc, %if.then226 ], [ %olen.5, %if.else ]
  %retval.0.ph = phi i32 [ 0, %if.then226 ], [ %olen.5, %if.else ]
  %122 = ptrtoint ptr %incomp_bytes.sink525 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %incomp_bytes.sink525, align 4
  %add228 = add i32 %123, %inc.sink
  store i32 %add228, ptr %incomp_bytes.sink525, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bsd_comp_stats(ptr nocapture noundef readonly %state, ptr nocapture noundef writeonly %stats) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uncomp_bytes = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 19
  %0 = ptrtoint ptr %uncomp_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uncomp_bytes, align 4
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %stats, align 8
  %uncomp_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 18
  %3 = ptrtoint ptr %uncomp_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uncomp_count, align 4
  %unc_packets = getelementptr inbounds %struct.compstat, ptr %stats, i32 0, i32 1
  %5 = ptrtoint ptr %unc_packets to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %unc_packets, align 4
  %comp_bytes = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 21
  %6 = ptrtoint ptr %comp_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %comp_bytes, align 4
  %comp_bytes1 = getelementptr inbounds %struct.compstat, ptr %stats, i32 0, i32 2
  %8 = ptrtoint ptr %comp_bytes1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %comp_bytes1, align 8
  %comp_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 20
  %9 = ptrtoint ptr %comp_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %comp_count, align 4
  %comp_packets = getelementptr inbounds %struct.compstat, ptr %stats, i32 0, i32 3
  %11 = ptrtoint ptr %comp_packets to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %comp_packets, align 4
  %incomp_bytes = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 17
  %12 = ptrtoint ptr %incomp_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incomp_bytes, align 4
  %inc_bytes = getelementptr inbounds %struct.compstat, ptr %stats, i32 0, i32 4
  %14 = ptrtoint ptr %inc_bytes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %inc_bytes, align 8
  %incomp_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 16
  %15 = ptrtoint ptr %incomp_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incomp_count, align 4
  %inc_packets = getelementptr inbounds %struct.compstat, ptr %stats, i32 0, i32 5
  %17 = ptrtoint ptr %inc_packets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %inc_packets, align 4
  %in_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 11
  %18 = ptrtoint ptr %in_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_count, align 4
  %in_count2 = getelementptr inbounds %struct.compstat, ptr %stats, i32 0, i32 6
  %20 = ptrtoint ptr %in_count2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %in_count2, align 8
  %bytes_out = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 12
  %21 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes_out, align 4
  %bytes_out3 = getelementptr inbounds %struct.compstat, ptr %stats, i32 0, i32 7
  %23 = ptrtoint ptr %bytes_out3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %bytes_out3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bsd_decomp_alloc(ptr nocapture noundef readonly %options, i32 noundef %opt_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @bsd_alloc(ptr noundef %options, i32 noundef %opt_len, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsd_decomp_init(ptr nocapture noundef %state, ptr nocapture noundef readonly %options, i32 noundef %opt_len, i32 noundef %unit, i32 noundef %opthdr, i32 noundef %mru, i32 noundef %debug) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %opt_len)
  %cmp.not.i = icmp eq i32 %opt_len, 3
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.bsd_init.exit_crit_edge

entry.bsd_init.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %1)
  %cmp1.not.i = icmp eq i8 %1, 21
  br i1 %cmp1.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.bsd_init.exit_crit_edge

lor.lhs.false.i.bsd_init.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx4.i = getelementptr i8, ptr %options, i32 1
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp6.not.i = icmp eq i8 %3, 3
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false3.i.bsd_init.exit_crit_edge

lor.lhs.false3.i.bsd_init.exit_crit_edge:         ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false3.i
  %arrayidx9.i = getelementptr i8, ptr %options, i32 2
  %4 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %5 to i32
  %.mask.i = and i32 %conv10.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.mask.i)
  %cmp11.not.i = icmp eq i32 %.mask.i, 32
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %lor.lhs.false8.i.bsd_init.exit_crit_edge

lor.lhs.false8.i.bsd_init.exit_crit_edge:         ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false13.i:                                ; preds = %lor.lhs.false8.i
  %and.i = and i32 %conv10.i, 31
  %maxbits.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %maxbits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %maxbits.i, align 2
  %conv16.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv16.i)
  %cmp17.not.i = icmp eq i32 %and.i, %conv16.i
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %lor.lhs.false13.i.bsd_init.exit_crit_edge

lor.lhs.false13.i.bsd_init.exit_crit_edge:        ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

lor.lhs.false19.i:                                ; preds = %lor.lhs.false13.i
  %lens.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 22
  %8 = ptrtoint ptr %lens.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lens.i, align 4
  %cmp20.i = icmp eq ptr %9, null
  br i1 %cmp20.i, label %lor.lhs.false19.i.bsd_init.exit_crit_edge, label %lor.lhs.false19.i.do.body.i_crit_edge

lor.lhs.false19.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false19.i
  br label %do.body.i

lor.lhs.false19.i.bsd_init.exit_crit_edge:        ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bsd_init.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %lor.lhs.false19.i.do.body.i_crit_edge
  %indx.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ 255, %lor.lhs.false19.i.do.body.i_crit_edge ]
  %10 = ptrtoint ptr %lens.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lens.i, align 4
  %arrayidx25.i = getelementptr i16, ptr %11, i32 %indx.0.i
  %12 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %arrayidx25.i, align 2
  %dec.i = add nsw i32 %indx.0.i, -1
  %cmp26.not.i = icmp eq i32 %indx.0.i, 0
  br i1 %cmp26.not.i, label %if.end28.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end28.i:                                       ; preds = %do.body.i
  %hsize.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 1
  %13 = ptrtoint ptr %hsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30.not59.i = icmp eq i32 %14, 0
  br i1 %cmp30.not59.i, label %if.end28.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end28.i.while.end.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end28.i
  %dict.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 23
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %indx.160.i = phi i32 [ %14, %while.body.lr.ph.i ], [ %dec29.i, %while.body.i.while.body.i_crit_edge ]
  %dec29.i = add i32 %indx.160.i, -1
  %15 = ptrtoint ptr %dict.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dict.i, align 4
  %codem1.i = getelementptr %struct.bsd_dict, ptr %16, i32 %dec29.i, i32 1
  %17 = ptrtoint ptr %codem1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 32767, ptr %codem1.i, align 4
  %18 = load ptr, ptr %dict.i, align 4
  %cptr.i = getelementptr %struct.bsd_dict, ptr %18, i32 %dec29.i, i32 2
  %19 = ptrtoint ptr %cptr.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %cptr.i, align 2
  %cmp30.not.i = icmp eq i32 %dec29.i, 0
  br i1 %cmp30.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end28.i.while.end.i_crit_edge
  %conv35.i = trunc i32 %unit to i8
  %unit36.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 6
  %20 = ptrtoint ptr %unit36.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv35.i, ptr %unit36.i, align 4
  %mru.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 8
  %21 = ptrtoint ptr %mru.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mru.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %debug)
  %tobool37.not.i = icmp eq i32 %debug, 0
  br i1 %tobool37.not.i, label %while.end.i.if.end40.i_crit_edge, label %if.then38.i

while.end.i.if.end40.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then38.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %debug39.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 5
  %22 = ptrtoint ptr %debug39.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %debug39.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %while.end.i.if.end40.i_crit_edge
  %clear_count.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 15
  %max_ent.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 10
  %23 = ptrtoint ptr %max_ent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %max_ent.i.i.i, align 4
  %n_bits.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 3
  %24 = ptrtoint ptr %n_bits.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 9, ptr %n_bits.i.i.i, align 1
  %bytes_out.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 12
  %25 = ptrtoint ptr %bytes_out.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bytes_out.i.i.i, align 4
  %in_count.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 11
  %26 = ptrtoint ptr %in_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %in_count.i.i.i, align 4
  %ratio.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 13
  %27 = ptrtoint ptr %ratio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ratio.i.i.i, align 4
  %checkpoint.i.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 14
  %28 = ptrtoint ptr %checkpoint.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10000, ptr %checkpoint.i.i.i, align 4
  %seqno.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 7
  %29 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %seqno.i.i, align 2
  %30 = ptrtoint ptr %clear_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %clear_count.i.i.i, align 4
  br label %bsd_init.exit

bsd_init.exit:                                    ; preds = %if.end40.i, %lor.lhs.false19.i.bsd_init.exit_crit_edge, %lor.lhs.false13.i.bsd_init.exit_crit_edge, %lor.lhs.false8.i.bsd_init.exit_crit_edge, %lor.lhs.false3.i.bsd_init.exit_crit_edge, %lor.lhs.false.i.bsd_init.exit_crit_edge, %entry.bsd_init.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end40.i ], [ 0, %lor.lhs.false19.i.bsd_init.exit_crit_edge ], [ 0, %lor.lhs.false13.i.bsd_init.exit_crit_edge ], [ 0, %lor.lhs.false8.i.bsd_init.exit_crit_edge ], [ 0, %lor.lhs.false3.i.bsd_init.exit_crit_edge ], [ 0, %lor.lhs.false.i.bsd_init.exit_crit_edge ], [ 0, %entry.bsd_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsd_decompress(ptr noundef %state, ptr nocapture noundef readonly %ibuf, i32 noundef %isize, ptr nocapture noundef writeonly %obuf, i32 noundef %osize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_ent1 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 10
  %n_bits2 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 3
  %arrayidx6 = getelementptr i8, ptr %ibuf, i32 4
  %0 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %arrayidx8 = getelementptr i8, ptr %ibuf, i32 5
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %3 to i32
  %add = or i32 %shl, %conv9
  %seqno = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 7
  %4 = ptrtoint ptr %seqno to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %seqno, align 2
  %conv11 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv11)
  %cmp.not = icmp eq i32 %add, %conv11
  br i1 %cmp.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %debug, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %unit = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 6
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %unit, align 4
  %conv14 = zext i8 %9 to i32
  %sub17 = add nsw i32 %conv11, -1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv14, i32 noundef %add, i32 noundef %sub17) #12
  br label %cleanup

if.end18:                                         ; preds = %entry
  %sub10 = add i32 %isize, -6
  %add.ptr = getelementptr i8, ptr %ibuf, i32 6
  %arrayidx4 = getelementptr i8, ptr %ibuf, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  %12 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ibuf, align 1
  %14 = ptrtoint ptr %n_bits2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %n_bits2, align 1
  %conv = zext i8 %15 to i32
  %sub = sub nsw i32 32, %conv
  %16 = ptrtoint ptr %max_ent1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_ent1, align 4
  %inc = add i16 %5, 1
  %18 = ptrtoint ptr %seqno to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %inc, ptr %seqno, align 2
  %bytes_out = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 12
  %19 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytes_out, align 4
  %add20 = add i32 %20, %sub10
  store i32 %add20, ptr %bytes_out, align 4
  %incdec.ptr = getelementptr i8, ptr %obuf, i32 1
  %21 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %13, ptr %obuf, align 1
  %incdec.ptr23 = getelementptr i8, ptr %obuf, i32 2
  %22 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %11, ptr %incdec.ptr, align 1
  %incdec.ptr24 = getelementptr i8, ptr %obuf, i32 3
  %23 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %incdec.ptr23, align 1
  %maxmaxcode = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 9
  %lens = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 22
  %dict = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 23
  %hshift = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 2
  %hsize = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 1
  br label %for.cond.outer.outer

for.cond.outer.outer:                             ; preds = %if.then202, %if.end18
  %tgtbitno.0.ph.ph = phi i32 [ %sub206, %if.then202 ], [ %sub, %if.end18 ]
  %explen.0.ph.ph = phi i32 [ %add97, %if.then202 ], [ 3, %if.end18 ]
  %oldcode.0.ph.ph = phi i32 [ %shr, %if.then202 ], [ 256, %if.end18 ]
  %wptr.0.ph.ph = phi ptr [ %wptr.1, %if.then202 ], [ %incdec.ptr24, %if.end18 ]
  %ilen.0.ph.ph = phi i32 [ %dec, %if.then202 ], [ %sub10, %if.end18 ]
  %n_bits.0.ph.ph = phi i32 [ %inc203, %if.then202 ], [ %conv, %if.end18 ]
  %bitno.0.ph.ph = phi i32 [ %add40, %if.then202 ], [ 32, %if.end18 ]
  %accm.0.ph.ph = phi i32 [ %shl39, %if.then202 ], [ 0, %if.end18 ]
  %max_ent.0.ph.ph = phi i32 [ %add167, %if.then202 ], [ %17, %if.end18 ]
  %ibuf.addr.0.ph.ph = phi ptr [ %incdec.ptr32, %if.then202 ], [ %add.ptr, %if.end18 ]
  %notmask = shl nsw i32 -1, %n_bits.0.ph.ph
  %sub195 = xor i32 %notmask, -1
  br label %for.cond.outer.outer440

for.cond.outer.outer440:                          ; preds = %for.cond.outer.outer440.backedge, %for.cond.outer.outer
  %explen.0.ph.ph441 = phi i32 [ %explen.0.ph.ph, %for.cond.outer.outer ], [ %add97, %for.cond.outer.outer440.backedge ]
  %oldcode.0.ph.ph442 = phi i32 [ %oldcode.0.ph.ph, %for.cond.outer.outer ], [ %shr, %for.cond.outer.outer440.backedge ]
  %wptr.0.ph.ph443 = phi ptr [ %wptr.0.ph.ph, %for.cond.outer.outer ], [ %wptr.1, %for.cond.outer.outer440.backedge ]
  %ilen.0.ph.ph444 = phi i32 [ %ilen.0.ph.ph, %for.cond.outer.outer ], [ %dec, %for.cond.outer.outer440.backedge ]
  %bitno.0.ph.ph445 = phi i32 [ %bitno.0.ph.ph, %for.cond.outer.outer ], [ %add40, %for.cond.outer.outer440.backedge ]
  %accm.0.ph.ph446 = phi i32 [ %accm.0.ph.ph, %for.cond.outer.outer ], [ %shl39, %for.cond.outer.outer440.backedge ]
  %max_ent.0.ph.ph447 = phi i32 [ %max_ent.0.ph.ph, %for.cond.outer.outer ], [ %add167, %for.cond.outer.outer440.backedge ]
  %ibuf.addr.0.ph.ph448 = phi ptr [ %ibuf.addr.0.ph.ph, %for.cond.outer.outer ], [ %incdec.ptr32, %for.cond.outer.outer440.backedge ]
  %add60 = add i32 %max_ent.0.ph.ph447, 2
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %for.cond.outer.outer440
  %explen.0.ph = phi i32 [ %explen.0.ph.ph441, %for.cond.outer.outer440 ], [ %add97, %for.cond.outer.backedge ]
  %oldcode.0.ph = phi i32 [ %oldcode.0.ph.ph442, %for.cond.outer.outer440 ], [ %shr, %for.cond.outer.backedge ]
  %wptr.0.ph = phi ptr [ %wptr.0.ph.ph443, %for.cond.outer.outer440 ], [ %wptr.1, %for.cond.outer.backedge ]
  %ilen.0.ph = phi i32 [ %ilen.0.ph.ph444, %for.cond.outer.outer440 ], [ %dec, %for.cond.outer.backedge ]
  %bitno.0.ph = phi i32 [ %bitno.0.ph.ph445, %for.cond.outer.outer440 ], [ %add40, %for.cond.outer.backedge ]
  %accm.0.ph = phi i32 [ %accm.0.ph.ph446, %for.cond.outer.outer440 ], [ %shl39, %for.cond.outer.backedge ]
  %ibuf.addr.0.ph = phi ptr [ %ibuf.addr.0.ph.ph448, %for.cond.outer.outer440 ], [ %incdec.ptr32, %for.cond.outer.backedge ]
  br label %for.cond

for.cond:                                         ; preds = %if.end30.for.cond_crit_edge, %for.cond.outer
  %ilen.0 = phi i32 [ %dec, %if.end30.for.cond_crit_edge ], [ %ilen.0.ph, %for.cond.outer ]
  %bitno.0 = phi i32 [ %sub31, %if.end30.for.cond_crit_edge ], [ %bitno.0.ph, %for.cond.outer ]
  %accm.0 = phi i32 [ %or, %if.end30.for.cond_crit_edge ], [ %accm.0.ph, %for.cond.outer ]
  %ibuf.addr.0 = phi ptr [ %incdec.ptr32, %if.end30.for.cond_crit_edge ], [ %ibuf.addr.0.ph, %for.cond.outer ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ilen.0)
  %cmp25 = icmp slt i32 %ilen.0, 1
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %sub28 = add i32 %explen.0.ph, -3
  %in_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 11
  %24 = ptrtoint ptr %in_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_count, align 4
  %add29 = add i32 %sub28, %25
  store i32 %add29, ptr %in_count, align 4
  br label %for.end

if.end30:                                         ; preds = %for.cond
  %dec = add nsw i32 %ilen.0, -1
  %sub31 = add i32 %bitno.0, -8
  %incdec.ptr32 = getelementptr i8, ptr %ibuf.addr.0, i32 1
  %26 = ptrtoint ptr %ibuf.addr.0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ibuf.addr.0, align 1
  %conv33 = zext i8 %27 to i32
  %shl34 = shl i32 %conv33, %sub31
  %or = or i32 %shl34, %accm.0
  %cmp35 = icmp ult i32 %tgtbitno.0.ph.ph, %sub31
  br i1 %cmp35, label %if.end30.for.cond_crit_edge, label %if.end38

if.end30.for.cond_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end38:                                         ; preds = %if.end30
  %shr = lshr i32 %or, %tgtbitno.0.ph.ph
  %shl39 = shl i32 %or, %n_bits.0.ph.ph
  %add40 = add i32 %sub31, %n_bits.0.ph.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %shr)
  %cmp41 = icmp eq i32 %shr, 256
  br i1 %cmp41, label %if.then43, label %if.end59

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp44.not = icmp eq i32 %dec, 0
  br i1 %cmp44.not, label %if.end58, label %if.then46

if.then46:                                        ; preds = %if.then43
  %debug47 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 5
  %28 = ptrtoint ptr %debug47 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %debug47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool48.not = icmp eq i8 %29, 0
  br i1 %tobool48.not, label %if.then46.cleanup_crit_edge, label %do.end52

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %unit54 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 6
  %30 = ptrtoint ptr %unit54 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %unit54, align 4
  %conv55 = zext i8 %31 to i32
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv55) #12
  br label %cleanup

if.end58:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %clear_count.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 15
  %32 = ptrtoint ptr %clear_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clear_count.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %clear_count.i, align 4
  %34 = ptrtoint ptr %max_ent1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %max_ent1, align 4
  %35 = ptrtoint ptr %n_bits2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 9, ptr %n_bits2, align 1
  %36 = ptrtoint ptr %bytes_out to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %bytes_out, align 4
  %in_count.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 11
  %37 = ptrtoint ptr %in_count.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %in_count.i, align 4
  %ratio.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 13
  %38 = ptrtoint ptr %ratio.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ratio.i, align 4
  %checkpoint.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 14
  %39 = ptrtoint ptr %checkpoint.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 10000, ptr %checkpoint.i, align 4
  br label %for.end

if.end59:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %add60)
  %cmp61 = icmp ugt i32 %shr, %add60
  br i1 %cmp61, label %if.end59.if.then70_crit_edge, label %lor.lhs.false

if.end59.if.then70_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

lor.lhs.false:                                    ; preds = %if.end59
  %40 = ptrtoint ptr %maxmaxcode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %maxmaxcode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %41)
  %cmp63 = icmp ugt i32 %shr, %41
  br i1 %cmp63, label %lor.lhs.false.if.then70_crit_edge, label %lor.lhs.false65

lor.lhs.false.if.then70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

lor.lhs.false65:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %max_ent.0.ph.ph447)
  %cmp66 = icmp ugt i32 %shr, %max_ent.0.ph.ph447
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %oldcode.0.ph)
  %cmp68 = icmp eq i32 %oldcode.0.ph, 256
  %or.cond = and i1 %cmp66, %cmp68
  br i1 %or.cond, label %lor.lhs.false65.if.then70_crit_edge, label %if.end89

lor.lhs.false65.if.then70_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false65.if.then70_crit_edge, %lor.lhs.false.if.then70_crit_edge, %if.end59.if.then70_crit_edge
  %debug71 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 5
  %42 = ptrtoint ptr %debug71 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %debug71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool72.not = icmp eq i8 %43, 0
  br i1 %tobool72.not, label %if.then70.cleanup_crit_edge, label %do.end76

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end76:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %unit78 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 6
  %44 = ptrtoint ptr %unit78 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %unit78, align 4
  %conv79 = zext i8 %45 to i32
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv79, i32 noundef %shr, i32 noundef %oldcode.0.ph) #12
  %46 = ptrtoint ptr %seqno to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %seqno, align 2
  %conv86 = zext i16 %47 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %max_ent.0.ph.ph447, i32 noundef %explen.0.ph, i32 noundef %conv86) #12
  br label %cleanup

if.end89:                                         ; preds = %lor.lhs.false65
  %oldcode.0.shr = select i1 %cmp66, i32 %oldcode.0.ph, i32 %shr
  %. = zext i1 %cmp66 to i32
  %48 = ptrtoint ptr %lens to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lens, align 4
  %arrayidx94 = getelementptr i16, ptr %49, i32 %oldcode.0.shr
  %50 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx94, align 2
  %conv95 = zext i16 %51 to i32
  %add96 = add i32 %explen.0.ph, %.
  %add97 = add i32 %add96, %conv95
  call void @__sanitizer_cov_trace_cmp4(i32 %add97, i32 %osize)
  %cmp98 = icmp sgt i32 %add97, %osize
  br i1 %cmp98, label %if.then100, label %if.end112

if.then100:                                       ; preds = %if.end89
  %debug101 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 5
  %52 = ptrtoint ptr %debug101 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %debug101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool102.not = icmp eq i8 %53, 0
  br i1 %tobool102.not, label %if.then100.cleanup_crit_edge, label %do.end106

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end106:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %unit108 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 6
  %54 = ptrtoint ptr %unit108 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %unit108, align 4
  %conv109 = zext i8 %55 to i32
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv109) #12
  br label %cleanup

if.end112:                                        ; preds = %if.end89
  %add.ptr113 = getelementptr i8, ptr %wptr.0.ph, i32 %conv95
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %oldcode.0.shr)
  %cmp114394 = icmp ugt i32 %oldcode.0.shr, 255
  br i1 %cmp114394, label %if.end112.while.body_crit_edge, label %if.end112.while.end_crit_edge

if.end112.while.end_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end112.while.body_crit_edge:                   ; preds = %if.end112
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end112.while.body_crit_edge
  %p.0396 = phi ptr [ %incdec.ptr119, %while.body.while.body_crit_edge ], [ %add.ptr113, %if.end112.while.body_crit_edge ]
  %finchar.1395 = phi i32 [ %conv121, %while.body.while.body_crit_edge ], [ %oldcode.0.shr, %if.end112.while.body_crit_edge ]
  %56 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dict, align 4
  %cptr = getelementptr %struct.bsd_dict, ptr %57, i32 %finchar.1395, i32 2
  %58 = ptrtoint ptr %cptr to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %cptr, align 2
  %idxprom = zext i16 %59 to i32
  %arrayidx118 = getelementptr %struct.bsd_dict, ptr %57, i32 %idxprom
  %suffix = getelementptr inbounds %struct.anon.44, ptr %arrayidx118, i32 0, i32 1
  %60 = ptrtoint ptr %suffix to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %suffix, align 1
  %incdec.ptr119 = getelementptr i8, ptr %p.0396, i32 -1
  %62 = ptrtoint ptr %incdec.ptr119 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %incdec.ptr119, align 1
  %prefix = getelementptr inbounds %struct.anon.44, ptr %arrayidx118, i32 0, i32 2
  %63 = ptrtoint ptr %prefix to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %prefix, align 2
  %conv121 = zext i16 %64 to i32
  %cmp114 = icmp ugt i16 %64, 255
  br i1 %cmp114, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv121.le = zext i16 %64 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end112.while.end_crit_edge
  %finchar.1.lcssa = phi i32 [ %oldcode.0.shr, %if.end112.while.end_crit_edge ], [ %conv121.le, %while.end.loopexit ]
  %p.0.lcssa = phi ptr [ %add.ptr113, %if.end112.while.end_crit_edge ], [ %incdec.ptr119, %while.end.loopexit ]
  %conv122 = trunc i32 %finchar.1.lcssa to i8
  %incdec.ptr123 = getelementptr i8, ptr %p.0.lcssa, i32 -1
  %65 = ptrtoint ptr %incdec.ptr123 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv122, ptr %incdec.ptr123, align 1
  br i1 %cmp66, label %if.then125, label %while.end.if.end128_crit_edge

while.end.if.end128_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then125:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr127 = getelementptr i8, ptr %add.ptr113, i32 1
  %66 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv122, ptr %add.ptr113, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %while.end.if.end128_crit_edge
  %wptr.1 = phi ptr [ %incdec.ptr127, %if.then125 ], [ %add.ptr113, %while.end.if.end128_crit_edge ]
  br i1 %cmp68, label %if.end128.for.cond.outer.backedge_crit_edge, label %land.lhs.true131

if.end128.for.cond.outer.backedge_crit_edge:      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.outer.backedge

land.lhs.true131:                                 ; preds = %if.end128
  %67 = ptrtoint ptr %maxmaxcode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %maxmaxcode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph.ph447, i32 %68)
  %cmp133 = icmp ult i32 %max_ent.0.ph.ph447, %68
  br i1 %cmp133, label %if.then135, label %land.lhs.true131.for.cond.outer.backedge_crit_edge

land.lhs.true131.for.cond.outer.backedge_crit_edge: ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %land.lhs.true131.for.cond.outer.backedge_crit_edge, %if.end128.for.cond.outer.backedge_crit_edge
  br label %for.cond.outer

if.then135:                                       ; preds = %land.lhs.true131
  %shl137 = shl nuw nsw i32 %finchar.1.lcssa, 16
  %add138 = add i32 %shl137, %oldcode.0.ph
  %69 = ptrtoint ptr %hshift to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hshift, align 4
  %conv139 = zext i8 %70 to i32
  %shl140 = shl i32 %finchar.1.lcssa, %conv139
  %xor = xor i32 %shl140, %oldcode.0.ph
  %71 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dict, align 4
  %codem1 = getelementptr %struct.bsd_dict, ptr %72, i32 %xor, i32 1
  %73 = ptrtoint ptr %codem1 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %codem1, align 4
  %conv143 = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph.ph447, i32 %conv143)
  %cmp144 = icmp ugt i32 %max_ent.0.ph.ph447, %conv143
  br i1 %cmp144, label %if.then146, label %if.then135.if.end165_crit_edge

if.then135.if.end165_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.then146:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %cmp147 = icmp eq i32 %xor, 0
  %spec.select = select i1 %cmp147, i32 1, i32 %xor
  %75 = ptrtoint ptr %hsize to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hsize, align 4
  br label %do.body149

do.body149:                                       ; preds = %do.body149.do.body149_crit_edge, %if.then146
  %hval.0 = phi i32 [ %xor, %if.then146 ], [ %spec.select371, %do.body149.do.body149_crit_edge ]
  %add150 = add i32 %hval.0, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %add150, i32 %76)
  %cmp151.not = icmp ult i32 %add150, %76
  %sub155 = select i1 %cmp151.not, i32 0, i32 %76
  %spec.select371 = sub i32 %add150, %sub155
  %codem1160 = getelementptr %struct.bsd_dict, ptr %72, i32 %spec.select371, i32 1
  %77 = ptrtoint ptr %codem1160 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %codem1160, align 4
  %conv161 = zext i16 %78 to i32
  %cmp162 = icmp ugt i32 %max_ent.0.ph.ph447, %conv161
  br i1 %cmp162, label %do.body149.do.body149_crit_edge, label %do.body149.if.end165_crit_edge

do.body149.if.end165_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

do.body149.do.body149_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body149

if.end165:                                        ; preds = %do.body149.if.end165_crit_edge, %if.then135.if.end165_crit_edge
  %hval.2 = phi i32 [ %xor, %if.then135.if.end165_crit_edge ], [ %spec.select371, %do.body149.if.end165_crit_edge ]
  %dictp.0 = getelementptr %struct.bsd_dict, ptr %72, i32 %hval.2
  %add167 = add i32 %max_ent.0.ph.ph447, 1
  %cptr169 = getelementptr %struct.bsd_dict, ptr %72, i32 %add167, i32 2
  %79 = ptrtoint ptr %cptr169 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %cptr169, align 2
  %conv170 = zext i16 %80 to i32
  %codem1173 = getelementptr %struct.bsd_dict, ptr %72, i32 %conv170, i32 1
  %81 = ptrtoint ptr %codem1173 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %codem1173, align 4
  %conv174 = zext i16 %82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_ent.0.ph.ph447, i32 %conv174)
  %cmp175 = icmp eq i32 %max_ent.0.ph.ph447, %conv174
  br i1 %cmp175, label %if.then177, label %if.end165.if.end179_crit_edge

if.end165.if.end179_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then177:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %codem1173 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 32767, ptr %codem1173, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %if.end165.if.end179_crit_edge
  %conv180 = trunc i32 %hval.2 to i16
  %84 = ptrtoint ptr %cptr169 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv180, ptr %cptr169, align 2
  %conv182 = trunc i32 %max_ent.0.ph.ph447 to i16
  %codem1183 = getelementptr %struct.bsd_dict, ptr %72, i32 %hval.2, i32 1
  %85 = ptrtoint ptr %codem1183 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv182, ptr %codem1183, align 4
  %86 = ptrtoint ptr %dictp.0 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add138, ptr %dictp.0, align 4
  %87 = ptrtoint ptr %max_ent1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add167, ptr %max_ent1, align 4
  %88 = ptrtoint ptr %lens to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lens, align 4
  %arrayidx188 = getelementptr i16, ptr %89, i32 %add167
  %arrayidx190 = getelementptr i16, ptr %89, i32 %oldcode.0.ph
  %90 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx190, align 2
  %add192 = add i16 %91, 1
  %92 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %add192, ptr %arrayidx188, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add167, i32 %sub195)
  %cmp196.not = icmp ult i32 %add167, %sub195
  br i1 %cmp196.not, label %if.end179.for.cond.outer.outer440.backedge_crit_edge, label %land.lhs.true198

if.end179.for.cond.outer.outer440.backedge_crit_edge: ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.outer.outer440.backedge

land.lhs.true198:                                 ; preds = %if.end179
  %93 = ptrtoint ptr %maxmaxcode to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %maxmaxcode, align 4
  %cmp200 = icmp ult i32 %add167, %94
  br i1 %cmp200, label %if.then202, label %land.lhs.true198.for.cond.outer.outer440.backedge_crit_edge

land.lhs.true198.for.cond.outer.outer440.backedge_crit_edge: ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.outer.outer440.backedge

for.cond.outer.outer440.backedge:                 ; preds = %land.lhs.true198.for.cond.outer.outer440.backedge_crit_edge, %if.end179.for.cond.outer.outer440.backedge_crit_edge
  br label %for.cond.outer.outer440

if.then202:                                       ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #11
  %inc203 = add i32 %n_bits.0.ph.ph, 1
  %conv204 = trunc i32 %inc203 to i8
  %95 = ptrtoint ptr %n_bits2 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv204, ptr %n_bits2, align 1
  %sub206 = sub i32 31, %n_bits.0.ph.ph
  br label %for.cond.outer.outer

for.end:                                          ; preds = %if.end58, %if.then27
  %comp_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 20
  %96 = ptrtoint ptr %comp_count to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %comp_count, align 4
  %inc209 = add i32 %97, 1
  store i32 %inc209, ptr %comp_count, align 4
  %uncomp_count = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 18
  %98 = ptrtoint ptr %uncomp_count to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %uncomp_count, align 4
  %inc210 = add i32 %99, 1
  store i32 %inc210, ptr %uncomp_count, align 4
  %comp_bytes = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 21
  %100 = ptrtoint ptr %comp_bytes to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %comp_bytes, align 4
  %add213 = add i32 %101, %sub10
  store i32 %add213, ptr %comp_bytes, align 4
  %uncomp_bytes = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 19
  %102 = ptrtoint ptr %uncomp_bytes to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %uncomp_bytes, align 4
  %add214 = add i32 %103, %explen.0.ph
  store i32 %add214, ptr %uncomp_bytes, align 4
  %in_count.i372 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 11
  %104 = ptrtoint ptr %in_count.i372 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %in_count.i372, align 4
  %checkpoint.i373 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 14
  %106 = ptrtoint ptr %checkpoint.i373 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %checkpoint.i373, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp.not.i = icmp ult i32 %105, %107
  br i1 %cmp.not.i, label %for.end.cleanup_crit_edge, label %if.then.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388606, i32 %105)
  %cmp2.i = icmp ugt i32 %105, 8388606
  br i1 %cmp2.i, label %if.then.i.if.then4.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then4.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %108 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bytes_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388606, i32 %109)
  %cmp3.i = icmp ugt i32 %109, 8388606
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then4.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false.i.if.then4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

if.then4.i:                                       ; preds = %lor.lhs.false.i.if.then4.i_crit_edge, %if.then.i.if.then4.i_crit_edge
  %shr.i = lshr i32 %105, 2
  %sub.i = sub i32 %105, %shr.i
  %110 = ptrtoint ptr %in_count.i372 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub.i, ptr %in_count.i372, align 4
  %111 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bytes_out, align 4
  %shr8.i = lshr i32 %112, 2
  %sub10.i = sub i32 %112, %shr8.i
  store i32 %sub10.i, ptr %bytes_out, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %lor.lhs.false.i.if.end.i_crit_edge
  %113 = ptrtoint ptr %in_count.i372 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %in_count.i372, align 4
  %add.i = add i32 %114, 10000
  %115 = ptrtoint ptr %checkpoint.i373 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add.i, ptr %checkpoint.i373, align 4
  %116 = ptrtoint ptr %max_ent1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %max_ent1, align 4
  %118 = ptrtoint ptr %maxmaxcode to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %maxmaxcode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp13.not.i = icmp ult i32 %117, %119
  br i1 %cmp13.not.i, label %if.end.i.cleanup_crit_edge, label %if.then14.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14.i:                                      ; preds = %if.end.i
  %shl.i = shl i32 %114, 8
  %120 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bytes_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp17.not.i = icmp eq i32 %121, 0
  br i1 %cmp17.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then18.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = udiv i32 %shl.i, %121
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.then14.i.if.end20.i_crit_edge
  %new_ratio.0.i = phi i32 [ %div.i, %if.then18.i ], [ %shl.i, %if.then14.i.if.end20.i_crit_edge ]
  %ratio.i376 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 13
  %122 = ptrtoint ptr %ratio.i376 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ratio.i376, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_ratio.0.i, i32 %123)
  %cmp21.i = icmp ult i32 %new_ratio.0.i, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %new_ratio.0.i)
  %cmp23.i = icmp ult i32 %new_ratio.0.i, 256
  %or.cond.i = or i1 %cmp23.i, %cmp21.i
  br i1 %or.cond.i, label %if.then217, label %if.end25.i

if.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %ratio.i376 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %new_ratio.0.i, ptr %ratio.i376, align 4
  br label %cleanup

if.then217:                                       ; preds = %if.end20.i
  %clear_count.i.i = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 15
  %125 = ptrtoint ptr %clear_count.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %clear_count.i.i, align 4
  %inc.i.i = add i32 %126, 1
  store i32 %inc.i.i, ptr %clear_count.i.i, align 4
  %127 = ptrtoint ptr %max_ent1 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 256, ptr %max_ent1, align 4
  %128 = ptrtoint ptr %n_bits2 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 9, ptr %n_bits2, align 1
  %129 = ptrtoint ptr %bytes_out to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %bytes_out, align 4
  %130 = ptrtoint ptr %in_count.i372 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %in_count.i372, align 4
  %131 = ptrtoint ptr %ratio.i376 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %ratio.i376, align 4
  %132 = ptrtoint ptr %checkpoint.i373 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 10000, ptr %checkpoint.i373, align 4
  %debug218 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 5
  %133 = ptrtoint ptr %debug218 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %debug218, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool219.not = icmp eq i8 %134, 0
  br i1 %tobool219.not, label %if.then217.cleanup_crit_edge, label %do.end223

if.then217.cleanup_crit_edge:                     ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end223:                                        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #11
  %unit225 = getelementptr inbounds %struct.bsd_db, ptr %state, i32 0, i32 6
  %135 = ptrtoint ptr %unit225 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %unit225, align 4
  %conv226 = zext i8 %136 to i32
  %137 = ptrtoint ptr %seqno to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %seqno, align 2
  %conv228 = zext i16 %138 to i32
  %sub229 = add nsw i32 %conv228, -1
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv226, i32 noundef %sub229) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end223, %if.then217.cleanup_crit_edge, %if.end25.i, %if.end.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end106, %if.then100.cleanup_crit_edge, %do.end76, %if.then70.cleanup_crit_edge, %do.end52, %if.then46.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -2, %do.end52 ], [ -2, %if.then46.cleanup_crit_edge ], [ -2, %do.end76 ], [ -2, %if.then70.cleanup_crit_edge ], [ -2, %do.end106 ], [ -2, %if.then100.cleanup_crit_edge ], [ %explen.0.ph, %if.then217.cleanup_crit_edge ], [ %explen.0.ph, %do.end223 ], [ %explen.0.ph, %if.end.i.cleanup_crit_edge ], [ %explen.0.ph, %if.end25.i ], [ %explen.0.ph, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bsd_incomp(ptr noundef %state, ptr nocapture noundef readonly %ibuf, i32 noundef %icnt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bsd_compress(ptr noundef %state, ptr noundef %ibuf, ptr noundef null, i32 noundef %icnt, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bsd_alloc(ptr nocapture noundef readonly %options, i32 noundef %opt_len, i32 noundef %decomp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %opt_len)
  %cmp.not = icmp eq i32 %opt_len, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %1)
  %cmp1.not = icmp eq i8 %1, 21
  br i1 %cmp1.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr i8, ptr %options, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp6.not = icmp eq i8 %3, 3
  br i1 %cmp6.not, label %lor.lhs.false8, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false3
  %arrayidx9 = getelementptr i8, ptr %options, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %.mask = and i32 %conv10, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.mask)
  %cmp11.not = icmp eq i32 %.mask, 32
  br i1 %cmp11.not, label %if.end, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false8
  %and = and i32 %conv10, 31
  %switch.tableidx = add nsw i32 %and, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 7
  br i1 %6, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.bsd_alloc, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep69 = getelementptr inbounds [7 x i8], ptr @switch.table.bsd_alloc.20, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep69 to i32
  call void @__asan_load1_noabort(i32 %8)
  %switch.load70 = load i8, ptr %switch.gep69, align 1
  %shl = shl nuw nsw i32 1, %and
  %sub = add nsw i32 %shl, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 80) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %switch.lookup.cleanup_crit_edge, label %if.end20

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %switch.lookup
  %10 = shl nuw nsw i32 %switch.load, 3
  %call22 = tail call noalias ptr @vmalloc(i32 noundef %10) #14
  %dict = getelementptr inbounds %struct.bsd_db, ptr %call7.i.i, i32 0, i32 23
  %11 = ptrtoint ptr %dict to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %dict, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bsd_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %decomp)
  %tobool27.not = icmp eq i32 %decomp, 0
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %lens = getelementptr inbounds %struct.bsd_db, ptr %call7.i.i, i32 0, i32 22
  %12 = ptrtoint ptr %lens to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %lens, align 8
  br label %if.end36

if.else:                                          ; preds = %if.end26
  %13 = shl nuw nsw i32 %shl, 1
  %call30 = tail call noalias ptr @vmalloc(i32 noundef %13) #14
  %lens31 = getelementptr inbounds %struct.bsd_db, ptr %call7.i.i, i32 0, i32 22
  %14 = ptrtoint ptr %lens31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call30, ptr %lens31, align 8
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %if.then34, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bsd_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.then28
  %add37 = add nuw nsw i32 %10, 80
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add37, ptr %call7.i.i, align 8
  %hsize38 = getelementptr inbounds %struct.bsd_db, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %hsize38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.load, ptr %hsize38, align 4
  %hshift40 = getelementptr inbounds %struct.bsd_db, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %hshift40 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %switch.load70, ptr %hshift40, align 8
  %maxmaxcode41 = getelementptr inbounds %struct.bsd_db, ptr %call7.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %maxmaxcode41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %maxmaxcode41, align 4
  %conv42 = trunc i32 %and to i8
  %maxbits = getelementptr inbounds %struct.bsd_db, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %maxbits to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv42, ptr %maxbits, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then34, %if.then25, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end36 ], [ null, %if.then34 ], [ null, %if.then25 ], [ null, %lor.lhs.false8.cleanup_crit_edge ], [ null, %lor.lhs.false3.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %switch.lookup.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_register_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_bsd_comp__173_1167_bsdcomp_init6, !1, !"__initcall__kmod_bsd_comp__173_1167_bsdcomp_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ppp/bsd_comp.c", i32 1167, i32 1}
!2 = !{ptr @__exitcall_bsdcomp_cleanup, !3, !"__exitcall_bsdcomp_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/net/ppp/bsd_comp.c", i32 1168, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../drivers/net/ppp/bsd_comp.c", i32 1169, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias176, !8, !"__UNIQUE_ID_alias176", i1 false, i1 false}
!8 = !{!"../drivers/net/ppp/bsd_comp.c", i32 1170, i32 1}
!9 = !{ptr @ppp_bsd_compress, !10, !"ppp_bsd_compress", i1 false, i1 false}
!10 = !{!"../drivers/net/ppp/bsd_comp.c", i32 1132, i32 26}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ppp/bsd_comp.c", i32 879, i32 6}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bsd_decompress._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @bsd_decompress._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ppp/bsd_comp.c", i32 941, i32 7}
!19 = !{ptr @bsd_decompress._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @bsd_decompress._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ppp/bsd_comp.c", i32 955, i32 3}
!23 = !{ptr @bsd_decompress._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @bsd_decompress._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ppp/bsd_comp.c", i32 957, i32 3}
!27 = !{ptr @bsd_decompress._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bsd_decompress._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ppp/bsd_comp.c", i32 981, i32 3}
!31 = !{ptr @bsd_decompress._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bsd_decompress._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ppp/bsd_comp.c", i32 1121, i32 6}
!35 = !{ptr @bsd_decompress._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bsd_decompress._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ppp/bsd_comp.c", i32 1158, i32 3}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @bsdcomp_init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @bsdcomp_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
