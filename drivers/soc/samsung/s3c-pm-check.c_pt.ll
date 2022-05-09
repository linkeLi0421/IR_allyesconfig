; ModuleID = '/llk/IR_all_yes/drivers/soc/samsung/s3c-pm-check.c_pt.bc'
source_filename = "../drivers/soc/samsung/s3c-pm-check.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@crc_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@s3c_pm_check_prepare.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c_pm_check\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s3c_pm_check_prepare\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/soc/samsung/s3c-pm-check.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"s3c_pm_prepare_check: %u checks needed\0A\00", [56 x i8] zeroinitializer }, align 32
@crcs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@s3c_pm_check_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Cannot allocated CRC save area\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c_pm_check_prepare._entry_ptr = internal global ptr @s3c_pm_check_prepare._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@s3c_pm_run_res.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c_pm_run_res\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Found system RAM at %08lx..%08lx\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c_pm_countram.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_pm_countram\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Area %08lx..%08lx, %d blocks\0A\00", [34 x i8] zeroinitializer }, align 32
@s3c_pm_runcheck.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_pm_runcheck\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"skipping %08lx, has stack in\0A\00", [34 x i8] zeroinitializer }, align 32
@s3c_pm_runcheck.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"skipping %08lx, has crc block in\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c_pm_runcheck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Restore CRC error at %08lx (%08x vs %08x)\0A\00", [51 x i8] zeroinitializer }, align 32
@s3c_pm_runcheck._entry_ptr = internal global ptr @s3c_pm_runcheck._entry, section ".printk_index", align 4
@s3c_pm_runcheck.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Restore CRC error at %08lx (%08x vs %08x)\0A\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"crc_size\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 36, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 97, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [5 x i8] c"crcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 37, i32 13 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 101, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 54, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 76, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 181, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 186, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 194, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [38 x i8] c"../drivers/soc/samsung/s3c-pm-check.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 197, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @s3c_pm_check_prepare._entry, ptr @s3c_pm_check_prepare._entry_ptr, ptr @s3c_pm_runcheck._entry, ptr @s3c_pm_runcheck._entry_ptr, ptr @crc_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @crcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pm_check_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pm_runcheck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_pm_check_prepare() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @crc_size, align 4
  tail call fastcc void @s3c_pm_run_res(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @s3c_pm_countram, ptr noundef nonnull @crc_size) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_check_prepare.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_check_prepare, %if.then)) #7
          to label %if.end8.i [label %if.then], !srcloc !45

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @crc_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_check_prepare.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.3, i32 noundef %0) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then, %entry
  %1 = load i32, ptr @crc_size, align 4
  %add = add i32 %1, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #10
  store ptr %call9.i, ptr @crcs, align 4
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %do.end6, label %if.end8.i.if.end9_crit_edge

if.end8.i.if.end9_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end6:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end8.i.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s3c_pm_countram(ptr nocapture noundef readonly %res, ptr noundef returned %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %add.i = add i32 %1, 65536
  %add = sub i32 %add.i, %3
  %div11 = lshr i32 %add, 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_countram.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_countram, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !45

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res, align 4
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_countram.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %7, i32 noundef %div11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mul = shl nuw nsw i32 %div11, 2
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %add4 = add i32 %9, %mul
  store i32 %add4, ptr %val, align 4
  ret ptr %val
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_pm_check_store() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @crcs, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s3c_pm_run_res(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @s3c_pm_makecheck, ptr noundef nonnull %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s3c_pm_makecheck(ptr nocapture noundef readonly %res, ptr noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  %end = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp12 = icmp ugt i32 %3, %1
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi i32 [ %10, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %addr.014 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %val.addr.013 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %val, %entry.for.body_crit_edge ]
  %sub = sub i32 %4, %addr.014
  %5 = tail call i32 @llvm.umin.i32(i32 %sub, i32 65536)
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %addr.014, i32 -2130706432, i32 8454144) #12, !srcloc !46
  %7 = inttoptr i32 %6 to ptr
  %call3 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %7, i32 noundef %5) #13
  %8 = ptrtoint ptr %val.addr.013 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3, ptr %val.addr.013, align 4
  %incdec.ptr = getelementptr i32, ptr %val.addr.013, i32 1
  %add = add i32 %addr.014, 65536
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end, align 4
  %cmp = icmp ugt i32 %10, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.addr.0.lcssa = phi ptr [ %val, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  ret ptr %val.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_pm_check_restore() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @crcs, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s3c_pm_run_res(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @s3c_pm_runcheck, ptr noundef nonnull %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s3c_pm_runcheck(ptr nocapture noundef readonly %res, ptr noundef readonly %val) #0 align 64 {
entry:
  %calc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %calc) #7
  %0 = ptrtoint ptr %calc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %calc, align 4, !annotation !47
  %1 = ptrtoint ptr %calc to i32
  %and = and i32 %1, 4092
  %2 = inttoptr i32 %and to ptr
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  %end = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp92 = icmp ugt i32 %6, %4
  br i1 %cmp92, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %2, i32 4096
  br label %for.body

for.body:                                         ; preds = %skip_check.for.body_crit_edge, %for.body.lr.ph
  %7 = phi i32 [ %6, %for.body.lr.ph ], [ %21, %skip_check.for.body_crit_edge ]
  %val.addr.095 = phi ptr [ %val, %for.body.lr.ph ], [ %incdec.ptr, %skip_check.for.body_crit_edge ]
  %addr.093 = phi i32 [ %4, %for.body.lr.ph ], [ %add, %skip_check.for.body_crit_edge ]
  %sub = sub i32 %7, %addr.093
  %8 = call i32 @llvm.umin.i32(i32 %sub, i32 65536)
  %9 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %addr.093, i32 -2130706432, i32 8454144) #12, !srcloc !46
  %10 = inttoptr i32 %9 to ptr
  %cmp.i = icmp ult ptr %add.ptr.i, %10
  %add.ptr1.i = getelementptr i8, ptr %10, i32 %8
  %cmp2.i = icmp ult ptr %add.ptr1.i, %2
  %tobool.not = or i1 %cmp.i, %cmp2.i
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_runcheck.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_runcheck, %if.then9)) #7
          to label %skip_check [label %if.then9], !srcloc !45

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_runcheck.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.10, i32 noundef %addr.093) #7
  br label %skip_check

if.end11:                                         ; preds = %for.body
  %11 = load ptr, ptr @crcs, align 4
  %12 = load i32, ptr @crc_size, align 4
  %add.ptr.i83 = getelementptr i8, ptr %11, i32 %12
  %cmp.i84 = icmp ult ptr %add.ptr.i83, %10
  %cmp2.i86 = icmp ult ptr %add.ptr1.i, %11
  %tobool13.not = or i1 %cmp2.i86, %cmp.i84
  br i1 %tobool13.not, label %if.end31, label %do.body15

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_runcheck.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_runcheck, %if.then27)) #7
          to label %skip_check [label %if.then27], !srcloc !45

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_runcheck.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.11, i32 noundef %addr.093) #7
  br label %skip_check

if.end31:                                         ; preds = %if.end11
  %call32 = call i32 @crc32_le(i32 noundef -1, ptr noundef %10, i32 noundef %8) #13
  %13 = ptrtoint ptr %calc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call32, ptr %calc, align 4
  %14 = ptrtoint ptr %val.addr.095 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.addr.095, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call32, i32 %15)
  %cmp33.not = icmp eq i32 %call32, %15
  br i1 %cmp33.not, label %if.end31.skip_check_crit_edge, label %do.end37

if.end31.skip_check_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_check

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %addr.093, i32 noundef %call32, i32 noundef %15) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_runcheck.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_runcheck, %if.then52)) #7
          to label %skip_check [label %if.then52], !srcloc !45

if.then52:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %calc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %calc, align 4
  %18 = ptrtoint ptr %val.addr.095 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.addr.095, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_runcheck.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.13, i32 noundef %addr.093, i32 noundef %17, i32 noundef %19) #7
  br label %skip_check

skip_check:                                       ; preds = %if.then52, %do.end37, %if.end31.skip_check_crit_edge, %if.then27, %do.body15, %if.then9, %do.body
  %incdec.ptr = getelementptr i32, ptr %val.addr.095, i32 1
  %add = add i32 %addr.093, 65536
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end, align 4
  %cmp = icmp ugt i32 %21, %add
  br i1 %cmp, label %skip_check.for.body_crit_edge, label %skip_check.for.end_crit_edge

skip_check.for.end_crit_edge:                     ; preds = %skip_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

skip_check.for.body_crit_edge:                    ; preds = %skip_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %skip_check.for.end_crit_edge, %entry.for.end_crit_edge
  %val.addr.0.lcssa = phi ptr [ %val, %entry.for.end_crit_edge ], [ %incdec.ptr, %skip_check.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calc) #7
  ret ptr %val.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_pm_check_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @crcs, align 4
  tail call void @kfree(ptr noundef %0) #7
  store ptr null, ptr @crcs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c_pm_run_res(ptr noundef %ptr, ptr nocapture noundef readonly %fn, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not21 = icmp eq ptr %ptr, null
  br i1 %cmp.not21, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %entry.while.body_crit_edge
  %ptr.addr.023 = phi ptr [ %9, %if.end10.while.body_crit_edge ], [ %ptr, %entry.while.body_crit_edge ]
  %arg.addr.022 = phi ptr [ %arg.addr.1, %if.end10.while.body_crit_edge ], [ %arg, %entry.while.body_crit_edge ]
  %child = getelementptr inbounds %struct.resource, ptr %ptr.addr.023, i32 0, i32 7
  %0 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s3c_pm_run_res(ptr noundef nonnull %1, ptr noundef %fn, ptr noundef %arg.addr.022)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %flags = getelementptr inbounds %struct.resource, ptr %ptr.addr.023, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16777728
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777728, i32 %and)
  %cmp3 = icmp eq i32 %and, 16777728
  br i1 %cmp3, label %do.body, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_run_res.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_run_res, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !45

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ptr.addr.023 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr.addr.023, align 4
  %end = getelementptr inbounds %struct.resource, ptr %ptr.addr.023, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_run_res.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call9 = tail call ptr %fn(ptr noundef nonnull %ptr.addr.023, ptr noundef %arg.addr.022) #7, !callees !48
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end.if.end10_crit_edge
  %arg.addr.1 = phi ptr [ %call9, %do.end ], [ %arg.addr.022, %if.end.if.end10_crit_edge ]
  %sibling = getelementptr inbounds %struct.resource, ptr %ptr.addr.023, i32 0, i32 6
  %8 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sibling, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 97, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @s3c_pm_check_prepare.__UNIQUE_ID_ddebug290, !1, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 101, i32 3}
!8 = !{ptr @s3c_pm_check_prepare._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @s3c_pm_check_prepare._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @crc_size, !11, !"crc_size", i1 false, i1 false}
!11 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 36, i32 12}
!12 = !{ptr @crcs, !13, !"crcs", i1 false, i1 false}
!13 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 37, i32 13}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 54, i32 4}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @s3c_pm_run_res.__UNIQUE_ID_ddebug288, !15, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 76, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @s3c_pm_countram.__UNIQUE_ID_ddebug289, !19, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 181, i32 4}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @s3c_pm_runcheck.__UNIQUE_ID_ddebug291, !23, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 186, i32 4}
!28 = !{ptr @s3c_pm_runcheck.__UNIQUE_ID_ddebug292, !27, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 194, i32 4}
!31 = !{ptr @s3c_pm_runcheck._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @s3c_pm_runcheck._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/samsung/s3c-pm-check.c", i32 197, i32 4}
!35 = !{ptr @s3c_pm_runcheck.__UNIQUE_ID_ddebug293, !34, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148695037, i64 2148695042, i64 2148695055, i64 2148695099, i64 2148695133, i64 2148695154}
!46 = !{i64 2148969763, i64 2148969786, i64 2148969818, i64 2148969850, i64 2148969888, i64 2148969918}
!47 = !{!"auto-init"}
!48 = !{ptr @s3c_pm_countram, ptr @s3c_pm_makecheck, ptr @s3c_pm_runcheck}
