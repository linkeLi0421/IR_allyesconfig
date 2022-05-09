; ModuleID = '/llk/IR_all_yes/drivers/media/common/ttpci-eeprom.c_pt.bc'
source_filename = "../drivers/media/common/ttpci-eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ttpci_eeprom_decode_mac\22, \22a\22\09"
module asm "\09.weak\09__crc_ttpci_eeprom_decode_mac\09\09\09\09"
module asm "\09.long\09__crc_ttpci_eeprom_decode_mac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttpci_eeprom_decode_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22ttpci_eeprom_decode_mac\22\09\09\09\09\09"
module asm "__kstrtabns_ttpci_eeprom_decode_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttpci_eeprom_parse_mac\22, \22a\22\09"
module asm "\09.weak\09__crc_ttpci_eeprom_parse_mac\09\09\09\09"
module asm "\09.long\09__crc_ttpci_eeprom_parse_mac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttpci_eeprom_parse_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22ttpci_eeprom_parse_mac\22\09\09\09\09\09"
module asm "__kstrtabns_ttpci_eeprom_parse_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab_ttpci_eeprom_decode_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttpci_eeprom_decode_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_ttpci_eeprom_decode_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttpci_eeprom_decode_mac to i32), ptr @__kstrtab_ttpci_eeprom_decode_mac, ptr @__kstrtabns_ttpci_eeprom_decode_mac }, section "___ksymtab+ttpci_eeprom_decode_mac", align 4
@ttpci_eeprom_parse_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't read from EEPROM: not there?\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ttpci_eeprom_parse_mac\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/common/ttpci-eeprom.c\00", [60 x i8] zeroinitializer }, align 32
@ttpci_eeprom_parse_mac._entry_ptr = internal global ptr @ttpci_eeprom_parse_mac._entry, section ".printk_index", align 4
@ttpci_eeprom_parse_mac._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adapter failed MAC signature check\0A\00", [60 x i8] zeroinitializer }, align 32
@ttpci_eeprom_parse_mac._entry_ptr.5 = internal global ptr @ttpci_eeprom_parse_mac._entry.3, section ".printk_index", align 4
@ttpci_eeprom_parse_mac._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"encoded MAC from EEPROM was %*phC\00", [62 x i8] zeroinitializer }, align 32
@ttpci_eeprom_parse_mac._entry_ptr.8 = internal global ptr @ttpci_eeprom_parse_mac._entry.6, section ".printk_index", align 4
@ttpci_eeprom_parse_mac._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adapter has MAC addr = %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@ttpci_eeprom_parse_mac._entry_ptr.11 = internal global ptr @ttpci_eeprom_parse_mac._entry.9, section ".printk_index", align 4
@__kstrtab_ttpci_eeprom_parse_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttpci_eeprom_parse_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_ttpci_eeprom_parse_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttpci_eeprom_parse_mac to i32), ptr @__kstrtab_ttpci_eeprom_parse_mac, ptr @__kstrtabns_ttpci_eeprom_parse_mac }, section "___ksymtab+ttpci_eeprom_parse_mac", align 4
@__UNIQUE_ID_file369 = internal constant [52 x i8] c"ttpci_eeprom.file=drivers/media/common/ttpci-eeprom\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [25 x i8] c"ttpci_eeprom.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author371 = internal constant [58 x i8] c"ttpci_eeprom.author=Ralph Metzler, Marcus Metzler, others\00", section ".modinfo", align 1
@__UNIQUE_ID_description372 = internal constant [121 x i8] c"ttpci_eeprom.description=Decode dvb_net MAC address from EEPROM of PCI DVB cards made by Siemens, Technotrend, Hauppauge\00", section ".modinfo", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 136, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 143, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 144, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [39 x i8] c"../drivers/media/common/ttpci-eeprom.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 151, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author371, ptr @__UNIQUE_ID_description372, ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__ksymtab_ttpci_eeprom_decode_mac, ptr @__ksymtab_ttpci_eeprom_parse_mac, ptr @ttpci_eeprom_parse_mac._entry, ptr @ttpci_eeprom_parse_mac._entry.3, ptr @ttpci_eeprom_parse_mac._entry.6, ptr @ttpci_eeprom_parse_mac._entry.9, ptr @ttpci_eeprom_parse_mac._entry_ptr, ptr @ttpci_eeprom_parse_mac._entry_ptr.11, ptr @ttpci_eeprom_parse_mac._entry_ptr.5, ptr @ttpci_eeprom_parse_mac._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttpci_eeprom_parse_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttpci_eeprom_parse_mac._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttpci_eeprom_parse_mac._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttpci_eeprom_parse_mac._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttpci_eeprom_decode_mac(ptr nocapture noundef writeonly %decodedMAC, ptr nocapture noundef readonly %encodedMAC) #0 align 64 {
entry:
  %data = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data) #6
  %0 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 7
  %7 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 8
  %8 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 9
  %9 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 10
  %10 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 11
  %11 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 12
  %12 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 13
  %13 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 14
  %14 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 15
  %15 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 16
  %16 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 17
  %17 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 18
  %18 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 19
  %19 = call ptr @memcpy(ptr %data, ptr %encodedMAC, i32 20)
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  %xor353 = xor i8 %21, 114
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %0, align 1
  %xor353.1 = xor i8 %23, 35
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %xor353.2 = xor i8 %25, 104
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 1
  %xor353.3 = xor i8 %27, 25
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 1
  %xor353.4 = xor i8 %29, 92
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %4, align 1
  %xor353.5 = xor i8 %31, -88
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  %xor353.6 = xor i8 %33, 113
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  %xor353.7 = xor i8 %35, 44
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %7, align 1
  %xor353.8 = xor i8 %37, 84
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %8, align 1
  %xor353.9 = xor i8 %39, -45
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %9, align 1
  %xor353.10 = xor i8 %41, 123
  store i8 %xor353.10, ptr %9, align 1
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %10, align 1
  %xor353.11 = xor i8 %43, -15
  store i8 %xor353.11, ptr %10, align 1
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %11, align 1
  %xor353.12 = xor i8 %45, -98
  store i8 %xor353.12, ptr %11, align 1
  %46 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %12, align 1
  %xor353.13 = xor i8 %47, 35
  store i8 %xor353.13, ptr %12, align 1
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %13, align 1
  %xor353.14 = xor i8 %49, 22
  store i8 %xor353.14, ptr %13, align 1
  %50 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %14, align 1
  %xor353.15 = xor i8 %51, -10
  store i8 %xor353.15, ptr %14, align 1
  %52 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %15, align 1
  %xor353.16 = xor i8 %53, 29
  store i8 %xor353.16, ptr %15, align 1
  %54 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %16, align 1
  %xor353.17 = xor i8 %55, 54
  store i8 %xor353.17, ptr %16, align 1
  %56 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %17, align 1
  %xor353.18 = xor i8 %57, 100
  store i8 %xor353.18, ptr %17, align 1
  %58 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %18, align 1
  %xor353.19 = xor i8 %59, 120
  store i8 %xor353.19, ptr %18, align 1
  %conv10 = zext i8 %xor353.1 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %conv13 = zext i8 %xor353 to i32
  %or = or i32 %shl, %conv13
  %60 = lshr i32 %conv10, 6
  %shr18 = lshr i32 %or, %60
  %conv19 = trunc i32 %shr18 to i8
  store i8 %conv19, ptr %data, align 1
  %conv10.1 = zext i8 %xor353.3 to i32
  %shl.1 = shl nuw nsw i32 %conv10.1, 8
  %conv13.1 = zext i8 %xor353.2 to i32
  %or.1 = or i32 %shl.1, %conv13.1
  %61 = lshr i32 %conv10.1, 6
  %shr18.1 = lshr i32 %or.1, %61
  %conv19.1 = trunc i32 %shr18.1 to i8
  store i8 %conv19.1, ptr %0, align 1
  %conv10.2 = zext i8 %xor353.5 to i32
  %shl.2 = shl nuw nsw i32 %conv10.2, 8
  %conv13.2 = zext i8 %xor353.4 to i32
  %or.2 = or i32 %shl.2, %conv13.2
  %62 = lshr i32 %conv10.2, 6
  %shr18.2 = lshr i32 %or.2, %62
  %conv19.2 = trunc i32 %shr18.2 to i8
  store i8 %conv19.2, ptr %1, align 1
  %conv10.3 = zext i8 %xor353.7 to i32
  %shl.3 = shl nuw nsw i32 %conv10.3, 8
  %conv13.3 = zext i8 %xor353.6 to i32
  %or.3 = or i32 %shl.3, %conv13.3
  %63 = lshr i32 %conv10.3, 6
  %shr18.3 = lshr i32 %or.3, %63
  %conv19.3 = trunc i32 %shr18.3 to i8
  store i8 %conv19.3, ptr %2, align 1
  %conv10.4 = zext i8 %xor353.9 to i32
  %shl.4 = shl nuw nsw i32 %conv10.4, 8
  %conv13.4 = zext i8 %xor353.8 to i32
  %or.4 = or i32 %shl.4, %conv13.4
  %64 = lshr i32 %conv10.4, 6
  %shr18.4 = lshr i32 %or.4, %64
  %conv19.4 = trunc i32 %shr18.4 to i8
  store i8 %conv19.4, ptr %3, align 1
  %conv10.5 = zext i8 %xor353.11 to i32
  %shl.5 = shl nuw nsw i32 %conv10.5, 8
  %conv13.5 = zext i8 %xor353.10 to i32
  %or.5 = or i32 %shl.5, %conv13.5
  %65 = lshr i32 %conv10.5, 6
  %shr18.5 = lshr i32 %or.5, %65
  %conv19.5 = trunc i32 %shr18.5 to i8
  store i8 %conv19.5, ptr %4, align 1
  %conv10.6 = zext i8 %xor353.13 to i32
  %shl.6 = shl nuw nsw i32 %conv10.6, 8
  %conv13.6 = zext i8 %xor353.12 to i32
  %or.6 = or i32 %shl.6, %conv13.6
  %66 = lshr i32 %conv10.6, 6
  %shr18.6 = lshr i32 %or.6, %66
  %conv19.6 = trunc i32 %shr18.6 to i8
  store i8 %conv19.6, ptr %5, align 1
  %conv10.7 = zext i8 %xor353.15 to i32
  %shl.7 = shl nuw nsw i32 %conv10.7, 8
  %conv13.7 = zext i8 %xor353.14 to i32
  %or.7 = or i32 %shl.7, %conv13.7
  %67 = lshr i32 %conv10.7, 6
  %shr18.7 = lshr i32 %or.7, %67
  %conv19.7 = trunc i32 %shr18.7 to i8
  store i8 %conv19.7, ptr %6, align 1
  %conv10.8 = zext i8 %xor353.17 to i32
  %shl.8 = shl nuw nsw i32 %conv10.8, 8
  %conv13.8 = zext i8 %xor353.16 to i32
  %or.8 = or i32 %shl.8, %conv13.8
  %68 = lshr i32 %conv10.8, 6
  %shr18.8 = lshr i32 %or.8, %68
  %conv19.8 = trunc i32 %shr18.8 to i8
  store i8 %conv19.8, ptr %7, align 1
  %conv10.9 = zext i8 %xor353.19 to i32
  %shl.9 = shl nuw nsw i32 %conv10.9, 8
  %conv13.9 = zext i8 %xor353.18 to i32
  %or.9 = or i32 %shl.9, %conv13.9
  %69 = lshr i32 %conv10.9, 6
  %shr18.9 = lshr i32 %or.9, %69
  %conv19.9 = trunc i32 %shr18.9 to i8
  store i8 %conv19.9, ptr %8, align 1
  %call = call fastcc i32 @check_mac_tt(ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %1, align 1
  %72 = ptrtoint ptr %decodedMAC to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %decodedMAC, align 1
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %0, align 1
  %arrayidx28 = getelementptr i8, ptr %decodedMAC, i32 1
  %75 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx28, align 1
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %data, align 1
  %arrayidx30 = getelementptr i8, ptr %decodedMAC, i32 2
  %78 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx30, align 1
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %5, align 1
  %arrayidx32 = getelementptr i8, ptr %decodedMAC, i32 3
  %81 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx32, align 1
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %4, align 1
  %arrayidx34 = getelementptr i8, ptr %decodedMAC, i32 4
  %84 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx34, align 1
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %3, align 1
  %arrayidx36 = getelementptr i8, ptr %decodedMAC, i32 5
  %87 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx36, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_mac_tt(ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %2 = xor i8 %1, -1
  %xor = zext i8 %2 to i32
  %or = or i32 %xor, 65280
  %3 = lshr i32 %xor, 4
  %conv9 = xor i32 %or, %3
  %shl10 = shl nuw nsw i32 %conv9, 12
  %and12 = shl nuw nsw i32 %conv9, 5
  %shl13 = and i32 %and12, 8160
  %shl10.masked = and i32 %shl10, 61440
  %xor14.masked = xor i32 %shl13, %conv9
  %phi.cast = xor i32 %xor14.masked, %shl10.masked
  %shl.1 = shl nuw nsw i32 %xor14.masked, 8
  %4 = lshr i32 %phi.cast, 8
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv2.1 = zext i8 %6 to i32
  %xor.1 = xor i32 %4, %conv2.1
  %or.1 = or i32 %xor.1, %shl.1
  %7 = lshr i32 %xor.1, 4
  %and.1 = and i32 %7, 15
  %or.masked.1 = and i32 %or.1, 65535
  %conv9.1 = xor i32 %or.masked.1, %and.1
  %shl10.1 = shl nuw nsw i32 %conv9.1, 12
  %and12.1 = shl nuw nsw i32 %conv9.1, 5
  %shl13.1 = and i32 %and12.1, 8160
  %shl10.masked.1 = and i32 %shl10.1, 61440
  %xor14.masked.1 = xor i32 %shl13.1, %conv9.1
  %phi.cast.1 = xor i32 %xor14.masked.1, %shl10.masked.1
  %shl.2 = shl nuw nsw i32 %xor14.masked.1, 8
  %8 = lshr i32 %phi.cast.1, 8
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.2, align 1
  %conv2.2 = zext i8 %10 to i32
  %xor.2 = xor i32 %8, %conv2.2
  %11 = lshr i32 %xor.2, 4
  %and.2 = and i32 %11, 15
  %shl.2.masked = and i32 %shl.2, 65280
  %or.masked.2 = or i32 %xor.2, %shl.2.masked
  %conv9.2 = xor i32 %or.masked.2, %and.2
  %shl10.2 = shl nuw nsw i32 %conv9.2, 12
  %and12.2 = shl nuw nsw i32 %conv9.2, 5
  %shl13.2 = and i32 %and12.2, 8160
  %shl10.masked.2 = and i32 %shl10.2, 61440
  %xor14.masked.2 = xor i32 %shl13.2, %conv9.2
  %phi.cast.2 = xor i32 %xor14.masked.2, %shl10.masked.2
  %shl.3 = shl nuw nsw i32 %xor14.masked.2, 8
  %12 = lshr i32 %phi.cast.2, 8
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3, align 1
  %conv2.3 = zext i8 %14 to i32
  %xor.3 = xor i32 %12, %conv2.3
  %or.3 = or i32 %xor.3, %shl.3
  %15 = lshr i32 %xor.3, 4
  %and.3 = and i32 %15, 15
  %or.masked.3 = and i32 %or.3, 65535
  %conv9.3 = xor i32 %or.masked.3, %and.3
  %shl10.3 = shl nuw nsw i32 %conv9.3, 12
  %and12.3 = shl nuw nsw i32 %conv9.3, 5
  %shl13.3 = and i32 %and12.3, 8160
  %shl10.masked.3 = and i32 %shl10.3, 61440
  %xor14.masked.3 = xor i32 %shl13.3, %conv9.3
  %phi.cast.3 = xor i32 %xor14.masked.3, %shl10.masked.3
  %shl.4 = shl nuw nsw i32 %xor14.masked.3, 8
  %16 = lshr i32 %phi.cast.3, 8
  %arrayidx.4 = getelementptr i8, ptr %buf, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4, align 1
  %conv2.4 = zext i8 %18 to i32
  %xor.4 = xor i32 %16, %conv2.4
  %19 = lshr i32 %xor.4, 4
  %and.4 = and i32 %19, 15
  %shl.4.masked = and i32 %shl.4, 65280
  %or.masked.4 = or i32 %xor.4, %shl.4.masked
  %conv9.4 = xor i32 %or.masked.4, %and.4
  %shl10.4 = shl nuw nsw i32 %conv9.4, 12
  %and12.4 = shl nuw nsw i32 %conv9.4, 5
  %shl13.4 = and i32 %and12.4, 8160
  %shl10.masked.4 = and i32 %shl10.4, 61440
  %xor14.masked.4 = xor i32 %shl13.4, %conv9.4
  %phi.cast.4 = xor i32 %xor14.masked.4, %shl10.masked.4
  %shl.5 = shl nuw nsw i32 %xor14.masked.4, 8
  %20 = lshr i32 %phi.cast.4, 8
  %arrayidx.5 = getelementptr i8, ptr %buf, i32 5
  %21 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.5, align 1
  %conv2.5 = zext i8 %22 to i32
  %xor.5 = xor i32 %20, %conv2.5
  %or.5 = or i32 %xor.5, %shl.5
  %23 = lshr i32 %xor.5, 4
  %and.5 = and i32 %23, 15
  %or.masked.5 = and i32 %or.5, 65535
  %conv9.5 = xor i32 %or.masked.5, %and.5
  %shl10.5 = shl nuw nsw i32 %conv9.5, 12
  %and12.5 = shl nuw nsw i32 %conv9.5, 5
  %shl13.5 = and i32 %and12.5, 8160
  %shl10.masked.5 = and i32 %shl10.5, 61440
  %xor14.masked.5 = xor i32 %shl13.5, %conv9.5
  %phi.cast.5 = xor i32 %xor14.masked.5, %shl10.masked.5
  %shl.6 = shl nuw nsw i32 %xor14.masked.5, 8
  %24 = lshr i32 %phi.cast.5, 8
  %arrayidx.6 = getelementptr i8, ptr %buf, i32 6
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.6, align 1
  %conv2.6 = zext i8 %26 to i32
  %xor.6 = xor i32 %24, %conv2.6
  %27 = lshr i32 %xor.6, 4
  %and.6 = and i32 %27, 15
  %shl.6.masked = and i32 %shl.6, 65280
  %or.masked.6 = or i32 %xor.6, %shl.6.masked
  %conv9.6 = xor i32 %or.masked.6, %and.6
  %shl10.6 = shl nuw nsw i32 %conv9.6, 12
  %and12.6 = shl nuw nsw i32 %conv9.6, 5
  %shl13.6 = and i32 %and12.6, 8160
  %shl10.masked.6 = and i32 %shl10.6, 61440
  %xor14.masked.6 = xor i32 %shl13.6, %conv9.6
  %phi.cast.6 = xor i32 %xor14.masked.6, %shl10.masked.6
  %shl.7 = shl nuw nsw i32 %xor14.masked.6, 8
  %28 = lshr i32 %phi.cast.6, 8
  %arrayidx.7 = getelementptr i8, ptr %buf, i32 7
  %29 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.7, align 1
  %conv2.7 = zext i8 %30 to i32
  %xor.7 = xor i32 %28, %conv2.7
  %or.7 = or i32 %xor.7, %shl.7
  %31 = lshr i32 %xor.7, 4
  %and.7 = and i32 %31, 15
  %or.masked.7 = and i32 %or.7, 65535
  %conv9.7 = xor i32 %or.masked.7, %and.7
  %shl10.7 = shl nuw nsw i32 %conv9.7, 12
  %and12.7 = shl nuw nsw i32 %conv9.7, 5
  %shl13.7 = and i32 %and12.7, 8160
  %shl10.masked.7 = and i32 %shl10.7, 61440
  %xor14.masked.7 = xor i32 %shl13.7, %conv9.7
  %phi.cast.7 = xor i32 %xor14.masked.7, %shl10.masked.7
  %conv21 = xor i32 %phi.cast.7, 65535
  %32 = lshr i32 %conv21, 8
  %arrayidx23 = getelementptr i8, ptr %buf, i32 8
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %34 to i32
  %xor25 = xor i32 %32, %conv24
  %and27 = and i32 %conv21, 255
  %arrayidx28 = getelementptr i8, ptr %buf, i32 9
  %35 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %36 to i32
  %xor30 = xor i32 %and27, %conv29
  %or31 = or i32 %xor30, %xor25
  ret i32 %or31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttpci_eeprom_parse_mac(ptr noundef %adapter, ptr nocapture noundef writeonly %proposed_mac) #3 align 64 {
entry:
  %data.i = alloca [20 x i8], align 1
  %b0.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %encodedMAC = alloca [20 x i8], align 1
  %decodedMAC = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %encodedMAC) #6
  %0 = call ptr @memset(ptr %encodedMAC, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %decodedMAC) #6
  %1 = getelementptr inbounds [6 x i8], ptr %decodedMAC, i32 0, i32 1
  %2 = getelementptr inbounds [6 x i8], ptr %decodedMAC, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i8], ptr %decodedMAC, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i8], ptr %decodedMAC, i32 0, i32 4
  %5 = getelementptr inbounds [6 x i8], ptr %decodedMAC, i32 0, i32 5
  %6 = call ptr @memset(ptr %decodedMAC, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %7 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -52, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 80, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 80, ptr %arrayinit.element.i, align 4
  %flags2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags2.i, align 2
  %len3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 20, ptr %len3.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %encodedMAC, ptr %buf4.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  br i1 %cmp.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %18 = call ptr @memset(ptr %proposed_mac, i32 0, i32 6)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data.i) #6
  %19 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 1
  %20 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 2
  %21 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 3
  %22 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 4
  %23 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 5
  %24 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 6
  %25 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 7
  %26 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 8
  %27 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 9
  %28 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 10
  %29 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 11
  %30 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 12
  %31 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 13
  %32 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 14
  %33 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 15
  %34 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 16
  %35 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 17
  %36 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 18
  %37 = getelementptr inbounds [20 x i8], ptr %data.i, i32 0, i32 19
  %38 = call ptr @memcpy(ptr %data.i, ptr %encodedMAC, i32 20)
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data.i, align 1
  %xor353.i = xor i8 %40, 114
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %19, align 1
  %xor353.1.i = xor i8 %42, 35
  %43 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %20, align 1
  %xor353.2.i = xor i8 %44, 104
  %45 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %21, align 1
  %xor353.3.i = xor i8 %46, 25
  %47 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %22, align 1
  %xor353.4.i = xor i8 %48, 92
  %49 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %23, align 1
  %xor353.5.i = xor i8 %50, -88
  %51 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %24, align 1
  %xor353.6.i = xor i8 %52, 113
  %53 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %25, align 1
  %xor353.7.i = xor i8 %54, 44
  %55 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %26, align 1
  %xor353.8.i = xor i8 %56, 84
  %57 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %27, align 1
  %xor353.9.i = xor i8 %58, -45
  %59 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %28, align 1
  %xor353.10.i = xor i8 %60, 123
  store i8 %xor353.10.i, ptr %28, align 1
  %61 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %29, align 1
  %xor353.11.i = xor i8 %62, -15
  store i8 %xor353.11.i, ptr %29, align 1
  %63 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %30, align 1
  %xor353.12.i = xor i8 %64, -98
  store i8 %xor353.12.i, ptr %30, align 1
  %65 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %31, align 1
  %xor353.13.i = xor i8 %66, 35
  store i8 %xor353.13.i, ptr %31, align 1
  %67 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %32, align 1
  %xor353.14.i = xor i8 %68, 22
  store i8 %xor353.14.i, ptr %32, align 1
  %69 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %33, align 1
  %xor353.15.i = xor i8 %70, -10
  store i8 %xor353.15.i, ptr %33, align 1
  %71 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %34, align 1
  %xor353.16.i = xor i8 %72, 29
  store i8 %xor353.16.i, ptr %34, align 1
  %73 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %35, align 1
  %xor353.17.i = xor i8 %74, 54
  store i8 %xor353.17.i, ptr %35, align 1
  %75 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %36, align 1
  %xor353.18.i = xor i8 %76, 100
  store i8 %xor353.18.i, ptr %36, align 1
  %77 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %37, align 1
  %xor353.19.i = xor i8 %78, 120
  store i8 %xor353.19.i, ptr %37, align 1
  %conv10.i = zext i8 %xor353.1.i to i32
  %shl.i = shl nuw nsw i32 %conv10.i, 8
  %conv13.i = zext i8 %xor353.i to i32
  %or.i = or i32 %shl.i, %conv13.i
  %79 = lshr i32 %conv10.i, 6
  %shr18.i = lshr i32 %or.i, %79
  %conv19.i = trunc i32 %shr18.i to i8
  store i8 %conv19.i, ptr %data.i, align 1
  %conv10.1.i = zext i8 %xor353.3.i to i32
  %shl.1.i = shl nuw nsw i32 %conv10.1.i, 8
  %conv13.1.i = zext i8 %xor353.2.i to i32
  %or.1.i = or i32 %shl.1.i, %conv13.1.i
  %80 = lshr i32 %conv10.1.i, 6
  %shr18.1.i = lshr i32 %or.1.i, %80
  %conv19.1.i = trunc i32 %shr18.1.i to i8
  store i8 %conv19.1.i, ptr %19, align 1
  %conv10.2.i = zext i8 %xor353.5.i to i32
  %shl.2.i = shl nuw nsw i32 %conv10.2.i, 8
  %conv13.2.i = zext i8 %xor353.4.i to i32
  %or.2.i = or i32 %shl.2.i, %conv13.2.i
  %81 = lshr i32 %conv10.2.i, 6
  %shr18.2.i = lshr i32 %or.2.i, %81
  %conv19.2.i = trunc i32 %shr18.2.i to i8
  store i8 %conv19.2.i, ptr %20, align 1
  %conv10.3.i = zext i8 %xor353.7.i to i32
  %shl.3.i = shl nuw nsw i32 %conv10.3.i, 8
  %conv13.3.i = zext i8 %xor353.6.i to i32
  %or.3.i = or i32 %shl.3.i, %conv13.3.i
  %82 = lshr i32 %conv10.3.i, 6
  %shr18.3.i = lshr i32 %or.3.i, %82
  %conv19.3.i = trunc i32 %shr18.3.i to i8
  store i8 %conv19.3.i, ptr %21, align 1
  %conv10.4.i = zext i8 %xor353.9.i to i32
  %shl.4.i = shl nuw nsw i32 %conv10.4.i, 8
  %conv13.4.i = zext i8 %xor353.8.i to i32
  %or.4.i = or i32 %shl.4.i, %conv13.4.i
  %83 = lshr i32 %conv10.4.i, 6
  %shr18.4.i = lshr i32 %or.4.i, %83
  %conv19.4.i = trunc i32 %shr18.4.i to i8
  store i8 %conv19.4.i, ptr %22, align 1
  %conv10.5.i = zext i8 %xor353.11.i to i32
  %shl.5.i = shl nuw nsw i32 %conv10.5.i, 8
  %conv13.5.i = zext i8 %xor353.10.i to i32
  %or.5.i = or i32 %shl.5.i, %conv13.5.i
  %84 = lshr i32 %conv10.5.i, 6
  %shr18.5.i = lshr i32 %or.5.i, %84
  %conv19.5.i = trunc i32 %shr18.5.i to i8
  store i8 %conv19.5.i, ptr %23, align 1
  %conv10.6.i = zext i8 %xor353.13.i to i32
  %shl.6.i = shl nuw nsw i32 %conv10.6.i, 8
  %conv13.6.i = zext i8 %xor353.12.i to i32
  %or.6.i = or i32 %shl.6.i, %conv13.6.i
  %85 = lshr i32 %conv10.6.i, 6
  %shr18.6.i = lshr i32 %or.6.i, %85
  %conv19.6.i = trunc i32 %shr18.6.i to i8
  store i8 %conv19.6.i, ptr %24, align 1
  %conv10.7.i = zext i8 %xor353.15.i to i32
  %shl.7.i = shl nuw nsw i32 %conv10.7.i, 8
  %conv13.7.i = zext i8 %xor353.14.i to i32
  %or.7.i = or i32 %shl.7.i, %conv13.7.i
  %86 = lshr i32 %conv10.7.i, 6
  %shr18.7.i = lshr i32 %or.7.i, %86
  %conv19.7.i = trunc i32 %shr18.7.i to i8
  store i8 %conv19.7.i, ptr %25, align 1
  %conv10.8.i = zext i8 %xor353.17.i to i32
  %shl.8.i = shl nuw nsw i32 %conv10.8.i, 8
  %conv13.8.i = zext i8 %xor353.16.i to i32
  %or.8.i = or i32 %shl.8.i, %conv13.8.i
  %87 = lshr i32 %conv10.8.i, 6
  %shr18.8.i = lshr i32 %or.8.i, %87
  %conv19.8.i = trunc i32 %shr18.8.i to i8
  store i8 %conv19.8.i, ptr %26, align 1
  %conv10.9.i = zext i8 %xor353.19.i to i32
  %shl.9.i = shl nuw nsw i32 %conv10.9.i, 8
  %conv13.9.i = zext i8 %xor353.18.i to i32
  %or.9.i = or i32 %shl.9.i, %conv13.9.i
  %88 = lshr i32 %conv10.9.i, 6
  %shr18.9.i = lshr i32 %or.9.i, %88
  %conv19.9.i = trunc i32 %shr18.9.i to i8
  store i8 %conv19.9.i, ptr %27, align 1
  %call.i44 = call fastcc i32 @check_mac_tt(ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i, label %if.end26, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data.i) #6
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 20, ptr noundef nonnull %encodedMAC) #9
  %89 = call ptr @memset(ptr %proposed_mac, i32 0, i32 6)
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %decodedMAC to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv19.2.i, ptr %decodedMAC, align 1
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv19.1.i, ptr %1, align 1
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv19.i, ptr %2, align 1
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv19.6.i, ptr %3, align 1
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv19.5.i, ptr %4, align 1
  %95 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv19.4.i, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data.i) #6
  %96 = call ptr @memcpy(ptr %proposed_mac, ptr %decodedMAC, i32 6)
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %decodedMAC) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end13, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end13 ], [ 0, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %decodedMAC) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %encodedMAC) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_ttpci_eeprom_decode_mac, !1, !"__ksymtab_ttpci_eeprom_decode_mac", i1 false, i1 false}
!1 = !{!"../drivers/media/common/ttpci-eeprom.c", i32 104, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/common/ttpci-eeprom.c", i32 136, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ttpci_eeprom_parse_mac._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ttpci_eeprom_parse_mac._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/common/ttpci-eeprom.c", i32 143, i32 3}
!10 = !{ptr @ttpci_eeprom_parse_mac._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ttpci_eeprom_parse_mac._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/common/ttpci-eeprom.c", i32 144, i32 3}
!14 = !{ptr @ttpci_eeprom_parse_mac._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ttpci_eeprom_parse_mac._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/common/ttpci-eeprom.c", i32 151, i32 2}
!18 = !{ptr @ttpci_eeprom_parse_mac._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ttpci_eeprom_parse_mac._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_ttpci_eeprom_parse_mac, !21, !"__ksymtab_ttpci_eeprom_parse_mac", i1 false, i1 false}
!21 = !{!"../drivers/media/common/ttpci-eeprom.c", i32 155, i32 1}
!22 = !{ptr @__UNIQUE_ID_file369, !23, !"__UNIQUE_ID_file369", i1 false, i1 false}
!23 = !{!"../drivers/media/common/ttpci-eeprom.c", i32 157, i32 1}
!24 = !{ptr @__UNIQUE_ID_license370, !23, !"__UNIQUE_ID_license370", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_author371, !26, !"__UNIQUE_ID_author371", i1 false, i1 false}
!26 = !{!"../drivers/media/common/ttpci-eeprom.c", i32 158, i32 1}
!27 = !{ptr @__UNIQUE_ID_description372, !28, !"__UNIQUE_ID_description372", i1 false, i1 false}
!28 = !{!"../drivers/media/common/ttpci-eeprom.c", i32 159, i32 1}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
