; ModuleID = '/llk/IR_all_yes/fs/cifs/cifs_unicode.c_pt.bc'
source_filename = "../fs/cifs/cifs_unicode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.UniCaseRange = type { i16, i16, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@CifsUniUpperTable = dso_local global { [512 x i8], [128 x i8] } { [512 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\00\E0\E0\E0\E0\E0\E0\E0y\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\00\00\00\FF\00\FF\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\FF\00\FF\00\FF\00\00\FF\00\00\00\00\FF\00\00\FF\00\00\00\FF\00\FF\00\00\FF\00\00\00\FF\00\00\00\00\00\00\00\FF\FE\00\FF\FE\00\FF\FE\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\B1\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\FE\00\FF\00\00\00\FF\00\FF\00\FF\00\FF", [128 x i8] zeroinitializer }, align 32
@UniCaseRangeU03a0 = internal global { [47 x i8], [49 x i8] } { [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\DA\DB\DB\DB\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E1\E0\E0\E0\E0\E0\E0\E0\E0\E0\C0\C1\C1", [49 x i8] zeroinitializer }, align 32
@UniCaseRangeU0430 = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\00\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\00\B0\B0", [48 x i8] zeroinitializer }, align 32
@UniCaseRangeU0490 = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\00\00\FF\00\00\00\FF", [35 x i8] zeroinitializer }, align 32
@UniCaseRangeUff40 = internal global { [27 x i8], [37 x i8] } { [27 x i8] c"\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0", [37 x i8] zeroinitializer }, align 32
@CifsUniUpperRange = dso_local constant { [6 x %struct.UniCaseRange], [48 x i8] } { [6 x %struct.UniCaseRange] [%struct.UniCaseRange { i16 928, i16 974, ptr @UniCaseRangeU03a0 }, %struct.UniCaseRange { i16 1072, i16 1119, ptr @UniCaseRangeU0430 }, %struct.UniCaseRange { i16 1168, i16 1228, ptr @UniCaseRangeU0490 }, %struct.UniCaseRange { i16 7680, i16 8188, ptr @UniCaseRangeU1e00 }, %struct.UniCaseRange { i16 -192, i16 -166, ptr @UniCaseRangeUff40 }, %struct.UniCaseRange zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@cifs_strtoUTF16._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cifs_strtoUTF16 = private unnamed_addr constant [16 x i8] c"cifs_strtoUTF16\00", align 1
@cifs_strtoUTF16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.cifs_strtoUTF16, ptr @.str.3, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: strtoUTF16: char2uni of 0x%x returned %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/cifs/cifs_unicode.c\00", [41 x i8] zeroinitializer }, align 32
@cifs_strtoUTF16._entry_ptr = internal global ptr @cifs_strtoUTF16._entry, section ".printk_index", align 4
@UniCaseRangeU1e00 = internal global { <{ [500 x i8], [9 x i8] }>, [99 x i8] } { <{ [500 x i8], [9 x i8] }> <{ [500 x i8] c"\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\00\00\00\C5\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\00\00\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\00\00\00\00\00\00\00\00\00\00\00\08\00\08\00\08\00\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00JJVVVVdd\00\00pp~~\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\08\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\09", [9 x i8] zeroinitializer }>, [99 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.cifs_mapchar = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\22*:<>?:| .", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [8 x i64] [i64 6, i64 16, i64 61482, i64 61498, i64 61500, i64 61502, i64 61503, i64 61564]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [8 x i64] [i64 6, i64 8, i64 42, i64 58, i64 60, i64 62, i64 63, i64 124]
@__sancov_gen_cov_switch_values.8 = internal global [11 x i64] [i64 9, i64 8, i64 32, i64 34, i64 42, i64 46, i64 58, i64 60, i64 62, i64 63, i64 124]
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"CifsUniUpperTable\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 12, i32 13 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU03a0\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 48, i32 20 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU0430\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 56, i32 20 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU0490\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 63, i32 20 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"UniCaseRangeUff40\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 107, i32 20 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"CifsUniUpperRange\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 115, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 257, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [26 x i8] c"../fs/cifs/cifs_unicode.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 280, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU1e00\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"../fs/cifs/cifs_uniupr.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 71, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant [26 x i8] c"switch.table.cifs_mapchar\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @cifs_strtoUTF16._entry, ptr @cifs_strtoUTF16._entry_ptr, ptr @CifsUniUpperTable, ptr @UniCaseRangeU03a0, ptr @UniCaseRangeU0430, ptr @UniCaseRangeU0490, ptr @UniCaseRangeUff40, ptr @CifsUniUpperRange, ptr @.str, ptr @cifs_strtoUTF16._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @UniCaseRangeU1e00, ptr @switch.table.cifs_mapchar], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CifsUniUpperTable to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU03a0 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU0430 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU0490 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeUff40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CifsUniUpperRange to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_strtoUTF16._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_strtoUTF16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU1e00 to i32), i32 509, i32 608, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cifs_mapchar to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cifs_remap(ptr nocapture noundef readonly %cifs_sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %0 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = lshr i32 %1, 4
  %2 = and i32 %and2, 2
  %map_type.0 = select i1 %tobool.not, i32 %2, i32 1
  ret i32 %map_type.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_from_utf16(ptr noundef %to, ptr nocapture noundef readonly %from, i32 noundef %tolen, i32 noundef %fromlen, ptr nocapture noundef readonly %codepage, i32 noundef %map_type) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca [6 x i8], align 1
  %tmp = alloca [6 x i8], align 1
  %ftmp = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp.i) #9
  %uni2char.i = getelementptr inbounds %struct.nls_table, ptr %codepage, i32 0, i32 2
  %0 = call ptr @memset(ptr %tmp.i, i32 255, i32 6)
  %1 = ptrtoint ptr %uni2char.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uni2char.i, align 4
  %call.i = call i32 %2(i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i32 noundef 6) #9
  %3 = call i32 @llvm.smax.i32(i32 %call.i, i32 1) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp.i) #9
  %div = sdiv i32 %fromlen, 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp) #9
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ftmp) #9
  %5 = getelementptr inbounds [3 x i16], ptr %ftmp, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i16], ptr %ftmp, i32 0, i32 2
  %add.neg = add i32 %tolen, -6
  %sub = sub i32 %add.neg, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fromlen)
  %cmp93 = icmp sgt i32 %fromlen, 1
  br i1 %cmp93, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub33 = sub i32 %tolen, %3
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %outlen.095 = phi i32 [ 0, %for.body.lr.ph ], [ %add42, %if.end38.for.body_crit_edge ]
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc53, %if.end38.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %from, i32 %i.094
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx, align 1
  %9 = call i16 @llvm.bswap.i16(i16 %8) #9
  %10 = ptrtoint ptr %ftmp to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %ftmp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp4 = icmp eq i16 %8, 0
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  %add6 = add nsw i32 %i.094, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %div)
  %cmp7 = icmp slt i32 %add6, %div
  br i1 %cmp7, label %if.then9, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11 = getelementptr i16, ptr %from, i32 %add6
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx11, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end.if.end15_crit_edge
  %storemerge = phi i16 [ %13, %if.then9 ], [ 0, %if.end.if.end15_crit_edge ]
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %storemerge, ptr %5, align 2
  %add16 = add i32 %i.094, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %div)
  %cmp17 = icmp slt i32 %add16, %div
  br i1 %cmp17, label %if.then19, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21 = getelementptr i16, ptr %from, i32 %add16
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx21, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.end15.if.end26_crit_edge
  %storemerge92 = phi i16 [ %17, %if.then19 ], [ 0, %if.end15.if.end26_crit_edge ]
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %storemerge92, ptr %6, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %outlen.095, i32 %sub)
  %cmp27.not = icmp slt i32 %outlen.095, %sub
  br i1 %cmp27.not, label %if.end26.if.end38_crit_edge, label %if.then29

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then29:                                        ; preds = %if.end26
  %call31 = call fastcc i32 @cifs_mapchar(ptr noundef nonnull %tmp, ptr noundef nonnull %ftmp, ptr noundef %codepage, i32 noundef %map_type)
  %add32 = add i32 %call31, %outlen.095
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %sub33)
  %cmp34 = icmp sgt i32 %add32, %sub33
  br i1 %cmp34, label %if.then29.for.end_crit_edge, label %if.then29.if.end38_crit_edge

if.then29.if.end38_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end38:                                         ; preds = %if.then29.if.end38_crit_edge, %if.end26.if.end38_crit_edge
  %arrayidx39 = getelementptr i8, ptr %to, i32 %outlen.095
  %call41 = call fastcc i32 @cifs_mapchar(ptr noundef %arrayidx39, ptr noundef nonnull %ftmp, ptr noundef %codepage, i32 noundef %map_type)
  %add42 = add i32 %call41, %outlen.095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call41)
  %cmp43 = icmp eq i32 %call41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call41)
  %cmp47 = icmp sgt i32 %call41, 4
  %spec.select = select i1 %cmp47, i32 %add16, i32 %i.094
  %i.1 = select i1 %cmp43, i32 %add6, i32 %spec.select
  %inc53 = add i32 %i.1, 1
  %cmp = icmp slt i32 %inc53, %div
  br i1 %cmp, label %if.end38.for.body_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %if.then29.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %outlen.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %outlen.095, %if.then29.for.end_crit_edge ], [ %outlen.095, %for.body.for.end_crit_edge ], [ %add42, %if.end38.for.end_crit_edge ]
  %uglygep = getelementptr i8, ptr %to, i32 %outlen.0.lcssa
  %19 = call ptr @memset(ptr %uglygep, i32 0, i32 %3)
  %20 = add i32 %outlen.0.lcssa, %3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ftmp) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp) #9
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_mapchar(ptr noundef %target, ptr noundef %from, ptr nocapture noundef readonly %cp, i32 noundef %maptype) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %from to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %from, align 2
  %2 = zext i32 %maptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %maptype, label %entry.if.end5_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true2
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %3 = add i16 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %3)
  %4 = icmp ult i16 %3, 31
  br i1 %4, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i16 %1 to i8
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %land.lhs.true
  %switch.tableidx = add i16 %1, 4064
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %switch.tableidx)
  %5 = icmp ult i16 %switch.tableidx, 10
  br i1 %5, label %switch.hole_check, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true2:                                   ; preds = %entry
  %6 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %1, label %land.lhs.true2.if.end5_crit_edge [
    i16 -4038, label %land.lhs.true2.cleanup.sink.split_crit_edge
    i16 -4054, label %sw.bb1.i
    i16 -4033, label %sw.bb2.i
    i16 -3972, label %sw.bb3.i
    i16 -4034, label %sw.bb4.i
    i16 -4036, label %sw.bb5.i
  ]

land.lhs.true2.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true2.if.end5_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

sw.bb1.i:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb2.i:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb3.i:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb4.i:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb5.i:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end5:                                          ; preds = %switch.hole_check.if.end5_crit_edge, %land.lhs.true2.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %cp, i32 0, i32 2
  %7 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uni2char, align 4
  %call6 = tail call i32 %8(i16 noundef zeroext %1, ptr noundef %target, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %surrogate_pair, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

surrogate_pair:                                   ; preds = %if.end5
  %9 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cp, align 4
  %call10 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(5) @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %surrogate_pair.cleanup.sink.split_crit_edge

surrogate_pair.cleanup.sink.split_crit_edge:      ; preds = %surrogate_pair
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %surrogate_pair
  %call13 = tail call i32 @utf16s_to_utf8s(ptr noundef %from, i32 noundef 3, i32 noundef 1, ptr noundef %target, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.end12.cleanup.sink.split_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

switch.hole_check:                                ; preds = %if.end.i
  %switch.shifted = lshr i16 959, %switch.tableidx
  %11 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %switch.lobit.not = icmp eq i16 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end5_crit_edge, label %switch.lookup

switch.hole_check.if.end5_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %12 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [10 x i8], ptr @switch.table.cifs_mapchar, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %13)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %if.end12.cleanup.sink.split_crit_edge, %surrogate_pair.cleanup.sink.split_crit_edge, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %land.lhs.true2.cleanup.sink.split_crit_edge, %if.then.i
  %.sink.i33.sink = phi i8 [ %conv.i, %if.then.i ], [ 42, %sw.bb1.i ], [ 63, %sw.bb2.i ], [ 124, %sw.bb3.i ], [ 62, %sw.bb4.i ], [ 60, %sw.bb5.i ], [ 58, %land.lhs.true2.cleanup.sink.split_crit_edge ], [ 63, %if.end12.cleanup.sink.split_crit_edge ], [ 63, %surrogate_pair.cleanup.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %14 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink.i33.sink, ptr %target, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_strtoUTF16(ptr noundef %to, ptr noundef %from, i32 noundef %len, ptr nocapture noundef readonly %codepage) local_unnamed_addr #2 align 64 {
entry:
  %wchar_to = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wchar_to) #9
  %0 = ptrtoint ptr %wchar_to to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %wchar_to, align 2, !annotation !33
  %1 = ptrtoint ptr %codepage to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %codepage, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @utf8s_to_utf16s(ptr noundef %from, i32 noundef %len, i32 noundef 1, ptr noundef %to, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then.success_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then.success_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %success

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not42 = icmp eq i32 %len, 0
  br i1 %tobool4.not42, label %if.end3.success_crit_edge, label %land.rhs.lr.ph

if.end3.success_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %success

land.rhs.lr.ph:                                   ; preds = %if.end3
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %codepage, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end22.land.rhs_crit_edge, %land.rhs.lr.ph
  %from.addr.045 = phi ptr [ %from, %land.rhs.lr.ph ], [ %add.ptr, %if.end22.land.rhs_crit_edge ]
  %i.044 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end22.land.rhs_crit_edge ]
  %len.addr.043 = phi i32 [ %len, %land.rhs.lr.ph ], [ %sub, %if.end22.land.rhs_crit_edge ]
  %3 = ptrtoint ptr %from.addr.045 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %from.addr.045, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %land.rhs.success_crit_edge, label %for.body

land.rhs.success_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %success

for.body:                                         ; preds = %land.rhs
  %5 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %char2uni, align 4
  %call6 = call i32 %6(ptr noundef %from.addr.045, i32 noundef %len.addr.043, ptr noundef nonnull %wchar_to) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %do.body10, label %for.body.if.end22_crit_edge

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.body10:                                        ; preds = %for.body
  %call11 = call i32 @___ratelimit(ptr noundef nonnull @cifs_strtoUTF16._rs, ptr noundef nonnull @__func__.cifs_strtoUTF16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body10.do.end21_crit_edge, label %do.end

do.body10.do.end21_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

do.end:                                           ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %from.addr.045 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %from.addr.045, align 1
  %conv15 = zext i8 %8 to i32
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv15, i32 noundef %call6) #13
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body10.do.end21_crit_edge
  %9 = ptrtoint ptr %wchar_to to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 63, ptr %wchar_to, align 2
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %for.body.if.end22_crit_edge
  %charlen.0 = phi i32 [ 1, %do.end21 ], [ %call6, %for.body.if.end22_crit_edge ]
  %10 = ptrtoint ptr %wchar_to to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wchar_to, align 2
  %arrayidx = getelementptr i16, ptr %to, i32 %i.044
  %12 = call i16 @llvm.bswap.i16(i16 %11) #9
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %arrayidx, align 1
  %inc = add i32 %i.044, 1
  %add.ptr = getelementptr i8, ptr %from.addr.045, i32 %charlen.0
  %sub = sub i32 %len.addr.043, %charlen.0
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %if.end22.success_crit_edge, label %if.end22.land.rhs_crit_edge

if.end22.land.rhs_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end22.success_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %success

success:                                          ; preds = %if.end22.success_crit_edge, %land.rhs.success_crit_edge, %if.end3.success_crit_edge, %if.then.success_crit_edge
  %i.1 = phi i32 [ %call1, %if.then.success_crit_edge ], [ 0, %if.end3.success_crit_edge ], [ %inc, %if.end22.success_crit_edge ], [ %i.044, %land.rhs.success_crit_edge ]
  %arrayidx23 = getelementptr i16, ptr %to, i32 %i.1
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 0, ptr %arrayidx23, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wchar_to) #9
  ret i32 %i.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_utf16_bytes(ptr nocapture noundef readonly %from, i32 noundef %maxbytes, ptr nocapture noundef readonly %codepage) local_unnamed_addr #2 align 64 {
entry:
  %tmp = alloca [6 x i8], align 1
  %ftmp = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %maxbytes, 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp) #9
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ftmp) #9
  %1 = getelementptr inbounds [3 x i16], ptr %ftmp, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i16], ptr %ftmp, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %maxbytes)
  %cmp40 = icmp sgt i32 %maxbytes, 1
  br i1 %cmp40, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %uni2char.i = getelementptr inbounds %struct.nls_table, ptr %codepage, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cifs_mapchar.exit.for.body_crit_edge, %for.body.lr.ph
  %outlen.042 = phi i32 [ 0, %for.body.lr.ph ], [ %add27, %cifs_mapchar.exit.for.body_crit_edge ]
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cifs_mapchar.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %from, i32 %i.041
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %arrayidx, align 1
  %5 = call i16 @llvm.bswap.i16(i16 %4) #9
  %6 = ptrtoint ptr %ftmp to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %ftmp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp3 = icmp eq i16 %4, 0
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  %add = add nuw nsw i32 %i.041, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %cmp5 = icmp slt i32 %add, %div
  br i1 %cmp5, label %if.then7, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9 = getelementptr i16, ptr %from, i32 %add
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx9, align 1
  %9 = call i16 @llvm.bswap.i16(i16 %8) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %storemerge = phi i16 [ %9, %if.then7 ], [ 0, %if.end.if.end13_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %storemerge, ptr %1, align 2
  %add14 = add nuw nsw i32 %i.041, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %div)
  %cmp15 = icmp slt i32 %add14, %div
  br i1 %cmp15, label %if.then17, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19 = getelementptr i16, ptr %from, i32 %add14
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx19, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end13.if.end24_crit_edge
  %storemerge39 = phi i16 [ %13, %if.then17 ], [ 0, %if.end13.if.end24_crit_edge ]
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %storemerge39, ptr %2, align 2
  %15 = ptrtoint ptr %uni2char.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uni2char.i, align 4
  %call6.i = call i32 %16(i16 noundef zeroext %5, ptr noundef nonnull %tmp, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 1
  br i1 %cmp7.i, label %surrogate_pair.i, label %if.end24.cifs_mapchar.exit_crit_edge

if.end24.cifs_mapchar.exit_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_mapchar.exit

surrogate_pair.i:                                 ; preds = %if.end24
  %17 = ptrtoint ptr %codepage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %codepage, align 4
  %call10.i = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(5) @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %surrogate_pair.i.cleanup.sink.split.i_crit_edge

surrogate_pair.i.cleanup.sink.split.i_crit_edge:  ; preds = %surrogate_pair.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end12.i:                                       ; preds = %surrogate_pair.i
  %call13.i = call i32 @utf16s_to_utf8s(ptr noundef nonnull %ftmp, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 1
  br i1 %cmp14.i, label %if.end12.i.cleanup.sink.split.i_crit_edge, label %if.end12.i.cifs_mapchar.exit_crit_edge

if.end12.i.cifs_mapchar.exit_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_mapchar.exit

if.end12.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end12.i.cleanup.sink.split.i_crit_edge, %surrogate_pair.i.cleanup.sink.split.i_crit_edge
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 63, ptr %tmp, align 1
  br label %cifs_mapchar.exit

cifs_mapchar.exit:                                ; preds = %cleanup.sink.split.i, %if.end12.i.cifs_mapchar.exit_crit_edge, %if.end24.cifs_mapchar.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end24.cifs_mapchar.exit_crit_edge ], [ %call13.i, %if.end12.i.cifs_mapchar.exit_crit_edge ], [ 1, %cleanup.sink.split.i ]
  %add27 = add i32 %retval.0.i, %outlen.042
  %exitcond.not = icmp eq i32 %add, %div
  br i1 %exitcond.not, label %cifs_mapchar.exit.for.end_crit_edge, label %cifs_mapchar.exit.for.body_crit_edge

cifs_mapchar.exit.for.body_crit_edge:             ; preds = %cifs_mapchar.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cifs_mapchar.exit.for.end_crit_edge:              ; preds = %cifs_mapchar.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cifs_mapchar.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %outlen.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %outlen.042, %for.body.for.end_crit_edge ], [ %add27, %cifs_mapchar.exit.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ftmp) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp) #9
  ret i32 %outlen.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_strndup_from_utf16(ptr noundef %src, i32 noundef %maxlen, i1 noundef zeroext %is_unicode, ptr nocapture noundef readonly %codepage) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_unicode, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @cifs_utf16_bytes(ptr noundef %src, i32 noundef %maxlen, ptr noundef %codepage)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp.i) #9
  %uni2char.i = getelementptr inbounds %struct.nls_table, ptr %codepage, i32 0, i32 2
  %0 = call ptr @memset(ptr %tmp.i, i32 255, i32 6)
  %1 = ptrtoint ptr %uni2char.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uni2char.i, align 4
  %call.i = call i32 %2(i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i32 noundef 6) #9
  %3 = call i32 @llvm.smax.i32(i32 %call.i, i32 1) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp.i) #9
  %add = add i32 %3, %call
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @cifs_from_utf16(ptr noundef nonnull %call9.i, ptr noundef %src, i32 noundef %add, i32 noundef %maxlen, ptr noundef %codepage, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call ptr @kstrndup(ptr noundef %src, i32 noundef %maxlen, i32 noundef 3264) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call9.i, %if.end ], [ %call6, %if.else ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifsConvertToUTF16(ptr noundef %target, ptr noundef %source, i32 noundef %srclen, ptr nocapture noundef readonly %cp, i32 noundef %map_chars) local_unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i16, align 2
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tmp, align 2, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #9
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %u, align 4, !annotation !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %map_chars)
  %cmp = icmp eq i32 %map_chars, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @cifs_strtoUTF16(ptr noundef %target, ptr noundef %source, i32 noundef 4096, ptr noundef %cp)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srclen)
  %cmp2203 = icmp sgt i32 %srclen, 0
  br i1 %cmp2203, label %for.body.lr.ph, label %if.end.do.body121_crit_edge

if.end.do.body121_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add nsw i32 %srclen, -1
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %cp, i32 0, i32 3
  %tobool40.not = icmp eq ptr %call7.i.i, null
  %add.ptr93 = getelementptr i16, ptr %call7.i.i, i32 1
  %add.ptr101 = getelementptr i16, ptr %call7.i.i, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0206 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc.for.body_crit_edge ]
  %j.0204 = phi i32 [ 0, %for.body.lr.ph ], [ %inc120, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %source, i32 %i.0206
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp3 = icmp eq i8 %4, 0
  br i1 %cmp3, label %for.body.do.body121_crit_edge, label %if.end6

for.body.do.body121_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121

if.end6:                                          ; preds = %for.body
  %5 = zext i32 %map_chars to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %map_chars, label %if.end6.if.then30_crit_edge [
    i32 2, label %if.then9
    i32 1, label %if.then13
  ]

if.end6.if.then30_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then9:                                         ; preds = %if.end6
  %6 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %4, label %if.then9.if.then30_crit_edge [
    i8 58, label %if.then9.for.inc.sink.split_crit_edge
    i8 42, label %sw.bb1.i
    i8 63, label %sw.bb2.i
    i8 60, label %sw.bb3.i
    i8 62, label %sw.bb4.i
    i8 124, label %sw.bb5.i
  ]

if.then9.for.inc.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then9.if.then30_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

sw.bb1.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb2.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb3.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb4.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb5.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0206, i32 %sub)
  %cmp14 = icmp eq i32 %i.0206, %sub
  br i1 %cmp14, label %if.then13.if.end22_crit_edge, label %lor.lhs.false

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

lor.lhs.false:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nsw i32 %i.0206, 1
  %arrayidx16 = getelementptr i8, ptr %source, i32 %add
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %8)
  %cmp18 = icmp eq i8 %8, 92
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false, %if.then13.if.end22_crit_edge
  %end_of_string.0.off0 = phi i1 [ true, %if.then13.if.end22_crit_edge ], [ %cmp18, %lor.lhs.false ]
  %9 = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %9)
  %10 = icmp ult i8 %9, 31
  br i1 %10, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %4 to i16
  %add.i = or i16 %conv.i, -4096
  %11 = call i16 @llvm.bswap.i16(i16 %add.i) #9
  br label %for.inc.sink.split

if.end.i:                                         ; preds = %if.end22
  %12 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %4, label %if.end.i.if.then30_crit_edge [
    i8 58, label %if.end.i.for.inc.sink.split_crit_edge
    i8 34, label %sw.bb8.i
    i8 42, label %sw.bb9.i
    i8 63, label %sw.bb10.i
    i8 60, label %sw.bb11.i
    i8 62, label %sw.bb12.i
    i8 124, label %sw.bb13.i
    i8 46, label %sw.bb14.i
    i8 32, label %sw.bb17.i
  ]

if.end.i.for.inc.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end.i.if.then30_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb14.i:                                        ; preds = %if.end.i
  br i1 %end_of_string.0.off0, label %sw.bb14.i.for.inc.sink.split_crit_edge, label %sw.bb14.i.if.then30_crit_edge

sw.bb14.i.if.then30_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

sw.bb14.i.for.inc.sink.split_crit_edge:           ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb17.i:                                        ; preds = %if.end.i
  br i1 %end_of_string.0.off0, label %sw.bb17.i.for.inc.sink.split_crit_edge, label %sw.bb17.i.if.then30_crit_edge

sw.bb17.i.if.then30_crit_edge:                    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

sw.bb17.i.for.inc.sink.split_crit_edge:           ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then30:                                        ; preds = %sw.bb17.i.if.then30_crit_edge, %sw.bb14.i.if.then30_crit_edge, %if.end.i.if.then30_crit_edge, %if.then9.if.then30_crit_edge, %if.end6.if.then30_crit_edge
  %13 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %char2uni, align 4
  %sub31 = sub i32 %srclen, %i.0206
  %call32 = call i32 %14(ptr noundef %arrayidx, i32 noundef %sub31, ptr noundef nonnull %tmp) #9
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tmp, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %if.then30.for.inc.sink.split_crit_edge, label %if.end36

if.then30.for.inc.sink.split_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end36:                                         ; preds = %if.then30
  %18 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cp, align 4
  %call37 = call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(5) @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp ne i32 %call37, 0
  %or.cond = select i1 %tobool38.not, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %if.end36.for.inc.sink.split_crit_edge, label %if.end42

if.end36.for.inc.sink.split_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end42:                                         ; preds = %if.end36
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool45.not = icmp sgt i8 %21, -1
  br i1 %tobool45.not, label %if.end42.for.inc.sink.split_crit_edge, label %if.then46

if.end42.for.inc.sink.split_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then46:                                        ; preds = %if.end42
  %call48 = call i32 @utf8_to_utf32(ptr noundef %arrayidx, i32 noundef 6, ptr noundef nonnull %u) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then46.for.inc.sink.split_crit_edge, label %if.end54

if.then46.for.inc.sink.split_crit_edge:           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end54:                                         ; preds = %if.then46
  %call56 = call i32 @utf8s_to_utf16s(ptr noundef %arrayidx, i32 noundef %call48, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end54.for.inc.sink.split_crit_edge, label %if.end60

if.end54.for.inc.sink.split_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end60:                                         ; preds = %if.end54
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %call7.i.i, align 8
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call48)
  %cmp62 = icmp ult i32 %call48, 4
  br i1 %cmp62, label %if.end60.for.inc.sink.split_crit_edge, label %if.else66

if.end60.for.inc.sink.split_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call48)
  %cmp67 = icmp eq i32 %call48, 4
  %arrayidx72 = getelementptr i16, ptr %target, i32 %j.0204
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %arrayidx72, align 1
  %26 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr93, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %inc = add i32 %j.0204, 1
  %arrayidx79 = getelementptr i16, ptr %target, i32 %inc
  %29 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %arrayidx79, align 1
  br i1 %cmp67, label %if.else66.for.inc_crit_edge, label %do.body87

if.else66.for.inc_crit_edge:                      ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body87:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr101, align 4
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %inc102 = add i32 %j.0204, 2
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %do.body87, %if.end60.for.inc.sink.split_crit_edge, %if.end54.for.inc.sink.split_crit_edge, %if.then46.for.inc.sink.split_crit_edge, %if.end42.for.inc.sink.split_crit_edge, %if.end36.for.inc.sink.split_crit_edge, %if.then30.for.inc.sink.split_crit_edge, %sw.bb17.i.for.inc.sink.split_crit_edge, %sw.bb14.i.for.inc.sink.split_crit_edge, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %if.end.i.for.inc.sink.split_crit_edge, %if.then.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then9.for.inc.sink.split_crit_edge
  %j.0204.sink = phi i32 [ %inc102, %do.body87 ], [ %j.0204, %if.end60.for.inc.sink.split_crit_edge ], [ %j.0204, %sw.bb17.i.for.inc.sink.split_crit_edge ], [ %j.0204, %sw.bb14.i.for.inc.sink.split_crit_edge ], [ %j.0204, %if.end.i.for.inc.sink.split_crit_edge ], [ %j.0204, %sw.bb8.i ], [ %j.0204, %sw.bb9.i ], [ %j.0204, %sw.bb10.i ], [ %j.0204, %sw.bb11.i ], [ %j.0204, %sw.bb12.i ], [ %j.0204, %sw.bb13.i ], [ %j.0204, %if.then.i ], [ %j.0204, %if.then9.for.inc.sink.split_crit_edge ], [ %j.0204, %sw.bb1.i ], [ %j.0204, %sw.bb2.i ], [ %j.0204, %sw.bb3.i ], [ %j.0204, %sw.bb4.i ], [ %j.0204, %sw.bb5.i ], [ %j.0204, %if.end36.for.inc.sink.split_crit_edge ], [ %j.0204, %if.then46.for.inc.sink.split_crit_edge ], [ %j.0204, %if.end42.for.inc.sink.split_crit_edge ], [ %j.0204, %if.end54.for.inc.sink.split_crit_edge ], [ %j.0204, %if.then30.for.inc.sink.split_crit_edge ]
  %.sink = phi i16 [ %32, %do.body87 ], [ %24, %if.end60.for.inc.sink.split_crit_edge ], [ 10480, %sw.bb17.i.for.inc.sink.split_crit_edge ], [ 10736, %sw.bb14.i.for.inc.sink.split_crit_edge ], [ 8944, %if.end.i.for.inc.sink.split_crit_edge ], [ 8432, %sw.bb8.i ], [ 8688, %sw.bb9.i ], [ 9712, %sw.bb10.i ], [ 9200, %sw.bb11.i ], [ 9456, %sw.bb12.i ], [ 10224, %sw.bb13.i ], [ %11, %if.then.i ], [ 15088, %if.then9.for.inc.sink.split_crit_edge ], [ 10992, %sw.bb1.i ], [ 16368, %sw.bb2.i ], [ 15600, %sw.bb3.i ], [ 16112, %sw.bb4.i ], [ 31984, %sw.bb5.i ], [ 16128, %if.end36.for.inc.sink.split_crit_edge ], [ 16128, %if.then46.for.inc.sink.split_crit_edge ], [ 16128, %if.end42.for.inc.sink.split_crit_edge ], [ 16128, %if.end54.for.inc.sink.split_crit_edge ], [ %17, %if.then30.for.inc.sink.split_crit_edge ]
  %charlen.0.pn.ph = phi i32 [ %call48, %do.body87 ], [ %call48, %if.end60.for.inc.sink.split_crit_edge ], [ 1, %sw.bb17.i.for.inc.sink.split_crit_edge ], [ 1, %sw.bb14.i.for.inc.sink.split_crit_edge ], [ 1, %if.end.i.for.inc.sink.split_crit_edge ], [ 1, %sw.bb8.i ], [ 1, %sw.bb9.i ], [ 1, %sw.bb10.i ], [ 1, %sw.bb11.i ], [ 1, %sw.bb12.i ], [ 1, %sw.bb13.i ], [ 1, %if.then.i ], [ 1, %if.then9.for.inc.sink.split_crit_edge ], [ 1, %sw.bb1.i ], [ 1, %sw.bb2.i ], [ 1, %sw.bb3.i ], [ 1, %sw.bb4.i ], [ 1, %sw.bb5.i ], [ 1, %if.end36.for.inc.sink.split_crit_edge ], [ 1, %if.then46.for.inc.sink.split_crit_edge ], [ 1, %if.end42.for.inc.sink.split_crit_edge ], [ 1, %if.end54.for.inc.sink.split_crit_edge ], [ %call32, %if.then30.for.inc.sink.split_crit_edge ]
  %arrayidx65 = getelementptr i16, ptr %target, i32 %j.0204.sink
  %33 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %.sink, ptr %arrayidx65, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else66.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.else66.for.inc_crit_edge ], [ %j.0204.sink, %for.inc.sink.split ]
  %charlen.0.pn = phi i32 [ 4, %if.else66.for.inc_crit_edge ], [ %charlen.0.pn.ph, %for.inc.sink.split ]
  %i.1 = add i32 %charlen.0.pn, %i.0206
  %inc120 = add i32 %j.1, 1
  %cmp2 = icmp slt i32 %i.1, %srclen
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.do.body121_crit_edge

for.inc.do.body121_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body121:                                       ; preds = %for.inc.do.body121_crit_edge, %for.body.do.body121_crit_edge, %if.end.do.body121_crit_edge
  %j.0.lcssa = phi i32 [ 0, %if.end.do.body121_crit_edge ], [ %j.0204, %for.body.do.body121_crit_edge ], [ %inc120, %for.inc.do.body121_crit_edge ]
  %arrayidx123 = getelementptr i16, ptr %target, i32 %j.0.lcssa
  %34 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 0, ptr %arrayidx123, align 1
  call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body121, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %j.0.lcssa, %do.body121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_to_utf32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_strndup_to_utf16(ptr noundef %src, i32 noundef %maxlen, ptr nocapture noundef writeonly %utf16_len, ptr nocapture noundef readonly %cp, i32 noundef %remap) local_unnamed_addr #2 align 64 {
entry:
  %wchar_to.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wchar_to.i) #9
  %0 = ptrtoint ptr %wchar_to.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %wchar_to.i, align 2, !annotation !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %tobool.not10.i = icmp eq i32 %maxlen, 0
  br i1 %tobool.not10.i, label %entry.cifs_local_to_utf16_bytes.exit_crit_edge, label %land.rhs.lr.ph.i

entry.cifs_local_to_utf16_bytes.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_local_to_utf16_bytes.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %cp, i32 0, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.013.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.body.i.land.rhs.i_crit_edge ]
  %from.addr.012.i = phi ptr [ %src, %land.rhs.lr.ph.i ], [ %add.ptr.i, %for.body.i.land.rhs.i_crit_edge ]
  %len.addr.011.i = phi i32 [ %maxlen, %land.rhs.lr.ph.i ], [ %sub.i, %for.body.i.land.rhs.i_crit_edge ]
  %1 = ptrtoint ptr %from.addr.012.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %from.addr.012.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not.i = icmp eq i8 %2, 0
  br i1 %tobool1.not.i, label %land.rhs.i.cifs_local_to_utf16_bytes.exit_crit_edge, label %for.body.i

land.rhs.i.cifs_local_to_utf16_bytes.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_local_to_utf16_bytes.exit

for.body.i:                                       ; preds = %land.rhs.i
  %3 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %char2uni.i, align 4
  %call.i = call i32 %4(ptr noundef %from.addr.012.i, i32 noundef %len.addr.011.i, ptr noundef nonnull %wchar_to.i) #9
  %5 = call i32 @llvm.smax.i32(i32 %call.i, i32 1) #9
  %inc.i = add i32 %i.013.i, 1
  %add.ptr.i = getelementptr i8, ptr %from.addr.012.i, i32 %5
  %sub.i = sub i32 %len.addr.011.i, %5
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %for.body.i.cifs_local_to_utf16_bytes.exit_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.body.i.cifs_local_to_utf16_bytes.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_local_to_utf16_bytes.exit

cifs_local_to_utf16_bytes.exit:                   ; preds = %for.body.i.cifs_local_to_utf16_bytes.exit_crit_edge, %land.rhs.i.cifs_local_to_utf16_bytes.exit_crit_edge, %entry.cifs_local_to_utf16_bytes.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.cifs_local_to_utf16_bytes.exit_crit_edge ], [ %i.013.i, %land.rhs.i.cifs_local_to_utf16_bytes.exit_crit_edge ], [ %inc.i, %for.body.i.cifs_local_to_utf16_bytes.exit_crit_edge ]
  %mul.i = shl i32 %i.0.lcssa.i, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wchar_to.i) #9
  %add = add i32 %mul.i, 2
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %cifs_local_to_utf16_bytes.exit.cleanup_crit_edge, label %if.end

cifs_local_to_utf16_bytes.exit.cleanup_crit_edge: ; preds = %cifs_local_to_utf16_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cifs_local_to_utf16_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 @strlen(ptr noundef %src) #12
  %call3 = call i32 @cifsConvertToUTF16(ptr noundef nonnull %call9.i, ptr noundef %src, i32 noundef %call2, ptr noundef %cp, i32 noundef %remap)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cifs_local_to_utf16_bytes.exit.cleanup_crit_edge
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %cifs_local_to_utf16_bytes.exit.cleanup_crit_edge ]
  %retval.0 = phi ptr [ %call9.i, %if.end ], [ null, %cifs_local_to_utf16_bytes.exit.cleanup_crit_edge ]
  %6 = ptrtoint ptr %utf16_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %utf16_len, align 4
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @CifsUniUpperTable, !1, !"CifsUniUpperTable", i1 false, i1 false}
!1 = !{!"../fs/cifs/cifs_uniupr.h", i32 12, i32 13}
!2 = !{ptr @CifsUniUpperRange, !3, !"CifsUniUpperRange", i1 false, i1 false}
!3 = !{!"../fs/cifs/cifs_uniupr.h", i32 115, i32 27}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/cifs/cifs_unicode.c", i32 257, i32 33}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cifs/cifs_unicode.c", i32 280, i32 4}
!8 = !{ptr @cifs_strtoUTF16._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.cifs_strtoUTF16, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cifs_strtoUTF16._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @cifs_strtoUTF16._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @UniCaseRangeU03a0, !15, !"UniCaseRangeU03a0", i1 false, i1 false}
!15 = !{!"../fs/cifs/cifs_uniupr.h", i32 48, i32 20}
!16 = !{ptr @UniCaseRangeU0430, !17, !"UniCaseRangeU0430", i1 false, i1 false}
!17 = !{!"../fs/cifs/cifs_uniupr.h", i32 56, i32 20}
!18 = !{ptr @UniCaseRangeU0490, !19, !"UniCaseRangeU0490", i1 false, i1 false}
!19 = !{!"../fs/cifs/cifs_uniupr.h", i32 63, i32 20}
!20 = !{ptr @UniCaseRangeU1e00, !21, !"UniCaseRangeU1e00", i1 false, i1 false}
!21 = !{!"../fs/cifs/cifs_uniupr.h", i32 71, i32 20}
!22 = !{ptr @UniCaseRangeUff40, !23, !"UniCaseRangeUff40", i1 false, i1 false}
!23 = !{!"../fs/cifs/cifs_uniupr.h", i32 107, i32 20}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
