; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/btmtk.c_pt.bc'
source_filename = "../drivers/bluetooth/btmtk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+btmtk_setup_firmware_79xx\22, \22a\22\09"
module asm "\09.weak\09__crc_btmtk_setup_firmware_79xx\09\09\09\09"
module asm "\09.long\09__crc_btmtk_setup_firmware_79xx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmtk_setup_firmware_79xx:\09\09\09\09\09"
module asm "\09.asciz \09\22btmtk_setup_firmware_79xx\22\09\09\09\09\09"
module asm "__kstrtabns_btmtk_setup_firmware_79xx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+btmtk_setup_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_btmtk_setup_firmware\09\09\09\09"
module asm "\09.long\09__crc_btmtk_setup_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmtk_setup_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22btmtk_setup_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_btmtk_setup_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+btmtk_set_bdaddr\22, \22a\22\09"
module asm "\09.weak\09__crc_btmtk_set_bdaddr\09\09\09\09"
module asm "\09.long\09__crc_btmtk_set_bdaddr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmtk_set_bdaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22btmtk_set_bdaddr\22\09\09\09\09\09"
module asm "__kstrtabns_btmtk_set_bdaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.btmtk_hci_wmt_params = type { i8, i8, i16, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.firmware = type { i32, ptr, ptr }
%struct.btmtk_section_map = type { i32, i32, i32, %union.anon.145 }
%union.anon.145 = type { [13 x i32] }
%struct.anon.146 = type { i32, i32, i32, i32, i32, i32, i32, [6 x i32] }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to load firmware file (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to send wmt patch dwnld (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed wmt patch dwnld status (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_btmtk_setup_firmware_79xx = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmtk_setup_firmware_79xx = external dso_local constant [0 x i8], align 1
@__ksymtab_btmtk_setup_firmware_79xx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmtk_setup_firmware_79xx to i32), ptr @__kstrtab_btmtk_setup_firmware_79xx, ptr @__kstrtabns_btmtk_setup_firmware_79xx }, section "___ksymtab_gpl+btmtk_setup_firmware_79xx", align 4
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Failed to power on data RAM (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed to send wmt rst (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_btmtk_setup_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmtk_setup_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_btmtk_setup_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmtk_setup_firmware to i32), ptr @__kstrtab_btmtk_setup_firmware, ptr @__kstrtabns_btmtk_setup_firmware }, section "___ksymtab_gpl+btmtk_setup_firmware", align 4
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: changing Mediatek device address failed (%ld)\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_btmtk_set_bdaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmtk_set_bdaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_btmtk_set_bdaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmtk_set_bdaddr to i32), ptr @__kstrtab_btmtk_set_bdaddr, ptr @__kstrtabns_btmtk_set_bdaddr }, section "___ksymtab_gpl+btmtk_set_bdaddr", align 4
@__UNIQUE_ID_author479 = internal constant [48 x i8] c"btmtk.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author480 = internal constant [51 x i8] c"btmtk.author=Mark Chen <mark-yw.chen@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description481 = internal constant [65 x i8] c"btmtk.description=Bluetooth support for MediaTek devices ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version482 = internal constant [18 x i8] c"btmtk.version=0.1\00", section ".modinfo", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btmtk\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.7, ptr @.str.8 }, section "__modver", align 4
@__UNIQUE_ID_file483 = internal constant [35 x i8] c"btmtk.file=drivers/bluetooth/btmtk\00", section ".modinfo", align 1
@__UNIQUE_ID_license484 = internal constant [18 x i8] c"btmtk.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware485 = internal constant [39 x i8] c"btmtk.firmware=mediatek/mt7663pr2h.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware486 = internal constant [39 x i8] c"btmtk.firmware=mediatek/mt7668pr2h.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware487 = internal constant [55 x i8] c"btmtk.firmware=mediatek/BT_RAM_CODE_MT7961_1_2_hdr.bin\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 72, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 109, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 122, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 198, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 251, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 273, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [29 x i8] c"../drivers/bluetooth/btmtk.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 286, i32 1 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author479, ptr @__UNIQUE_ID_author480, ptr @__UNIQUE_ID_description481, ptr @__UNIQUE_ID_file483, ptr @__UNIQUE_ID_firmware485, ptr @__UNIQUE_ID_firmware486, ptr @__UNIQUE_ID_firmware487, ptr @__UNIQUE_ID_license484, ptr @__UNIQUE_ID_version482, ptr @__ksymtab_btmtk_set_bdaddr, ptr @__ksymtab_btmtk_setup_firmware, ptr @__ksymtab_btmtk_setup_firmware_79xx, ptr @__modver_attr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btmtk_setup_firmware_79xx(ptr noundef %hdev, ptr noundef %fwname, ptr nocapture noundef readonly %wmt_cmd_sync) #0 align 64 {
entry:
  %wmt_params = alloca %struct.btmtk_hci_wmt_params, align 4
  %fw = alloca ptr, align 4
  %status = alloca i32, align 4
  %cmd = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params) #4
  %0 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  %4 = call ptr @memset(ptr %wmt_params, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #4
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %7 = call ptr @memset(ptr %cmd, i32 255, i32 64)
  %dev = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fwname, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %section_num1 = getelementptr i8, ptr %11, i32 44
  %12 = ptrtoint ptr %section_num1 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %section_num1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2142.not = icmp eq i32 %13, 0
  br i1 %cmp2142.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr4 = getelementptr i8, ptr %11, i32 96
  %add.ptr11 = getelementptr inbounds i8, ptr %cmd, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %14, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %err.0143 = phi i32 [ %call, %for.body.lr.ph ], [ %err.4, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.0144, 6
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 %mul
  %secoffset = getelementptr inbounds %struct.btmtk_section_map, ptr %add.ptr5, i32 0, i32 1
  %15 = ptrtoint ptr %secoffset to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %secoffset, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = getelementptr %struct.btmtk_section_map, ptr %add.ptr5, i32 0, i32 3
  %dlsize = getelementptr inbounds %struct.anon.146, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dlsize to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %dlsize, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6.not = icmp eq i32 %20, 0
  br i1 %cmp6.not, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

while.body:                                       ; preds = %if.then33.while.body_crit_edge, %for.body.while.body_crit_edge
  %retry.0137 = phi i8 [ %dec, %if.then33.while.body_crit_edge ], [ 20, %for.body.while.body_crit_edge ]
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %cmd, align 1
  %23 = call ptr @memcpy(ptr %add.ptr11, ptr %18, i32 53)
  %24 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %wmt_params, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %status, ptr %3, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %0, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 53, ptr %1, align 2
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cmd, ptr %2, align 4
  %call21 = call i32 %wmt_cmd_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %name25 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %name25, i32 noundef %call21) #4
  br label %err_release_fw

if.end27:                                         ; preds = %while.body
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %if.else38 [
    i32 1, label %if.end27.while.body49.preheader_crit_edge
    i32 2, label %if.then33
    i32 3, label %if.end27.for.inc_crit_edge
  ]

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end27.while.body49.preheader_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body49.preheader

if.then33:                                        ; preds = %if.end27
  call void @msleep(i32 noundef 100) #4
  %dec = add nsw i8 %retry.0137, -1
  %cmp8.not = icmp eq i8 %dec, 0
  br i1 %cmp8.not, label %if.then33.while.body49.preheader_crit_edge, label %if.then33.while.body_crit_edge

if.then33.while.body_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.then33.while.body49.preheader_crit_edge:       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body49.preheader

if.else38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %name39 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2, ptr noundef %name39, i32 noundef %30) #4
  br label %err_release_fw

while.body49.preheader:                           ; preds = %if.then33.while.body49.preheader_crit_edge, %if.end27.while.body49.preheader_crit_edge
  %32 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %wmt_params, align 4
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %3, align 4
  %add.ptr43 = getelementptr i8, ptr %11, i32 %17
  br label %while.body49

while.body49:                                     ; preds = %if.end73.while.body49_crit_edge, %while.body49.preheader
  %dl_size.0141 = phi i32 [ %sub74, %if.end73.while.body49_crit_edge ], [ %21, %while.body49.preheader ]
  %first_block.0140 = phi i8 [ %first_block.1, %if.end73.while.body49_crit_edge ], [ 1, %while.body49.preheader ]
  %fw_ptr.0139 = phi ptr [ %add.ptr75, %if.end73.while.body49_crit_edge ], [ %add.ptr43, %while.body49.preheader ]
  %34 = call i32 @llvm.smin.i32(i32 %dl_size.0141, i32 250)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %first_block.0140)
  %cmp53 = icmp eq i8 %first_block.0140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %dl_size.0141)
  %cmp57 = icmp slt i32 %dl_size.0141, 251
  %. = select i1 %cmp57, i8 3, i8 2
  %flag.0 = select i1 %cmp53, i8 1, i8 %.
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %flag.0, ptr %0, align 1
  %conv64 = trunc i32 %34 to i16
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv64, ptr %1, align 2
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %fw_ptr.0139, ptr %2, align 4
  %call67 = call i32 %wmt_cmd_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.end73

if.then70:                                        ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #6
  %name71 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %name71, i32 noundef %call67) #4
  br label %err_release_fw

if.end73:                                         ; preds = %while.body49
  %first_block.1 = select i1 %cmp53, i8 0, i8 %first_block.0140
  %sub74 = sub i32 %dl_size.0141, %34
  %add.ptr75 = getelementptr i8, ptr %fw_ptr.0139, i32 %34
  %cmp47.not = icmp eq i32 %sub74, 0
  br i1 %cmp47.not, label %if.end73.for.inc_crit_edge, label %if.end73.while.body49_crit_edge

if.end73.while.body49_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body49

if.end73.for.inc_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %if.end73.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.4 = phi i32 [ %err.0143, %for.body.for.inc_crit_edge ], [ %call67, %if.end73.for.inc_crit_edge ], [ %call21, %if.end27.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %err.0.lcssa = phi i32 [ %call, %if.end.for.end_crit_edge ], [ %err.4, %for.inc.for.end_crit_edge ]
  call void @usleep_range_state(i32 noundef 100000, i32 noundef 120000, i32 noundef 2) #4
  br label %err_release_fw

err_release_fw:                                   ; preds = %for.end, %if.then70, %if.else38, %if.then24
  %err.5 = phi i32 [ %call21, %if.then24 ], [ %call67, %if.then70 ], [ -5, %if.else38 ], [ %err.0.lcssa, %for.end ]
  %38 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %39) #4
  br label %cleanup

cleanup:                                          ; preds = %err_release_fw, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %err.5, %err_release_fw ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btmtk_setup_firmware(ptr noundef %hdev, ptr noundef %fwname, ptr nocapture noundef readonly %wmt_cmd_sync) #0 align 64 {
entry:
  %wmt_params = alloca %struct.btmtk_hci_wmt_params, align 4
  %fw = alloca ptr, align 4
  %param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params) #4
  %0 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #4
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #4
  %dev = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fwname, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %param, align 1
  %6 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %wmt_params, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %1, align 2
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %param, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %3, align 4
  %call3 = call i32 %wmt_cmd_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %name6 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3, ptr noundef %name6, i32 noundef %call3) #4
  br label %err_release_fw

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %14)
  %cmp10 = icmp ult i32 %14, 30
  br i1 %cmp10, label %if.end8.err_release_fw_crit_edge, label %if.end12

if.end8.err_release_fw_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_release_fw

if.end12:                                         ; preds = %if.end8
  %data9 = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data9, align 4
  %sub = add i32 %14, -30
  %17 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %wmt_params, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp15.not88 = icmp eq i32 %sub, 0
  br i1 %cmp15.not88, label %if.end12.while.end_crit_edge, label %while.body.preheader

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %if.end12
  %add.ptr = getelementptr i8, ptr %16, i32 30
  br label %while.body

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.body.preheader
  %flag.091 = phi i8 [ %flag.1, %if.end35.while.body_crit_edge ], [ 1, %while.body.preheader ]
  %fw_size.090 = phi i32 [ %sub17, %if.end35.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %fw_ptr.089 = phi ptr [ %add.ptr37, %if.end35.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %19 = call i32 @llvm.smin.i32(i32 %fw_size.090, i32 250)
  %sub17 = sub i32 %fw_size.090, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp18 = icmp eq i32 %sub17, 0
  br i1 %cmp18, label %while.body.if.end25_crit_edge, label %if.else

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %sub21 = add i32 %23, -30
  call void @__sanitizer_cov_trace_cmp4(i32 %fw_size.090, i32 %sub21)
  %cmp22 = icmp ult i32 %fw_size.090, %sub21
  %spec.select = select i1 %cmp22, i8 2, i8 %flag.091
  br label %if.end25

if.end25:                                         ; preds = %if.else, %while.body.if.end25_crit_edge
  %flag.1 = phi i8 [ 3, %while.body.if.end25_crit_edge ], [ %spec.select, %if.else ]
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %flag.1, ptr %0, align 1
  %conv = trunc i32 %19 to i16
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %1, align 2
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %fw_ptr.089, ptr %2, align 4
  %call29 = call i32 %wmt_cmd_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %name33 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %name33, i32 noundef %call29) #4
  br label %err_release_fw

if.end35:                                         ; preds = %if.end25
  %add.ptr37 = getelementptr i8, ptr %fw_ptr.089, i32 %19
  br i1 %cmp18, label %if.end35.while.end_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %if.end12.while.end_crit_edge
  %27 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %wmt_params, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %0, align 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %1, align 2
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %2, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %3, align 4
  %call43 = call i32 %wmt_cmd_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end49

if.then46:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %name47 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, ptr noundef %name47, i32 noundef %call43) #4
  br label %err_release_fw

if.end49:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #4
  br label %err_release_fw

err_release_fw:                                   ; preds = %if.end49, %if.then46, %if.then32, %if.end8.err_release_fw_crit_edge, %if.then5
  %err.0 = phi i32 [ %call3, %if.then5 ], [ %call29, %if.then32 ], [ %call43, %if.then46 ], [ %call43, %if.end49 ], [ -22, %if.end8.err_release_fw_crit_edge ]
  %32 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %33) #4
  br label %cleanup

cleanup:                                          ; preds = %err_release_fw, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %err.0, %err_release_fw ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btmtk_set_bdaddr(ptr noundef %hdev, ptr noundef %bdaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -998, i32 noundef 6, ptr noundef %bdaddr, i32 noundef 1000) #4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call1 to i32
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %0) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/btmtk.c", i32 72, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/btmtk.c", i32 109, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/btmtk.c", i32 122, i32 6}
!6 = !{ptr @__ksymtab_btmtk_setup_firmware_79xx, !7, !"__ksymtab_btmtk_setup_firmware_79xx", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/btmtk.c", i32 170, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/btmtk.c", i32 198, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/btmtk.c", i32 251, i32 3}
!12 = !{ptr @__ksymtab_btmtk_setup_firmware, !13, !"__ksymtab_btmtk_setup_firmware", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/btmtk.c", i32 263, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/btmtk.c", i32 273, i32 3}
!16 = !{ptr @__ksymtab_btmtk_set_bdaddr, !17, !"__ksymtab_btmtk_set_bdaddr", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/btmtk.c", i32 281, i32 1}
!18 = !{ptr @__UNIQUE_ID_author479, !19, !"__UNIQUE_ID_author479", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/btmtk.c", i32 283, i32 1}
!20 = !{ptr @__UNIQUE_ID_author480, !21, !"__UNIQUE_ID_author480", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/btmtk.c", i32 284, i32 1}
!22 = !{ptr @__UNIQUE_ID_description481, !23, !"__UNIQUE_ID_description481", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/btmtk.c", i32 285, i32 1}
!24 = !{ptr @__UNIQUE_ID_version482, !25, !"__UNIQUE_ID_version482", i1 false, i1 false}
!25 = !{!"../drivers/bluetooth/btmtk.c", i32 286, i32 1}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__modver_attr, !25, !"__modver_attr", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_file483, !31, !"__UNIQUE_ID_file483", i1 false, i1 false}
!31 = !{!"../drivers/bluetooth/btmtk.c", i32 287, i32 1}
!32 = !{ptr @__UNIQUE_ID_license484, !31, !"__UNIQUE_ID_license484", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_firmware485, !34, !"__UNIQUE_ID_firmware485", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/btmtk.c", i32 288, i32 1}
!35 = !{ptr @__UNIQUE_ID_firmware486, !36, !"__UNIQUE_ID_firmware486", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/btmtk.c", i32 289, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware487, !38, !"__UNIQUE_ID_firmware487", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/btmtk.c", i32 290, i32 1}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
