; ModuleID = '/llk/IR_all_yes/net/6lowpan/nhc_udp.c_pt.bc'
source_filename = "../net/6lowpan/nhc_udp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lowpan_nhc = type { %struct.rb_node, ptr, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }

@__initcall__kmod_nhc_udp__487_181_nhc_udp_init6 = internal global ptr @nhc_udp_init, section ".initcall6.init", align 4
@nhc_udp = internal global { %struct.lowpan_nhc, [48 x i8] } { %struct.lowpan_nhc { %struct.rb_node zeroinitializer, ptr @.str, i8 17, i32 8, ptr @nhc_udp_val, ptr @nhc_udp_mask, i32 1, ptr @udp_nhid_setup, ptr @udp_uncompress, ptr @udp_compress }, [48 x i8] zeroinitializer }, align 32
@__exitcall_nhc_udp_exit = internal global ptr @nhc_udp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description488 = internal constant [64 x i8] c"nhc_udp.description=6LoWPAN next header RFC6282 UDP compression\00", section ".modinfo", align 1
@__UNIQUE_ID_file489 = internal constant [33 x i8] c"nhc_udp.file=net/6lowpan/nhc_udp\00", section ".modinfo", align 1
@__UNIQUE_ID_license490 = internal constant [20 x i8] c"nhc_udp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RFC6282 UDP\00", [20 x i8] zeroinitializer }, align 32
@nhc_udp_val = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nhc_udp_mask = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@udp_uncompress.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nhc_udp\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"udp_uncompress\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/6lowpan/nhc_udp.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"UDP header uncompression\0A\00", [38 x i8] zeroinitializer }, align 32
@udp_uncompress.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"uncompressed UDP ports: src = %d, dst = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@udp_uncompress._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@udp_uncompress.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"checksum elided currently not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@udp_uncompress.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"uncompressed UDP length: src = %d\00", [62 x i8] zeroinitializer }, align 32
@udp_compress.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"udp_compress\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UDP header: both ports compression to 4 bits\0A\00", [50 x i8] zeroinitializer }, align 32
@udp_compress.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.11, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UDP header: remove 8 bits of dest\0A\00", [61 x i8] zeroinitializer }, align 32
@udp_compress.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UDP header: remove 8 bits of source\0A\00", [59 x i8] zeroinitializer }, align 32
@udp_compress.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.13, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"UDP header: can't compress\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 240, i64 241, i64 242, i64 243]
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"nhc_udp\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"nhc_udp_val\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"nhc_udp_mask\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 178, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 46, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 71, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 76, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 101, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 125, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 135, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 146, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [25 x i8] c"../net/6lowpan/nhc_udp.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 156, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_description488, ptr @__UNIQUE_ID_file489, ptr @__UNIQUE_ID_license490, ptr @__exitcall_nhc_udp_exit, ptr @__initcall__kmod_nhc_udp__487_181_nhc_udp_init6, ptr @nhc_udp_exit, ptr @nhc_udp, ptr @.str, ptr @nhc_udp_val, ptr @nhc_udp_mask, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @udp_uncompress._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhc_udp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhc_udp_val to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhc_udp_mask to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_uncompress._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nhc_udp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lowpan_nhc_add(ptr noundef nonnull @nhc_udp) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nhc_udp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lowpan_nhc_del(ptr noundef nonnull @nhc_udp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lowpan_nhc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_nhc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @udp_nhid_setup(ptr nocapture noundef readonly %nhc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.lowpan_nhc, ptr %nhc, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -16, ptr %1, align 1
  %idmask = getelementptr inbounds %struct.lowpan_nhc, ptr %nhc, i32 0, i32 5
  %3 = ptrtoint ptr %idmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %idmask, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -8, ptr %4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_uncompress(ptr noundef %skb, i32 noundef %needed) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp eq i32 %3, %1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge, !prof !52

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.i.i = icmp eq i32 %1, 0
  br i1 %cmp3.i.i, label %if.end.i.i.lowpan_fetch_skb.exit_crit_edge, label %pskb_may_pull.exit.i, !prof !52

if.end.i.i.lowpan_fetch_skb.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #5
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !52

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %tmp.0.copyload = load i8, ptr %5, align 1
  %call3.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  br label %lowpan_fetch_skb.exit

lowpan_fetch_skb.exit:                            ; preds = %if.end.i, %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge, %if.end.i.i.lowpan_fetch_skb.exit_crit_edge
  %tmp.0 = phi i8 [ 0, %if.end.i.i.lowpan_fetch_skb.exit_crit_edge ], [ 0, %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge ], [ %tmp.0.copyload, %if.end.i ]
  %retval.0.i9.i = phi i1 [ true, %if.end.i.i.lowpan_fetch_skb.exit_crit_edge ], [ true, %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge ], [ false, %if.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp_uncompress.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp_uncompress, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !53

if.then:                                          ; preds = %lowpan_fetch_skb.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp_uncompress.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lowpan_fetch_skb.exit
  %7 = and i8 %tmp.0, -13
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %do.body75 [
    i8 -16, label %sw.bb
    i8 -15, label %sw.bb19
    i8 -14, label %sw.bb38
    i8 -13, label %sw.bb58
  ]

sw.bb:                                            ; preds = %do.end
  %9 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i.i, align 4
  %11 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i233 = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i233)
  %cmp.not.i.i234 = icmp ult i32 %sub.i.i.i233, 2
  br i1 %cmp.not.i.i234, label %if.end.i.i236, label %sw.bb.if.end.i243_crit_edge, !prof !52

sw.bb.if.end.i243_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i243

if.end.i.i236:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp3.i.i235 = icmp ult i32 %10, 2
  br i1 %cmp3.i.i235, label %if.end.i.i236.lowpan_fetch_skb.exit245_crit_edge, label %pskb_may_pull.exit.i240, !prof !52

if.end.i.i236.lowpan_fetch_skb.exit245_crit_edge: ; preds = %if.end.i.i236
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit245

pskb_may_pull.exit.i240:                          ; preds = %if.end.i.i236
  %sub.i.i237 = sub nuw nsw i32 2, %sub.i.i.i233
  %call13.i.i238 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i237) #5
  %cmp14.i.not.i239 = icmp eq ptr %call13.i.i238, null
  br i1 %cmp14.i.not.i239, label %pskb_may_pull.exit.i240.lowpan_fetch_skb.exit245_crit_edge, label %pskb_may_pull.exit.i240.if.end.i243_crit_edge, !prof !52

pskb_may_pull.exit.i240.if.end.i243_crit_edge:    ; preds = %pskb_may_pull.exit.i240
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i243

pskb_may_pull.exit.i240.lowpan_fetch_skb.exit245_crit_edge: ; preds = %pskb_may_pull.exit.i240
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit245

if.end.i243:                                      ; preds = %pskb_may_pull.exit.i240.if.end.i243_crit_edge, %sw.bb.if.end.i243_crit_edge
  %data.i.i241 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i241 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i241, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %uh.sroa.0.0.copyload = load i16, ptr %14, align 1
  %call3.i242 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  br label %lowpan_fetch_skb.exit245

lowpan_fetch_skb.exit245:                         ; preds = %if.end.i243, %pskb_may_pull.exit.i240.lowpan_fetch_skb.exit245_crit_edge, %if.end.i.i236.lowpan_fetch_skb.exit245_crit_edge
  %uh.sroa.0.0 = phi i16 [ -1, %if.end.i.i236.lowpan_fetch_skb.exit245_crit_edge ], [ -1, %pskb_may_pull.exit.i240.lowpan_fetch_skb.exit245_crit_edge ], [ %uh.sroa.0.0.copyload, %if.end.i243 ]
  %retval.0.i9.i244 = phi i1 [ true, %if.end.i.i236.lowpan_fetch_skb.exit245_crit_edge ], [ true, %pskb_may_pull.exit.i240.lowpan_fetch_skb.exit245_crit_edge ], [ false, %if.end.i243 ]
  %or218 = or i1 %retval.0.i9.i, %retval.0.i9.i244
  %16 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i.i, align 4
  %18 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i248 = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i248)
  %cmp.not.i.i249 = icmp ult i32 %sub.i.i.i248, 2
  br i1 %cmp.not.i.i249, label %if.end.i.i251, label %lowpan_fetch_skb.exit245.if.end.i258_crit_edge, !prof !52

lowpan_fetch_skb.exit245.if.end.i258_crit_edge:   ; preds = %lowpan_fetch_skb.exit245
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i258

if.end.i.i251:                                    ; preds = %lowpan_fetch_skb.exit245
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp3.i.i250 = icmp ult i32 %17, 2
  br i1 %cmp3.i.i250, label %if.end.i.i251.lowpan_fetch_skb.exit260_crit_edge, label %pskb_may_pull.exit.i255, !prof !52

if.end.i.i251.lowpan_fetch_skb.exit260_crit_edge: ; preds = %if.end.i.i251
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit260

pskb_may_pull.exit.i255:                          ; preds = %if.end.i.i251
  %sub.i.i252 = sub nuw nsw i32 2, %sub.i.i.i248
  %call13.i.i253 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i252) #5
  %cmp14.i.not.i254 = icmp eq ptr %call13.i.i253, null
  br i1 %cmp14.i.not.i254, label %pskb_may_pull.exit.i255.lowpan_fetch_skb.exit260_crit_edge, label %pskb_may_pull.exit.i255.if.end.i258_crit_edge, !prof !52

pskb_may_pull.exit.i255.if.end.i258_crit_edge:    ; preds = %pskb_may_pull.exit.i255
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i258

pskb_may_pull.exit.i255.lowpan_fetch_skb.exit260_crit_edge: ; preds = %pskb_may_pull.exit.i255
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit260

if.end.i258:                                      ; preds = %pskb_may_pull.exit.i255.if.end.i258_crit_edge, %lowpan_fetch_skb.exit245.if.end.i258_crit_edge
  %data.i.i256 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i256 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i256, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %uh.sroa.9.2.copyload = load i16, ptr %21, align 1
  %call3.i257 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  br label %lowpan_fetch_skb.exit260

lowpan_fetch_skb.exit260:                         ; preds = %if.end.i258, %pskb_may_pull.exit.i255.lowpan_fetch_skb.exit260_crit_edge, %if.end.i.i251.lowpan_fetch_skb.exit260_crit_edge
  %uh.sroa.9.0 = phi i16 [ -1, %if.end.i.i251.lowpan_fetch_skb.exit260_crit_edge ], [ -1, %pskb_may_pull.exit.i255.lowpan_fetch_skb.exit260_crit_edge ], [ %uh.sroa.9.2.copyload, %if.end.i258 ]
  %retval.0.i9.i259 = phi i1 [ true, %if.end.i.i251.lowpan_fetch_skb.exit260_crit_edge ], [ true, %pskb_may_pull.exit.i255.lowpan_fetch_skb.exit260_crit_edge ], [ false, %if.end.i258 ]
  %or16219 = or i1 %or218, %retval.0.i9.i259
  br label %do.body81

sw.bb19:                                          ; preds = %do.end
  %23 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i.i, align 4
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i263 = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i263)
  %cmp.not.i.i264 = icmp ult i32 %sub.i.i.i263, 2
  br i1 %cmp.not.i.i264, label %if.end.i.i266, label %sw.bb19.if.end.i273_crit_edge, !prof !52

sw.bb19.if.end.i273_crit_edge:                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i273

if.end.i.i266:                                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp3.i.i265 = icmp ult i32 %24, 2
  br i1 %cmp3.i.i265, label %if.end.i.i266.lowpan_fetch_skb.exit275_crit_edge, label %pskb_may_pull.exit.i270, !prof !52

if.end.i.i266.lowpan_fetch_skb.exit275_crit_edge: ; preds = %if.end.i.i266
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit275

pskb_may_pull.exit.i270:                          ; preds = %if.end.i.i266
  %sub.i.i267 = sub nuw nsw i32 2, %sub.i.i.i263
  %call13.i.i268 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i267) #5
  %cmp14.i.not.i269 = icmp eq ptr %call13.i.i268, null
  br i1 %cmp14.i.not.i269, label %pskb_may_pull.exit.i270.lowpan_fetch_skb.exit275_crit_edge, label %pskb_may_pull.exit.i270.if.end.i273_crit_edge, !prof !52

pskb_may_pull.exit.i270.if.end.i273_crit_edge:    ; preds = %pskb_may_pull.exit.i270
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i273

pskb_may_pull.exit.i270.lowpan_fetch_skb.exit275_crit_edge: ; preds = %pskb_may_pull.exit.i270
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit275

if.end.i273:                                      ; preds = %pskb_may_pull.exit.i270.if.end.i273_crit_edge, %sw.bb19.if.end.i273_crit_edge
  %data.i.i271 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i271 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i271, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %uh.sroa.0.0.copyload353 = load i16, ptr %28, align 1
  %call3.i272 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  br label %lowpan_fetch_skb.exit275

lowpan_fetch_skb.exit275:                         ; preds = %if.end.i273, %pskb_may_pull.exit.i270.lowpan_fetch_skb.exit275_crit_edge, %if.end.i.i266.lowpan_fetch_skb.exit275_crit_edge
  %uh.sroa.0.1 = phi i16 [ -1, %if.end.i.i266.lowpan_fetch_skb.exit275_crit_edge ], [ -1, %pskb_may_pull.exit.i270.lowpan_fetch_skb.exit275_crit_edge ], [ %uh.sroa.0.0.copyload353, %if.end.i273 ]
  %retval.0.i9.i274 = phi i1 [ true, %if.end.i.i266.lowpan_fetch_skb.exit275_crit_edge ], [ true, %pskb_may_pull.exit.i270.lowpan_fetch_skb.exit275_crit_edge ], [ false, %if.end.i273 ]
  %or25216 = or i1 %retval.0.i9.i, %retval.0.i9.i274
  %30 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i.i, align 4
  %32 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.not.i.i279 = icmp eq i32 %33, %31
  br i1 %cmp.not.i.i279, label %if.end.i.i281, label %lowpan_fetch_skb.exit275.if.end.i288_crit_edge, !prof !52

lowpan_fetch_skb.exit275.if.end.i288_crit_edge:   ; preds = %lowpan_fetch_skb.exit275
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i288

if.end.i.i281:                                    ; preds = %lowpan_fetch_skb.exit275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp3.i.i280 = icmp eq i32 %31, 0
  br i1 %cmp3.i.i280, label %if.end.i.i281.lowpan_fetch_skb.exit290_crit_edge, label %pskb_may_pull.exit.i285, !prof !52

if.end.i.i281.lowpan_fetch_skb.exit290_crit_edge: ; preds = %if.end.i.i281
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit290

pskb_may_pull.exit.i285:                          ; preds = %if.end.i.i281
  %call13.i.i283 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #5
  %cmp14.i.not.i284 = icmp eq ptr %call13.i.i283, null
  br i1 %cmp14.i.not.i284, label %pskb_may_pull.exit.i285.lowpan_fetch_skb.exit290_crit_edge, label %pskb_may_pull.exit.i285.if.end.i288_crit_edge, !prof !52

pskb_may_pull.exit.i285.if.end.i288_crit_edge:    ; preds = %pskb_may_pull.exit.i285
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i288

pskb_may_pull.exit.i285.lowpan_fetch_skb.exit290_crit_edge: ; preds = %pskb_may_pull.exit.i285
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit290

if.end.i288:                                      ; preds = %pskb_may_pull.exit.i285.if.end.i288_crit_edge, %lowpan_fetch_skb.exit275.if.end.i288_crit_edge
  %data.i.i286 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i286 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i286, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %val.0.copyload = load i8, ptr %35, align 1
  %call3.i287 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  br label %lowpan_fetch_skb.exit290

lowpan_fetch_skb.exit290:                         ; preds = %if.end.i288, %pskb_may_pull.exit.i285.lowpan_fetch_skb.exit290_crit_edge, %if.end.i.i281.lowpan_fetch_skb.exit290_crit_edge
  %val.0 = phi i8 [ 0, %if.end.i.i281.lowpan_fetch_skb.exit290_crit_edge ], [ 0, %pskb_may_pull.exit.i285.lowpan_fetch_skb.exit290_crit_edge ], [ %val.0.copyload, %if.end.i288 ]
  %retval.0.i9.i289 = phi i1 [ true, %if.end.i.i281.lowpan_fetch_skb.exit290_crit_edge ], [ true, %pskb_may_pull.exit.i285.lowpan_fetch_skb.exit290_crit_edge ], [ false, %if.end.i288 ]
  %or32217 = or i1 %or25216, %retval.0.i9.i289
  %conv35 = zext i8 %val.0 to i16
  %add = or i16 %conv35, -4096
  br label %do.body81

sw.bb38:                                          ; preds = %do.end
  %37 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i.i, align 4
  %39 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp.not.i.i294 = icmp eq i32 %40, %38
  br i1 %cmp.not.i.i294, label %if.end.i.i296, label %sw.bb38.if.end.i303_crit_edge, !prof !52

sw.bb38.if.end.i303_crit_edge:                    ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i303

if.end.i.i296:                                    ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp3.i.i295 = icmp eq i32 %38, 0
  br i1 %cmp3.i.i295, label %if.end.i.i296.lowpan_fetch_skb.exit305_crit_edge, label %pskb_may_pull.exit.i300, !prof !52

if.end.i.i296.lowpan_fetch_skb.exit305_crit_edge: ; preds = %if.end.i.i296
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit305

pskb_may_pull.exit.i300:                          ; preds = %if.end.i.i296
  %call13.i.i298 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #5
  %cmp14.i.not.i299 = icmp eq ptr %call13.i.i298, null
  br i1 %cmp14.i.not.i299, label %pskb_may_pull.exit.i300.lowpan_fetch_skb.exit305thread-pre-split_crit_edge, label %pskb_may_pull.exit.i300.if.end.i303_crit_edge, !prof !52

pskb_may_pull.exit.i300.if.end.i303_crit_edge:    ; preds = %pskb_may_pull.exit.i300
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i303

pskb_may_pull.exit.i300.lowpan_fetch_skb.exit305thread-pre-split_crit_edge: ; preds = %pskb_may_pull.exit.i300
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit305thread-pre-split

if.end.i303:                                      ; preds = %pskb_may_pull.exit.i300.if.end.i303_crit_edge, %sw.bb38.if.end.i303_crit_edge
  %data.i.i301 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i301 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i301, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %val.0.copyload357 = load i8, ptr %42, align 1
  %call3.i302 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  br label %lowpan_fetch_skb.exit305thread-pre-split

lowpan_fetch_skb.exit305thread-pre-split:         ; preds = %if.end.i303, %pskb_may_pull.exit.i300.lowpan_fetch_skb.exit305thread-pre-split_crit_edge
  %val.1.ph = phi i8 [ %val.0.copyload357, %if.end.i303 ], [ 0, %pskb_may_pull.exit.i300.lowpan_fetch_skb.exit305thread-pre-split_crit_edge ]
  %retval.0.i9.i304.ph = phi i1 [ false, %if.end.i303 ], [ true, %pskb_may_pull.exit.i300.lowpan_fetch_skb.exit305thread-pre-split_crit_edge ]
  %44 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %len.i.i.i, align 4
  br label %lowpan_fetch_skb.exit305

lowpan_fetch_skb.exit305:                         ; preds = %lowpan_fetch_skb.exit305thread-pre-split, %if.end.i.i296.lowpan_fetch_skb.exit305_crit_edge
  %45 = phi i32 [ %.pr, %lowpan_fetch_skb.exit305thread-pre-split ], [ 0, %if.end.i.i296.lowpan_fetch_skb.exit305_crit_edge ]
  %val.1 = phi i8 [ %val.1.ph, %lowpan_fetch_skb.exit305thread-pre-split ], [ 0, %if.end.i.i296.lowpan_fetch_skb.exit305_crit_edge ]
  %retval.0.i9.i304 = phi i1 [ %retval.0.i9.i304.ph, %lowpan_fetch_skb.exit305thread-pre-split ], [ true, %if.end.i.i296.lowpan_fetch_skb.exit305_crit_edge ]
  %or43214 = or i1 %retval.0.i9.i, %retval.0.i9.i304
  %conv46 = zext i8 %val.1 to i16
  %add47 = or i16 %conv46, -4096
  %46 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i308 = sub i32 %45, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i308)
  %cmp.not.i.i309 = icmp ult i32 %sub.i.i.i308, 2
  br i1 %cmp.not.i.i309, label %if.end.i.i311, label %lowpan_fetch_skb.exit305.if.end.i318_crit_edge, !prof !52

lowpan_fetch_skb.exit305.if.end.i318_crit_edge:   ; preds = %lowpan_fetch_skb.exit305
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i318

if.end.i.i311:                                    ; preds = %lowpan_fetch_skb.exit305
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp3.i.i310 = icmp ult i32 %45, 2
  br i1 %cmp3.i.i310, label %if.end.i.i311.lowpan_fetch_skb.exit320_crit_edge, label %pskb_may_pull.exit.i315, !prof !52

if.end.i.i311.lowpan_fetch_skb.exit320_crit_edge: ; preds = %if.end.i.i311
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit320

pskb_may_pull.exit.i315:                          ; preds = %if.end.i.i311
  %sub.i.i312 = sub nuw nsw i32 2, %sub.i.i.i308
  %call13.i.i313 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i312) #5
  %cmp14.i.not.i314 = icmp eq ptr %call13.i.i313, null
  br i1 %cmp14.i.not.i314, label %pskb_may_pull.exit.i315.lowpan_fetch_skb.exit320_crit_edge, label %pskb_may_pull.exit.i315.if.end.i318_crit_edge, !prof !52

pskb_may_pull.exit.i315.if.end.i318_crit_edge:    ; preds = %pskb_may_pull.exit.i315
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i318

pskb_may_pull.exit.i315.lowpan_fetch_skb.exit320_crit_edge: ; preds = %pskb_may_pull.exit.i315
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit320

if.end.i318:                                      ; preds = %pskb_may_pull.exit.i315.if.end.i318_crit_edge, %lowpan_fetch_skb.exit305.if.end.i318_crit_edge
  %data.i.i316 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i316 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i316, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %uh.sroa.9.2.copyload354 = load i16, ptr %49, align 1
  %call3.i317 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  br label %lowpan_fetch_skb.exit320

lowpan_fetch_skb.exit320:                         ; preds = %if.end.i318, %pskb_may_pull.exit.i315.lowpan_fetch_skb.exit320_crit_edge, %if.end.i.i311.lowpan_fetch_skb.exit320_crit_edge
  %uh.sroa.9.1 = phi i16 [ -1, %if.end.i.i311.lowpan_fetch_skb.exit320_crit_edge ], [ -1, %pskb_may_pull.exit.i315.lowpan_fetch_skb.exit320_crit_edge ], [ %uh.sroa.9.2.copyload354, %if.end.i318 ]
  %retval.0.i9.i319 = phi i1 [ true, %if.end.i.i311.lowpan_fetch_skb.exit320_crit_edge ], [ true, %pskb_may_pull.exit.i315.lowpan_fetch_skb.exit320_crit_edge ], [ false, %if.end.i318 ]
  %or55215 = or i1 %or43214, %retval.0.i9.i319
  br label %do.body81

sw.bb58:                                          ; preds = %do.end
  %51 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i.i.i, align 4
  %53 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp.not.i.i324 = icmp eq i32 %54, %52
  br i1 %cmp.not.i.i324, label %if.end.i.i326, label %sw.bb58.if.end.i333_crit_edge, !prof !52

sw.bb58.if.end.i333_crit_edge:                    ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i333

if.end.i.i326:                                    ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp3.i.i325 = icmp eq i32 %52, 0
  br i1 %cmp3.i.i325, label %if.end.i.i326.lowpan_fetch_skb.exit335_crit_edge, label %pskb_may_pull.exit.i330, !prof !52

if.end.i.i326.lowpan_fetch_skb.exit335_crit_edge: ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit335

pskb_may_pull.exit.i330:                          ; preds = %if.end.i.i326
  %call13.i.i328 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #5
  %cmp14.i.not.i329 = icmp eq ptr %call13.i.i328, null
  br i1 %cmp14.i.not.i329, label %pskb_may_pull.exit.i330.lowpan_fetch_skb.exit335_crit_edge, label %pskb_may_pull.exit.i330.if.end.i333_crit_edge, !prof !52

pskb_may_pull.exit.i330.if.end.i333_crit_edge:    ; preds = %pskb_may_pull.exit.i330
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i333

pskb_may_pull.exit.i330.lowpan_fetch_skb.exit335_crit_edge: ; preds = %pskb_may_pull.exit.i330
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit335

if.end.i333:                                      ; preds = %pskb_may_pull.exit.i330.if.end.i333_crit_edge, %sw.bb58.if.end.i333_crit_edge
  %data.i.i331 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data.i.i331 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i331, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %val.0.copyload358 = load i8, ptr %56, align 1
  %call3.i332 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  br label %lowpan_fetch_skb.exit335

lowpan_fetch_skb.exit335:                         ; preds = %if.end.i333, %pskb_may_pull.exit.i330.lowpan_fetch_skb.exit335_crit_edge, %if.end.i.i326.lowpan_fetch_skb.exit335_crit_edge
  %val.2 = phi i8 [ 0, %if.end.i.i326.lowpan_fetch_skb.exit335_crit_edge ], [ 0, %pskb_may_pull.exit.i330.lowpan_fetch_skb.exit335_crit_edge ], [ %val.0.copyload358, %if.end.i333 ]
  %retval.0.i9.i334 = phi i1 [ true, %if.end.i.i326.lowpan_fetch_skb.exit335_crit_edge ], [ true, %pskb_may_pull.exit.i330.lowpan_fetch_skb.exit335_crit_edge ], [ false, %if.end.i333 ]
  %or63212 = or i1 %retval.0.i9.i, %retval.0.i9.i334
  %58 = lshr i8 %val.2, 4
  %59 = zext i8 %58 to i16
  %add67 = or i16 %59, -3920
  %60 = and i8 %val.2, 15
  %and71 = zext i8 %60 to i16
  %add72 = or i16 %and71, -3920
  br label %do.body81

do.body75:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/6lowpan/nhc_udp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 68, 0\0A.popsection", ""() #5, !srcloc !54
  unreachable

do.body81:                                        ; preds = %lowpan_fetch_skb.exit335, %lowpan_fetch_skb.exit320, %lowpan_fetch_skb.exit290, %lowpan_fetch_skb.exit260
  %uh.sroa.9.2 = phi i16 [ %add72, %lowpan_fetch_skb.exit335 ], [ %uh.sroa.9.1, %lowpan_fetch_skb.exit320 ], [ %add, %lowpan_fetch_skb.exit290 ], [ %uh.sroa.9.0, %lowpan_fetch_skb.exit260 ]
  %uh.sroa.0.2 = phi i16 [ %add67, %lowpan_fetch_skb.exit335 ], [ %add47, %lowpan_fetch_skb.exit320 ], [ %uh.sroa.0.1, %lowpan_fetch_skb.exit290 ], [ %uh.sroa.0.0, %lowpan_fetch_skb.exit260 ]
  %fail.0.in = phi i1 [ %or63212, %lowpan_fetch_skb.exit335 ], [ %or55215, %lowpan_fetch_skb.exit320 ], [ %or32217, %lowpan_fetch_skb.exit290 ], [ %or16219, %lowpan_fetch_skb.exit260 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp_uncompress.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp_uncompress, %if.then93)) #5
          to label %do.end100 [label %if.then93], !srcloc !53

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %conv95 = zext i16 %uh.sroa.0.2 to i32
  %conv97 = zext i16 %uh.sroa.9.2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp_uncompress.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.5, i32 noundef %conv95, i32 noundef %conv97) #5
  br label %do.end100

do.end100:                                        ; preds = %if.then93, %do.body81
  %61 = and i8 %tmp.0, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool103.not = icmp eq i8 %61, 0
  br i1 %tobool103.not, label %if.else, label %do.body105

do.body105:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp_uncompress.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp_uncompress, %land.lhs.true)) #5
          to label %cleanup [label %land.lhs.true], !srcloc !53

land.lhs.true:                                    ; preds = %do.body105
  %call117 = tail call i32 @___ratelimit(ptr noundef nonnull @udp_uncompress._rs, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %land.lhs.true.cleanup_crit_edge, label %if.then119

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then119:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp_uncompress.descriptor, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.else:                                          ; preds = %do.end100
  %62 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i.i.i, align 4
  %64 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i338 = sub i32 %63, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i338)
  %cmp.not.i.i339 = icmp ult i32 %sub.i.i.i338, 2
  br i1 %cmp.not.i.i339, label %if.end.i.i341, label %if.else.lowpan_fetch_skb.exit350_crit_edge, !prof !52

if.else.lowpan_fetch_skb.exit350_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit350

if.end.i.i341:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp3.i.i340 = icmp ult i32 %63, 2
  br i1 %cmp3.i.i340, label %if.end.i.i341.cleanup_crit_edge, label %pskb_may_pull.exit.i345, !prof !52

if.end.i.i341.cleanup_crit_edge:                  ; preds = %if.end.i.i341
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit.i345:                          ; preds = %if.end.i.i341
  %sub.i.i342 = sub nuw nsw i32 2, %sub.i.i.i338
  %call13.i.i343 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i342) #5
  %cmp14.i.not.i344 = icmp eq ptr %call13.i.i343, null
  br i1 %cmp14.i.not.i344, label %pskb_may_pull.exit.i345.cleanup_crit_edge, label %pskb_may_pull.exit.i345.lowpan_fetch_skb.exit350_crit_edge, !prof !52

pskb_may_pull.exit.i345.lowpan_fetch_skb.exit350_crit_edge: ; preds = %pskb_may_pull.exit.i345
  call void @__sanitizer_cov_trace_pc() #7
  br label %lowpan_fetch_skb.exit350

pskb_may_pull.exit.i345.cleanup_crit_edge:        ; preds = %pskb_may_pull.exit.i345
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lowpan_fetch_skb.exit350:                         ; preds = %pskb_may_pull.exit.i345.lowpan_fetch_skb.exit350_crit_edge, %if.else.lowpan_fetch_skb.exit350_crit_edge
  %data.i.i346 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %66 = ptrtoint ptr %data.i.i346 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i346, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %uh.sroa.20.6.copyload = load i16, ptr %67, align 1
  %call3.i347 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  br i1 %fail.0.in, label %lowpan_fetch_skb.exit350.cleanup_crit_edge, label %if.end133

lowpan_fetch_skb.exit350.cleanup_crit_edge:       ; preds = %lowpan_fetch_skb.exit350
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end133:                                        ; preds = %lowpan_fetch_skb.exit350
  %69 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 2304
  %72 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cond = icmp eq i32 %73, 1
  br i1 %cond, label %sw.bb135, label %if.end133.do.body154.sink.split_crit_edge

if.end133.do.body154.sink.split_crit_edge:        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body154.sink.split

sw.bb135:                                         ; preds = %if.end133
  %d_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %74 = ptrtoint ptr %d_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %d_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool137.not = icmp eq i32 %75, 0
  br i1 %tobool137.not, label %sw.bb135.do.body154.sink.split_crit_edge, label %sw.bb135.do.body154_crit_edge

sw.bb135.do.body154_crit_edge:                    ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body154

sw.bb135.do.body154.sink.split_crit_edge:         ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body154.sink.split

do.body154.sink.split:                            ; preds = %sw.bb135.do.body154.sink.split_crit_edge, %if.end133.do.body154.sink.split_crit_edge
  %76 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i.i.i, align 4
  br label %do.body154

do.body154:                                       ; preds = %do.body154.sink.split, %sw.bb135.do.body154_crit_edge
  %.sink373 = phi i32 [ %75, %sw.bb135.do.body154_crit_edge ], [ %77, %do.body154.sink.split ]
  %.sink372 = phi i16 [ -40, %sw.bb135.do.body154_crit_edge ], [ 8, %do.body154.sink.split ]
  %78 = trunc i32 %.sink373 to i16
  %conv151 = add i16 %.sink372, %78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp_uncompress.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp_uncompress, %if.then166)) #5
          to label %do.end171 [label %if.then166], !srcloc !53

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #7
  %conv168 = zext i16 %conv151 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp_uncompress.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.8, i32 noundef %conv168) #5
  br label %do.end171

do.end171:                                        ; preds = %if.then166, %do.body154
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %79 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %do.end171.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

do.end171.skb_cloned.exit.i_crit_edge:            ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #7
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %80 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %81, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #5
  %82 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %83, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %do.end171.skb_cloned.exit.i_crit_edge
  %84 = phi i1 [ true, %do.end171.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %85 = ptrtoint ptr %data.i.i346 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i346, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %87 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %86 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %88 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %needed)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %needed
  %or.cond.i.i = and i1 %84, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end181_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end181_crit_edge:            ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end181

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %89 = tail call i32 @llvm.usub.sat.i32(i32 %needed, i32 %sub.ptr.sub.i.i.i) #5
  %add.i.i = add i32 %89, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool173.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool173.not, label %skb_cow.exit.if.end181_crit_edge, label %skb_cow.exit.cleanup_crit_edge, !prof !55

skb_cow.exit.cleanup_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_cow.exit.if.end181_crit_edge:                 ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end181

if.end181:                                        ; preds = %skb_cow.exit.if.end181_crit_edge, %skb_cloned.exit.i.if.end181_crit_edge
  %call182 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #5
  %90 = ptrtoint ptr %data.i.i346 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i.i346, align 4
  %uh.sroa.20.0.insert.ext = zext i16 %uh.sroa.20.6.copyload to i64
  %uh.sroa.15.0.insert.ext = zext i16 %conv151 to i64
  %uh.sroa.15.0.insert.shift = shl nuw nsw i64 %uh.sroa.15.0.insert.ext, 16
  %uh.sroa.15.0.insert.insert = or i64 %uh.sroa.15.0.insert.shift, %uh.sroa.20.0.insert.ext
  %uh.sroa.9.0.insert.ext = zext i16 %uh.sroa.9.2 to i64
  %uh.sroa.9.0.insert.shift = shl nuw nsw i64 %uh.sroa.9.0.insert.ext, 32
  %uh.sroa.9.0.insert.insert = or i64 %uh.sroa.15.0.insert.insert, %uh.sroa.9.0.insert.shift
  %uh.sroa.0.0.insert.ext = zext i16 %uh.sroa.0.2 to i64
  %uh.sroa.0.0.insert.shift = shl nuw i64 %uh.sroa.0.0.insert.ext, 48
  %uh.sroa.0.0.insert.insert = or i64 %uh.sroa.9.0.insert.insert, %uh.sroa.0.0.insert.shift
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 %uh.sroa.0.0.insert.insert, ptr %91, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end181, %skb_cow.exit.cleanup_crit_edge, %lowpan_fetch_skb.exit350.cleanup_crit_edge, %pskb_may_pull.exit.i345.cleanup_crit_edge, %if.end.i.i341.cleanup_crit_edge, %if.then119, %land.lhs.true.cleanup_crit_edge, %do.body105
  %retval.0 = phi i32 [ 0, %if.end181 ], [ -22, %if.then119 ], [ -22, %lowpan_fetch_skb.exit350.cleanup_crit_edge ], [ %call4.i.i, %skb_cow.exit.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.body105 ], [ -22, %pskb_may_pull.exit.i345.cleanup_crit_edge ], [ -22, %if.end.i.i341.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_compress(ptr nocapture noundef readonly %skb, ptr noundef %hc_ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %6 = and i16 %5, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3920, i16 %6)
  %cmp = icmp eq i16 %6, -3920
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dest, align 2
  %9 = and i16 %8, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3920, i16 %9)
  %cmp4 = icmp eq i16 %9, -3920
  br i1 %cmp4, label %do.body, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp_compress.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp_compress, %if.then10)) #5
          to label %do.end [label %if.then10], !srcloc !53

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp_compress.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.10) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %10 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hc_ptr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -13, ptr %11, align 1
  %13 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 1
  store ptr %add.ptr.i, ptr %hc_ptr, align 4
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dest, align 2
  %conv12 = trunc i16 %15 to i8
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %conv14 = trunc i16 %17 to i8
  %sub15 = shl i8 %conv14, 4
  %shl = add i8 %conv12, 80
  %add = add i8 %shl, %sub15
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %add, ptr %add.ptr.i, align 1
  br label %if.end93

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %dest17 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %dest17 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dest17, align 2
  %21 = and i16 %20, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4096, i16 %21)
  %cmp20 = icmp eq i16 %21, -4096
  br i1 %cmp20, label %do.body23, label %if.else44

do.body23:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp_compress.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp_compress, %if.then35)) #5
          to label %do.end38 [label %if.then35], !srcloc !53

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp_compress.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.11) #5
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %do.body23
  %22 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hc_ptr, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -15, ptr %23, align 1
  %25 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i127 = getelementptr i8, ptr %25, i32 1
  store ptr %add.ptr.i127, ptr %hc_ptr, align 4
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %add.ptr.i.i, align 1
  %28 = ptrtoint ptr %add.ptr.i127 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %add.ptr.i127, align 1
  %29 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i128 = getelementptr i8, ptr %29, i32 2
  store ptr %add.ptr.i128, ptr %hc_ptr, align 4
  %30 = ptrtoint ptr %dest17 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dest17, align 2
  %conv41 = trunc i16 %31 to i8
  %32 = ptrtoint ptr %add.ptr.i128 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv41, ptr %add.ptr.i128, align 1
  br label %if.end93

if.else44:                                        ; preds = %if.else
  %33 = and i16 %5, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4096, i16 %33)
  %cmp48 = icmp eq i16 %33, -4096
  br i1 %cmp48, label %do.body51, label %do.body73

do.body51:                                        ; preds = %if.else44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp_compress.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp_compress, %if.then63)) #5
          to label %do.end66 [label %if.then63], !srcloc !53

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp_compress.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.12) #5
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.body51
  %34 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hc_ptr, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -14, ptr %35, align 1
  %37 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i130 = getelementptr i8, ptr %37, i32 1
  store ptr %add.ptr.i130, ptr %hc_ptr, align 4
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i, align 2
  %conv68 = trunc i16 %39 to i8
  %40 = ptrtoint ptr %add.ptr.i130 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv68, ptr %add.ptr.i130, align 1
  %41 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i131 = getelementptr i8, ptr %41, i32 1
  store ptr %add.ptr.i131, ptr %hc_ptr, align 4
  %42 = ptrtoint ptr %dest17 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %dest17, align 1
  %44 = ptrtoint ptr %add.ptr.i131 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %add.ptr.i131, align 1
  br label %if.end93

do.body73:                                        ; preds = %if.else44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp_compress.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp_compress, %if.then85)) #5
          to label %do.end88 [label %if.then85], !srcloc !53

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp_compress.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.13) #5
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %do.body73
  %45 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hc_ptr, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -16, ptr %46, align 1
  %48 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i133 = getelementptr i8, ptr %48, i32 1
  store ptr %add.ptr.i133, ptr %hc_ptr, align 4
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %add.ptr.i.i, align 1
  %51 = ptrtoint ptr %add.ptr.i133 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %add.ptr.i133, align 1
  %52 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i134 = getelementptr i8, ptr %52, i32 2
  store ptr %add.ptr.i134, ptr %hc_ptr, align 4
  %53 = ptrtoint ptr %dest17 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %dest17, align 1
  %55 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %add.ptr.i134, align 1
  br label %if.end93

if.end93:                                         ; preds = %do.end88, %do.end66, %do.end38, %do.end
  %.sink147 = phi i32 [ 1, %do.end38 ], [ 2, %do.end88 ], [ 2, %do.end66 ], [ 1, %do.end ]
  %56 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i129 = getelementptr i8, ptr %57, i32 %.sink147
  store ptr %add.ptr.i129, ptr %hc_ptr, align 4
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %check to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %check, align 1
  %60 = ptrtoint ptr %add.ptr.i129 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %add.ptr.i129, align 1
  %61 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i136 = getelementptr i8, ptr %61, i32 2
  store ptr %add.ptr.i136, ptr %hc_ptr, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_nhc_udp__487_181_nhc_udp_init6, !1, !"__initcall__kmod_nhc_udp__487_181_nhc_udp_init6", i1 false, i1 false}
!1 = !{!"../net/6lowpan/nhc_udp.c", i32 181, i32 1}
!2 = !{ptr @__exitcall_nhc_udp_exit, !1, !"__exitcall_nhc_udp_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description488, !4, !"__UNIQUE_ID_description488", i1 false, i1 false}
!4 = !{!"../net/6lowpan/nhc_udp.c", i32 182, i32 1}
!5 = !{ptr @__UNIQUE_ID_file489, !6, !"__UNIQUE_ID_file489", i1 false, i1 false}
!6 = !{!"../net/6lowpan/nhc_udp.c", i32 183, i32 1}
!7 = !{ptr @__UNIQUE_ID_license490, !6, !"__UNIQUE_ID_license490", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/6lowpan/nhc_udp.c", i32 178, i32 1}
!10 = !{ptr @nhc_udp, !9, !"nhc_udp", i1 false, i1 false}
!11 = !{ptr @nhc_udp_val, !9, !"nhc_udp_val", i1 false, i1 false}
!12 = !{ptr @nhc_udp_mask, !9, !"nhc_udp_mask", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/6lowpan/nhc_udp.c", i32 46, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @udp_uncompress.__UNIQUE_ID_ddebug480, !14, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/6lowpan/nhc_udp.c", i32 71, i32 2}
!21 = !{ptr @udp_uncompress.__UNIQUE_ID_ddebug481, !20, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/6lowpan/nhc_udp.c", i32 76, i32 3}
!24 = !{ptr @udp_uncompress._rs, !23, !"_rs", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @udp_uncompress.descriptor, !23, !"descriptor", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/6lowpan/nhc_udp.c", i32 101, i32 2}
!29 = !{ptr @udp_uncompress.__UNIQUE_ID_ddebug482, !28, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/6lowpan/nhc_udp.c", i32 125, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @udp_compress.__UNIQUE_ID_ddebug483, !31, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/6lowpan/nhc_udp.c", i32 135, i32 3}
!36 = !{ptr @udp_compress.__UNIQUE_ID_ddebug484, !35, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/6lowpan/nhc_udp.c", i32 146, i32 3}
!39 = !{ptr @udp_compress.__UNIQUE_ID_ddebug485, !38, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/6lowpan/nhc_udp.c", i32 156, i32 3}
!42 = !{ptr @udp_compress.__UNIQUE_ID_ddebug486, !41, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2148838590, i64 2148838595, i64 2148838608, i64 2148838652, i64 2148838686, i64 2148838707}
!54 = !{i64 2157187748, i64 2157188233, i64 2157187785, i64 2157187841, i64 2157187875, i64 2157187899, i64 2157187940, i64 2157187961, i64 2157187989, i64 2157188023}
!55 = !{!"branch_weights", i32 2000, i32 1}
