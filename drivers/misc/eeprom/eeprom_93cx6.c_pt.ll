; ModuleID = '/llk/IR_all_yes/drivers/misc/eeprom/eeprom_93cx6.c_pt.bc'
source_filename = "../drivers/misc/eeprom/eeprom_93cx6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+eeprom_93cx6_read\22, \22a\22\09"
module asm "\09.weak\09__crc_eeprom_93cx6_read\09\09\09\09"
module asm "\09.long\09__crc_eeprom_93cx6_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_read:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_read\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+eeprom_93cx6_multiread\22, \22a\22\09"
module asm "\09.weak\09__crc_eeprom_93cx6_multiread\09\09\09\09"
module asm "\09.long\09__crc_eeprom_93cx6_multiread\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_multiread:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_multiread\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_multiread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+eeprom_93cx6_readb\22, \22a\22\09"
module asm "\09.weak\09__crc_eeprom_93cx6_readb\09\09\09\09"
module asm "\09.long\09__crc_eeprom_93cx6_readb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_readb\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+eeprom_93cx6_multireadb\22, \22a\22\09"
module asm "\09.weak\09__crc_eeprom_93cx6_multireadb\09\09\09\09"
module asm "\09.long\09__crc_eeprom_93cx6_multireadb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_multireadb:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_multireadb\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_multireadb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+eeprom_93cx6_wren\22, \22a\22\09"
module asm "\09.weak\09__crc_eeprom_93cx6_wren\09\09\09\09"
module asm "\09.long\09__crc_eeprom_93cx6_wren\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_wren:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_wren\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_wren:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+eeprom_93cx6_write\22, \22a\22\09"
module asm "\09.weak\09__crc_eeprom_93cx6_write\09\09\09\09"
module asm "\09.long\09__crc_eeprom_93cx6_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_write:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_write\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_author160 = internal constant [51 x i8] c"eeprom_93cx6.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version161 = internal constant [25 x i8] c"eeprom_93cx6.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eeprom_93cx6\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description162 = internal constant [50 x i8] c"eeprom_93cx6.description=EEPROM 93cx6 chip driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file163 = internal constant [51 x i8] c"eeprom_93cx6.file=drivers/misc/eeprom/eeprom_93cx6\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [25 x i8] c"eeprom_93cx6.license=GPL\00", section ".modinfo", align 1
@__kstrtab_eeprom_93cx6_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_read = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_read to i32), ptr @__kstrtab_eeprom_93cx6_read, ptr @__kstrtabns_eeprom_93cx6_read }, section "___ksymtab_gpl+eeprom_93cx6_read", align 4
@__kstrtab_eeprom_93cx6_multiread = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_multiread = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_multiread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_multiread to i32), ptr @__kstrtab_eeprom_93cx6_multiread, ptr @__kstrtabns_eeprom_93cx6_multiread }, section "___ksymtab_gpl+eeprom_93cx6_multiread", align 4
@__kstrtab_eeprom_93cx6_readb = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_readb = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_readb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_readb to i32), ptr @__kstrtab_eeprom_93cx6_readb, ptr @__kstrtabns_eeprom_93cx6_readb }, section "___ksymtab_gpl+eeprom_93cx6_readb", align 4
@__kstrtab_eeprom_93cx6_multireadb = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_multireadb = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_multireadb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_multireadb to i32), ptr @__kstrtab_eeprom_93cx6_multireadb, ptr @__kstrtabns_eeprom_93cx6_multireadb }, section "___ksymtab_gpl+eeprom_93cx6_multireadb", align 4
@__kstrtab_eeprom_93cx6_wren = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_wren = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_wren = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_wren to i32), ptr @__kstrtab_eeprom_93cx6_wren, ptr @__kstrtabns_eeprom_93cx6_wren }, section "___ksymtab_gpl+eeprom_93cx6_wren", align 4
@eeprom_93cx6_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s: timeout\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"eeprom_93cx6_write\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/misc/eeprom/eeprom_93cx6.c\00", [61 x i8] zeroinitializer }, align 32
@eeprom_93cx6_write._entry_ptr = internal global ptr @eeprom_93cx6_write._entry, section ".printk_index", align 4
@__kstrtab_eeprom_93cx6_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_write = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_write to i32), ptr @__kstrtab_eeprom_93cx6_write, ptr @__kstrtabns_eeprom_93cx6_write }, section "___ksymtab_gpl+eeprom_93cx6_write", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 17, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [38 x i8] c"../drivers/misc/eeprom/eeprom_93cx6.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 365, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author160, ptr @__UNIQUE_ID_description162, ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__UNIQUE_ID_version161, ptr @__ksymtab_eeprom_93cx6_multiread, ptr @__ksymtab_eeprom_93cx6_multireadb, ptr @__ksymtab_eeprom_93cx6_read, ptr @__ksymtab_eeprom_93cx6_readb, ptr @__ksymtab_eeprom_93cx6_wren, ptr @__ksymtab_eeprom_93cx6_write, ptr @__modver_attr, ptr @eeprom_93cx6_write._entry, ptr @eeprom_93cx6_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93cx6_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_read(ptr noundef %eeprom, i8 noundef zeroext %word, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %register_read.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 1
  %0 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %register_read.i, align 4
  tail call void %1(ptr noundef %eeprom) #5
  %reg_data_in.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %2 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reg_data_in.i, align 1
  %reg_data_out.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %3 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg_data_out.i, align 2
  %reg_data_clock.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %4 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %reg_data_clock.i, align 1
  %reg_chip_select.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %5 = ptrtoint ptr %reg_chip_select.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %reg_chip_select.i, align 4
  %drive_data.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 4
  %6 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %drive_data.i, align 4
  %register_write.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %register_write.i, align 4
  tail call void %8(ptr noundef %eeprom) #5
  %9 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %reg_data_clock.i, align 1
  %10 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %register_write.i, align 4
  tail call void %11(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #5
  %13 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reg_data_clock.i, align 1
  %14 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %register_write.i, align 4
  tail call void %15(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %width = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 3
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  %19 = trunc i32 %18 to i16
  %conv3 = add i16 %19, 3
  %20 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %register_read.i, align 4
  tail call void %21(ptr noundef %eeprom) #5
  %22 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %reg_data_out.i, align 2
  %23 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %drive_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3)
  %cmp.not24.i = icmp eq i16 %conv3, 0
  br i1 %cmp.not24.i, label %entry.eeprom_93cx6_write_bits.exit_crit_edge, label %for.body.lr.ph.i

entry.eeprom_93cx6_write_bits.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_93cx6_write_bits.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %shl = shl i32 6, %18
  %conv = zext i8 %word to i32
  %conv.i = zext i16 %conv3 to i32
  %shl.masked = and i32 %shl, 65534
  %conv2.i = or i32 %shl.masked, %conv
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %sub.i = add nsw i32 %i.025.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %conv4.i = zext i1 %tobool.i to i8
  %24 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv4.i, ptr %reg_data_in.i, align 1
  %25 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %register_write.i, align 4
  tail call void %26(ptr noundef %eeprom) #5
  %27 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %reg_data_clock.i, align 1
  %28 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %register_write.i, align 4
  tail call void %29(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #5
  %31 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %reg_data_clock.i, align 1
  %32 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %register_write.i, align 4
  tail call void %33(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #5
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.body.i.eeprom_93cx6_write_bits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.eeprom_93cx6_write_bits.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_93cx6_write_bits.exit

eeprom_93cx6_write_bits.exit:                     ; preds = %for.body.i.eeprom_93cx6_write_bits.exit_crit_edge, %entry.eeprom_93cx6_write_bits.exit_crit_edge
  %35 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %reg_data_in.i, align 1
  %36 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %register_write.i, align 4
  tail call void %37(ptr noundef %eeprom) #5
  %38 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %register_read.i, align 4
  tail call void %39(ptr noundef %eeprom) #5
  %40 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %reg_data_in.i, align 1
  %41 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %reg_data_out.i, align 2
  %42 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %drive_data.i, align 4
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %eeprom_93cx6_write_bits.exit
  %buf.024.i = phi i16 [ 0, %eeprom_93cx6_write_bits.exit ], [ %buf.1.i, %for.body.i23.for.body.i23_crit_edge ]
  %i.023.i = phi i32 [ 16, %eeprom_93cx6_write_bits.exit ], [ %sub.i20, %for.body.i23.for.body.i23_crit_edge ]
  %43 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %reg_data_clock.i, align 1
  %44 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %register_write.i, align 4
  tail call void %45(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #5
  %47 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %register_read.i, align 4
  tail call void %48(ptr noundef %eeprom) #5
  %49 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %reg_data_in.i, align 1
  %50 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg_data_out.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  %sub.i20 = add nsw i32 %i.023.i, -1
  %shl.i21 = shl nuw i32 1, %sub.i20
  %52 = trunc i32 %shl.i21 to i16
  %conv6.i = select i1 %tobool.not.i, i16 0, i16 %52
  %buf.1.i = or i16 %conv6.i, %buf.024.i
  %53 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %reg_data_clock.i, align 1
  %54 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %register_write.i, align 4
  tail call void %55(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #5
  %cmp.not.i22 = icmp eq i32 %sub.i20, 0
  br i1 %cmp.not.i22, label %eeprom_93cx6_read_bits.exit, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i23

eeprom_93cx6_read_bits.exit:                      ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %buf.1.i, ptr %data, align 2
  %58 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %register_read.i, align 4
  tail call void %59(ptr noundef %eeprom) #5
  %60 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %reg_data_in.i, align 1
  %61 = ptrtoint ptr %reg_chip_select.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %reg_chip_select.i, align 4
  %62 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %register_write.i, align 4
  tail call void %63(ptr noundef %eeprom) #5
  %64 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %reg_data_clock.i, align 1
  %65 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %register_write.i, align 4
  tail call void %66(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #5
  %68 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %reg_data_clock.i, align 1
  %69 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %register_write.i, align 4
  tail call void %70(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_multiread(ptr noundef %eeprom, i8 noundef zeroext %word, ptr nocapture noundef writeonly %data, i16 noundef zeroext %words) #1 align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #5
  %conv = zext i16 %words to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp7.not = icmp eq i16 %words, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %tmp, align 2
  %1 = trunc i32 %i.08 to i8
  %conv3 = add i8 %1, %word
  call void @eeprom_93cx6_read(ptr noundef %eeprom, i8 noundef zeroext %conv3, ptr noundef nonnull %tmp)
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tmp, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %arrayidx = getelementptr i16, ptr %data, i32 %i.08
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_readb(ptr noundef %eeprom, i8 noundef zeroext %byte, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %register_read.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 1
  %0 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %register_read.i, align 4
  tail call void %1(ptr noundef %eeprom) #5
  %reg_data_in.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %2 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reg_data_in.i, align 1
  %reg_data_out.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %3 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg_data_out.i, align 2
  %reg_data_clock.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %4 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %reg_data_clock.i, align 1
  %reg_chip_select.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %5 = ptrtoint ptr %reg_chip_select.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %reg_chip_select.i, align 4
  %drive_data.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 4
  %6 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %drive_data.i, align 4
  %register_write.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %register_write.i, align 4
  tail call void %8(ptr noundef %eeprom) #5
  %9 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %reg_data_clock.i, align 1
  %10 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %register_write.i, align 4
  tail call void %11(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #5
  %13 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reg_data_clock.i, align 1
  %14 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %register_write.i, align 4
  tail call void %15(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %width = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 3
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  %19 = trunc i32 %18 to i16
  %conv5 = add i16 %19, 4
  %20 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %register_read.i, align 4
  tail call void %21(ptr noundef %eeprom) #5
  %22 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %reg_data_out.i, align 2
  %23 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %drive_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5)
  %cmp.not24.i = icmp eq i16 %conv5, 0
  br i1 %cmp.not24.i, label %entry.eeprom_93cx6_write_bits.exit_crit_edge, label %for.body.lr.ph.i

entry.eeprom_93cx6_write_bits.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_93cx6_write_bits.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %add = add i32 %18, 1
  %shl = shl i32 6, %add
  %conv = zext i8 %byte to i32
  %conv.i = zext i16 %conv5 to i32
  %shl.masked = and i32 %shl, 65534
  %conv2.i = or i32 %shl.masked, %conv
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %sub.i = add nsw i32 %i.025.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %conv4.i = zext i1 %tobool.i to i8
  %24 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv4.i, ptr %reg_data_in.i, align 1
  %25 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %register_write.i, align 4
  tail call void %26(ptr noundef %eeprom) #5
  %27 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %reg_data_clock.i, align 1
  %28 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %register_write.i, align 4
  tail call void %29(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #5
  %31 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %reg_data_clock.i, align 1
  %32 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %register_write.i, align 4
  tail call void %33(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #5
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.body.i.eeprom_93cx6_write_bits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.eeprom_93cx6_write_bits.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_93cx6_write_bits.exit

eeprom_93cx6_write_bits.exit:                     ; preds = %for.body.i.eeprom_93cx6_write_bits.exit_crit_edge, %entry.eeprom_93cx6_write_bits.exit_crit_edge
  %35 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %reg_data_in.i, align 1
  %36 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %register_write.i, align 4
  tail call void %37(ptr noundef %eeprom) #5
  %38 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %register_read.i, align 4
  tail call void %39(ptr noundef %eeprom) #5
  %40 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %reg_data_in.i, align 1
  %41 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %reg_data_out.i, align 2
  %42 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %drive_data.i, align 4
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %eeprom_93cx6_write_bits.exit
  %buf.024.i = phi i16 [ 0, %eeprom_93cx6_write_bits.exit ], [ %buf.1.i, %for.body.i27.for.body.i27_crit_edge ]
  %i.023.i = phi i32 [ 8, %eeprom_93cx6_write_bits.exit ], [ %sub.i24, %for.body.i27.for.body.i27_crit_edge ]
  %43 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %reg_data_clock.i, align 1
  %44 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %register_write.i, align 4
  tail call void %45(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #5
  %47 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %register_read.i, align 4
  tail call void %48(ptr noundef %eeprom) #5
  %49 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %reg_data_in.i, align 1
  %50 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg_data_out.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  %sub.i24 = add nsw i32 %i.023.i, -1
  %shl.i25 = shl nuw i32 1, %sub.i24
  %52 = trunc i32 %shl.i25 to i16
  %conv6.i = select i1 %tobool.not.i, i16 0, i16 %52
  %buf.1.i = or i16 %conv6.i, %buf.024.i
  %53 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %reg_data_clock.i, align 1
  %54 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %register_write.i, align 4
  tail call void %55(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #5
  %cmp.not.i26 = icmp eq i32 %sub.i24, 0
  br i1 %cmp.not.i26, label %eeprom_93cx6_read_bits.exit, label %for.body.i27.for.body.i27_crit_edge

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i27

eeprom_93cx6_read_bits.exit:                      ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  %conv7 = trunc i16 %buf.1.i to i8
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv7, ptr %data, align 1
  %58 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %register_read.i, align 4
  tail call void %59(ptr noundef %eeprom) #5
  %60 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %reg_data_in.i, align 1
  %61 = ptrtoint ptr %reg_chip_select.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %reg_chip_select.i, align 4
  %62 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %register_write.i, align 4
  tail call void %63(ptr noundef %eeprom) #5
  %64 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %reg_data_clock.i, align 1
  %65 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %register_write.i, align 4
  tail call void %66(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #5
  %68 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %reg_data_clock.i, align 1
  %69 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %register_write.i, align 4
  tail call void %70(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_multireadb(ptr noundef %eeprom, i8 noundef zeroext %byte, ptr nocapture noundef writeonly %data, i16 noundef zeroext %bytes) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %bytes to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bytes)
  %cmp7.not = icmp eq i16 %bytes, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = trunc i32 %i.08 to i8
  %conv3 = add i8 %0, %byte
  %arrayidx = getelementptr i8, ptr %data, i32 %i.08
  tail call void @eeprom_93cx6_readb(ptr noundef %eeprom, i8 noundef zeroext %conv3, ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_wren(ptr noundef %eeprom, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %register_read.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 1
  %0 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %register_read.i, align 4
  tail call void %1(ptr noundef %eeprom) #5
  %reg_data_in.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %2 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reg_data_in.i, align 1
  %reg_data_out.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %3 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg_data_out.i, align 2
  %reg_data_clock.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %4 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %reg_data_clock.i, align 1
  %reg_chip_select.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %5 = ptrtoint ptr %reg_chip_select.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %reg_chip_select.i, align 4
  %drive_data.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 4
  %6 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %drive_data.i, align 4
  %register_write.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %register_write.i, align 4
  tail call void %8(ptr noundef %eeprom) #5
  %9 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %reg_data_clock.i, align 1
  %10 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %register_write.i, align 4
  tail call void %11(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #5
  %13 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reg_data_clock.i, align 1
  %14 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %register_write.i, align 4
  tail call void %15(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %width = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 3
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  %19 = trunc i32 %18 to i16
  %conv4 = add i16 %19, 3
  %20 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %register_read.i, align 4
  tail call void %21(ptr noundef %eeprom) #5
  %22 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %reg_data_out.i, align 2
  %23 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %drive_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv4)
  %cmp.not24.i = icmp eq i16 %conv4, 0
  br i1 %cmp.not24.i, label %entry.eeprom_93cx6_write_bits.exit_crit_edge, label %for.body.lr.ph.i

entry.eeprom_93cx6_write_bits.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_93cx6_write_bits.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %conv1 = select i1 %enable, i32 19, i32 16
  %sub = add i32 %18, -2
  %shl = shl i32 %conv1, %sub
  %conv.i = zext i16 %conv4 to i32
  %conv2.i = and i32 %shl, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %sub.i = add nsw i32 %i.025.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %conv2.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %conv4.i = zext i1 %tobool.i to i8
  %24 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv4.i, ptr %reg_data_in.i, align 1
  %25 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %register_write.i, align 4
  tail call void %26(ptr noundef %eeprom) #5
  %27 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %reg_data_clock.i, align 1
  %28 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %register_write.i, align 4
  tail call void %29(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #5
  %31 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %reg_data_clock.i, align 1
  %32 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %register_write.i, align 4
  tail call void %33(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #5
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.body.i.eeprom_93cx6_write_bits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.eeprom_93cx6_write_bits.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_93cx6_write_bits.exit

eeprom_93cx6_write_bits.exit:                     ; preds = %for.body.i.eeprom_93cx6_write_bits.exit_crit_edge, %entry.eeprom_93cx6_write_bits.exit_crit_edge
  %35 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %reg_data_in.i, align 1
  %36 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %register_write.i, align 4
  tail call void %37(ptr noundef %eeprom) #5
  %38 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %register_read.i, align 4
  tail call void %39(ptr noundef %eeprom) #5
  %40 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %reg_data_in.i, align 1
  %41 = ptrtoint ptr %reg_chip_select.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %reg_chip_select.i, align 4
  %42 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %register_write.i, align 4
  tail call void %43(ptr noundef %eeprom) #5
  %44 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %reg_data_clock.i, align 1
  %45 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %register_write.i, align 4
  tail call void %46(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #5
  %48 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %reg_data_clock.i, align 1
  %49 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %register_write.i, align 4
  tail call void %50(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_write(ptr noundef %eeprom, i8 noundef zeroext %addr, i16 noundef zeroext %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %register_read.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 1
  %0 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %register_read.i, align 4
  tail call void %1(ptr noundef %eeprom) #5
  %reg_data_in.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %2 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reg_data_in.i, align 1
  %reg_data_out.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %3 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg_data_out.i, align 2
  %reg_data_clock.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %4 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %reg_data_clock.i, align 1
  %reg_chip_select.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %5 = ptrtoint ptr %reg_chip_select.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %reg_chip_select.i, align 4
  %drive_data.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 4
  %6 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %drive_data.i, align 4
  %register_write.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %register_write.i, align 4
  tail call void %8(ptr noundef %eeprom) #5
  %9 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %reg_data_clock.i, align 1
  %10 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %register_write.i, align 4
  tail call void %11(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #5
  %13 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reg_data_clock.i, align 1
  %14 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %register_write.i, align 4
  tail call void %15(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %width = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 3
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  %19 = trunc i32 %18 to i16
  %conv5 = add i16 %19, 3
  %20 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %register_read.i, align 4
  tail call void %21(ptr noundef %eeprom) #5
  %22 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %reg_data_out.i, align 2
  %23 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %drive_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5)
  %cmp.not24.i = icmp eq i16 %conv5, 0
  br i1 %cmp.not24.i, label %entry.eeprom_93cx6_write_bits.exit_crit_edge, label %for.body.lr.ph.i

entry.eeprom_93cx6_write_bits.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_93cx6_write_bits.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %shl = shl i32 5, %18
  %conv1 = zext i8 %addr to i32
  %conv.i = zext i16 %conv5 to i32
  %shl.masked = and i32 %shl, 65535
  %conv2.i = or i32 %shl.masked, %conv1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %sub.i = add nsw i32 %i.025.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %conv4.i = zext i1 %tobool.i to i8
  %24 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv4.i, ptr %reg_data_in.i, align 1
  %25 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %register_write.i, align 4
  tail call void %26(ptr noundef %eeprom) #5
  %27 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %reg_data_clock.i, align 1
  %28 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %register_write.i, align 4
  tail call void %29(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #5
  %31 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %reg_data_clock.i, align 1
  %32 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %register_write.i, align 4
  tail call void %33(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #5
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.body.i.eeprom_93cx6_write_bits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.eeprom_93cx6_write_bits.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_93cx6_write_bits.exit

eeprom_93cx6_write_bits.exit:                     ; preds = %for.body.i.eeprom_93cx6_write_bits.exit_crit_edge, %entry.eeprom_93cx6_write_bits.exit_crit_edge
  %35 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %reg_data_in.i, align 1
  %36 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %register_write.i, align 4
  tail call void %37(ptr noundef %eeprom) #5
  %38 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %register_read.i, align 4
  tail call void %39(ptr noundef %eeprom) #5
  %40 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %reg_data_out.i, align 2
  %41 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %drive_data.i, align 4
  %conv2.i31 = zext i16 %data to i32
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.body.i42.for.body.i42_crit_edge, %eeprom_93cx6_write_bits.exit
  %i.025.i35 = phi i32 [ 16, %eeprom_93cx6_write_bits.exit ], [ %sub.i36, %for.body.i42.for.body.i42_crit_edge ]
  %sub.i36 = add nsw i32 %i.025.i35, -1
  %shl.i37 = shl nuw i32 1, %sub.i36
  %and.i38 = and i32 %shl.i37, %conv2.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.i39 = icmp ne i32 %and.i38, 0
  %conv4.i40 = zext i1 %tobool.i39 to i8
  %42 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv4.i40, ptr %reg_data_in.i, align 1
  %43 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %register_write.i, align 4
  tail call void %44(ptr noundef %eeprom) #5
  %45 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %reg_data_clock.i, align 1
  %46 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %register_write.i, align 4
  tail call void %47(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #5
  %49 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %reg_data_clock.i, align 1
  %50 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %register_write.i, align 4
  tail call void %51(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #5
  %cmp.not.i41 = icmp eq i32 %sub.i36, 0
  br i1 %cmp.not.i41, label %eeprom_93cx6_write_bits.exit44, label %for.body.i42.for.body.i42_crit_edge

for.body.i42.for.body.i42_crit_edge:              ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i42

eeprom_93cx6_write_bits.exit44:                   ; preds = %for.body.i42
  %53 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %reg_data_in.i, align 1
  %54 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %register_write.i, align 4
  tail call void %55(ptr noundef %eeprom) #5
  %56 = ptrtoint ptr %drive_data.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %drive_data.i, align 4
  %57 = ptrtoint ptr %reg_chip_select.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %reg_chip_select.i, align 4
  %58 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %register_write.i, align 4
  tail call void %59(ptr noundef %eeprom) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %eeprom_93cx6_write_bits.exit44
  %timeout.0 = phi i32 [ 100, %eeprom_93cx6_write_bits.exit44 ], [ %dec, %if.end.while.cond_crit_edge ]
  %60 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %register_read.i, align 4
  tail call void %61(ptr noundef %eeprom) #5
  %62 = ptrtoint ptr %reg_data_out.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %reg_data_out.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not = icmp eq i8 %63, 0
  br i1 %tobool.not, label %if.end, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.cond
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %dec = add nsw i32 %timeout.0, -1
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.end, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8
  br label %while.end

while.end:                                        ; preds = %do.end, %while.cond.while.end_crit_edge
  %64 = ptrtoint ptr %register_read.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %register_read.i, align 4
  tail call void %65(ptr noundef %eeprom) #5
  %66 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %reg_data_in.i, align 1
  %67 = ptrtoint ptr %reg_chip_select.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %reg_chip_select.i, align 4
  %68 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %register_write.i, align 4
  tail call void %69(ptr noundef %eeprom) #5
  %70 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %reg_data_clock.i, align 1
  %71 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %register_write.i, align 4
  tail call void %72(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #5
  %74 = ptrtoint ptr %reg_data_clock.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %reg_data_clock.i, align 1
  %75 = ptrtoint ptr %register_write.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %register_write.i, align 4
  tail call void %76(ptr noundef %eeprom) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__UNIQUE_ID_author160, !1, !"__UNIQUE_ID_author160", i1 false, i1 false}
!1 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_version161, !3, !"__UNIQUE_ID_version161", i1 false, i1 false}
!3 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 17, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description162, !9, !"__UNIQUE_ID_description162", i1 false, i1 false}
!9 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 18, i32 1}
!10 = !{ptr @__UNIQUE_ID_file163, !11, !"__UNIQUE_ID_file163", i1 false, i1 false}
!11 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 19, i32 1}
!12 = !{ptr @__UNIQUE_ID_license164, !11, !"__UNIQUE_ID_license164", i1 false, i1 false}
!13 = !{ptr @__ksymtab_eeprom_93cx6_read, !14, !"__ksymtab_eeprom_93cx6_read", i1 false, i1 false}
!14 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 199, i32 1}
!15 = !{ptr @__ksymtab_eeprom_93cx6_multiread, !16, !"__ksymtab_eeprom_93cx6_multiread", i1 false, i1 false}
!16 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 226, i32 1}
!17 = !{ptr @__ksymtab_eeprom_93cx6_readb, !18, !"__ksymtab_eeprom_93cx6_readb", i1 false, i1 false}
!18 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 266, i32 1}
!19 = !{ptr @__ksymtab_eeprom_93cx6_multireadb, !20, !"__ksymtab_eeprom_93cx6_multireadb", i1 false, i1 false}
!20 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 286, i32 1}
!21 = !{ptr @__ksymtab_eeprom_93cx6_wren, !22, !"__ksymtab_eeprom_93cx6_wren", i1 false, i1 false}
!22 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 313, i32 1}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 365, i32 4}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @eeprom_93cx6_write._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @eeprom_93cx6_write._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_eeprom_93cx6_write, !30, !"__ksymtab_eeprom_93cx6_write", i1 false, i1 false}
!30 = !{!"../drivers/misc/eeprom/eeprom_93cx6.c", i32 372, i32 1}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
