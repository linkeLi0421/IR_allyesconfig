; ModuleID = '/llk/IR_all_yes/sound/drivers/vx/vx_hwdep.c_pt.bc'
source_filename = "../sound/drivers/vx/vx_hwdep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_vx_setup_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_vx_setup_firmware\09\09\09\09"
module asm "\09.long\09__crc_snd_vx_setup_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_vx_setup_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_vx_setup_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_snd_vx_setup_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_vx_free_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_vx_free_firmware\09\09\09\09"
module asm "\09.long\09__crc_snd_vx_free_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_vx_free_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_vx_free_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_snd_vx_free_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vx_core = type { ptr, [2 x ptr], i32, i32, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.vx_rmh, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vx_ibl_info, [2 x [2 x i32]], [2 x [4 x i32]], [4 x i8], [4 x i32], [4 x i8], %struct.mutex, [4 x ptr] }
%struct.vx_rmh = type { i16, i16, [16 x i32], [16 x i32], i16 }
%struct.vx_ibl_info = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_vx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_firmware234 = internal constant [36 x i8] c"snd_vx_lib.firmware=vx/bx_1_vxp.b56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware235 = internal constant [36 x i8] c"snd_vx_lib.firmware=vx/bx_1_vp4.b56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware236 = internal constant [36 x i8] c"snd_vx_lib.firmware=vx/x1_1_vx2.xlx\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware237 = internal constant [36 x i8] c"snd_vx_lib.firmware=vx/x1_2_v22.xlx\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware238 = internal constant [36 x i8] c"snd_vx_lib.firmware=vx/x1_1_vxp.xlx\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware239 = internal constant [36 x i8] c"snd_vx_lib.firmware=vx/x1_1_vp4.xlx\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware240 = internal constant [36 x i8] c"snd_vx_lib.firmware=vx/bd56002.boot\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware241 = internal constant [36 x i8] c"snd_vx_lib.firmware=vx/bd563v2.boot\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware242 = internal constant [36 x i8] c"snd_vx_lib.firmware=vx/bd563s3.boot\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware243 = internal constant [35 x i8] c"snd_vx_lib.firmware=vx/l_1_vx2.d56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [35 x i8] c"snd_vx_lib.firmware=vx/l_1_v22.d56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [35 x i8] c"snd_vx_lib.firmware=vx/l_1_vxp.d56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [35 x i8] c"snd_vx_lib.firmware=vx/l_1_vp4.d56\00", section ".modinfo", align 1
@snd_vx_setup_firmware.fw_files = internal constant { [5 x [4 x ptr]], [48 x i8] } { [5 x [4 x ptr]] [[4 x ptr] [ptr null, ptr @.str, ptr @.str.1, ptr @.str.2], [4 x ptr] [ptr null, ptr @.str.3, ptr @.str.4, ptr @.str.5], [4 x ptr] [ptr null, ptr @.str.3, ptr @.str.4, ptr @.str.5], [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.8, ptr @.str.12]], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"x1_1_vx2.xlx\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd56002.boot\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l_1_vx2.d56\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"x1_2_v22.xlx\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd563v2.boot\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l_1_v22.d56\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bx_1_vxp.b56\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"x1_1_vxp.xlx\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd563s3.boot\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l_1_vxp.d56\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bx_1_vp4.b56\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"x1_1_vp4.xlx\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l_1_vp4.d56\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vx/%s\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/drivers/vx/vx_hwdep.c\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013vx: can't load firmware %s\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_snd_vx_setup_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_vx_setup_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_vx_setup_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_vx_setup_firmware to i32), ptr @__kstrtab_snd_vx_setup_firmware, ptr @__kstrtabns_snd_vx_setup_firmware }, section "___ksymtab+snd_vx_setup_firmware", align 4
@__kstrtab_snd_vx_free_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_vx_free_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_vx_free_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_vx_free_firmware to i32), ptr @__kstrtab_snd_vx_free_firmware, ptr @__kstrtabns_snd_vx_free_firmware }, section "___ksymtab+snd_vx_free_firmware", align 4
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"fw_files\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 35, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 37, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 37, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 37, i32 42 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 40, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 40, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 40, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 46, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 46, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 46, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 46, i32 52 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 49, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 49, i32 20 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 49, i32 52 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 60, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [31 x i8] c"../sound/drivers/vx/vx_hwdep.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 62, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_firmware234, ptr @__UNIQUE_ID_firmware235, ptr @__UNIQUE_ID_firmware236, ptr @__UNIQUE_ID_firmware237, ptr @__UNIQUE_ID_firmware238, ptr @__UNIQUE_ID_firmware239, ptr @__UNIQUE_ID_firmware240, ptr @__UNIQUE_ID_firmware241, ptr @__UNIQUE_ID_firmware242, ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_firmware244, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_firmware246, ptr @__ksymtab_snd_vx_free_firmware, ptr @__ksymtab_snd_vx_setup_firmware, ptr @snd_vx_setup_firmware.fw_files, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vx_setup_firmware.fw_files to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_vx_setup_firmware(ptr noundef %chip) #0 align 64 {
entry:
  %path = alloca [32 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 2
  %dev = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 9
  %ops = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.075 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %path) #4
  %0 = call ptr @memset(ptr %path, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #4
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !72
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx1 = getelementptr [5 x [4 x ptr]], ptr @snd_vx_setup_firmware.fw_files, i32 0, i32 %3, i32 %i.075
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %path, ptr noundef nonnull @.str.13, ptr noundef nonnull %5)
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call6 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %path, ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef 62, ptr noundef nonnull @.str.15, ptr noundef nonnull %path) #4
  br label %cleanup.thread

if.end10:                                         ; preds = %if.end
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %load_dsp = getelementptr inbounds %struct.snd_vx_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %load_dsp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %load_dsp, align 4
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  %call11 = call i32 %11(ptr noundef %chip, i32 noundef %i.075, ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %15) #4
  br label %cleanup.thread

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.075)
  %cmp15 = icmp eq i32 %i.075, 1
  br i1 %cmp15, label %if.then16, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip_status, align 4
  %or = or i32 %17, 1
  store i32 %or, ptr %chip_status, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  %arrayidx18 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 32, i32 %i.075
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx18, align 4
  br label %for.inc

cleanup.thread:                                   ; preds = %if.then13, %if.then8
  %retval.1.ph = phi i32 [ %call11, %if.then13 ], [ -2, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %path) #4
  br label %cleanup43

for.inc:                                          ; preds = %if.end17, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %path) #4
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call20 = call i32 @snd_vx_pcm_new(ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %for.end.cleanup43_crit_edge, label %if.end23

for.end.cleanup43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup43

if.end23:                                         ; preds = %for.end
  %call24 = call i32 @snd_vx_mixer_new(ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup43_crit_edge, label %if.end27

if.end23.cleanup43_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup43

if.end27:                                         ; preds = %if.end23
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %add_controls = getelementptr inbounds %struct.snd_vx_ops, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %add_controls to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add_controls, align 4
  %tobool29.not = icmp eq ptr %24, null
  br i1 %tobool29.not, label %if.end27.if.end37_crit_edge, label %if.then30

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then30:                                        ; preds = %if.end27
  %call33 = call i32 %24(ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then30.cleanup43_crit_edge, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then30.cleanup43_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup43

if.end37:                                         ; preds = %if.then30.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %25 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip_status, align 4
  %or41 = or i32 %26, 6
  store i32 %or41, ptr %chip_status, align 4
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  %call42 = call i32 @snd_card_register(ptr noundef %28) #4
  br label %cleanup43

cleanup43:                                        ; preds = %if.end37, %if.then30.cleanup43_crit_edge, %if.end23.cleanup43_crit_edge, %for.end.cleanup43_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %call42, %if.end37 ], [ %call20, %for.end.cleanup43_crit_edge ], [ %call24, %if.end23.cleanup43_crit_edge ], [ %call33, %if.then30.cleanup43_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_pcm_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_mixer_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_vx_free_firmware(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 32, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @release_firmware(ptr noundef %1) #4
  %arrayidx.1 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 32, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @release_firmware(ptr noundef %3) #4
  %arrayidx.2 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 32, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @release_firmware(ptr noundef %5) #4
  %arrayidx.3 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 32, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @release_firmware(ptr noundef %7) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__UNIQUE_ID_firmware234, !1, !"__UNIQUE_ID_firmware234", i1 false, i1 false}
!1 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware235, !3, !"__UNIQUE_ID_firmware235", i1 false, i1 false}
!3 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware236, !5, !"__UNIQUE_ID_firmware236", i1 false, i1 false}
!5 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware237, !7, !"__UNIQUE_ID_firmware237", i1 false, i1 false}
!7 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 22, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware238, !9, !"__UNIQUE_ID_firmware238", i1 false, i1 false}
!9 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 23, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware239, !11, !"__UNIQUE_ID_firmware239", i1 false, i1 false}
!11 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 24, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware240, !13, !"__UNIQUE_ID_firmware240", i1 false, i1 false}
!13 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 25, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware241, !15, !"__UNIQUE_ID_firmware241", i1 false, i1 false}
!15 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 26, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware242, !17, !"__UNIQUE_ID_firmware242", i1 false, i1 false}
!17 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 27, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware243, !19, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!19 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 28, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware244, !21, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!21 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 29, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware245, !23, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!23 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 30, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware246, !25, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!25 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 31, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 37, i32 10}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 37, i32 26}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 37, i32 42}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 40, i32 10}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 40, i32 26}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 40, i32 42}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 46, i32 4}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 46, i32 20}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 46, i32 36}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 46, i32 52}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 49, i32 4}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 49, i32 20}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 49, i32 52}
!52 = !{ptr @snd_vx_setup_firmware.fw_files, !53, !"fw_files", i1 false, i1 false}
!53 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 35, i32 28}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 60, i32 17}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 62, i32 4}
!58 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__ksymtab_snd_vx_setup_firmware, !60, !"__ksymtab_snd_vx_setup_firmware", i1 false, i1 false}
!60 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 111, i32 1}
!61 = !{ptr @__ksymtab_snd_vx_free_firmware, !62, !"__ksymtab_snd_vx_free_firmware", i1 false, i1 false}
!62 = !{!"../sound/drivers/vx/vx_hwdep.c", i32 112, i32 1}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
