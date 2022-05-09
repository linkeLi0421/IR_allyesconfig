; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-ulpi.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-ulpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+otg_ulpi_create\22, \22a\22\09"
module asm "\09.weak\09__crc_otg_ulpi_create\09\09\09\09"
module asm "\09.long\09__crc_otg_ulpi_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_otg_ulpi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22otg_ulpi_create\22\09\09\09\09\09"
module asm "__kstrtabns_otg_ulpi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_otg_ulpi_create\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_otg_ulpi_create\09\09\09\09"
module asm "\09.long\09__crc_devm_otg_ulpi_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_otg_ulpi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_otg_ulpi_create\22\09\09\09\09\09"
module asm "__kstrtabns_devm_otg_ulpi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ulpi_info = type { i32, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy_io_ops = type { ptr, ptr }

@__kstrtab_otg_ulpi_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_otg_ulpi_create = external dso_local constant [0 x i8], align 1
@__ksymtab_otg_ulpi_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @otg_ulpi_create to i32), ptr @__kstrtab_otg_ulpi_create, ptr @__kstrtabns_otg_ulpi_create }, section "___ksymtab_gpl+otg_ulpi_create", align 4
@__kstrtab_devm_otg_ulpi_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_otg_ulpi_create = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_otg_ulpi_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_otg_ulpi_create to i32), ptr @__kstrtab_devm_otg_ulpi_create, ptr @__kstrtabns_devm_otg_ulpi_create }, section "___ksymtab_gpl+devm_otg_ulpi_create", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ULPI\00", [27 x i8] zeroinitializer }, align 32
@ulpi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016ULPI transceiver vendor/product ID 0x%04x/0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ulpi_init\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/phy/phy-ulpi.c\00", [37 x i8] zeroinitializer }, align 32
@ulpi_init._entry_ptr = internal global ptr @ulpi_init._entry, section ".printk_index", align 4
@ulpi_ids = internal constant { [5 x %struct.ulpi_info], [56 x i8] } { [5 x %struct.ulpi_info] [%struct.ulpi_info { i32 80483588, ptr @.str.7 }, %struct.ulpi_info { i32 69468166, ptr @.str.8 }, %struct.ulpi_info { i32 69468167, ptr @.str.9 }, %struct.ulpi_info { i32 69468169, ptr @.str.10 }, %struct.ulpi_info { i32 72422663, ptr @.str.11 }], [56 x i8] zeroinitializer }, align 32
@ulpi_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Found %s ULPI transceiver.\0A\00", [34 x i8] zeroinitializer }, align 32
@ulpi_init._entry_ptr.6 = internal global ptr @ulpi_init._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NXP ISP1504\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMSC USB331x\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMSC USB3320\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMSC USB334x\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TI TUSB1210\00", [20 x i8] zeroinitializer }, align 32
@ulpi_check_integrity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ULPI integrity check: failed!\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ulpi_check_integrity\00", [43 x i8] zeroinitializer }, align 32
@ulpi_check_integrity._entry_ptr = internal global ptr @ulpi_check_integrity._entry, section ".printk_index", align 4
@ulpi_check_integrity._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ULPI integrity check: passed.\0A\00", [63 x i8] zeroinitializer }, align 32
@ulpi_check_integrity._entry_ptr.16 = internal global ptr @ulpi_check_integrity._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 69468166, i64 69468167, i64 69468169, i64 72422663, i64 80483588]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 247, i32 15 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 182, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"ulpi_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 34, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 186, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 35, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 36, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 37, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 38, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 39, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 157, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [30 x i8] c"../drivers/usb/phy/phy-ulpi.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 163, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_devm_otg_ulpi_create, ptr @__ksymtab_otg_ulpi_create, ptr @ulpi_check_integrity._entry, ptr @ulpi_check_integrity._entry.14, ptr @ulpi_check_integrity._entry_ptr, ptr @ulpi_check_integrity._entry_ptr.16, ptr @ulpi_init._entry, ptr @ulpi_init._entry.4, ptr @ulpi_init._entry_ptr, ptr @ulpi_init._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ulpi_ids, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_ids to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_check_integrity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_check_integrity._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @otg_ulpi_create(ptr noundef %ops, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 260) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 44) #7
  %tobool2.not = icmp eq ptr %call7.i.i10, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %label.i = getelementptr inbounds %struct.usb_phy, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %label.i, align 4
  %flags1.i = getelementptr inbounds %struct.usb_phy, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %flags, ptr %flags1.i, align 8
  %io_ops.i = getelementptr inbounds %struct.usb_phy, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ops, ptr %io_ops.i, align 4
  %otg2.i = getelementptr inbounds %struct.usb_phy, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %otg2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i10, ptr %otg2.i, align 4
  %init.i = getelementptr inbounds %struct.usb_phy, ptr %call7.i.i, i32 0, i32 22
  %6 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ulpi_init, ptr %init.i, align 8
  %usb_phy.i = getelementptr inbounds %struct.usb_otg, ptr %call7.i.i10, i32 0, i32 2
  %7 = ptrtoint ptr %usb_phy.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %usb_phy.i, align 8
  %set_host.i = getelementptr inbounds %struct.usb_otg, ptr %call7.i.i10, i32 0, i32 6
  %8 = ptrtoint ptr %set_host.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ulpi_set_host, ptr %set_host.i, align 8
  %set_vbus.i = getelementptr inbounds %struct.usb_otg, ptr %call7.i.i10, i32 0, i32 8
  %9 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ulpi_set_vbus, ptr %set_vbus.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_otg_ulpi_create(ptr noundef %dev, ptr noundef %ops, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 260, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i12 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i12, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %label.i = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str, ptr %label.i, align 4
  %flags1.i = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %flags, ptr %flags1.i, align 4
  %io_ops.i = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %io_ops.i, align 4
  %otg2.i = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %otg2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i12, ptr %otg2.i, align 4
  %init.i = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 22
  %4 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ulpi_init, ptr %init.i, align 4
  %usb_phy.i = getelementptr inbounds %struct.usb_otg, ptr %call.i12, i32 0, i32 2
  %5 = ptrtoint ptr %usb_phy.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %usb_phy.i, align 4
  %set_host.i = getelementptr inbounds %struct.usb_otg, ptr %call.i12, i32 0, i32 6
  %6 = ptrtoint ptr %set_host.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ulpi_set_host, ptr %set_host.i, align 4
  %set_vbus.i = getelementptr inbounds %struct.usb_otg, ptr %call.i12, i32 0, i32 8
  %7 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ulpi_set_vbus, ptr %set_vbus.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulpi_init(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %phy, null
  %io_ops.i = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 7
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %for.body.preheader.cleanup_crit_edge, label %land.lhs.true2.i

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %for.body.preheader
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool4.not.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.cleanup_crit_edge, label %usb_phy_io_read.exit

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_phy_io_read.exit:                             ; preds = %land.lhs.true2.i
  %call.i = tail call i32 %3(ptr noundef nonnull %phy, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %usb_phy_io_read.exit.cleanup_crit_edge, label %if.end

usb_phy_io_read.exit.cleanup_crit_edge:           ; preds = %usb_phy_io_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %usb_phy_io_read.exit
  %4 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i.1 = icmp eq ptr %5, null
  br i1 %tobool1.not.i.1, label %if.end.cleanup_crit_edge, label %land.lhs.true2.i.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i.1:                               ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool4.not.i.1 = icmp eq ptr %7, null
  br i1 %tobool4.not.i.1, label %land.lhs.true2.i.1.cleanup_crit_edge, label %usb_phy_io_read.exit.1

land.lhs.true2.i.1.cleanup_crit_edge:             ; preds = %land.lhs.true2.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_phy_io_read.exit.1:                           ; preds = %land.lhs.true2.i.1
  %call.i.1 = tail call i32 %7(ptr noundef nonnull %phy, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp1.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp1.1, label %usb_phy_io_read.exit.1.cleanup_crit_edge, label %if.end.1

usb_phy_io_read.exit.1.cleanup_crit_edge:         ; preds = %usb_phy_io_read.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.1:                                         ; preds = %usb_phy_io_read.exit.1
  %8 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i.2 = icmp eq ptr %9, null
  br i1 %tobool1.not.i.2, label %if.end.1.cleanup_crit_edge, label %land.lhs.true2.i.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i.2:                               ; preds = %if.end.1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool4.not.i.2 = icmp eq ptr %11, null
  br i1 %tobool4.not.i.2, label %land.lhs.true2.i.2.cleanup_crit_edge, label %usb_phy_io_read.exit.2

land.lhs.true2.i.2.cleanup_crit_edge:             ; preds = %land.lhs.true2.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_phy_io_read.exit.2:                           ; preds = %land.lhs.true2.i.2
  %call.i.2 = tail call i32 %11(ptr noundef nonnull %phy, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp1.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp1.2, label %usb_phy_io_read.exit.2.cleanup_crit_edge, label %if.end.2

usb_phy_io_read.exit.2.cleanup_crit_edge:         ; preds = %usb_phy_io_read.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.2:                                         ; preds = %usb_phy_io_read.exit.2
  %12 = shl i32 %call.i, 16
  %13 = shl i32 %call.i.1, 8
  %shl.2 = or i32 %12, %13
  %or.2 = or i32 %call.i.2, %shl.2
  %14 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i.3 = icmp eq ptr %15, null
  br i1 %tobool1.not.i.3, label %if.end.2.cleanup_crit_edge, label %land.lhs.true2.i.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i.3:                               ; preds = %if.end.2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool4.not.i.3 = icmp eq ptr %17, null
  br i1 %tobool4.not.i.3, label %land.lhs.true2.i.3.cleanup_crit_edge, label %usb_phy_io_read.exit.3

land.lhs.true2.i.3.cleanup_crit_edge:             ; preds = %land.lhs.true2.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_phy_io_read.exit.3:                           ; preds = %land.lhs.true2.i.3
  %call.i.3 = tail call i32 %17(ptr noundef nonnull %phy, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp1.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp1.3, label %usb_phy_io_read.exit.3.cleanup_crit_edge, label %if.end.3

usb_phy_io_read.exit.3.cleanup_crit_edge:         ; preds = %usb_phy_io_read.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.3:                                         ; preds = %usb_phy_io_read.exit.3
  %shl.3 = shl i32 %or.2, 8
  %or.3 = or i32 %call.i.3, %shl.3
  %and = and i32 %or.3, 65535
  %shr = lshr i32 %or.3, 16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %and, i32 noundef %shr) #8
  %shl6 = shl i32 %or.3, 16
  %or7 = or i32 %shl6, %shr
  %18 = zext i32 %or7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or7, label %if.end.3.for.body.preheader.i_crit_edge [
    i32 80483588, label %if.end.3.do.end12_crit_edge
    i32 69468166, label %do.end12.fold.split
    i32 69468167, label %do.end12.fold.split65
    i32 69468169, label %do.end12.fold.split66
    i32 72422663, label %do.end12.fold.split67
  ]

if.end.3.do.end12_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.3.for.body.preheader.i_crit_edge:          ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader.i

do.end12.fold.split:                              ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

do.end12.fold.split65:                            ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

do.end12.fold.split66:                            ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

do.end12.fold.split67:                            ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

do.end12:                                         ; preds = %do.end12.fold.split67, %do.end12.fold.split66, %do.end12.fold.split65, %do.end12.fold.split, %if.end.3.do.end12_crit_edge
  %i.163.lcssa = phi i32 [ 0, %if.end.3.do.end12_crit_edge ], [ 1, %do.end12.fold.split ], [ 2, %do.end12.fold.split65 ], [ 3, %do.end12.fold.split66 ], [ 4, %do.end12.fold.split67 ]
  %name = getelementptr [5 x %struct.ulpi_info], ptr @ulpi_ids, i32 0, i32 %i.163.lcssa, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %20) #8
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %do.end12, %if.end.3.for.body.preheader.i_crit_edge
  %21 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i.i, label %for.body.preheader.i.cleanup_crit_edge, label %land.lhs.true2.i.i

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i.i:                               ; preds = %for.body.preheader.i
  %write.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.cleanup_crit_edge, label %usb_phy_io_write.exit.i

land.lhs.true2.i.i.cleanup_crit_edge:             ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_phy_io_write.exit.i:                          ; preds = %land.lhs.true2.i.i
  %call.i.i = tail call i32 %24(ptr noundef nonnull %phy, i32 noundef 85, i32 noundef 22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %usb_phy_io_write.exit.i.cleanup_crit_edge, label %land.lhs.true.i28.i

usb_phy_io_write.exit.i.cleanup_crit_edge:        ; preds = %usb_phy_io_write.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i28.i:                              ; preds = %usb_phy_io_write.exit.i
  %25 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i27.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i27.i, label %land.lhs.true.i28.i.cleanup_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.cleanup_crit_edge:            ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool4.not.i29.i = icmp eq ptr %28, null
  br i1 %tobool4.not.i29.i, label %land.lhs.true2.i30.i.cleanup_crit_edge, label %usb_phy_io_read.exit.i

land.lhs.true2.i30.i.cleanup_crit_edge:           ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_phy_io_read.exit.i:                           ; preds = %land.lhs.true2.i30.i
  %call.i31.i = tail call i32 %28(ptr noundef nonnull %phy, i32 noundef 22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp3.i = icmp slt i32 %call.i31.i, 0
  br i1 %cmp3.i, label %usb_phy_io_read.exit.i.cleanup_crit_edge, label %if.end5.i

usb_phy_io_read.exit.i.cleanup_crit_edge:         ; preds = %usb_phy_io_read.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i:                                        ; preds = %usb_phy_io_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %call.i31.i)
  %cmp6.not.i = icmp eq i32 %call.i31.i, 85
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end5.i.ulpi_check_integrity.exit.thread54_crit_edge

if.end5.i.ulpi_check_integrity.exit.thread54_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ulpi_check_integrity.exit.thread54

if.end9.i:                                        ; preds = %if.end5.i
  %29 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i.1.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i.1.i, label %if.end9.i.cleanup_crit_edge, label %land.lhs.true2.i.1.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i.1.i:                             ; preds = %if.end9.i
  %write.i.1.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write.i.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i.1.i, align 4
  %tobool4.not.i.1.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i.1.i, label %land.lhs.true2.i.1.i.cleanup_crit_edge, label %usb_phy_io_write.exit.1.i

land.lhs.true2.i.1.i.cleanup_crit_edge:           ; preds = %land.lhs.true2.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_phy_io_write.exit.1.i:                        ; preds = %land.lhs.true2.i.1.i
  %call.i.1.i = tail call i32 %32(ptr noundef nonnull %phy, i32 noundef 170, i32 noundef 22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp1.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp1.1.i, label %usb_phy_io_write.exit.1.i.cleanup_crit_edge, label %land.lhs.true.i28.1.i

usb_phy_io_write.exit.1.i.cleanup_crit_edge:      ; preds = %usb_phy_io_write.exit.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i28.1.i:                            ; preds = %usb_phy_io_write.exit.1.i
  %33 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i27.1.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i27.1.i, label %land.lhs.true.i28.1.i.cleanup_crit_edge, label %land.lhs.true2.i30.1.i

land.lhs.true.i28.1.i.cleanup_crit_edge:          ; preds = %land.lhs.true.i28.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i30.1.i:                           ; preds = %land.lhs.true.i28.1.i
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool4.not.i29.1.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i29.1.i, label %land.lhs.true2.i30.1.i.cleanup_crit_edge, label %usb_phy_io_read.exit.1.i

land.lhs.true2.i30.1.i.cleanup_crit_edge:         ; preds = %land.lhs.true2.i30.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_phy_io_read.exit.1.i:                         ; preds = %land.lhs.true2.i30.1.i
  %call.i31.1.i = tail call i32 %36(ptr noundef nonnull %phy, i32 noundef 22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.1.i)
  %cmp3.1.i = icmp slt i32 %call.i31.1.i, 0
  br i1 %cmp3.1.i, label %usb_phy_io_read.exit.1.i.cleanup_crit_edge, label %if.end5.1.i

usb_phy_io_read.exit.1.i.cleanup_crit_edge:       ; preds = %usb_phy_io_read.exit.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.1.i:                                      ; preds = %usb_phy_io_read.exit.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %call.i31.1.i)
  %cmp6.not.1.i = icmp eq i32 %call.i31.1.i, 170
  br i1 %cmp6.not.1.i, label %land.lhs.true.i.i.i, label %if.end5.1.i.ulpi_check_integrity.exit.thread54_crit_edge

if.end5.1.i.ulpi_check_integrity.exit.thread54_crit_edge: ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ulpi_check_integrity.exit.thread54

ulpi_check_integrity.exit.thread54:               ; preds = %if.end5.1.i.ulpi_check_integrity.exit.thread54_crit_edge, %if.end5.i.ulpi_check_integrity.exit.thread54_crit_edge
  %call14.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %cleanup

land.lhs.true.i.i.i:                              ; preds = %if.end5.1.i
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  %flags1.i.i = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 2
  %37 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags1.i.i, align 4
  %39 = and i32 %38, 135
  %40 = xor i32 %39, 6
  %41 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.cleanup_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %write.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool4.not.i.i.i, label %land.lhs.true2.i.i.i.cleanup_crit_edge, label %ulpi_set_otg_flags.exit.i

land.lhs.true2.i.i.i.cleanup_crit_edge:           ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ulpi_set_otg_flags.exit.i:                        ; preds = %land.lhs.true2.i.i.i
  %call.i.i.i = tail call i32 %44(ptr noundef nonnull %phy, i32 noundef %40, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i45 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i.i15.i, label %ulpi_set_otg_flags.exit.i.cleanup_crit_edge

ulpi_set_otg_flags.exit.i.cleanup_crit_edge:      ; preds = %ulpi_set_otg_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i.i15.i:                            ; preds = %ulpi_set_otg_flags.exit.i
  %45 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = lshr i32 %46, 8
  %47 = and i32 %and.i.i, 240
  %48 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i.i14.i = icmp eq ptr %49, null
  br i1 %tobool1.not.i.i14.i, label %land.lhs.true.i.i15.i.cleanup_crit_edge, label %land.lhs.true2.i.i18.i

land.lhs.true.i.i15.i.cleanup_crit_edge:          ; preds = %land.lhs.true.i.i15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i.i18.i:                           ; preds = %land.lhs.true.i.i15.i
  %write.i.i16.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write.i.i16.i, align 4
  %tobool4.not.i.i17.i = icmp eq ptr %51, null
  br i1 %tobool4.not.i.i17.i, label %land.lhs.true2.i.i18.i.cleanup_crit_edge, label %ulpi_set_ic_flags.exit.i

land.lhs.true2.i.i18.i.cleanup_crit_edge:         ; preds = %land.lhs.true2.i.i18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ulpi_set_ic_flags.exit.i:                         ; preds = %land.lhs.true2.i.i18.i
  %call.i.i19.i = tail call i32 %51(ptr noundef nonnull %phy, i32 noundef %47, i32 noundef 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19.i)
  %tobool2.not.i = icmp eq i32 %call.i.i19.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %ulpi_set_ic_flags.exit.i.cleanup_crit_edge

ulpi_set_ic_flags.exit.i.cleanup_crit_edge:       ; preds = %ulpi_set_ic_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %ulpi_set_ic_flags.exit.i
  %52 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags1.i.i, align 4
  %and.i23.i = and i32 %53, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i)
  %tobool.not.i.i46 = icmp eq i32 %and.i23.i, 0
  br i1 %tobool.not.i.i46, label %if.else.i.i, label %if.end4.i.if.end16.i.i_crit_edge

if.end4.i.if.end16.i.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i.i

if.else.i.i:                                      ; preds = %if.end4.i
  %and3.i.i = and i32 %53, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i47 = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i47, label %if.else7.i.i, label %if.else.i.i.if.end16.i.i_crit_edge

if.else.i.i.if.end16.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i.i

if.else7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and9.i.i = and i32 %53, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %..i.i = select i1 %tobool10.not.i.i, i32 1, i32 3
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else7.i.i, %if.else.i.i.if.end16.i.i_crit_edge, %if.end4.i.if.end16.i.i_crit_edge
  %flags.0.i.i = phi i32 [ 0, %if.end4.i.if.end16.i.i_crit_edge ], [ 2, %if.else.i.i.if.end16.i.i_crit_edge ], [ %..i.i, %if.else7.i.i ]
  %and18.i.i = lshr i32 %53, 18
  %54 = and i32 %and18.i.i, 4
  %55 = or i32 %flags.0.i.i, %54
  %and24.i.i = and i32 %53, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.else28.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or27.i.i = or i32 %55, 8
  br label %land.lhs.true.i.i27.i

if.else28.i.i:                                    ; preds = %if.end16.i.i
  %and30.i.i = and i32 %53, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.else34.i.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or33.i.i = or i32 %55, 16
  br label %land.lhs.true.i.i27.i

if.else34.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and36.i.i = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  %or39.i.i = or i32 %55, 24
  %spec.select63.i.i = select i1 %tobool37.not.i.i, i32 %55, i32 %or39.i.i
  br label %land.lhs.true.i.i27.i

land.lhs.true.i.i27.i:                            ; preds = %if.else34.i.i, %if.then32.i.i, %if.then26.i.i
  %flags.2.i.i = phi i32 [ %or27.i.i, %if.then26.i.i ], [ %or33.i.i, %if.then32.i.i ], [ %spec.select63.i.i, %if.else34.i.i ]
  %or45.i.i = or i32 %flags.2.i.i, 64
  %56 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i.i26.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i.i26.i, label %land.lhs.true.i.i27.i.cleanup_crit_edge, label %land.lhs.true2.i.i30.i

land.lhs.true.i.i27.i.cleanup_crit_edge:          ; preds = %land.lhs.true.i.i27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i.i30.i:                           ; preds = %land.lhs.true.i.i27.i
  %write.i.i28.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %write.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i.i28.i, align 4
  %tobool4.not.i.i29.i = icmp eq ptr %59, null
  br i1 %tobool4.not.i.i29.i, label %land.lhs.true2.i.i30.i.cleanup_crit_edge, label %if.then.i.i32.i

land.lhs.true2.i.i30.i.cleanup_crit_edge:         ; preds = %land.lhs.true2.i.i30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.i32.i:                                  ; preds = %land.lhs.true2.i.i30.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i31.i = tail call i32 %59(ptr noundef nonnull %phy, i32 noundef %or45.i.i, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i32.i, %land.lhs.true2.i.i30.i.cleanup_crit_edge, %land.lhs.true.i.i27.i.cleanup_crit_edge, %ulpi_set_ic_flags.exit.i.cleanup_crit_edge, %land.lhs.true2.i.i18.i.cleanup_crit_edge, %land.lhs.true.i.i15.i.cleanup_crit_edge, %ulpi_set_otg_flags.exit.i.cleanup_crit_edge, %land.lhs.true2.i.i.i.cleanup_crit_edge, %land.lhs.true.i.i.i.cleanup_crit_edge, %ulpi_check_integrity.exit.thread54, %usb_phy_io_read.exit.1.i.cleanup_crit_edge, %land.lhs.true2.i30.1.i.cleanup_crit_edge, %land.lhs.true.i28.1.i.cleanup_crit_edge, %usb_phy_io_write.exit.1.i.cleanup_crit_edge, %land.lhs.true2.i.1.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %usb_phy_io_read.exit.i.cleanup_crit_edge, %land.lhs.true2.i30.i.cleanup_crit_edge, %land.lhs.true.i28.i.cleanup_crit_edge, %usb_phy_io_write.exit.i.cleanup_crit_edge, %land.lhs.true2.i.i.cleanup_crit_edge, %for.body.preheader.i.cleanup_crit_edge, %usb_phy_io_read.exit.3.cleanup_crit_edge, %land.lhs.true2.i.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %usb_phy_io_read.exit.2.cleanup_crit_edge, %land.lhs.true2.i.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %usb_phy_io_read.exit.1.cleanup_crit_edge, %land.lhs.true2.i.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %usb_phy_io_read.exit.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %ulpi_check_integrity.exit.thread54 ], [ %call.i.i.i, %ulpi_set_otg_flags.exit.i.cleanup_crit_edge ], [ %call.i.i19.i, %ulpi_set_ic_flags.exit.i.cleanup_crit_edge ], [ %call.i.i31.i, %if.then.i.i32.i ], [ -22, %land.lhs.true2.i.i30.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i27.i.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.i18.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i15.i.cleanup_crit_edge ], [ %call.i31.1.i, %usb_phy_io_read.exit.1.i.cleanup_crit_edge ], [ -22, %land.lhs.true2.i30.1.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i28.1.i.cleanup_crit_edge ], [ %call.i.1.i, %usb_phy_io_write.exit.1.i.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.1.i.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i28.i.cleanup_crit_edge ], [ -22, %land.lhs.true2.i30.i.cleanup_crit_edge ], [ -22, %for.body.preheader.i.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.i.cleanup_crit_edge ], [ %call.i31.i, %usb_phy_io_read.exit.i.cleanup_crit_edge ], [ %call.i.i, %usb_phy_io_write.exit.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %usb_phy_io_read.exit.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.1.cleanup_crit_edge ], [ %call.i.1, %usb_phy_io_read.exit.1.cleanup_crit_edge ], [ -22, %if.end.1.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.2.cleanup_crit_edge ], [ %call.i.2, %usb_phy_io_read.exit.2.cleanup_crit_edge ], [ -22, %if.end.2.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.3.cleanup_crit_edge ], [ %call.i.3, %usb_phy_io_read.exit.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulpi_set_host(ptr nocapture noundef %otg, ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.usb_phy_io_read.exit_crit_edge, label %land.lhs.true.i

entry.usb_phy_io_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_io_read.exit

land.lhs.true.i:                                  ; preds = %entry
  %io_ops.i = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usb_phy_io_read.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.usb_phy_io_read.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_io_read.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.usb_phy_io_read.exit_crit_edge, label %if.then.i

land.lhs.true2.i.usb_phy_io_read.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_io_read.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 %5(ptr noundef nonnull %1, i32 noundef 7) #4
  %phi.bo = and i32 %call.i, -8
  br label %usb_phy_io_read.exit

usb_phy_io_read.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.usb_phy_io_read.exit_crit_edge, %land.lhs.true.i.usb_phy_io_read.exit_crit_edge, %entry.usb_phy_io_read.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.then.i ], [ -24, %land.lhs.true2.i.usb_phy_io_read.exit_crit_edge ], [ -24, %land.lhs.true.i.usb_phy_io_read.exit_crit_edge ], [ -24, %entry.usb_phy_io_read.exit_crit_edge ]
  %tobool.not = icmp eq ptr %host, null
  %host1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 3
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %usb_phy_io_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %host1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %host1, align 4
  br label %cleanup

if.end:                                           ; preds = %usb_phy_io_read.exit
  %7 = ptrtoint ptr %host1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %host, ptr %host1, align 4
  %flags3 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3, align 4
  %and4 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %retval.0.i, 1
  br label %if.end20

if.else:                                          ; preds = %if.end
  %and8 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %or11 = or i32 %retval.0.i, 2
  br label %if.end20

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %and14 = lshr i32 %9, 8
  %10 = and i32 %and14, 4
  %11 = or i32 %10, %retval.0.i
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then10, %if.then6
  %flags.0 = phi i32 [ %or, %if.then6 ], [ %or11, %if.then10 ], [ %11, %if.else12 ]
  br i1 %tobool.not.i, label %if.end20.cleanup_crit_edge, label %land.lhs.true.i37

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i37:                                ; preds = %if.end20
  %io_ops.i35 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %io_ops.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_ops.i35, align 4
  %tobool1.not.i36 = icmp eq ptr %13, null
  br i1 %tobool1.not.i36, label %land.lhs.true.i37.cleanup_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.cleanup_crit_edge:              ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %write.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i, align 4
  %tobool4.not.i38 = icmp eq ptr %15, null
  br i1 %tobool4.not.i38, label %land.lhs.true2.i39.cleanup_crit_edge, label %if.then.i41

land.lhs.true2.i39.cleanup_crit_edge:             ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i41:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #6
  %call.i40 = tail call i32 %15(ptr noundef nonnull %1, i32 noundef %flags.0, i32 noundef 7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i41, %land.lhs.true2.i39.cleanup_crit_edge, %land.lhs.true.i37.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call.i40, %if.then.i41 ], [ -22, %land.lhs.true2.i39.cleanup_crit_edge ], [ -22, %land.lhs.true.i37.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulpi_set_vbus(ptr nocapture noundef readonly %otg, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.usb_phy_io_read.exit_crit_edge, label %land.lhs.true.i

entry.usb_phy_io_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_io_read.exit

land.lhs.true.i:                                  ; preds = %entry
  %io_ops.i = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usb_phy_io_read.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.usb_phy_io_read.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_io_read.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.usb_phy_io_read.exit_crit_edge, label %if.then.i

land.lhs.true2.i.usb_phy_io_read.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_io_read.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 %5(ptr noundef nonnull %1, i32 noundef 10) #4
  %phi.bo = and i32 %call.i, -97
  br label %usb_phy_io_read.exit

usb_phy_io_read.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.usb_phy_io_read.exit_crit_edge, %land.lhs.true.i.usb_phy_io_read.exit_crit_edge, %entry.usb_phy_io_read.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.then.i ], [ -118, %land.lhs.true2.i.usb_phy_io_read.exit_crit_edge ], [ -118, %land.lhs.true.i.usb_phy_io_read.exit_crit_edge ], [ -118, %entry.usb_phy_io_read.exit_crit_edge ]
  br i1 %on, label %if.then, label %usb_phy_io_read.exit.if.end11_crit_edge

usb_phy_io_read.exit.if.end11_crit_edge:          ; preds = %usb_phy_io_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %usb_phy_io_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %flags1 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 4
  %and2 = and i32 %7, 32
  %8 = or i32 %and2, %retval.0.i
  %and6 = and i32 %7, 64
  %9 = or i32 %8, %and6
  br label %if.end11

if.end11:                                         ; preds = %if.then, %usb_phy_io_read.exit.if.end11_crit_edge
  %flags.1 = phi i32 [ %retval.0.i, %usb_phy_io_read.exit.if.end11_crit_edge ], [ %9, %if.then ]
  br i1 %tobool.not.i, label %if.end11.usb_phy_io_write.exit_crit_edge, label %land.lhs.true.i23

if.end11.usb_phy_io_write.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_io_write.exit

land.lhs.true.i23:                                ; preds = %if.end11
  %io_ops.i21 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %io_ops.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_ops.i21, align 4
  %tobool1.not.i22 = icmp eq ptr %11, null
  br i1 %tobool1.not.i22, label %land.lhs.true.i23.usb_phy_io_write.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.usb_phy_io_write.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_io_write.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %write.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool4.not.i24 = icmp eq ptr %13, null
  br i1 %tobool4.not.i24, label %land.lhs.true2.i25.usb_phy_io_write.exit_crit_edge, label %if.then.i27

land.lhs.true2.i25.usb_phy_io_write.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_io_write.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #6
  %call.i26 = tail call i32 %13(ptr noundef nonnull %1, i32 noundef %flags.1, i32 noundef 10) #4
  br label %usb_phy_io_write.exit

usb_phy_io_write.exit:                            ; preds = %if.then.i27, %land.lhs.true2.i25.usb_phy_io_write.exit_crit_edge, %land.lhs.true.i23.usb_phy_io_write.exit_crit_edge, %if.end11.usb_phy_io_write.exit_crit_edge
  %retval.0.i28 = phi i32 [ %call.i26, %if.then.i27 ], [ -22, %land.lhs.true2.i25.usb_phy_io_write.exit_crit_edge ], [ -22, %land.lhs.true.i23.usb_phy_io_write.exit_crit_edge ], [ -22, %if.end11.usb_phy_io_write.exit_crit_edge ]
  ret i32 %retval.0.i28
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__ksymtab_otg_ulpi_create, !1, !"__ksymtab_otg_ulpi_create", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 279, i32 1}
!2 = !{ptr @__ksymtab_devm_otg_ulpi_create, !3, !"__ksymtab_devm_otg_ulpi_create", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 303, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 247, i32 15}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 182, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ulpi_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ulpi_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 186, i32 4}
!14 = !{ptr @ulpi_init._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ulpi_init._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 35, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 36, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 37, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 38, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 39, i32 2}
!26 = !{ptr @ulpi_ids, !27, !"ulpi_ids", i1 false, i1 false}
!27 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 34, i32 25}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 157, i32 4}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ulpi_check_integrity._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ulpi_check_integrity._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/phy/phy-ulpi.c", i32 163, i32 2}
!35 = !{ptr @ulpi_check_integrity._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ulpi_check_integrity._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
