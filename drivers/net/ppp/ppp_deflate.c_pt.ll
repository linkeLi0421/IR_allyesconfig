; ModuleID = '/llk/IR_all_yes/drivers/net/ppp/ppp_deflate.c_pt.bc'
source_filename = "../drivers/net/ppp/ppp_deflate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.compressor = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ppp_deflate_state = type { i32, i32, i32, i32, i32, %struct.z_stream_s, %struct.compstat }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.compstat = type { i32, i32, i32, i32, i32, i32, i32, i32, double }

@ppp_deflate = internal global { %struct.compressor, [32 x i8] } { %struct.compressor { i32 26, ptr @z_comp_alloc, ptr @z_comp_free, ptr @z_comp_init, ptr @z_comp_reset, ptr @z_compress, ptr @z_comp_stats, ptr @z_decomp_alloc, ptr @z_decomp_free, ptr @z_decomp_init, ptr @z_decomp_reset, ptr @z_decompress, ptr @z_incomp, ptr @z_comp_stats, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ppp_deflate_draft = internal global { %struct.compressor, [32 x i8] } { %struct.compressor { i32 24, ptr @z_comp_alloc, ptr @z_comp_free, ptr @z_comp_init, ptr @z_comp_reset, ptr @z_compress, ptr @z_comp_stats, ptr @z_decomp_alloc, ptr @z_decomp_free, ptr @z_decomp_init, ptr @z_decomp_reset, ptr @z_decompress, ptr @z_incomp, ptr @z_comp_stats, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ppp_deflate__173_631_deflate_init6 = internal global ptr @deflate_init, section ".initcall6.init", align 4
@__exitcall_deflate_cleanup = internal global ptr @deflate_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [45 x i8] c"ppp_deflate.file=drivers/net/ppp/ppp_deflate\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [33 x i8] c"ppp_deflate.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias176 = internal constant [34 x i8] c"ppp_deflate.alias=ppp-compress-26\00", section ".modinfo", align 1
@__UNIQUE_ID_alias177 = internal constant [34 x i8] c"ppp_deflate.alias=ppp-compress-24\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@z_compress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013z_compress: deflate returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"z_compress\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/ppp/ppp_deflate.c\00", [34 x i8] zeroinitializer }, align 32
@z_compress._entry_ptr = internal global ptr @z_compress._entry, section ".printk_index", align 4
@z_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017z_decompress%d: short pkt (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"z_decompress\00", [19 x i8] zeroinitializer }, align 32
@z_decompress._entry_ptr = internal global ptr @z_decompress._entry, section ".printk_index", align 4
@z_decompress._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017z_decompress%d: bad seq # %d, expected %d\0A\00", [51 x i8] zeroinitializer }, align 32
@z_decompress._entry_ptr.7 = internal global ptr @z_decompress._entry.5, section ".printk_index", align 4
@z_decompress._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017z_decompress%d: inflate returned %d (%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@z_decompress._entry_ptr.10 = internal global ptr @z_decompress._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@z_decompress._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017z_decompress%d: ran out of mru\0A\00", [62 x i8] zeroinitializer }, align 32
@z_decompress._entry_ptr.14 = internal global ptr @z_decompress._entry.12, section ".printk_index", align 4
@z_decompress._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017z_decompress%d: didn't get proto\0A\00", [60 x i8] zeroinitializer }, align 32
@z_decompress._entry_ptr.17 = internal global ptr @z_decompress._entry.15, section ".printk_index", align 4
@z_incomp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017z_incomp%d: inflateIncomp returned %d (%s)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"z_incomp\00", [23 x i8] zeroinitializer }, align 32
@z_incomp._entry_ptr = internal global ptr @z_incomp._entry, section ".printk_index", align 4
@deflate_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016PPP Deflate Compression module registered\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"deflate_init\00", [19 x i8] zeroinitializer }, align 32
@deflate_init._entry_ptr = internal global ptr @deflate_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 24, i64 26]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 24, i64 26]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 251, i64 253]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 24, i64 26]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 24, i64 26]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 251, i64 253]
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"ppp_deflate\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 571, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"ppp_deflate_draft\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 589, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 229, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 420, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 429, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 462, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 488, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 496, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 545, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [33 x i8] c"../drivers/net/ppp/ppp_deflate.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 621, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_alias177, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_deflate_cleanup, ptr @__initcall__kmod_ppp_deflate__173_631_deflate_init6, ptr @deflate_cleanup, ptr @deflate_init._entry, ptr @deflate_init._entry_ptr, ptr @z_compress._entry, ptr @z_compress._entry_ptr, ptr @z_decompress._entry, ptr @z_decompress._entry.12, ptr @z_decompress._entry.15, ptr @z_decompress._entry.5, ptr @z_decompress._entry.8, ptr @z_decompress._entry_ptr, ptr @z_decompress._entry_ptr.10, ptr @z_decompress._entry_ptr.14, ptr @z_decompress._entry_ptr.17, ptr @z_decompress._entry_ptr.7, ptr @z_incomp._entry, ptr @z_incomp._entry_ptr, ptr @ppp_deflate, ptr @ppp_deflate_draft, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_deflate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_deflate_draft to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_compress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_decompress._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_decompress._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_decompress._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_decompress._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_incomp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deflate_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @deflate_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ppp_unregister_compressor(ptr noundef nonnull @ppp_deflate) #9
  tail call void @ppp_unregister_compressor(ptr noundef nonnull @ppp_deflate_draft) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_unregister_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ppp_register_compressor(ptr noundef nonnull @ppp_deflate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ppp_register_compressor(ptr noundef nonnull @ppp_deflate_draft) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ppp_unregister_compressor(ptr noundef nonnull @ppp_deflate) #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @z_comp_alloc(ptr nocapture noundef readonly %options, i32 noundef %opt_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %opt_len)
  %cmp.not = icmp eq i32 %opt_len, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %lor.lhs.false.cleanup_crit_edge [
    i8 26, label %lor.lhs.false.lor.lhs.false7_crit_edge
    i8 24, label %lor.lhs.false.lor.lhs.false7_crit_edge69
  ]

lor.lhs.false.lor.lhs.false7_crit_edge69:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false7

lor.lhs.false.lor.lhs.false7_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false.lor.lhs.false7_crit_edge, %lor.lhs.false.lor.lhs.false7_crit_edge69
  %arrayidx8 = getelementptr i8, ptr %options, i32 1
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp10.not = icmp eq i8 %4, 4
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %arrayidx13 = getelementptr i8, ptr %options, i32 2
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %and = and i32 %conv14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp15.not = icmp eq i32 %and, 8
  br i1 %cmp15.not, label %lor.lhs.false17, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false12
  %arrayidx18 = getelementptr i8, ptr %options, i32 3
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp20.not = icmp eq i8 %8, 0
  br i1 %cmp20.not, label %if.end, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false17
  %9 = lshr i32 %conv14, 4
  %add = add nuw nsw i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %6)
  %10 = icmp slt i8 %6, 16
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 112) #13
  %cmp31 = icmp eq ptr %call7.i.i, null
  br i1 %cmp31, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %strm, align 4
  %w_size35 = getelementptr inbounds %struct.ppp_deflate_state, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %w_size35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %w_size35, align 4
  %sub = sub nuw nsw i32 -8, %9
  %call36 = tail call i32 @zlib_deflate_workspacesize(i32 noundef %sub, i32 noundef 8) #9
  %call37 = tail call noalias ptr @vmalloc(i32 noundef %call36) #14
  %workspace = getelementptr inbounds %struct.ppp_deflate_state, ptr %call7.i.i, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %workspace to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call37, ptr %workspace, align 4
  %cmp41 = icmp eq ptr %call37, null
  br i1 %cmp41, label %if.end34.out_free_crit_edge, label %if.end44

if.end34.out_free_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end44:                                         ; preds = %if.end34
  %call47 = tail call i32 @zlib_deflateInit2(ptr noundef %strm, i32 noundef -1, i32 noundef 8, i32 noundef %sub, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end44.cleanup_crit_edge, label %if.end44.out_free_crit_edge

if.end44.out_free_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_free:                                         ; preds = %if.end44.out_free_crit_edge, %if.end34.out_free_crit_edge
  tail call void @z_comp_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end44.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %lor.lhs.false17.cleanup_crit_edge ], [ null, %lor.lhs.false12.cleanup_crit_edge ], [ null, %lor.lhs.false7.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end30.cleanup_crit_edge ], [ %call7.i.i, %if.end44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z_comp_free(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5
  %call = tail call i32 @zlib_deflateEnd(ptr noundef %strm) #9
  %workspace = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workspace, align 4
  tail call void @vfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef nonnull %arg) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z_comp_init(ptr noundef %arg, ptr nocapture noundef readonly %options, i32 noundef %opt_len, i32 noundef %unit, i32 noundef %hdrlen, i32 noundef %debug) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %opt_len)
  %cmp = icmp slt i32 %opt_len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %1, label %lor.lhs.false.cleanup_crit_edge [
    i8 26, label %lor.lhs.false.lor.lhs.false7_crit_edge
    i8 24, label %lor.lhs.false.lor.lhs.false7_crit_edge38
  ]

lor.lhs.false.lor.lhs.false7_crit_edge38:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false7

lor.lhs.false.lor.lhs.false7_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false.lor.lhs.false7_crit_edge, %lor.lhs.false.lor.lhs.false7_crit_edge38
  %arrayidx8 = getelementptr i8, ptr %options, i32 1
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp10.not = icmp eq i8 %4, 4
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %arrayidx13 = getelementptr i8, ptr %options, i32 2
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %and = and i32 %conv14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp15.not = icmp eq i32 %and, 8
  br i1 %cmp15.not, label %lor.lhs.false17, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false12
  %7 = lshr i32 %conv14, 4
  %add = add nuw nsw i32 %7, 8
  %w_size = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %w_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %w_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp20.not = icmp eq i32 %add, %9
  br i1 %cmp20.not, label %lor.lhs.false22, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false17
  %arrayidx23 = getelementptr i8, ptr %options, i32 3
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp25.not = icmp eq i8 %11, 0
  br i1 %cmp25.not, label %if.end, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arg, align 8
  %unit27 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %unit27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %unit, ptr %unit27, align 8
  %debug28 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 4
  %14 = ptrtoint ptr %debug28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %debug, ptr %debug28, align 8
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5
  %call = tail call i32 @zlib_deflateReset(ptr noundef %strm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %lor.lhs.false22.cleanup_crit_edge ], [ 0, %lor.lhs.false17.cleanup_crit_edge ], [ 0, %lor.lhs.false12.cleanup_crit_edge ], [ 0, %lor.lhs.false7.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z_comp_reset(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arg, align 8
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5
  %call = tail call i32 @zlib_deflateReset(ptr noundef %strm) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z_compress(ptr noundef %arg, ptr noundef %rptr, ptr noundef %obuf, i32 noundef %isize, i32 noundef %osize) #2 align 64 {
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
  %add.fr = freeze i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %add.fr)
  %cmp = icmp ugt i32 %add.fr, 16383
  br i1 %cmp, label %entry.cleanup_crit_edge, label %switch.early.test

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.early.test:                                ; preds = %entry
  %trunc = trunc i32 %add.fr to i16
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %trunc, label %if.end [
    i16 253, label %switch.early.test.cleanup_crit_edge
    i16 251, label %switch.early.test.cleanup_crit_edge151
  ]

switch.early.test.cleanup_crit_edge151:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %switch.early.test
  %5 = tail call i32 @llvm.smin.i32(i32 %osize, i32 %isize)
  %6 = ptrtoint ptr %rptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rptr, align 1
  %8 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %obuf, align 1
  %arrayidx15 = getelementptr i8, ptr %rptr, i32 1
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %obuf, i32 1
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx16, align 1
  %add.ptr = getelementptr i8, ptr %obuf, i32 2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 253, ptr %add.ptr, align 1
  %add.ptr17 = getelementptr i8, ptr %obuf, i32 4
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arg, align 8
  %conv18 = trunc i32 %14 to i16
  %15 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv18, ptr %add.ptr17, align 1
  %add.ptr19 = getelementptr i8, ptr %obuf, i32 6
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5
  %next_out = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr19, ptr %next_out, align 4
  %sub = add i32 %5, -6
  %avail_out = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %avail_out, align 4
  %18 = load i32, ptr %arg, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %arg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.fr)
  %cmp22 = icmp ugt i32 %add.fr, 255
  %cond = select i1 %cmp22, i32 2, i32 3
  %add.ptr24 = getelementptr i8, ptr %rptr, i32 %cond
  %19 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr24, ptr %strm, align 4
  %sub26 = sub i32 %isize, %cond
  %avail_in = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub26, ptr %avail_in, align 4
  %call129 = tail call i32 @zlib_deflate(ptr noundef %strm, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp29.not130 = icmp eq i32 %call129, 0
  br i1 %cmp29.not130, label %if.end.if.end35_crit_edge, label %if.end.if.then31_crit_edge

if.end.if.then31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.end.if.end35_crit_edge:                        ; preds = %if.end
  br label %if.end35

if.then31:                                        ; preds = %if.then40.if.then31_crit_edge, %if.end.if.then31_crit_edge
  %olen.0.lcssa = phi i32 [ 6, %if.end.if.then31_crit_edge ], [ %add41, %if.then40.if.then31_crit_edge ]
  %oavail.0.lcssa = phi i32 [ %sub, %if.end.if.then31_crit_edge ], [ 1000000, %if.then40.if.then31_crit_edge ]
  %call.lcssa = phi i32 [ %call129, %if.end.if.then31_crit_edge ], [ %call, %if.then40.if.then31_crit_edge ]
  %debug = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 4
  %21 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.then31.for.end_crit_edge, label %do.end

if.then31.for.end_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end:                                           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.lcssa) #12
  br label %for.end

if.end35:                                         ; preds = %if.then40.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %oavail.0132 = phi i32 [ 1000000, %if.then40.if.end35_crit_edge ], [ %sub, %if.end.if.end35_crit_edge ]
  %olen.0131 = phi i32 [ %add41, %if.then40.if.end35_crit_edge ], [ 6, %if.end.if.end35_crit_edge ]
  %23 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp38 = icmp eq i32 %24, 0
  br i1 %cmp38, label %if.then40, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then40:                                        ; preds = %if.end35
  %add41 = add i32 %oavail.0132, %olen.0131
  %25 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %next_out, align 4
  %26 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1000000, ptr %avail_out, align 4
  %call = tail call i32 @zlib_deflate(ptr noundef %strm, i32 noundef 2) #9
  %cmp29.not = icmp eq i32 %call, 0
  br i1 %cmp29.not, label %if.then40.if.end35_crit_edge, label %if.then40.if.then31_crit_edge

if.then40.if.then31_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then40.if.end35_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %do.end, %if.then31.for.end_crit_edge
  %olen.0128 = phi i32 [ %olen.0.lcssa, %if.then31.for.end_crit_edge ], [ %olen.0.lcssa, %do.end ], [ %olen.0131, %if.end35.for.end_crit_edge ]
  %oavail.0126 = phi i32 [ %oavail.0.lcssa, %if.then31.for.end_crit_edge ], [ %oavail.0.lcssa, %do.end ], [ %oavail.0132, %if.end35.for.end_crit_edge ]
  %27 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %avail_out, align 4
  %sub49 = sub i32 %oavail.0126, %28
  %add50 = add i32 %sub49, %olen.0128
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %isize)
  %cmp51 = icmp sge i32 %add50, %isize
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %5)
  %cmp53.not = icmp sgt i32 %add50, %5
  %or.cond123 = or i1 %cmp51, %cmp53.not
  br i1 %or.cond123, label %if.else59, label %if.then55

if.then55:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %comp_bytes = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 2
  %29 = ptrtoint ptr %comp_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %comp_bytes, align 8
  %add56 = add i32 %30, %add50
  store i32 %add56, ptr %comp_bytes, align 8
  %comp_packets = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 3
  br label %if.end64

if.else59:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %inc_bytes = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 4
  %31 = ptrtoint ptr %inc_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %inc_bytes, align 8
  %add61 = add i32 %32, %isize
  store i32 %add61, ptr %inc_bytes, align 8
  %inc_packets = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 5
  br label %if.end64

if.end64:                                         ; preds = %if.else59, %if.then55
  %inc_packets.sink141 = phi ptr [ %inc_packets, %if.else59 ], [ %comp_packets, %if.then55 ]
  %olen.1 = phi i32 [ 0, %if.else59 ], [ %add50, %if.then55 ]
  %33 = ptrtoint ptr %inc_packets.sink141 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inc_packets.sink141, align 4
  %inc63 = add i32 %34, 1
  store i32 %inc63, ptr %inc_packets.sink141, align 4
  %stats65 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6
  %35 = ptrtoint ptr %stats65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stats65, align 8
  %add66 = add i32 %36, %isize
  store i32 %add66, ptr %stats65, align 8
  %unc_packets = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %unc_packets to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %unc_packets, align 4
  %inc68 = add i32 %38, 1
  store i32 %inc68, ptr %unc_packets, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge151, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %olen.1, %if.end64 ], [ 0, %switch.early.test.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %switch.early.test.cleanup_crit_edge151 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @z_comp_stats(ptr nocapture noundef readonly %arg, ptr nocapture noundef writeonly %stats) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %stats, ptr %stats1, i32 40)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @z_decomp_alloc(ptr nocapture noundef readonly %options, i32 noundef %opt_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %opt_len)
  %cmp.not = icmp eq i32 %opt_len, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %1, label %lor.lhs.false.cleanup_crit_edge [
    i8 26, label %lor.lhs.false.lor.lhs.false7_crit_edge
    i8 24, label %lor.lhs.false.lor.lhs.false7_crit_edge67
  ]

lor.lhs.false.lor.lhs.false7_crit_edge67:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false7

lor.lhs.false.lor.lhs.false7_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false.lor.lhs.false7_crit_edge, %lor.lhs.false.lor.lhs.false7_crit_edge67
  %arrayidx8 = getelementptr i8, ptr %options, i32 1
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp10.not = icmp eq i8 %4, 4
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %arrayidx13 = getelementptr i8, ptr %options, i32 2
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %and = and i32 %conv14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp15.not = icmp eq i32 %and, 8
  br i1 %cmp15.not, label %lor.lhs.false17, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false12
  %arrayidx18 = getelementptr i8, ptr %options, i32 3
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp20.not = icmp eq i8 %8, 0
  br i1 %cmp20.not, label %if.end, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false17
  %9 = lshr i32 %conv14, 4
  %add = add nuw nsw i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %6)
  %10 = icmp slt i8 %6, 16
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 112) #13
  %cmp31 = icmp eq ptr %call7.i.i, null
  br i1 %cmp31, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %w_size35 = getelementptr inbounds %struct.ppp_deflate_state, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %w_size35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %w_size35, align 4
  %next_out = getelementptr inbounds %struct.ppp_deflate_state, ptr %call7.i.i, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %next_out, align 8
  %call36 = tail call i32 @zlib_inflate_workspacesize() #9
  %call37 = tail call noalias ptr @vmalloc(i32 noundef %call36) #14
  %workspace = getelementptr inbounds %struct.ppp_deflate_state, ptr %call7.i.i, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %workspace to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call37, ptr %workspace, align 4
  %cmp41 = icmp eq ptr %call37, null
  br i1 %cmp41, label %if.end34.z_decomp_free.exit_crit_edge, label %if.end44

if.end34.z_decomp_free.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %z_decomp_free.exit

if.end44:                                         ; preds = %if.end34
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %call7.i.i, i32 0, i32 5
  %sub = sub nuw nsw i32 -8, %9
  %call46 = tail call i32 @zlib_inflateInit2(ptr noundef %strm, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end44.cleanup_crit_edge, label %if.end44.z_decomp_free.exit_crit_edge

if.end44.z_decomp_free.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %z_decomp_free.exit

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

z_decomp_free.exit:                               ; preds = %if.end44.z_decomp_free.exit_crit_edge, %if.end34.z_decomp_free.exit_crit_edge
  %15 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workspace, align 4
  tail call void @vfree(ptr noundef %16) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %z_decomp_free.exit, %if.end44.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %z_decomp_free.exit ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %lor.lhs.false17.cleanup_crit_edge ], [ null, %lor.lhs.false12.cleanup_crit_edge ], [ null, %lor.lhs.false7.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end30.cleanup_crit_edge ], [ %call7.i.i, %if.end44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z_decomp_free(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %workspace = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workspace, align 4
  tail call void @vfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef nonnull %arg) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z_decomp_init(ptr noundef %arg, ptr nocapture noundef readonly %options, i32 noundef %opt_len, i32 noundef %unit, i32 noundef %hdrlen, i32 noundef %mru, i32 noundef %debug) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %opt_len)
  %cmp = icmp slt i32 %opt_len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %1, label %lor.lhs.false.cleanup_crit_edge [
    i8 26, label %lor.lhs.false.lor.lhs.false7_crit_edge
    i8 24, label %lor.lhs.false.lor.lhs.false7_crit_edge40
  ]

lor.lhs.false.lor.lhs.false7_crit_edge40:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false7

lor.lhs.false.lor.lhs.false7_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false.lor.lhs.false7_crit_edge, %lor.lhs.false.lor.lhs.false7_crit_edge40
  %arrayidx8 = getelementptr i8, ptr %options, i32 1
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp10.not = icmp eq i8 %4, 4
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %arrayidx13 = getelementptr i8, ptr %options, i32 2
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %and = and i32 %conv14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp15.not = icmp eq i32 %and, 8
  br i1 %cmp15.not, label %lor.lhs.false17, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false12
  %7 = lshr i32 %conv14, 4
  %add = add nuw nsw i32 %7, 8
  %w_size = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %w_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %w_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp20.not = icmp eq i32 %add, %9
  br i1 %cmp20.not, label %lor.lhs.false22, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false17
  %arrayidx23 = getelementptr i8, ptr %options, i32 3
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp25.not = icmp eq i8 %11, 0
  br i1 %cmp25.not, label %if.end, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arg, align 8
  %unit27 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %unit27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %unit, ptr %unit27, align 8
  %debug28 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 4
  %14 = ptrtoint ptr %debug28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %debug, ptr %debug28, align 8
  %mru29 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 3
  %15 = ptrtoint ptr %mru29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mru, ptr %mru29, align 4
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5
  %call = tail call i32 @zlib_inflateReset(ptr noundef %strm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %lor.lhs.false22.cleanup_crit_edge ], [ 0, %lor.lhs.false17.cleanup_crit_edge ], [ 0, %lor.lhs.false12.cleanup_crit_edge ], [ 0, %lor.lhs.false7.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z_decomp_reset(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arg, align 8
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5
  %call = tail call i32 @zlib_inflateReset(ptr noundef %strm) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z_decompress(ptr noundef %arg, ptr noundef %ibuf, i32 noundef %isize, ptr noundef %obuf, i32 noundef %osize) #2 align 64 {
entry:
  %overflow_buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %overflow_buf) #9
  %0 = ptrtoint ptr %overflow_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %overflow_buf, align 1, !annotation !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %isize)
  %cmp = icmp slt i32 %isize, 7
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 4
  %1 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %unit = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 2
  %3 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %unit, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %4, i32 noundef %isize) #12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ibuf, i32 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr, align 1
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg, align 8
  %and = and i32 %8, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp4.not = icmp eq i32 %and, %conv
  br i1 %cmp4.not, label %if.end19, label %if.then6

if.then6:                                         ; preds = %if.end2
  %debug7 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 4
  %9 = ptrtoint ptr %debug7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %do.end12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %unit14 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 2
  %11 = ptrtoint ptr %unit14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unit14, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %12, i32 noundef %conv, i32 noundef %and) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end2
  %inc = add i32 %8, 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc, ptr %arg, align 8
  %14 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ibuf, align 1
  %16 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %obuf, align 1
  %arrayidx22 = getelementptr i8, ptr %ibuf, i32 1
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr i8, ptr %obuf, i32 1
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr i8, ptr %obuf, i32 2
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx24, align 1
  %add.ptr26 = getelementptr i8, ptr %ibuf, i32 6
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5
  %21 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr26, ptr %strm, align 4
  %sub = add nsw i32 %isize, -6
  %avail_in = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %avail_in, align 4
  %add.ptr28 = getelementptr i8, ptr %obuf, i32 3
  %next_out = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr28, ptr %next_out, align 4
  %avail_out = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %avail_out, align 4
  %call32180 = call i32 @zlib_inflate(ptr noundef %strm, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32180)
  %cmp33.not181 = icmp eq i32 %call32180, 0
  br i1 %cmp33.not181, label %if.end50.lr.ph, label %if.end19.if.then35_crit_edge

if.end19.if.then35_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.end50.lr.ph:                                   ; preds = %if.end19
  %sub59 = add i32 %osize, -4
  br label %if.end50

if.then35:                                        ; preds = %if.end94.if.then35_crit_edge, %if.end19.if.then35_crit_edge
  %call32.lcssa = phi i32 [ %call32180, %if.end19.if.then35_crit_edge ], [ %call32, %if.end94.if.then35_crit_edge ]
  %debug36 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 4
  %25 = ptrtoint ptr %debug36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool37.not = icmp eq i32 %26, 0
  br i1 %tobool37.not, label %if.then35.cleanup_crit_edge, label %do.end41

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %unit43 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 2
  %27 = ptrtoint ptr %unit43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %unit43, align 8
  %msg = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msg, align 4
  %tobool45.not = icmp eq ptr %30, null
  %spec.select = select i1 %tobool45.not, ptr @.str.11, ptr %30
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %28, i32 noundef %call32.lcssa, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end50:                                         ; preds = %if.end94.if.end50_crit_edge, %if.end50.lr.ph
  %overflow.0183 = phi i32 [ 0, %if.end50.lr.ph ], [ %overflow.1, %if.end94.if.end50_crit_edge ]
  %tobool57.not182 = phi i1 [ false, %if.end50.lr.ph ], [ true, %if.end94.if.end50_crit_edge ]
  %31 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp53.not = icmp eq i32 %32, 0
  br i1 %cmp53.not, label %if.end56, label %for.end

if.end56:                                         ; preds = %if.end50
  br i1 %tobool57.not182, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end56
  %33 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub59, ptr %avail_out, align 4
  %34 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr28, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp65 = icmp eq i8 %36, 0
  br i1 %cmp65, label %if.then67, label %if.then58.if.end94_crit_edge

if.then58.if.end94_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then67:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %35, ptr %arrayidx24, align 1
  %38 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next_out, align 4
  %incdec.ptr = getelementptr i8, ptr %39, i32 -1
  store ptr %incdec.ptr, ptr %next_out, align 4
  %40 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %avail_out, align 4
  %inc74 = add i32 %41, 1
  br label %if.end94.sink.split

if.else:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overflow.0183)
  %tobool76.not = icmp eq i32 %overflow.0183, 0
  br i1 %tobool76.not, label %if.then77, label %if.else82

if.then77:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %overflow_buf, ptr %next_out, align 4
  br label %if.end94.sink.split

if.else82:                                        ; preds = %if.else
  %debug83 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 4
  %43 = ptrtoint ptr %debug83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool84.not = icmp eq i32 %44, 0
  br i1 %tobool84.not, label %if.else82.cleanup_crit_edge, label %do.end88

if.else82.cleanup_crit_edge:                      ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end88:                                         ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  %unit90 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 2
  %45 = ptrtoint ptr %unit90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %unit90, align 8
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %46) #12
  br label %cleanup

if.end94.sink.split:                              ; preds = %if.then77, %if.then67
  %inc74.sink = phi i32 [ %inc74, %if.then67 ], [ 1, %if.then77 ]
  %overflow.1.ph = phi i32 [ %overflow.0183, %if.then67 ], [ 1, %if.then77 ]
  %47 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc74.sink, ptr %avail_out, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end94.sink.split, %if.then58.if.end94_crit_edge
  %overflow.1 = phi i32 [ %overflow.0183, %if.then58.if.end94_crit_edge ], [ %overflow.1.ph, %if.end94.sink.split ]
  %call32 = call i32 @zlib_inflate(ptr noundef %strm, i32 noundef 2) #9
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end94.if.end50_crit_edge, label %if.end94.if.then35_crit_edge

if.end94.if.then35_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.end94.if.end50_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

for.end:                                          ; preds = %if.end50
  br i1 %tobool57.not182, label %if.end107, label %if.then96

if.then96:                                        ; preds = %for.end
  %debug97 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 4
  %48 = ptrtoint ptr %debug97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool98.not = icmp eq i32 %49, 0
  br i1 %tobool98.not, label %if.then96.cleanup_crit_edge, label %do.end102

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end102:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %unit104 = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 2
  %50 = ptrtoint ptr %unit104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %unit104, align 8
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %51) #12
  br label %cleanup

if.end107:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %overflow.0183, %osize
  %sub110 = sub i32 %add, %32
  %stats = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6
  %52 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stats, align 8
  %add111 = add i32 %53, %sub110
  store i32 %add111, ptr %stats, align 8
  %unc_packets = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 1
  %54 = ptrtoint ptr %unc_packets to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %unc_packets, align 4
  %inc113 = add i32 %55, 1
  store i32 %inc113, ptr %unc_packets, align 4
  %comp_bytes = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %comp_bytes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %comp_bytes, align 8
  %add115 = add i32 %57, %isize
  store i32 %add115, ptr %comp_bytes, align 8
  %comp_packets = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 3
  %58 = ptrtoint ptr %comp_packets to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %comp_packets, align 4
  %inc117 = add i32 %59, 1
  store i32 %inc117, ptr %comp_packets, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %do.end102, %if.then96.cleanup_crit_edge, %do.end88, %if.else82.cleanup_crit_edge, %do.end41, %if.then35.cleanup_crit_edge, %do.end12, %if.then6.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub110, %if.end107 ], [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.end12 ], [ -1, %if.then6.cleanup_crit_edge ], [ -2, %do.end41 ], [ -2, %if.then35.cleanup_crit_edge ], [ -2, %do.end88 ], [ -2, %if.else82.cleanup_crit_edge ], [ -1, %do.end102 ], [ -1, %if.then96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %overflow_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z_incomp(ptr noundef %arg, ptr noundef %ibuf, i32 noundef %icnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %ibuf, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %ibuf, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %add = or i32 %shl, %conv2
  %add.fr = freeze i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %add.fr)
  %cmp = icmp ugt i32 %add.fr, 16383
  br i1 %cmp, label %entry.cleanup_crit_edge, label %switch.early.test

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.early.test:                                ; preds = %entry
  %trunc = trunc i32 %add.fr to i16
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %trunc, label %if.end [
    i16 253, label %switch.early.test.cleanup_crit_edge
    i16 251, label %switch.early.test.cleanup_crit_edge62
  ]

switch.early.test.cleanup_crit_edge62:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %switch.early.test
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arg, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %arg, align 8
  %strm = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5
  %7 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx1, ptr %strm, align 4
  %sub = add i32 %icnt, -3
  %avail_in = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %avail_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.fr)
  %cmp10 = icmp ugt i32 %add.fr, 255
  br i1 %cmp10, label %if.then12, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %strm, align 4
  %inc17 = add i32 %icnt, -2
  %10 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc17, ptr %avail_in, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end.if.end18_crit_edge
  %call = tail call i32 @zlib_inflateIncomp(ptr noundef %strm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20.not = icmp eq i32 %call, 0
  br i1 %cmp20.not, label %if.end30, label %if.then22

if.then22:                                        ; preds = %if.end18
  %debug = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 4
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then22.cleanup_crit_edge, label %do.end

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %unit = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unit, align 8
  %msg = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 5, i32 6
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msg, align 4
  %tobool25.not = icmp eq ptr %16, null
  %spec.select = select i1 %tobool25.not, ptr @.str.11, ptr %16
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %14, i32 noundef %call, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %stats = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6
  %inc_bytes = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %inc_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inc_bytes, align 8
  %add31 = add i32 %18, %icnt
  store i32 %add31, ptr %inc_bytes, align 8
  %inc_packets = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 5
  %19 = ptrtoint ptr %inc_packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inc_packets, align 4
  %inc33 = add i32 %20, 1
  store i32 %inc33, ptr %inc_packets, align 4
  %21 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stats, align 8
  %add35 = add i32 %22, %icnt
  store i32 %add35, ptr %stats, align 8
  %unc_packets = getelementptr inbounds %struct.ppp_deflate_state, ptr %arg, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %unc_packets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %unc_packets, align 4
  %inc37 = add i32 %24, 1
  store i32 %inc37, ptr %unc_packets, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %if.then22.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge62, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_workspacesize(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateInit2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateIncomp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_register_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_ppp_deflate__173_631_deflate_init6, !1, !"__initcall__kmod_ppp_deflate__173_631_deflate_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 631, i32 1}
!2 = !{ptr @__exitcall_deflate_cleanup, !3, !"__exitcall_deflate_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 632, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 633, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias176, !8, !"__UNIQUE_ID_alias176", i1 false, i1 false}
!8 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 634, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias177, !10, !"__UNIQUE_ID_alias177", i1 false, i1 false}
!10 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 635, i32 1}
!11 = !{ptr @ppp_deflate, !12, !"ppp_deflate", i1 false, i1 false}
!12 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 571, i32 26}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 229, i32 5}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @z_compress._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @z_compress._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 420, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @z_decompress._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @z_decompress._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 429, i32 4}
!26 = !{ptr @z_decompress._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @z_decompress._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 462, i32 5}
!30 = !{ptr @z_decompress._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @z_decompress._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 488, i32 5}
!35 = !{ptr @z_decompress._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @z_decompress._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 496, i32 4}
!39 = !{ptr @z_decompress._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @z_decompress._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 545, i32 4}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @z_incomp._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @z_incomp._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ppp_deflate_draft, !47, !"ppp_deflate_draft", i1 false, i1 false}
!47 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 589, i32 26}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ppp/ppp_deflate.c", i32 621, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @deflate_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @deflate_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
