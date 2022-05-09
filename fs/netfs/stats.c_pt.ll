; ModuleID = '/llk/IR_all_yes/fs/netfs/stats.c_pt.bc'
source_filename = "../fs/netfs/stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+netfs_stats_show\22, \22a\22\09"
module asm "\09.weak\09__crc_netfs_stats_show\09\09\09\09"
module asm "\09.long\09__crc_netfs_stats_show\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netfs_stats_show:\09\09\09\09\09"
module asm "\09.asciz \09\22netfs_stats_show\22\09\09\09\09\09"
module asm "__kstrtabns_netfs_stats_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RdHelp : RA=%u RP=%u WB=%u WBZ=%u rr=%u sr=%u\0A\00", [49 x i8] zeroinitializer }, align 32
@netfs_n_rh_readahead = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_readpage = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_write_begin = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_write_zskip = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_rreq = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_sreq = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RdHelp : ZR=%u sh=%u sk=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@netfs_n_rh_zero = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_short_read = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RdHelp : DL=%u ds=%u df=%u di=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@netfs_n_rh_download = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_download_done = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_download_failed = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_download_instead = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RdHelp : RD=%u rs=%u rf=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@netfs_n_rh_read = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_read_done = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_read_failed = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RdHelp : WR=%u ws=%u wf=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@netfs_n_rh_write = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_write_done = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_n_rh_write_failed = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_netfs_stats_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_netfs_stats_show = external dso_local constant [0 x i8], align 1
@__ksymtab_netfs_stats_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netfs_stats_show to i32), ptr @__kstrtab_netfs_stats_show, ptr @__kstrtabns_netfs_stats_show }, section "___ksymtab+netfs_stats_show", align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 34, i32 16 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"netfs_n_rh_readahead\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 13, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"netfs_n_rh_readpage\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 14, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"netfs_n_rh_write_begin\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 27, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"netfs_n_rh_write_zskip\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 30, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"netfs_n_rh_rreq\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 15, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"netfs_n_rh_sreq\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 16, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 41, i32 16 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"netfs_n_rh_zero\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 24, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"netfs_n_rh_short_read\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 25, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 45, i32 16 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"netfs_n_rh_download\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 17, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"netfs_n_rh_download_done\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 18, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"netfs_n_rh_download_failed\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 19, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"netfs_n_rh_download_instead\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 20, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 50, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"netfs_n_rh_read\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 21, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"netfs_n_rh_read_done\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 22, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"netfs_n_rh_read_failed\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 23, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 54, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"netfs_n_rh_write\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 26, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"netfs_n_rh_write_done\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 28, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"netfs_n_rh_write_failed\00", align 1
@___asan_gen_.72 = private constant [20 x i8] c"../fs/netfs/stats.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 29, i32 10 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_netfs_stats_show, ptr @.str, ptr @netfs_n_rh_readahead, ptr @netfs_n_rh_readpage, ptr @netfs_n_rh_write_begin, ptr @netfs_n_rh_write_zskip, ptr @netfs_n_rh_rreq, ptr @netfs_n_rh_sreq, ptr @.str.1, ptr @netfs_n_rh_zero, ptr @netfs_n_rh_short_read, ptr @.str.2, ptr @netfs_n_rh_download, ptr @netfs_n_rh_download_done, ptr @netfs_n_rh_download_failed, ptr @netfs_n_rh_download_instead, ptr @.str.3, ptr @netfs_n_rh_read, ptr @netfs_n_rh_read_done, ptr @netfs_n_rh_read_failed, ptr @.str.4, ptr @netfs_n_rh_write, ptr @netfs_n_rh_write_done, ptr @netfs_n_rh_write_failed], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_readahead to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_readpage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_write_begin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_write_zskip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_rreq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_sreq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_zero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_short_read to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_download to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_download_done to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_download_failed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_download_instead to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_read to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_read_done to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_read_failed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_write to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_write_done to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_n_rh_write_failed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netfs_stats_show(ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_readahead, i32 noundef 4) #2
  %0 = load volatile i32, ptr @netfs_n_rh_readahead, align 4
  %call.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_readpage, i32 noundef 4) #2
  %1 = load volatile i32, ptr @netfs_n_rh_readpage, align 4
  %call.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_write_begin, i32 noundef 4) #2
  %2 = load volatile i32, ptr @netfs_n_rh_write_begin, align 4
  %call.i.i25 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_write_zskip, i32 noundef 4) #2
  %3 = load volatile i32, ptr @netfs_n_rh_write_zskip, align 4
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_rreq, i32 noundef 4) #2
  %4 = load volatile i32, ptr @netfs_n_rh_rreq, align 4
  %call.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_sreq, i32 noundef 4) #2
  %5 = load volatile i32, ptr @netfs_n_rh_sreq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_zero, i32 noundef 4) #2
  %6 = load volatile i32, ptr @netfs_n_rh_zero, align 4
  %call.i.i29 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_short_read, i32 noundef 4) #2
  %7 = load volatile i32, ptr @netfs_n_rh_short_read, align 4
  %call.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_write_zskip, i32 noundef 4) #2
  %8 = load volatile i32, ptr @netfs_n_rh_write_zskip, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %6, i32 noundef %7, i32 noundef %8) #2
  %call.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_download, i32 noundef 4) #2
  %9 = load volatile i32, ptr @netfs_n_rh_download, align 4
  %call.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_download_done, i32 noundef 4) #2
  %10 = load volatile i32, ptr @netfs_n_rh_download_done, align 4
  %call.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_download_failed, i32 noundef 4) #2
  %11 = load volatile i32, ptr @netfs_n_rh_download_failed, align 4
  %call.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_download_instead, i32 noundef 4) #2
  %12 = load volatile i32, ptr @netfs_n_rh_download_instead, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #2
  %call.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_read, i32 noundef 4) #2
  %13 = load volatile i32, ptr @netfs_n_rh_read, align 4
  %call.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_read_done, i32 noundef 4) #2
  %14 = load volatile i32, ptr @netfs_n_rh_read_done, align 4
  %call.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_read_failed, i32 noundef 4) #2
  %15 = load volatile i32, ptr @netfs_n_rh_read_failed, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %14, i32 noundef %15) #2
  %call.i.i38 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_write, i32 noundef 4) #2
  %16 = load volatile i32, ptr @netfs_n_rh_write, align 4
  %call.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_write_done, i32 noundef 4) #2
  %17 = load volatile i32, ptr @netfs_n_rh_write_done, align 4
  %call.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netfs_n_rh_write_failed, i32 noundef 4) #2
  %18 = load volatile i32, ptr @netfs_n_rh_write_failed, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %16, i32 noundef %17, i32 noundef %18) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/netfs/stats.c", i32 34, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/netfs/stats.c", i32 41, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/netfs/stats.c", i32 45, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/netfs/stats.c", i32 50, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/netfs/stats.c", i32 54, i32 16}
!10 = !{ptr @__ksymtab_netfs_stats_show, !11, !"__ksymtab_netfs_stats_show", i1 false, i1 false}
!11 = !{!"../fs/netfs/stats.c", i32 59, i32 1}
!12 = !{ptr @netfs_n_rh_readahead, !13, !"netfs_n_rh_readahead", i1 false, i1 false}
!13 = !{!"../fs/netfs/stats.c", i32 13, i32 10}
!14 = !{ptr @netfs_n_rh_readpage, !15, !"netfs_n_rh_readpage", i1 false, i1 false}
!15 = !{!"../fs/netfs/stats.c", i32 14, i32 10}
!16 = !{ptr @netfs_n_rh_rreq, !17, !"netfs_n_rh_rreq", i1 false, i1 false}
!17 = !{!"../fs/netfs/stats.c", i32 15, i32 10}
!18 = !{ptr @netfs_n_rh_sreq, !19, !"netfs_n_rh_sreq", i1 false, i1 false}
!19 = !{!"../fs/netfs/stats.c", i32 16, i32 10}
!20 = !{ptr @netfs_n_rh_download, !21, !"netfs_n_rh_download", i1 false, i1 false}
!21 = !{!"../fs/netfs/stats.c", i32 17, i32 10}
!22 = !{ptr @netfs_n_rh_download_done, !23, !"netfs_n_rh_download_done", i1 false, i1 false}
!23 = !{!"../fs/netfs/stats.c", i32 18, i32 10}
!24 = !{ptr @netfs_n_rh_download_failed, !25, !"netfs_n_rh_download_failed", i1 false, i1 false}
!25 = !{!"../fs/netfs/stats.c", i32 19, i32 10}
!26 = !{ptr @netfs_n_rh_download_instead, !27, !"netfs_n_rh_download_instead", i1 false, i1 false}
!27 = !{!"../fs/netfs/stats.c", i32 20, i32 10}
!28 = !{ptr @netfs_n_rh_read, !29, !"netfs_n_rh_read", i1 false, i1 false}
!29 = !{!"../fs/netfs/stats.c", i32 21, i32 10}
!30 = !{ptr @netfs_n_rh_read_done, !31, !"netfs_n_rh_read_done", i1 false, i1 false}
!31 = !{!"../fs/netfs/stats.c", i32 22, i32 10}
!32 = !{ptr @netfs_n_rh_read_failed, !33, !"netfs_n_rh_read_failed", i1 false, i1 false}
!33 = !{!"../fs/netfs/stats.c", i32 23, i32 10}
!34 = !{ptr @netfs_n_rh_zero, !35, !"netfs_n_rh_zero", i1 false, i1 false}
!35 = !{!"../fs/netfs/stats.c", i32 24, i32 10}
!36 = !{ptr @netfs_n_rh_short_read, !37, !"netfs_n_rh_short_read", i1 false, i1 false}
!37 = !{!"../fs/netfs/stats.c", i32 25, i32 10}
!38 = !{ptr @netfs_n_rh_write, !39, !"netfs_n_rh_write", i1 false, i1 false}
!39 = !{!"../fs/netfs/stats.c", i32 26, i32 10}
!40 = !{ptr @netfs_n_rh_write_begin, !41, !"netfs_n_rh_write_begin", i1 false, i1 false}
!41 = !{!"../fs/netfs/stats.c", i32 27, i32 10}
!42 = !{ptr @netfs_n_rh_write_done, !43, !"netfs_n_rh_write_done", i1 false, i1 false}
!43 = !{!"../fs/netfs/stats.c", i32 28, i32 10}
!44 = !{ptr @netfs_n_rh_write_failed, !45, !"netfs_n_rh_write_failed", i1 false, i1 false}
!45 = !{!"../fs/netfs/stats.c", i32 29, i32 10}
!46 = !{ptr @netfs_n_rh_write_zskip, !47, !"netfs_n_rh_write_zskip", i1 false, i1 false}
!47 = !{!"../fs/netfs/stats.c", i32 30, i32 10}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
