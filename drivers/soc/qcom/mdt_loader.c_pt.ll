; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/mdt_loader.c_pt.bc'
source_filename = "../drivers/soc/qcom/mdt_loader.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qcom_mdt_get_size\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_mdt_get_size\09\09\09\09"
module asm "\09.long\09__crc_qcom_mdt_get_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_mdt_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_mdt_get_size\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_mdt_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_mdt_read_metadata\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_mdt_read_metadata\09\09\09\09"
module asm "\09.long\09__crc_qcom_mdt_read_metadata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_mdt_read_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_mdt_read_metadata\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_mdt_read_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_mdt_load\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_mdt_load\09\09\09\09"
module asm "\09.long\09__crc_qcom_mdt_load\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_mdt_load:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_mdt_load\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_mdt_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_mdt_load_no_init\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_mdt_load_no_init\09\09\09\09"
module asm "\09.long\09__crc_qcom_mdt_load_no_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_mdt_load_no_init:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_mdt_load_no_init\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_mdt_load_no_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_qcom_mdt_get_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_mdt_get_size = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_mdt_get_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_mdt_get_size to i32), ptr @__kstrtab_qcom_mdt_get_size, ptr @__kstrtabns_qcom_mdt_get_size }, section "___ksymtab_gpl+qcom_mdt_get_size", align 4
@__kstrtab_qcom_mdt_read_metadata = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_mdt_read_metadata = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_mdt_read_metadata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_mdt_read_metadata to i32), ptr @__kstrtab_qcom_mdt_read_metadata, ptr @__kstrtabns_qcom_mdt_read_metadata }, section "___ksymtab_gpl+qcom_mdt_read_metadata", align 4
@__kstrtab_qcom_mdt_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_mdt_load = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_mdt_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_mdt_load to i32), ptr @__kstrtab_qcom_mdt_load, ptr @__kstrtabns_qcom_mdt_load }, section "___ksymtab_gpl+qcom_mdt_load", align 4
@__kstrtab_qcom_mdt_load_no_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_mdt_load_no_init = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_mdt_load_no_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_mdt_load_no_init to i32), ptr @__kstrtab_qcom_mdt_load_no_init, ptr @__kstrtabns_qcom_mdt_load_no_init }, section "___ksymtab_gpl+qcom_mdt_load_no_init", align 4
@__UNIQUE_ID_description183 = internal constant [63 x i8] c"mdt_loader.description=Firmware parser for Qualcomm MDT format\00", section ".modinfo", align 1
@__UNIQUE_ID_file184 = internal constant [44 x i8] c"mdt_loader.file=drivers/soc/qcom/mdt_loader\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [26 x i8] c"mdt_loader.license=GPL v2\00", section ".modinfo", align 1
@__qcom_mdt_load._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error %d reading firmware %s metadata\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__qcom_mdt_load\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/soc/qcom/mdt_loader.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__qcom_mdt_load._entry_ptr = internal global ptr @__qcom_mdt_load._entry, section ".printk_index", align 4
@__qcom_mdt_load._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 180, ptr @.str.3, ptr @.str.4 }, align 1
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error %d initializing firmware %s\0A\00", [61 x i8] zeroinitializer }, align 32
@__qcom_mdt_load._entry_ptr.7 = internal global ptr @__qcom_mdt_load._entry.5, section ".printk_index", align 4
@__qcom_mdt_load._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 208, ptr @.str.3, ptr @.str.4 }, align 1
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %d setting up firmware %s\0A\00", [63 x i8] zeroinitializer }, align 32
@__qcom_mdt_load._entry_ptr.10 = internal global ptr @__qcom_mdt_load._entry.8, section ".printk_index", align 4
@__qcom_mdt_load._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, align 1
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"segment outside memory range\0A\00", [34 x i8] zeroinitializer }, align 32
@__qcom_mdt_load._entry_ptr.13 = internal global ptr @__qcom_mdt_load._entry.11, section ".printk_index", align 4
@__qcom_mdt_load._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 242, ptr @.str.3, ptr @.str.4 }, align 1
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"refusing to load segment %d with p_filesz > p_memsz\0A\00", [43 x i8] zeroinitializer }, align 32
@__qcom_mdt_load._entry_ptr.16 = internal global ptr @__qcom_mdt_load._entry.14, section ".printk_index", align 4
@__qcom_mdt_load._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 253, ptr @.str.3, ptr @.str.4 }, align 1
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"file %s segment %d would be truncated\0A\00", [57 x i8] zeroinitializer }, align 32
@__qcom_mdt_load._entry_ptr.19 = internal global ptr @__qcom_mdt_load._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"b%02d\00", [26 x i8] zeroinitializer }, align 32
@__qcom_mdt_load._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 266, ptr @.str.3, ptr @.str.4 }, align 1
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error %d loading %s\0A\00", [43 x i8] zeroinitializer }, align 32
@__qcom_mdt_load._entry_ptr.23 = internal global ptr @__qcom_mdt_load._entry.21, section ".printk_index", align 4
@__qcom_mdt_load._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, align 1
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to load segment %d from truncated file %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__qcom_mdt_load._entry_ptr.26 = internal global ptr @__qcom_mdt_load._entry.24, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 169, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 179, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 207, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 234, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 240, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 252, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 261, i32 39 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 265, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [33 x i8] c"../drivers/soc/qcom/mdt_loader.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 271, i32 5 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_description183, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__ksymtab_qcom_mdt_get_size, ptr @__ksymtab_qcom_mdt_load, ptr @__ksymtab_qcom_mdt_load_no_init, ptr @__ksymtab_qcom_mdt_read_metadata, ptr @__qcom_mdt_load._entry, ptr @__qcom_mdt_load._entry.11, ptr @__qcom_mdt_load._entry.14, ptr @__qcom_mdt_load._entry.17, ptr @__qcom_mdt_load._entry.21, ptr @__qcom_mdt_load._entry.24, ptr @__qcom_mdt_load._entry.5, ptr @__qcom_mdt_load._entry.8, ptr @__qcom_mdt_load._entry_ptr, ptr @__qcom_mdt_load._entry_ptr.10, ptr @__qcom_mdt_load._entry_ptr.13, ptr @__qcom_mdt_load._entry_ptr.16, ptr @__qcom_mdt_load._entry_ptr.19, ptr @__qcom_mdt_load._entry_ptr.23, ptr @__qcom_mdt_load._entry_ptr.26, ptr @__qcom_mdt_load._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_mdt_get_size(ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr %struct.elf32_hdr, ptr %1, i32 1
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e_phnum, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp33.not = icmp eq i16 %3, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %max_addr.035 = phi i32 [ %max_addr.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %min_addr.034 = phi i32 [ %min_addr.2, %for.inc.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.elf32_phdr, ptr %add.ptr, i32 %i.036
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %p_flags.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 6
  %6 = ptrtoint ptr %p_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_flags.i, align 4
  %and.i = and i32 %7, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 33554432
  br i1 %cmp1.i, label %if.end.i.for.inc_crit_edge, label %mdt_phdr_valid.exit

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

mdt_phdr_valid.exit:                              ; preds = %if.end.i
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 5
  %8 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p_memsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.not = icmp eq i32 %9, 0
  br i1 %tobool.not.i.not, label %mdt_phdr_valid.exit.for.inc_crit_edge, label %if.end

mdt_phdr_valid.exit.for.inc_crit_edge:            ; preds = %mdt_phdr_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %mdt_phdr_valid.exit
  %p_paddr = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 3
  %10 = ptrtoint ptr %p_paddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_paddr, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %min_addr.034)
  %13 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p_memsz.i, align 4
  %add = add i32 %14, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %max_addr.035)
  %cmp8 = icmp ugt i32 %add, %max_addr.035
  br i1 %cmp8, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add14 = add i32 %add, 4095
  %and = and i32 %add14, -4096
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge, %mdt_phdr_valid.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %min_addr.2 = phi i32 [ %12, %if.then10 ], [ %12, %if.end.for.inc_crit_edge ], [ %min_addr.034, %mdt_phdr_valid.exit.for.inc_crit_edge ], [ %min_addr.034, %for.body.for.inc_crit_edge ], [ %min_addr.034, %if.end.i.for.inc_crit_edge ]
  %max_addr.1 = phi i32 [ %and, %if.then10 ], [ %max_addr.035, %if.end.for.inc_crit_edge ], [ %max_addr.035, %mdt_phdr_valid.exit.for.inc_crit_edge ], [ %max_addr.035, %for.body.for.inc_crit_edge ], [ %max_addr.035, %if.end.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %min_addr.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %min_addr.2, %for.inc.for.end_crit_edge ]
  %max_addr.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %max_addr.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_addr.0.lcssa, i32 %min_addr.0.lcssa)
  %cmp16 = icmp ugt i32 %max_addr.0.lcssa, %min_addr.0.lcssa
  %sub = sub i32 %max_addr.0.lcssa, %min_addr.0.lcssa
  %spec.select31 = select i1 %cmp16, i32 %sub, i32 -22
  ret i32 %spec.select31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qcom_mdt_read_metadata(ptr nocapture noundef readonly %fw, ptr nocapture noundef writeonly %data_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp = icmp ult i16 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.elf32_hdr, ptr %1, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %p_flags = getelementptr %struct.elf32_hdr, ptr %1, i32 2, i32 0, i32 4
  %6 = ptrtoint ptr %p_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_flags, align 4
  %and = and i32 %7, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and)
  %cmp9.not = icmp eq i32 %and, 33554432
  br i1 %cmp9.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %p_filesz = getelementptr %struct.elf32_hdr, ptr %1, i32 1, i32 1
  %8 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p_filesz, align 4
  %p_filesz16 = getelementptr %struct.elf32_hdr, ptr %1, i32 1, i32 12
  %10 = ptrtoint ptr %p_filesz16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_filesz16, align 4
  %add = add i32 %11, %9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp22 = icmp eq i32 %add, %13
  %p_offset = getelementptr %struct.elf32_hdr, ptr %1, i32 1, i32 7
  %hash_offset.0.in = select i1 %cmp22, ptr %p_filesz, ptr %p_offset
  %14 = ptrtoint ptr %hash_offset.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %hash_offset.0 = load i32, ptr %hash_offset.0.in, align 4
  %15 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data1, align 4
  %17 = call ptr @memcpy(ptr %call9.i, ptr %16, i32 %9)
  %add.ptr30 = getelementptr i8, ptr %call9.i, i32 %9
  %add.ptr32 = getelementptr i8, ptr %16, i32 %hash_offset.0
  %18 = call ptr @memcpy(ptr %add.ptr30, ptr %add.ptr32, i32 %11)
  %19 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %data_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i, %if.end20 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_mdt_load(ptr noundef %dev, ptr noundef %fw, ptr noundef %firmware, i32 noundef %pas_id, ptr noundef %mem_region, i32 noundef %mem_phys, i32 noundef %mem_size, ptr noundef %reloc_base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__qcom_mdt_load(ptr noundef %dev, ptr noundef %fw, ptr noundef %firmware, i32 noundef %pas_id, ptr noundef %mem_region, i32 noundef %mem_phys, i32 noundef %mem_size, ptr noundef %reloc_base, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qcom_mdt_load(ptr noundef %dev, ptr noundef readonly %fw, ptr noundef %firmware, i32 noundef %pas_id, ptr noundef %mem_region, i32 noundef %mem_phys, i32 noundef %mem_size, ptr noundef writeonly %reloc_base, i1 noundef zeroext %pas_init) unnamed_addr #2 align 64 {
entry:
  %seg_fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seg_fw) #9
  %0 = ptrtoint ptr %seg_fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %seg_fw, align 4, !annotation !60
  %tobool.not = icmp eq ptr %fw, null
  %tobool1.not = icmp eq ptr %mem_region, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem_phys)
  %tobool3.not = icmp eq i32 %mem_phys, 0
  %or.cond270 = or i1 %or.cond, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem_size)
  %tobool5.not = icmp eq i32 %mem_size, 0
  %or.cond271 = or i1 %or.cond270, %tobool5.not
  br i1 %or.cond271, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr %struct.elf32_hdr, ptr %2, i32 1
  %call = tail call i32 @strlen(ptr noundef %firmware) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp ult i32 %call, 5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call noalias ptr @kstrdup(ptr noundef %firmware, i32 noundef 3264) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  br i1 %pas_init, label %if.then13, label %if.end11.if.end26_crit_edge

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then13:                                        ; preds = %if.end11
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %e_phnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp.i = icmp ult i16 %6, 2
  br i1 %cmp.i, label %if.then13.if.then16_crit_edge, label %if.end.i

if.then13.if.then16_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end.i:                                         ; preds = %if.then13
  %add.ptr.i = getelementptr %struct.elf32_hdr, ptr %4, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp3.i = icmp eq i32 %8, 1
  br i1 %cmp3.i, label %if.end.i.if.then16_crit_edge, label %if.end7.i

if.end.i.if.then16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end7.i:                                        ; preds = %if.end.i
  %p_flags.i = getelementptr %struct.elf32_hdr, ptr %4, i32 2, i32 0, i32 4
  %9 = ptrtoint ptr %p_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_flags.i, align 4
  %and.i = and i32 %10, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %and.i, 33554432
  br i1 %cmp9.not.i, label %if.end13.i, label %if.end7.i.if.then16_crit_edge

if.end7.i.if.then16_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end13.i:                                       ; preds = %if.end7.i
  %p_filesz.i = getelementptr %struct.elf32_hdr, ptr %4, i32 1, i32 1
  %11 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p_filesz.i, align 4
  %p_filesz16.i = getelementptr %struct.elf32_hdr, ptr %4, i32 1, i32 12
  %13 = ptrtoint ptr %p_filesz16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p_filesz16.i, align 4
  %add.i = add i32 %14, %12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end13.i.if.then16_crit_edge, label %qcom_mdt_read_metadata.exit

if.end13.i.if.then16_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

qcom_mdt_read_metadata.exit:                      ; preds = %if.end13.i
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp22.i = icmp eq i32 %add.i, %16
  %p_offset.i = getelementptr %struct.elf32_hdr, ptr %4, i32 1, i32 7
  %hash_offset.0.in.i = select i1 %cmp22.i, ptr %p_filesz.i, ptr %p_offset.i
  %17 = ptrtoint ptr %hash_offset.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %hash_offset.0.i = load i32, ptr %hash_offset.0.in.i, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = call ptr @memcpy(ptr %call9.i.i, ptr %19, i32 %12)
  %add.ptr30.i = getelementptr i8, ptr %call9.i.i, i32 %12
  %add.ptr32.i = getelementptr i8, ptr %19, i32 %hash_offset.0.i
  %21 = call ptr @memcpy(ptr %add.ptr30.i, ptr %add.ptr32.i, i32 %14)
  %cmp.i272 = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272, label %qcom_mdt_read_metadata.exit.if.then16_crit_edge, label %if.end18

qcom_mdt_read_metadata.exit.if.then16_crit_edge:  ; preds = %qcom_mdt_read_metadata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %qcom_mdt_read_metadata.exit.if.then16_crit_edge, %if.end13.i.if.then16_crit_edge, %if.end7.i.if.then16_crit_edge, %if.end.i.if.then16_crit_edge, %if.then13.if.then16_crit_edge
  %retval.0.i291 = phi ptr [ %call9.i.i, %qcom_mdt_read_metadata.exit.if.then16_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end13.i.if.then16_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.i.if.then16_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.if.then16_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then13.if.then16_crit_edge ]
  %22 = ptrtoint ptr %retval.0.i291 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %22, ptr noundef nonnull %call8) #14
  br label %out

if.end18:                                         ; preds = %qcom_mdt_read_metadata.exit
  %call19 = tail call i32 @qcom_scm_pas_init_image(i32 noundef %pas_id, ptr noundef nonnull %call9.i.i, i32 noundef %add.i) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %do.end24

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call19, ptr noundef nonnull %call8) #14
  br label %out

if.end26:                                         ; preds = %if.end18.if.end26_crit_edge, %if.end11.if.end26_crit_edge
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %2, i32 0, i32 10
  %23 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %e_phnum, align 4
  %conv = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp27300.not = icmp eq i16 %24, 0
  br i1 %cmp27300.not, label %if.end26.for.end155_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.end155_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end155

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %i.0304 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %relocate.0.off0303 = phi i1 [ %relocate.2.off0, %for.inc.for.body_crit_edge ], [ false, %if.end26.for.body_crit_edge ]
  %max_addr.0302 = phi i32 [ %max_addr.1, %for.inc.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %min_addr.0301 = phi i32 [ %min_addr.2, %for.inc.for.body_crit_edge ], [ -1, %if.end26.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.elf32_phdr, ptr %add.ptr, i32 %i.0304
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 1
  br i1 %cmp.not.i, label %if.end.i275, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i275:                                      ; preds = %for.body
  %p_flags.i273 = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 6
  %27 = ptrtoint ptr %p_flags.i273 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p_flags.i273, align 4
  %and.i274 = and i32 %28, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i274)
  %cmp1.i = icmp eq i32 %and.i274, 33554432
  br i1 %cmp1.i, label %if.end.i275.for.inc_crit_edge, label %mdt_phdr_valid.exit

if.end.i275.for.inc_crit_edge:                    ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

mdt_phdr_valid.exit:                              ; preds = %if.end.i275
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 5
  %29 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p_memsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i276.not = icmp eq i32 %30, 0
  br i1 %tobool.not.i276.not, label %mdt_phdr_valid.exit.for.inc_crit_edge, label %if.end31

mdt_phdr_valid.exit.for.inc_crit_edge:            ; preds = %mdt_phdr_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end31:                                         ; preds = %mdt_phdr_valid.exit
  %31 = ptrtoint ptr %p_flags.i273 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p_flags.i273, align 4
  %and = and i32 %32, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp ne i32 %and, 0
  %spec.select = select i1 %tobool32.not, i1 true, i1 %relocate.0.off0303
  %p_paddr = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 3
  %33 = ptrtoint ptr %p_paddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p_paddr, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %min_addr.0301)
  %36 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p_memsz.i, align 4
  %add = add i32 %37, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %max_addr.0302)
  %cmp41 = icmp ugt i32 %add, %max_addr.0302
  br i1 %cmp41, label %if.then43, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then43:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %add47 = add i32 %add, 4095
  %and48 = and i32 %add47, -4096
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %if.end31.for.inc_crit_edge, %mdt_phdr_valid.exit.for.inc_crit_edge, %if.end.i275.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %min_addr.2 = phi i32 [ %35, %if.then43 ], [ %35, %if.end31.for.inc_crit_edge ], [ %min_addr.0301, %mdt_phdr_valid.exit.for.inc_crit_edge ], [ %min_addr.0301, %for.body.for.inc_crit_edge ], [ %min_addr.0301, %if.end.i275.for.inc_crit_edge ]
  %max_addr.1 = phi i32 [ %and48, %if.then43 ], [ %max_addr.0302, %if.end31.for.inc_crit_edge ], [ %max_addr.0302, %mdt_phdr_valid.exit.for.inc_crit_edge ], [ %max_addr.0302, %for.body.for.inc_crit_edge ], [ %max_addr.0302, %if.end.i275.for.inc_crit_edge ]
  %relocate.2.off0 = phi i1 [ %spec.select, %if.then43 ], [ %spec.select, %if.end31.for.inc_crit_edge ], [ %relocate.0.off0303, %mdt_phdr_valid.exit.for.inc_crit_edge ], [ %relocate.0.off0303, %for.body.for.inc_crit_edge ], [ %relocate.0.off0303, %if.end.i275.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0304, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %38 = and i1 %relocate.2.off0, %pas_init
  %mem_phys.mux = select i1 %relocate.2.off0, i32 %min_addr.2, i32 %mem_phys
  br i1 %38, label %if.then53, label %for.end.if.end62_crit_edge

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then53:                                        ; preds = %for.end
  %sub = sub i32 %max_addr.1, %min_addr.2
  %call54 = tail call i32 @qcom_scm_pas_mem_setup(i32 noundef %pas_id, i32 noundef %mem_phys, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then53.if.end62_crit_edge, label %do.end59

if.then53.if.end62_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

do.end59:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call54, ptr noundef nonnull %call8) #14
  br label %out

if.end62:                                         ; preds = %if.then53.if.end62_crit_edge, %for.end.if.end62_crit_edge
  %mem_reloc.0.ph = phi i32 [ %mem_phys.mux, %for.end.if.end62_crit_edge ], [ %min_addr.2, %if.then53.if.end62_crit_edge ]
  %39 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %39)
  %.pr = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp66308.not = icmp eq i16 %.pr, 0
  br i1 %cmp66308.not, label %if.end62.for.end155_crit_edge, label %for.body68.lr.ph

if.end62.for.end155_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end155

for.body68.lr.ph:                                 ; preds = %if.end62
  %add.ptr120 = getelementptr i8, ptr %call8, i32 %call
  %add.ptr121 = getelementptr i8, ptr %add.ptr120, i32 -3
  br label %for.body68

for.body68:                                       ; preds = %for.inc153.for.body68_crit_edge, %for.body68.lr.ph
  %i.1309 = phi i32 [ 0, %for.body68.lr.ph ], [ %inc154, %for.inc153.for.body68_crit_edge ]
  %arrayidx69 = getelementptr %struct.elf32_phdr, ptr %add.ptr, i32 %i.1309
  %40 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.not.i278 = icmp eq i32 %41, 1
  br i1 %cmp.not.i278, label %if.end.i282, label %for.body68.for.inc153_crit_edge

for.body68.for.inc153_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc153

if.end.i282:                                      ; preds = %for.body68
  %p_flags.i279 = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx69, i32 0, i32 6
  %42 = ptrtoint ptr %p_flags.i279 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %p_flags.i279, align 4
  %and.i280 = and i32 %43, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i280)
  %cmp1.i281 = icmp eq i32 %and.i280, 33554432
  br i1 %cmp1.i281, label %if.end.i282.for.inc153_crit_edge, label %mdt_phdr_valid.exit287

if.end.i282.for.inc153_crit_edge:                 ; preds = %if.end.i282
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc153

mdt_phdr_valid.exit287:                           ; preds = %if.end.i282
  %p_memsz.i283 = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx69, i32 0, i32 5
  %44 = ptrtoint ptr %p_memsz.i283 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %p_memsz.i283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i284.not = icmp eq i32 %45, 0
  br i1 %tobool.not.i284.not, label %mdt_phdr_valid.exit287.for.inc153_crit_edge, label %if.end72

mdt_phdr_valid.exit287.for.inc153_crit_edge:      ; preds = %mdt_phdr_valid.exit287
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc153

if.end72:                                         ; preds = %mdt_phdr_valid.exit287
  %p_paddr73 = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx69, i32 0, i32 3
  %46 = ptrtoint ptr %p_paddr73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %p_paddr73, align 4
  %sub74 = sub i32 %47, %mem_reloc.0.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub74)
  %cmp75 = icmp slt i32 %sub74, 0
  br i1 %cmp75, label %if.end72.do.end85_crit_edge, label %lor.lhs.false77

if.end72.do.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

lor.lhs.false77:                                  ; preds = %if.end72
  %48 = ptrtoint ptr %p_memsz.i283 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p_memsz.i283, align 4
  %add79 = add i32 %49, %sub74
  call void @__sanitizer_cov_trace_cmp4(i32 %add79, i32 %mem_size)
  %cmp80 = icmp ugt i32 %add79, %mem_size
  br i1 %cmp80, label %lor.lhs.false77.do.end85_crit_edge, label %if.end86

lor.lhs.false77.do.end85_crit_edge:               ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

do.end85:                                         ; preds = %lor.lhs.false77.do.end85_crit_edge, %if.end72.do.end85_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  br label %for.end155

if.end86:                                         ; preds = %lor.lhs.false77
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx69, i32 0, i32 4
  %50 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %p_filesz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp88 = icmp ugt i32 %51, %49
  br i1 %cmp88, label %do.end93, label %if.end94

do.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %i.1309) #14
  br label %for.end155

if.end94:                                         ; preds = %if.end86
  %add.ptr95 = getelementptr i8, ptr %mem_region, i32 %sub74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool97.not = icmp eq i32 %51, 0
  br i1 %tobool97.not, label %if.end94.if.end141_crit_edge, label %land.lhs.true

if.end94.if.end141_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

land.lhs.true:                                    ; preds = %if.end94
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx69, i32 0, i32 1
  %52 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %p_offset, align 4
  %54 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp98 = icmp ult i32 %53, %55
  br i1 %cmp98, label %if.then100, label %if.then119

if.then100:                                       ; preds = %land.lhs.true
  %add103 = add i32 %53, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %add103, i32 %55)
  %cmp105 = icmp ugt i32 %add103, %55
  br i1 %cmp105, label %do.end110, label %if.end111

do.end110:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull %call8, i32 noundef %i.1309) #14
  br label %for.end155

if.end111:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %add.ptr114 = getelementptr i8, ptr %57, i32 %53
  %58 = call ptr @memcpy(ptr %add.ptr95, ptr %add.ptr114, i32 %51)
  br label %if.end141

if.then119:                                       ; preds = %land.lhs.true
  %call122 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr121, ptr noundef nonnull @.str.20, i32 noundef %i.1309)
  %59 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %p_filesz, align 4
  %call124 = call i32 @request_firmware_into_buf(ptr noundef nonnull %seg_fw, ptr noundef nonnull %call8, ptr noundef %dev, ptr noundef %add.ptr95, i32 noundef %60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end130, label %do.end129

do.end129:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call124, ptr noundef nonnull %call8) #14
  br label %for.end155

if.end130:                                        ; preds = %if.then119
  %61 = ptrtoint ptr %seg_fw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %seg_fw, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %p_filesz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp133.not = icmp eq i32 %64, %66
  br i1 %cmp133.not, label %if.end139, label %do.end138

do.end138:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %i.1309, ptr noundef nonnull %call8) #14
  %67 = ptrtoint ptr %seg_fw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %seg_fw, align 4
  call void @release_firmware(ptr noundef %68) #9
  br label %for.end155

if.end139:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  call void @release_firmware(ptr noundef %62) #9
  br label %if.end141

if.end141:                                        ; preds = %if.end139, %if.end111, %if.end94.if.end141_crit_edge
  %69 = ptrtoint ptr %p_memsz.i283 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %p_memsz.i283, align 4
  %71 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %p_filesz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp144 = icmp ugt i32 %70, %72
  br i1 %cmp144, label %if.then146, label %if.end141.for.inc153_crit_edge

if.end141.for.inc153_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc153

if.then146:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr148 = getelementptr i8, ptr %add.ptr95, i32 %72
  %sub151 = sub i32 %70, %72
  %73 = call ptr @memset(ptr %add.ptr148, i32 0, i32 %sub151)
  br label %for.inc153

for.inc153:                                       ; preds = %if.then146, %if.end141.for.inc153_crit_edge, %mdt_phdr_valid.exit287.for.inc153_crit_edge, %if.end.i282.for.inc153_crit_edge, %for.body68.for.inc153_crit_edge
  %inc154 = add nuw nsw i32 %i.1309, 1
  %74 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %e_phnum, align 4
  %conv65 = zext i16 %75 to i32
  %cmp66 = icmp ult i32 %inc154, %conv65
  br i1 %cmp66, label %for.inc153.for.body68_crit_edge, label %for.inc153.for.end155_crit_edge

for.inc153.for.end155_crit_edge:                  ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end155

for.inc153.for.body68_crit_edge:                  ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68

for.end155:                                       ; preds = %for.inc153.for.end155_crit_edge, %do.end138, %do.end129, %do.end110, %do.end93, %do.end85, %if.end62.for.end155_crit_edge, %if.end26.for.end155_crit_edge
  %mem_reloc.0327 = phi i32 [ %mem_reloc.0.ph, %do.end85 ], [ %mem_reloc.0.ph, %do.end93 ], [ %mem_reloc.0.ph, %do.end110 ], [ %mem_reloc.0.ph, %do.end129 ], [ %mem_reloc.0.ph, %do.end138 ], [ %mem_reloc.0.ph, %if.end62.for.end155_crit_edge ], [ %mem_phys, %if.end26.for.end155_crit_edge ], [ %mem_reloc.0.ph, %for.inc153.for.end155_crit_edge ]
  %ret.6 = phi i32 [ -22, %do.end85 ], [ -22, %do.end93 ], [ -22, %do.end110 ], [ %call124, %do.end129 ], [ -22, %do.end138 ], [ 0, %if.end62.for.end155_crit_edge ], [ 0, %if.end26.for.end155_crit_edge ], [ 0, %for.inc153.for.end155_crit_edge ]
  %tobool156.not = icmp eq ptr %reloc_base, null
  br i1 %tobool156.not, label %for.end155.out_crit_edge, label %if.then157

for.end155.out_crit_edge:                         ; preds = %for.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then157:                                       ; preds = %for.end155
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %reloc_base to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mem_reloc.0327, ptr %reloc_base, align 4
  br label %out

out:                                              ; preds = %if.then157, %for.end155.out_crit_edge, %do.end59, %do.end24, %if.then16
  %ret.7 = phi i32 [ %22, %if.then16 ], [ %call19, %do.end24 ], [ %call54, %do.end59 ], [ %ret.6, %if.then157 ], [ %ret.6, %for.end155.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.7, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seg_fw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_mdt_load_no_init(ptr noundef %dev, ptr noundef %fw, ptr noundef %firmware, i32 noundef %pas_id, ptr noundef %mem_region, i32 noundef %mem_phys, i32 noundef %mem_size, ptr noundef %reloc_base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__qcom_mdt_load(ptr noundef %dev, ptr noundef %fw, ptr noundef %firmware, i32 noundef %pas_id, ptr noundef %mem_region, i32 noundef %mem_phys, i32 noundef %mem_size, ptr noundef %reloc_base, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_init_image(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_mem_setup(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_into_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__ksymtab_qcom_mdt_get_size, !1, !"__ksymtab_qcom_mdt_get_size", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 67, i32 1}
!2 = !{ptr @__ksymtab_qcom_mdt_read_metadata, !3, !"__ksymtab_qcom_mdt_read_metadata", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 127, i32 1}
!4 = !{ptr @__ksymtab_qcom_mdt_load, !5, !"__ksymtab_qcom_mdt_load", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 316, i32 1}
!6 = !{ptr @__ksymtab_qcom_mdt_load_no_init, !7, !"__ksymtab_qcom_mdt_load_no_init", i1 false, i1 false}
!7 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 339, i32 1}
!8 = !{ptr @__UNIQUE_ID_description183, !9, !"__UNIQUE_ID_description183", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 341, i32 1}
!10 = !{ptr @__UNIQUE_ID_file184, !11, !"__UNIQUE_ID_file184", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 342, i32 1}
!12 = !{ptr @__UNIQUE_ID_license185, !11, !"__UNIQUE_ID_license185", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 169, i32 4}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__qcom_mdt_load._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @__qcom_mdt_load._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 179, i32 4}
!23 = !{ptr @__qcom_mdt_load._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @__qcom_mdt_load._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 207, i32 5}
!27 = !{ptr @__qcom_mdt_load._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @__qcom_mdt_load._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 234, i32 4}
!31 = !{ptr @__qcom_mdt_load._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__qcom_mdt_load._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 240, i32 4}
!35 = !{ptr @__qcom_mdt_load._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @__qcom_mdt_load._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 252, i32 5}
!39 = !{ptr @__qcom_mdt_load._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @__qcom_mdt_load._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 261, i32 39}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 265, i32 5}
!45 = !{ptr @__qcom_mdt_load._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @__qcom_mdt_load._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/qcom/mdt_loader.c", i32 271, i32 5}
!49 = !{ptr @__qcom_mdt_load._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @__qcom_mdt_load._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
