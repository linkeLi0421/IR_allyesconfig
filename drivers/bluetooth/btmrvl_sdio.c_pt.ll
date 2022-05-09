; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/btmrvl_sdio.c_pt.bc'
source_filename = "../drivers/bluetooth/btmrvl_sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btmrvl_sdio_device = type { ptr, ptr, ptr, i8, i16, i8 }
%struct.btmrvl_sdio_card_reg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.memory_type_mapping = type { [8 x i8], ptr, i32, i8 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btmrvl_sdio_card = type { ptr, i32, ptr, ptr, ptr, i8, i8, i16, i8, ptr, ptr, ptr }
%struct.btmrvl_private = type { %struct.btmrvl_device, ptr, %struct.btmrvl_thread, ptr, ptr, ptr, %struct.spinlock, ptr, i8 }
%struct.btmrvl_device = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i8, i8 }
%struct.btmrvl_thread = type { ptr, %struct.wait_queue_head, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.btmrvl_adapter = type { ptr, ptr, i32, %struct.sk_buff_head, i8, i8, i8, i8, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.btmrvl_plt_wake_cfg = type { i32, i8 }

@user_rmmod = internal global { i1, [31 x i8] } zeroinitializer, align 32
@bt_mrvl_sdio = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.1, ptr @btmrvl_sdio_ids, ptr @btmrvl_sdio_probe, ptr @btmrvl_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @btmrvl_sdio_pm_ops, ptr @btmrvl_sdio_coredump, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_btmrvl_sdio__499_1779_btmrvl_sdio_init_module6 = internal global ptr @btmrvl_sdio_init_module, section ".initcall6.init", align 4
@__exitcall_btmrvl_sdio_exit_module = internal global ptr @btmrvl_sdio_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author500 = internal constant [46 x i8] c"btmrvl_sdio.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description501 = internal constant [60 x i8] c"btmrvl_sdio.description=Marvell BT-over-SDIO driver ver 1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version502 = internal constant [24 x i8] c"btmrvl_sdio.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"btmrvl_sdio\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file503 = internal constant [47 x i8] c"btmrvl_sdio.file=drivers/bluetooth/btmrvl_sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license504 = internal constant [27 x i8] c"btmrvl_sdio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware505 = internal constant [44 x i8] c"btmrvl_sdio.firmware=mrvl/sd8688_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware506 = internal constant [37 x i8] c"btmrvl_sdio.firmware=mrvl/sd8688.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware507 = internal constant [44 x i8] c"btmrvl_sdio.firmware=mrvl/sd8787_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware508 = internal constant [44 x i8] c"btmrvl_sdio.firmware=mrvl/sd8797_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware509 = internal constant [44 x i8] c"btmrvl_sdio.firmware=mrvl/sd8887_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware510 = internal constant [44 x i8] c"btmrvl_sdio.firmware=mrvl/sd8897_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware511 = internal constant [48 x i8] c"btmrvl_sdio.firmware=mrvl/sdsd8977_combo_v2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware512 = internal constant [44 x i8] c"btmrvl_sdio.firmware=mrvl/sd8987_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware513 = internal constant [48 x i8] c"btmrvl_sdio.firmware=mrvl/sdsd8997_combo_v4.bin\00", section ".modinfo", align 1
@btmrvl_sdio_ids = internal constant { [10 x %struct.sdio_device_id], [40 x i8] } { [10 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 735, i16 -28411, i32 ptrtoint (ptr @btmrvl_sdio_sd8688 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28390, i32 ptrtoint (ptr @btmrvl_sdio_sd8787 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28389, i32 ptrtoint (ptr @btmrvl_sdio_sd8787 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28374, i32 ptrtoint (ptr @btmrvl_sdio_sd8797 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28362, i32 ptrtoint (ptr @btmrvl_sdio_sd8887 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28370, i32 ptrtoint (ptr @btmrvl_sdio_sd8897 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28346, i32 ptrtoint (ptr @btmrvl_sdio_sd8977 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28342, i32 ptrtoint (ptr @btmrvl_sdio_sd8987 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28350, i32 ptrtoint (ptr @btmrvl_sdio_sd8997 to i32) }, %struct.sdio_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@btmrvl_sdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @btmrvl_sdio_suspend, ptr @btmrvl_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@btmrvl_sdio_sd8688 = internal constant { %struct.btmrvl_sdio_device, [44 x i8] } { %struct.btmrvl_sdio_device { ptr @.str.3, ptr @.str.4, ptr @btmrvl_reg_8688, i8 0, i16 64, i8 0 }, [44 x i8] zeroinitializer }, align 32
@btmrvl_sdio_sd8787 = internal constant { %struct.btmrvl_sdio_device, [44 x i8] } { %struct.btmrvl_sdio_device { ptr null, ptr @.str.5, ptr @btmrvl_reg_87xx, i8 0, i16 256, i8 0 }, [44 x i8] zeroinitializer }, align 32
@btmrvl_sdio_sd8797 = internal constant { %struct.btmrvl_sdio_device, [44 x i8] } { %struct.btmrvl_sdio_device { ptr null, ptr @.str.6, ptr @btmrvl_reg_87xx, i8 0, i16 256, i8 0 }, [44 x i8] zeroinitializer }, align 32
@btmrvl_sdio_sd8887 = internal constant { %struct.btmrvl_sdio_device, [44 x i8] } { %struct.btmrvl_sdio_device { ptr null, ptr @.str.7, ptr @btmrvl_reg_8887, i8 1, i16 256, i8 0 }, [44 x i8] zeroinitializer }, align 32
@btmrvl_sdio_sd8897 = internal constant { %struct.btmrvl_sdio_device, [44 x i8] } { %struct.btmrvl_sdio_device { ptr null, ptr @.str.8, ptr @btmrvl_reg_8897, i8 1, i16 256, i8 1 }, [44 x i8] zeroinitializer }, align 32
@btmrvl_sdio_sd8977 = internal constant { %struct.btmrvl_sdio_device, [44 x i8] } { %struct.btmrvl_sdio_device { ptr null, ptr @.str.9, ptr @btmrvl_reg_89xx, i8 1, i16 256, i8 1 }, [44 x i8] zeroinitializer }, align 32
@btmrvl_sdio_sd8987 = internal constant { %struct.btmrvl_sdio_device, [44 x i8] } { %struct.btmrvl_sdio_device { ptr null, ptr @.str.10, ptr @btmrvl_reg_89xx, i8 1, i16 256, i8 1 }, [44 x i8] zeroinitializer }, align 32
@btmrvl_sdio_sd8997 = internal constant { %struct.btmrvl_sdio_device, [44 x i8] } { %struct.btmrvl_sdio_device { ptr null, ptr @.str.11, ptr @btmrvl_reg_89xx, i8 1, i16 256, i8 1 }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8688_helper.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mrvl/sd8688.bin\00", [16 x i8] zeroinitializer }, align 32
@btmrvl_reg_8688 = internal constant { %struct.btmrvl_sdio_card_reg, [44 x i8] } { %struct.btmrvl_sdio_card_reg { i8 3, i8 4, i8 5, i8 32, i8 16, i8 17, i8 0, i8 64, i8 65, i8 66, i8 67, i8 0, i8 1, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8787_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@btmrvl_reg_87xx = internal constant { %struct.btmrvl_sdio_card_reg, [44 x i8] } { %struct.btmrvl_sdio_card_reg { i8 0, i8 2, i8 3, i8 48, i8 64, i8 65, i8 92, i8 96, i8 97, i8 98, i8 99, i8 120, i8 121, i8 122, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8797_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8887_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@btmrvl_reg_8887 = internal constant { %struct.btmrvl_sdio_card_reg, [44 x i8] } { %struct.btmrvl_sdio_card_reg { i8 0, i8 8, i8 12, i8 92, i8 108, i8 109, i8 -56, i8 -120, i8 -119, i8 -118, i8 -117, i8 -28, i8 -27, i8 -26, i8 1, i8 4, i8 -40, i8 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8897_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@btmrvl_reg_8897 = internal constant { %struct.btmrvl_sdio_card_reg, [44 x i8] } { %struct.btmrvl_sdio_card_reg { i8 0, i8 2, i8 3, i8 80, i8 96, i8 97, i8 -68, i8 -64, i8 -63, i8 -62, i8 -61, i8 -40, i8 -39, i8 -38, i8 1, i8 1, i8 -52, i8 -30, i8 -29, i8 -22 }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mrvl/sdsd8977_combo_v2.bin\00", [37 x i8] zeroinitializer }, align 32
@btmrvl_reg_89xx = internal constant { %struct.btmrvl_sdio_card_reg, [44 x i8] } { %struct.btmrvl_sdio_card_reg { i8 0, i8 8, i8 12, i8 92, i8 -8, i8 -7, i8 -56, i8 -24, i8 -23, i8 -22, i8 -21, i8 -28, i8 -27, i8 -26, i8 1, i8 4, i8 -40, i8 -16, i8 -15, i8 -8 }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8987_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mrvl/sdsd8997_combo_v4.bin\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"vendor=0x%x, device=0x%x, class=%d, fn=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register BT device!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Downloading firmware failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Initializing card failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Register hdev failed!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error: card or function is NULL!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sdio_enable_func() failed: ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sdio_claim_irq failed: ret=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot set SDIO block size\0A\00", [36 x i8] zeroinitializer }, align 32
@btmrvl_sdio_register_dev.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.22, ptr @.str.23, i8 0, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"btmrvl_sdio_register_dev\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/bluetooth/btmrvl_sdio.c\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SDIO FUNC%d IO port: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sbi_interrupt(%p) card or priv is NULL, card=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@sdio_ireg = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sdio_readsb: read int hw_regs failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@btmrvl_sdio_read_to_clear.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.22, ptr @.str.27, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"btmrvl_sdio_read_to_clear\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw_regs[%#x]=%#x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sdio_readb: read int status failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@btmrvl_sdio_write_to_clear.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.22, ptr @.str.30, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"btmrvl_sdio_write_to_clear\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"int_status = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sdio_writeb: clear int status failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to disable the host interrupt!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"card or function is NULL!\0A\00", [37 x i8] zeroinitializer }, align 32
@btmrvl_sdio_download_fw.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.22, ptr @.str.35, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"btmrvl_sdio_download_fw\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Firmware already downloaded!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read FW downloading status!\0A\00", [57 x i8] zeroinitializer }, align 32
@btmrvl_sdio_download_fw.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.22, ptr @.str.37, i8 1, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"BT not the winner (%#x). Skip FW downloading\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to download helper!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to download firmware!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FW failed to be active in time!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"request_firmware(helper) failed, error code = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@btmrvl_sdio_download_helper.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.22, ptr @.str.43, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"btmrvl_sdio_download_helper\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Downloading helper image (%d bytes), block size %d bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unable to allocate buffer for helper. Terminating download\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Helper download poll status timeout @ %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IO error during helper download @ %d\0A\00", [58 x i8] zeroinitializer }, align 32
@btmrvl_sdio_download_helper.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.22, ptr @.str.47, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Transferring helper image EOF block\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"IO error in writing helper image EOF block\0A\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FAILED! ret=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"request_firmware(firmware) failed, error code = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@btmrvl_sdio_download_fw_w_helper.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.22, ptr @.str.52, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"btmrvl_sdio_download_fw_w_helper\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Downloading FW image (%d bytes)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Unable to allocate buffer for firmware. Terminating download\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"FW download with helper poll status timeout @ %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"BASE0 register read failed: base0 = 0x%04X(%d). Terminating download\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"BASE1 register read failed: base1 = 0x%04X(%d). Terminating download\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FW download failure @%d, invalid length %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FW download failure @%d, over max retry count\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"FW CRC error indicated by the helper: len = 0x%04X, txlen = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FW download, writesb(%d) failed @%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"writeb failed (CFG)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FW download over, size %d bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to enable the host interrupt!\0A\00", [58 x i8] zeroinitializer }, align 32
@btmrvl_sdio_of_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,sd8897-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,sd8997-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@btmrvl_sdio_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.22, i32 91, ptr @.str.66, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sdio device tree data not available\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"btmrvl_sdio_probe_of\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@btmrvl_sdio_probe_of._entry_ptr = internal global ptr @btmrvl_sdio_probe_of._entry, section ".printk_index", align 4
@btmrvl_sdio_probe_of._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.65, ptr @.str.22, i32 103, ptr @.str.70, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fail to parse irq_bt from device tree\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@btmrvl_sdio_probe_of._entry_ptr.71 = internal global ptr @btmrvl_sdio_probe_of._entry.68, section ".printk_index", align 4
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bt_wake\00", [24 x i8] zeroinitializer }, align 32
@btmrvl_sdio_probe_of._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.65, ptr @.str.22, i32 112, ptr @.str.70, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request irq_bt %d (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@btmrvl_sdio_probe_of._entry_ptr.75 = internal global ptr @btmrvl_sdio_probe_of._entry.73, section ".printk_index", align 4
@btmrvl_wake_irq_bt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.22, i32 68, ptr @.str.66, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wake by bt\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btmrvl_wake_irq_bt\00", [45 x i8] zeroinitializer }, align 32
@btmrvl_wake_irq_bt._entry_ptr = internal global ptr @btmrvl_wake_irq_bt._entry, section ".printk_index", align 4
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i=%d writesb failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hex: %*ph\0A\00", [21 x i8] zeroinitializer }, align 32
@btmrvl_sdio_wakeup_fw.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.22, ptr @.str.81, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btmrvl_sdio_wakeup_fw\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wake up firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@btmrvl_sdio_process_int_status.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.22, ptr @.str.83, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"btmrvl_sdio_process_int_status\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tx_done already received:  int_status=0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read rx_len failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid packet length: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No free skb\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"readsb failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Skip incorrect packet: hdrlen %d buffer %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown packet type:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@btmrvl_sdio_remove.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.22, ptr @.str.91, i8 1, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btmrvl_sdio_remove\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unregister dev\0A\00", [16 x i8] zeroinitializer }, align 32
@btmrvl_sdio_suspend.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.22, ptr @.str.93, i8 1, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"btmrvl_sdio_suspend\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: suspend: PM flags = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: cannot remain alive while suspended\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"card or priv structure is not valid\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sdio_func is not specified\0A\00", [36 x i8] zeroinitializer }, align 32
@btmrvl_sdio_suspend.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.22, ptr @.str.97, i8 1, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: SDIO suspend\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HS not activated, suspend failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@btmrvl_sdio_suspend.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.22, ptr @.str.99, i8 1, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"suspend with MMC_PM_KEEP_POWER\0A\00", [32 x i8] zeroinitializer }, align 32
@btmrvl_sdio_suspend.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.22, ptr @.str.100, i8 1, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"suspend without MMC_PM_KEEP_POWER\0A\00", [61 x i8] zeroinitializer }, align 32
@btmrvl_sdio_resume.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.22, ptr @.str.102, i8 1, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btmrvl_sdio_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: resume: PM flags = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@btmrvl_sdio_resume.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.22, ptr @.str.103, i8 1, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device already resumed\0A\00", [40 x i8] zeroinitializer }, align 32
@btmrvl_sdio_resume.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.22, ptr @.str.104, i8 1, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: HS DEACTIVATED in resume!\0A\00", [33 x i8] zeroinitializer }, align 32
@btmrvl_sdio_resume.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.22, ptr @.str.105, i8 1, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: SDIO resume\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Firmware dump not supported for this card!\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_type_mapping_tbl = internal global { [15 x %struct.memory_type_mapping], [84 x i8] } { [15 x %struct.memory_type_mapping] [%struct.memory_type_mapping { [8 x i8] c"ITCM\00\00\00\00", ptr null, i32 0, i8 -16 }, %struct.memory_type_mapping { [8 x i8] c"DTCM\00\00\00\00", ptr null, i32 0, i8 -15 }, %struct.memory_type_mapping { [8 x i8] c"SQRAM\00\00\00", ptr null, i32 0, i8 -14 }, %struct.memory_type_mapping { [8 x i8] c"APU\00\00\00\00\00", ptr null, i32 0, i8 -13 }, %struct.memory_type_mapping { [8 x i8] c"CIU\00\00\00\00\00", ptr null, i32 0, i8 -12 }, %struct.memory_type_mapping { [8 x i8] c"ICU\00\00\00\00\00", ptr null, i32 0, i8 -11 }, %struct.memory_type_mapping { [8 x i8] c"MAC\00\00\00\00\00", ptr null, i32 0, i8 -10 }, %struct.memory_type_mapping { [8 x i8] c"EXT7\00\00\00\00", ptr null, i32 0, i8 -9 }, %struct.memory_type_mapping { [8 x i8] c"EXT8\00\00\00\00", ptr null, i32 0, i8 -8 }, %struct.memory_type_mapping { [8 x i8] c"EXT9\00\00\00\00", ptr null, i32 0, i8 -7 }, %struct.memory_type_mapping { [8 x i8] c"EXT10\00\00\00", ptr null, i32 0, i8 -6 }, %struct.memory_type_mapping { [8 x i8] c"EXT11\00\00\00", ptr null, i32 0, i8 -5 }, %struct.memory_type_mapping { [8 x i8] c"EXT12\00\00\00", ptr null, i32 0, i8 -4 }, %struct.memory_type_mapping { [8 x i8] c"EXT13\00\00\00", ptr null, i32 0, i8 -3 }, %struct.memory_type_mapping { [8 x i8] c"EXTLAST\00", ptr null, i32 0, i8 -2 }], [84 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"== btmrvl firmware dump start ==\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SDIO read memory length err\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDIO read err\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware dump finished!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SDIO Write MEMDUMP_FINISH ERR\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s_SIZE=0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vzalloc %s failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Start %s output, please wait...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Allocated buffer not enough\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s done: size=0x%tx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"== btmrvl firmware dump end ==\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Vzalloc fw_dump_data fail!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"== btmrvl firmware dump to /sys/class/devcoredump start\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"========Start dump %s========\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A========End dump========\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"== btmrvl firmware dump to /sys/class/devcoredump end\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SDIO Func%d (%#x-%#x): \00", [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SDIO write err\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"The ctrl reg was changed, re-try again!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Fail to pull ctrl_data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SDIO Driver Registration Failed\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 4, i64 254]
@___asan_gen_.131 = private unnamed_addr constant [11 x i8] c"user_rmmod\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"bt_mrvl_sdio\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1746, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1784, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"btmrvl_sdio_ids\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 313, i32 36 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c"btmrvl_sdio_pm_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1741, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"btmrvl_sdio_sd8688\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 241, i32 40 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"btmrvl_sdio_sd8787\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 250, i32 40 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"btmrvl_sdio_sd8797\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 259, i32 40 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"btmrvl_sdio_sd8887\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 268, i32 40 }
@___asan_gen_.162 = private unnamed_addr constant [19 x i8] c"btmrvl_sdio_sd8897\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 277, i32 40 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"btmrvl_sdio_sd8977\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 286, i32 40 }
@___asan_gen_.168 = private unnamed_addr constant [19 x i8] c"btmrvl_sdio_sd8987\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 295, i32 40 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"btmrvl_sdio_sd8997\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 304, i32 40 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 242, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 243, i32 14 }
@___asan_gen_.180 = private unnamed_addr constant [16 x i8] c"btmrvl_reg_8688\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 141, i32 42 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 252, i32 14 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"btmrvl_reg_87xx\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 157, i32 42 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 261, i32 14 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 270, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"btmrvl_reg_8887\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 175, i32 42 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 279, i32 14 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"btmrvl_reg_8897\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 195, i32 42 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 288, i32 20 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"btmrvl_reg_89xx\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 218, i32 42 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 297, i32 14 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 306, i32 20 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1529, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1549, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1557, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1569, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1582, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 954, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 965, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 972, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 979, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1008, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 922, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [10 x i8] c"sdio_ireg\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 139, i32 11 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 872, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 877, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 888, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 898, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 904, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 419, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1162, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1167, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1176, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1181, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1189, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1196, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1207, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 486, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 495, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 502, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 519, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 544, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 552, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 559, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 445, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 586, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 595, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 600, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 615, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 628, i32 5 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 638, i32 5 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 656, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 667, i32 5 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 672, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 693, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 698, i32 5 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 704, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 398, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [27 x i8] c"btmrvl_sdio_of_match_table\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 56, i32 34 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 91, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 103, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 108, i32 16 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 110, i32 5 }
@___asan_gen_.411 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 68, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1138, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1139, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1237, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 851, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 733, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 743, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 751, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 768, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 782, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 820, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1612, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1630, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1633, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1639, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1643, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1658, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1663, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1682, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1686, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1700, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1714, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1721, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1723, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1362, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant [21 x i8] c"mem_type_mapping_tbl\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 38, i32 35 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1379, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1390, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1407, i32 5 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1415, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1419, i32 5 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1425, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1429, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1443, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1462, i32 6 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1466, i32 5 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1474, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1484, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1492, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1499, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1508, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1519, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1269, i32 23 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1278, i32 25 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1285, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1304, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1322, i32 4 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1334, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.577 = private constant [35 x i8] c"../drivers/bluetooth/btmrvl_sdio.c\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1761, i32 3 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_author500, ptr @__UNIQUE_ID_description501, ptr @__UNIQUE_ID_file503, ptr @__UNIQUE_ID_firmware505, ptr @__UNIQUE_ID_firmware506, ptr @__UNIQUE_ID_firmware507, ptr @__UNIQUE_ID_firmware508, ptr @__UNIQUE_ID_firmware509, ptr @__UNIQUE_ID_firmware510, ptr @__UNIQUE_ID_firmware511, ptr @__UNIQUE_ID_firmware512, ptr @__UNIQUE_ID_firmware513, ptr @__UNIQUE_ID_license504, ptr @__UNIQUE_ID_version502, ptr @__exitcall_btmrvl_sdio_exit_module, ptr @__initcall__kmod_btmrvl_sdio__499_1779_btmrvl_sdio_init_module6, ptr @__modver_attr, ptr @btmrvl_sdio_exit_module, ptr @btmrvl_sdio_probe_of._entry, ptr @btmrvl_sdio_probe_of._entry.68, ptr @btmrvl_sdio_probe_of._entry.73, ptr @btmrvl_sdio_probe_of._entry_ptr, ptr @btmrvl_sdio_probe_of._entry_ptr.71, ptr @btmrvl_sdio_probe_of._entry_ptr.75, ptr @btmrvl_wake_irq_bt._entry, ptr @btmrvl_wake_irq_bt._entry_ptr, ptr @user_rmmod, ptr @bt_mrvl_sdio, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @btmrvl_sdio_ids, ptr @btmrvl_sdio_pm_ops, ptr @btmrvl_sdio_sd8688, ptr @btmrvl_sdio_sd8787, ptr @btmrvl_sdio_sd8797, ptr @btmrvl_sdio_sd8887, ptr @btmrvl_sdio_sd8897, ptr @btmrvl_sdio_sd8977, ptr @btmrvl_sdio_sd8987, ptr @btmrvl_sdio_sd8997, ptr @.str.3, ptr @.str.4, ptr @btmrvl_reg_8688, ptr @.str.5, ptr @btmrvl_reg_87xx, ptr @.str.6, ptr @.str.7, ptr @btmrvl_reg_8887, ptr @.str.8, ptr @btmrvl_reg_8897, ptr @.str.9, ptr @btmrvl_reg_89xx, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @sdio_ireg, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @btmrvl_sdio_of_match_table, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @mem_type_mapping_tbl, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [150 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_rmmod to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_mrvl_sdio to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_sd8688 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_sd8787 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_sd8797 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_sd8887 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_sd8897 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_sd8977 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_sd8987 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_sd8997 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_reg_8688 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_reg_87xx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_reg_8887 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_reg_8897 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_reg_89xx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_ireg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_of_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_probe_of._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_sdio_probe_of._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmrvl_wake_irq_bt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_type_mapping_tbl to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @btmrvl_sdio_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @user_rmmod, align 1
  tail call void @sdio_unregister_driver(ptr noundef nonnull @bt_mrvl_sdio) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @bt_mrvl_sdio) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.130) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 false, ptr @user_rmmod, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_probe(ptr noundef %func, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %ret.i1.i = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.sdio_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 2
  %conv = zext i16 %1 to i32
  %device = getelementptr inbounds %struct.sdio_device_id, ptr %id, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 4
  %conv1 = zext i16 %3 to i32
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv2 = zext i8 %5 to i32
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %7) #10
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %func, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.sdio_device_id, ptr %id, i32 0, i32 3
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.if.end16_crit_edge, label %if.then5

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = inttoptr i32 %10 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %helper7 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %helper7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %helper7, align 4
  %firmware = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %firmware, align 4
  %firmware8 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %firmware8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %firmware8, align 4
  %reg = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  %reg9 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %reg9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %reg9, align 4
  %sd_blksz_fw_dl = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %sd_blksz_fw_dl to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sd_blksz_fw_dl, align 2
  %sd_blksz_fw_dl10 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %sd_blksz_fw_dl10 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %sd_blksz_fw_dl10, align 2
  %support_pscan_win_report = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %support_pscan_win_report to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %support_pscan_win_report, align 4, !range !342
  %support_pscan_win_report12 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %support_pscan_win_report12 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %support_pscan_win_report12, align 4
  %supports_fw_dump = getelementptr inbounds %struct.btmrvl_sdio_device, ptr %11, i32 0, i32 5
  %27 = ptrtoint ptr %supports_fw_dump to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %supports_fw_dump, align 4, !range !342
  %supports_fw_dump14 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %supports_fw_dump14 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %supports_fw_dump14, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then5, %if.end.if.end16_crit_edge
  %call17 = tail call fastcc i32 @btmrvl_sdio_register_dev(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  tail call fastcc void @btmrvl_sdio_disable_host_int(ptr noundef nonnull %call.i)
  %call22 = tail call fastcc i32 @btmrvl_sdio_download_fw(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false.i, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14) #10
  br label %land.lhs.true.i82

lor.lhs.false.i:                                  ; preds = %if.end20
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.btmrvl_sdio_enable_host_int.exit_crit_edge, label %if.end.i

lor.lhs.false.i.btmrvl_sdio_enable_host_int.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_enable_host_int.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  tail call void @sdio_claim_host(ptr noundef nonnull %31) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #10
  %32 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %ret.i.i, align 4, !annotation !343
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %reg.i.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i, align 4
  %host_int_mask.i.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %host_int_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %host_int_mask.i.i, align 1
  %conv.i.i = zext i8 %38 to i32
  call void @sdio_writeb(ptr noundef %34, i8 noundef zeroext 3, i32 noundef %conv.i.i, ptr noundef nonnull %ret.i.i) #10
  %39 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ret.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.end.i.btmrvl_sdio_enable_host_int_mask.exit.i_crit_edge, label %if.then.i.i

if.end.i.btmrvl_sdio_enable_host_int_mask.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_enable_host_int_mask.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.63) #10
  br label %btmrvl_sdio_enable_host_int_mask.exit.i

btmrvl_sdio_enable_host_int_mask.exit.i:          ; preds = %if.then.i.i, %if.end.i.btmrvl_sdio_enable_host_int_mask.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i1.i) #10
  %41 = ptrtoint ptr %ret.i1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %ret.i1.i, align 4, !annotation !343
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %44 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i.i, align 4
  %card_rx_unit.i.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %card_rx_unit.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %card_rx_unit.i.i, align 1
  %conv.i2.i = zext i8 %47 to i32
  %call.i.i = call zeroext i8 @sdio_readb(ptr noundef %43, i32 noundef %conv.i2.i, ptr noundef nonnull %ret.i1.i) #10
  %48 = ptrtoint ptr %ret.i1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ret.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i3.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i3.i, label %if.then.i4.i, label %btmrvl_sdio_enable_host_int_mask.exit.i.btmrvl_sdio_get_rx_unit.exit.i_crit_edge

btmrvl_sdio_enable_host_int_mask.exit.i.btmrvl_sdio_get_rx_unit.exit.i_crit_edge: ; preds = %btmrvl_sdio_enable_host_int_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_get_rx_unit.exit.i

if.then.i4.i:                                     ; preds = %btmrvl_sdio_enable_host_int_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_unit.i.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 8
  %50 = ptrtoint ptr %rx_unit.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %call.i.i, ptr %rx_unit.i.i, align 4
  br label %btmrvl_sdio_get_rx_unit.exit.i

btmrvl_sdio_get_rx_unit.exit.i:                   ; preds = %if.then.i4.i, %btmrvl_sdio_enable_host_int_mask.exit.i.btmrvl_sdio_get_rx_unit.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i1.i) #10
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  call void @sdio_release_host(ptr noundef %52) #10
  br label %btmrvl_sdio_enable_host_int.exit

btmrvl_sdio_enable_host_int.exit:                 ; preds = %btmrvl_sdio_get_rx_unit.exit.i, %lor.lhs.false.i.btmrvl_sdio_enable_host_int.exit_crit_edge
  %of_node.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 27
  %53 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i75 = icmp eq ptr %54, null
  br i1 %tobool.not.i75, label %btmrvl_sdio_enable_host_int.exit.do.end.i_crit_edge, label %lor.lhs.false.i77

btmrvl_sdio_enable_host_int.exit.do.end.i_crit_edge: ; preds = %btmrvl_sdio_enable_host_int.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i77:                                ; preds = %btmrvl_sdio_enable_host_int.exit
  %call.i76 = call ptr @of_match_node(ptr noundef nonnull @btmrvl_sdio_of_match_table, ptr noundef nonnull %54) #10
  %tobool2.not.i = icmp eq ptr %call.i76, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i77.do.end.i_crit_edge, label %if.end.i79

lor.lhs.false.i77.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i77.do.end.i_crit_edge, %btmrvl_sdio_enable_host_int.exit.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.64) #13
  br label %btmrvl_sdio_probe_of.exit

if.end.i79:                                       ; preds = %lor.lhs.false.i77
  %55 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node.i, align 8
  %plt_of_node.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 10
  %57 = ptrtoint ptr %plt_of_node.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %plt_of_node.i, align 4
  %call.i.i78 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #10
  %plt_wake_cfg.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 11
  %58 = ptrtoint ptr %plt_wake_cfg.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i78, ptr %plt_wake_cfg.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i.i78, null
  br i1 %tobool6.not.i, label %if.end.i79.btmrvl_sdio_probe_of.exit_crit_edge, label %land.lhs.true.i

if.end.i79.btmrvl_sdio_probe_of.exit_crit_edge:   ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_probe_of.exit

land.lhs.true.i:                                  ; preds = %if.end.i79
  %59 = ptrtoint ptr %plt_of_node.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %plt_of_node.i, align 4
  %tobool8.not.i = icmp eq ptr %60, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.btmrvl_sdio_probe_of.exit_crit_edge, label %if.then9.i

land.lhs.true.i.btmrvl_sdio_probe_of.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_probe_of.exit

if.then9.i:                                       ; preds = %land.lhs.true.i
  %call11.i = call i32 @irq_of_parse_and_map(ptr noundef nonnull %60, i32 noundef 0) #10
  %61 = ptrtoint ptr %call.i.i78 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call11.i, ptr %call.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %do.end17.i, label %if.else.i

do.end17.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #13
  %62 = ptrtoint ptr %call.i.i78 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %call.i.i78, align 4
  br label %btmrvl_sdio_probe_of.exit

if.else.i:                                        ; preds = %if.then9.i
  %call.i1.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call11.i, ptr noundef nonnull @btmrvl_wake_irq_bt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.72, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool21.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool21.not.i, label %if.else.i.if.end27.i_crit_edge, label %do.end25.i

if.else.i.if.end27.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

do.end25.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %call.i.i78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call.i.i78, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %64, i32 noundef %call.i1.i) #13
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end25.i, %if.else.i.if.end27.i_crit_edge
  %call28.i = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #10
  %65 = ptrtoint ptr %call.i.i78 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call.i.i78, align 4
  call void @disable_irq(i32 noundef %66) #10
  br label %btmrvl_sdio_probe_of.exit

btmrvl_sdio_probe_of.exit:                        ; preds = %if.end27.i, %do.end17.i, %land.lhs.true.i.btmrvl_sdio_probe_of.exit_crit_edge, %if.end.i79.btmrvl_sdio_probe_of.exit_crit_edge, %do.end.i
  %call29 = call ptr @btmrvl_add_card(ptr noundef nonnull %call.i) #10
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %btmrvl_sdio_probe_of.exit.disable_host_int_crit_edge, label %if.end32

btmrvl_sdio_probe_of.exit.disable_host_int_crit_edge: ; preds = %btmrvl_sdio_probe_of.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_host_int

if.end32:                                         ; preds = %btmrvl_sdio_probe_of.exit
  %priv33 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %call.i, i32 0, i32 9
  %67 = ptrtoint ptr %priv33 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call29, ptr %priv33, align 4
  %hw_host_to_card = getelementptr inbounds %struct.btmrvl_private, ptr %call29, i32 0, i32 3
  %68 = ptrtoint ptr %hw_host_to_card to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @btmrvl_sdio_host_to_card, ptr %hw_host_to_card, align 4
  %hw_wakeup_firmware = getelementptr inbounds %struct.btmrvl_private, ptr %call29, i32 0, i32 4
  %69 = ptrtoint ptr %hw_wakeup_firmware to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @btmrvl_sdio_wakeup_fw, ptr %hw_wakeup_firmware, align 4
  %hw_process_int_status = getelementptr inbounds %struct.btmrvl_private, ptr %call29, i32 0, i32 5
  %70 = ptrtoint ptr %hw_process_int_status to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @btmrvl_sdio_process_int_status, ptr %hw_process_int_status, align 4
  %call34 = call i32 @btmrvl_register_hdev(ptr noundef nonnull %call29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end32.cleanup_crit_edge, label %if.end32.disable_host_int_crit_edge

if.end32.disable_host_int_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_host_int

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

disable_host_int:                                 ; preds = %if.end32.disable_host_int_crit_edge, %btmrvl_sdio_probe_of.exit.disable_host_int_crit_edge
  %.str.16.sink = phi ptr [ @.str.15, %btmrvl_sdio_probe_of.exit.disable_host_int_crit_edge ], [ @.str.16, %if.end32.disable_host_int_crit_edge ]
  call void (ptr, ...) @bt_err(ptr noundef nonnull %.str.16.sink) #10
  call fastcc void @btmrvl_sdio_disable_host_int(ptr noundef nonnull %call.i)
  br label %land.lhs.true.i82

land.lhs.true.i82:                                ; preds = %disable_host_int, %if.then24
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %tobool1.not.i81 = icmp eq ptr %72, null
  br i1 %tobool1.not.i81, label %land.lhs.true.i82.cleanup_crit_edge, label %if.then.i

land.lhs.true.i82.cleanup_crit_edge:              ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #12
  call void @sdio_claim_host(ptr noundef nonnull %72) #10
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  %call.i83 = call i32 @sdio_release_irq(ptr noundef %74) #10
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %call5.i = call i32 @sdio_disable_func(ptr noundef %76) #10
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  call void @sdio_release_host(ptr noundef %78) #10
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %80, i32 0, i32 1, i32 8
  %81 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i82.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then19 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ -19, %land.lhs.true.i82.cleanup_crit_edge ], [ -19, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btmrvl_sdio_remove(ptr noundef readonly %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %func, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then:                                          ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end18_crit_edge, label %if.then2

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then2:                                         ; preds = %if.then
  %.b = load i1, ptr @user_rmmod, align 1
  br i1 %.b, label %if.then4, label %if.then2.do.body_crit_edge

if.then2.do.body_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call5 = tail call i32 @btmrvl_send_module_cfg_cmd(ptr noundef %3, i8 noundef zeroext -14) #10
  tail call fastcc void @btmrvl_sdio_disable_host_int(ptr noundef nonnull %1)
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.then2.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_remove.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_remove, %if.then11)) #10
          to label %land.lhs.true.i [label %if.then11], !srcloc !344

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_remove.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.91) #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then11, %do.body
  %priv13 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %priv13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv13, align 4
  %surprise_removed = getelementptr inbounds %struct.btmrvl_private, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %surprise_removed, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.btmrvl_sdio_unregister_dev.exit_crit_edge, label %if.then.i

land.lhs.true.i.btmrvl_sdio_unregister_dev.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_unregister_dev.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sdio_claim_host(ptr noundef nonnull %8) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @sdio_release_irq(ptr noundef %10) #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call5.i = tail call i32 @sdio_disable_func(ptr noundef %12) #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %14) #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %16, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %btmrvl_sdio_unregister_dev.exit

btmrvl_sdio_unregister_dev.exit:                  ; preds = %if.then.i, %land.lhs.true.i.btmrvl_sdio_unregister_dev.exit_crit_edge
  %18 = ptrtoint ptr %priv13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv13, align 4
  %call16 = tail call i32 @btmrvl_remove_card(ptr noundef %19) #10
  br label %if.end18

if.end18:                                         ; preds = %btmrvl_sdio_unregister_dev.exit, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btmrvl_sdio_coredump(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %buf.i = alloca [256 x i8], align 1
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ret, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %priv2 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %7 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ret.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #10
  %call.i = tail call i32 @btmrvl_sdio_wakeup_fw(ptr noundef %4) #10
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 4
  tail call void @sdio_claim_host(ptr noundef %9) #10
  %10 = call ptr @memset(ptr %buf.i, i32 0, i32 256)
  %call9.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.123, i32 noundef 0, i32 noundef 0, i32 noundef 9) #10
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %call9.i
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %call19.i = call zeroext i8 @sdio_f0_readb(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %ret.i) #10
  %13 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then24.i, label %entry.if.else28.i_crit_edge

entry.if.else28.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i:                                      ; preds = %entry
  %conv25.i = zext i8 %call19.i to i32
  %call26.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.124, i32 noundef %conv25.i) #10
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i, i32 %call26.i
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  %call19.i.1 = call zeroext i8 @sdio_f0_readb(ptr noundef %16, i32 noundef 1, ptr noundef nonnull %ret.i) #10
  %17 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.1 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.1, label %if.then24.i.1, label %if.then24.i.if.else28.i_crit_edge

if.then24.i.if.else28.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i.1:                                    ; preds = %if.then24.i
  %conv25.i.1 = zext i8 %call19.i.1 to i32
  %call26.i.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.i, ptr noundef nonnull @.str.124, i32 noundef %conv25.i.1) #10
  %add.ptr27.i.1 = getelementptr i8, ptr %add.ptr27.i, i32 %call26.i.1
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  %call19.i.2 = call zeroext i8 @sdio_f0_readb(ptr noundef %20, i32 noundef 2, ptr noundef nonnull %ret.i) #10
  %21 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.2 = icmp eq i32 %22, 0
  br i1 %tobool.not.i.2, label %if.then24.i.2, label %if.then24.i.1.if.else28.i_crit_edge

if.then24.i.1.if.else28.i_crit_edge:              ; preds = %if.then24.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i.2:                                    ; preds = %if.then24.i.1
  %conv25.i.2 = zext i8 %call19.i.2 to i32
  %call26.i.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.i.1, ptr noundef nonnull @.str.124, i32 noundef %conv25.i.2) #10
  %add.ptr27.i.2 = getelementptr i8, ptr %add.ptr27.i.1, i32 %call26.i.2
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %6, align 4
  %call19.i.3 = call zeroext i8 @sdio_f0_readb(ptr noundef %24, i32 noundef 3, ptr noundef nonnull %ret.i) #10
  %25 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.3 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.3, label %if.then24.i.3, label %if.then24.i.2.if.else28.i_crit_edge

if.then24.i.2.if.else28.i_crit_edge:              ; preds = %if.then24.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i.3:                                    ; preds = %if.then24.i.2
  %conv25.i.3 = zext i8 %call19.i.3 to i32
  %call26.i.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.i.2, ptr noundef nonnull @.str.124, i32 noundef %conv25.i.3) #10
  %add.ptr27.i.3 = getelementptr i8, ptr %add.ptr27.i.2, i32 %call26.i.3
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %6, align 4
  %call19.i.4 = call zeroext i8 @sdio_f0_readb(ptr noundef %28, i32 noundef 4, ptr noundef nonnull %ret.i) #10
  %29 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.4 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.4, label %if.then24.i.4, label %if.then24.i.3.if.else28.i_crit_edge

if.then24.i.3.if.else28.i_crit_edge:              ; preds = %if.then24.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i.4:                                    ; preds = %if.then24.i.3
  %conv25.i.4 = zext i8 %call19.i.4 to i32
  %call26.i.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.i.3, ptr noundef nonnull @.str.124, i32 noundef %conv25.i.4) #10
  %add.ptr27.i.4 = getelementptr i8, ptr %add.ptr27.i.3, i32 %call26.i.4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %6, align 4
  %call19.i.5 = call zeroext i8 @sdio_f0_readb(ptr noundef %32, i32 noundef 5, ptr noundef nonnull %ret.i) #10
  %33 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.5 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.5, label %if.then24.i.5, label %if.then24.i.4.if.else28.i_crit_edge

if.then24.i.4.if.else28.i_crit_edge:              ; preds = %if.then24.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i.5:                                    ; preds = %if.then24.i.4
  %conv25.i.5 = zext i8 %call19.i.5 to i32
  %call26.i.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.i.4, ptr noundef nonnull @.str.124, i32 noundef %conv25.i.5) #10
  %add.ptr27.i.5 = getelementptr i8, ptr %add.ptr27.i.4, i32 %call26.i.5
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %6, align 4
  %call19.i.6 = call zeroext i8 @sdio_f0_readb(ptr noundef %36, i32 noundef 6, ptr noundef nonnull %ret.i) #10
  %37 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.6 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.6, label %if.then24.i.6, label %if.then24.i.5.if.else28.i_crit_edge

if.then24.i.5.if.else28.i_crit_edge:              ; preds = %if.then24.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i.6:                                    ; preds = %if.then24.i.5
  %conv25.i.6 = zext i8 %call19.i.6 to i32
  %call26.i.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.i.5, ptr noundef nonnull @.str.124, i32 noundef %conv25.i.6) #10
  %add.ptr27.i.6 = getelementptr i8, ptr %add.ptr27.i.5, i32 %call26.i.6
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %6, align 4
  %call19.i.7 = call zeroext i8 @sdio_f0_readb(ptr noundef %40, i32 noundef 7, ptr noundef nonnull %ret.i) #10
  %41 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.7 = icmp eq i32 %42, 0
  br i1 %tobool.not.i.7, label %if.then24.i.7, label %if.then24.i.6.if.else28.i_crit_edge

if.then24.i.6.if.else28.i_crit_edge:              ; preds = %if.then24.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i.7:                                    ; preds = %if.then24.i.6
  %conv25.i.7 = zext i8 %call19.i.7 to i32
  %call26.i.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.i.6, ptr noundef nonnull @.str.124, i32 noundef %conv25.i.7) #10
  %add.ptr27.i.7 = getelementptr i8, ptr %add.ptr27.i.6, i32 %call26.i.7
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %6, align 4
  %call19.i.8 = call zeroext i8 @sdio_f0_readb(ptr noundef %44, i32 noundef 8, ptr noundef nonnull %ret.i) #10
  %45 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.8 = icmp eq i32 %46, 0
  br i1 %tobool.not.i.8, label %if.then24.i.8, label %if.then24.i.7.if.else28.i_crit_edge

if.then24.i.7.if.else28.i_crit_edge:              ; preds = %if.then24.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i.8:                                    ; preds = %if.then24.i.7
  %conv25.i.8 = zext i8 %call19.i.8 to i32
  %call26.i.8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.i.7, ptr noundef nonnull @.str.124, i32 noundef %conv25.i.8) #10
  %add.ptr27.i.8 = getelementptr i8, ptr %add.ptr27.i.7, i32 %call26.i.8
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %6, align 4
  %call19.i.9 = call zeroext i8 @sdio_f0_readb(ptr noundef %48, i32 noundef 9, ptr noundef nonnull %ret.i) #10
  %49 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.9 = icmp eq i32 %50, 0
  br i1 %tobool.not.i.9, label %if.then24.i.9, label %if.then24.i.8.if.else28.i_crit_edge

if.then24.i.8.if.else28.i_crit_edge:              ; preds = %if.then24.i.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then24.i.9:                                    ; preds = %if.then24.i.8
  call void @__sanitizer_cov_trace_pc() #12
  %conv25.i.9 = zext i8 %call19.i.9 to i32
  %call26.i.9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.i.8, ptr noundef nonnull @.str.124, i32 noundef %conv25.i.9) #10
  br label %for.end.i

if.else28.i:                                      ; preds = %if.then24.i.8.if.else28.i_crit_edge, %if.then24.i.7.if.else28.i_crit_edge, %if.then24.i.6.if.else28.i_crit_edge, %if.then24.i.5.if.else28.i_crit_edge, %if.then24.i.4.if.else28.i_crit_edge, %if.then24.i.3.if.else28.i_crit_edge, %if.then24.i.2.if.else28.i_crit_edge, %if.then24.i.1.if.else28.i_crit_edge, %if.then24.i.if.else28.i_crit_edge, %entry.if.else28.i_crit_edge
  %ptr.058.i.lcssa = phi ptr [ %add.ptr.i, %entry.if.else28.i_crit_edge ], [ %add.ptr27.i, %if.then24.i.if.else28.i_crit_edge ], [ %add.ptr27.i.1, %if.then24.i.1.if.else28.i_crit_edge ], [ %add.ptr27.i.2, %if.then24.i.2.if.else28.i_crit_edge ], [ %add.ptr27.i.3, %if.then24.i.3.if.else28.i_crit_edge ], [ %add.ptr27.i.4, %if.then24.i.4.if.else28.i_crit_edge ], [ %add.ptr27.i.5, %if.then24.i.5.if.else28.i_crit_edge ], [ %add.ptr27.i.6, %if.then24.i.6.if.else28.i_crit_edge ], [ %add.ptr27.i.7, %if.then24.i.7.if.else28.i_crit_edge ], [ %add.ptr27.i.8, %if.then24.i.8.if.else28.i_crit_edge ]
  %51 = ptrtoint ptr %ptr.058.i.lcssa to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 1163022848, ptr %ptr.058.i.lcssa, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %if.else28.i, %if.then24.i.9
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.126, ptr noundef nonnull %buf.i) #10
  %52 = call ptr @memset(ptr %buf.i, i32 0, i32 256)
  %call9.1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.123, i32 noundef 2, i32 noundef 0, i32 noundef 9) #10
  %add.ptr.1.i = getelementptr i8, ptr %buf.i, i32 %call9.1.i
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %6, align 4
  %call22.1.i = call zeroext i8 @sdio_readb(ptr noundef %54, i32 noundef 0, ptr noundef nonnull %ret.i) #10
  %55 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.1.i = icmp eq i32 %56, 0
  br i1 %tobool.not.1.i, label %if.then24.1.i, label %for.end.i.if.else28.1.i_crit_edge

for.end.i.if.else28.1.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.else28.1.i:                                    ; preds = %if.then24.1.i.8.if.else28.1.i_crit_edge, %if.then24.1.i.7.if.else28.1.i_crit_edge, %if.then24.1.i.6.if.else28.1.i_crit_edge, %if.then24.1.i.5.if.else28.1.i_crit_edge, %if.then24.1.i.4.if.else28.1.i_crit_edge, %if.then24.1.i.3.if.else28.1.i_crit_edge, %if.then24.1.i.2.if.else28.1.i_crit_edge, %if.then24.1.i.1.if.else28.1.i_crit_edge, %if.then24.1.i.if.else28.1.i_crit_edge, %for.end.i.if.else28.1.i_crit_edge
  %ptr.058.1.i.lcssa = phi ptr [ %add.ptr.1.i, %for.end.i.if.else28.1.i_crit_edge ], [ %add.ptr27.1.i, %if.then24.1.i.if.else28.1.i_crit_edge ], [ %add.ptr27.1.i.1, %if.then24.1.i.1.if.else28.1.i_crit_edge ], [ %add.ptr27.1.i.2, %if.then24.1.i.2.if.else28.1.i_crit_edge ], [ %add.ptr27.1.i.3, %if.then24.1.i.3.if.else28.1.i_crit_edge ], [ %add.ptr27.1.i.4, %if.then24.1.i.4.if.else28.1.i_crit_edge ], [ %add.ptr27.1.i.5, %if.then24.1.i.5.if.else28.1.i_crit_edge ], [ %add.ptr27.1.i.6, %if.then24.1.i.6.if.else28.1.i_crit_edge ], [ %add.ptr27.1.i.7, %if.then24.1.i.7.if.else28.1.i_crit_edge ], [ %add.ptr27.1.i.8, %if.then24.1.i.8.if.else28.1.i_crit_edge ]
  %57 = ptrtoint ptr %ptr.058.1.i.lcssa to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 1163022848, ptr %ptr.058.1.i.lcssa, align 1
  br label %btmrvl_sdio_dump_regs.exit

if.then24.1.i:                                    ; preds = %for.end.i
  %conv25.1.i = zext i8 %call22.1.i to i32
  %call26.1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1.i, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i) #10
  %add.ptr27.1.i = getelementptr i8, ptr %add.ptr.1.i, i32 %call26.1.i
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %6, align 4
  %call22.1.i.1 = call zeroext i8 @sdio_readb(ptr noundef %59, i32 noundef 1, ptr noundef nonnull %ret.i) #10
  %60 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.1.i.1 = icmp eq i32 %61, 0
  br i1 %tobool.not.1.i.1, label %if.then24.1.i.1, label %if.then24.1.i.if.else28.1.i_crit_edge

if.then24.1.i.if.else28.1.i_crit_edge:            ; preds = %if.then24.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.then24.1.i.1:                                  ; preds = %if.then24.1.i
  %conv25.1.i.1 = zext i8 %call22.1.i.1 to i32
  %call26.1.i.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.1.i, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i.1) #10
  %add.ptr27.1.i.1 = getelementptr i8, ptr %add.ptr27.1.i, i32 %call26.1.i.1
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %6, align 4
  %call22.1.i.2 = call zeroext i8 @sdio_readb(ptr noundef %63, i32 noundef 2, ptr noundef nonnull %ret.i) #10
  %64 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.1.i.2 = icmp eq i32 %65, 0
  br i1 %tobool.not.1.i.2, label %if.then24.1.i.2, label %if.then24.1.i.1.if.else28.1.i_crit_edge

if.then24.1.i.1.if.else28.1.i_crit_edge:          ; preds = %if.then24.1.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.then24.1.i.2:                                  ; preds = %if.then24.1.i.1
  %conv25.1.i.2 = zext i8 %call22.1.i.2 to i32
  %call26.1.i.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.1.i.1, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i.2) #10
  %add.ptr27.1.i.2 = getelementptr i8, ptr %add.ptr27.1.i.1, i32 %call26.1.i.2
  %66 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %6, align 4
  %call22.1.i.3 = call zeroext i8 @sdio_readb(ptr noundef %67, i32 noundef 3, ptr noundef nonnull %ret.i) #10
  %68 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.1.i.3 = icmp eq i32 %69, 0
  br i1 %tobool.not.1.i.3, label %if.then24.1.i.3, label %if.then24.1.i.2.if.else28.1.i_crit_edge

if.then24.1.i.2.if.else28.1.i_crit_edge:          ; preds = %if.then24.1.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.then24.1.i.3:                                  ; preds = %if.then24.1.i.2
  %conv25.1.i.3 = zext i8 %call22.1.i.3 to i32
  %call26.1.i.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.1.i.2, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i.3) #10
  %add.ptr27.1.i.3 = getelementptr i8, ptr %add.ptr27.1.i.2, i32 %call26.1.i.3
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %6, align 4
  %call22.1.i.4 = call zeroext i8 @sdio_readb(ptr noundef %71, i32 noundef 4, ptr noundef nonnull %ret.i) #10
  %72 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.1.i.4 = icmp eq i32 %73, 0
  br i1 %tobool.not.1.i.4, label %if.then24.1.i.4, label %if.then24.1.i.3.if.else28.1.i_crit_edge

if.then24.1.i.3.if.else28.1.i_crit_edge:          ; preds = %if.then24.1.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.then24.1.i.4:                                  ; preds = %if.then24.1.i.3
  %conv25.1.i.4 = zext i8 %call22.1.i.4 to i32
  %call26.1.i.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.1.i.3, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i.4) #10
  %add.ptr27.1.i.4 = getelementptr i8, ptr %add.ptr27.1.i.3, i32 %call26.1.i.4
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %6, align 4
  %call22.1.i.5 = call zeroext i8 @sdio_readb(ptr noundef %75, i32 noundef 5, ptr noundef nonnull %ret.i) #10
  %76 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.1.i.5 = icmp eq i32 %77, 0
  br i1 %tobool.not.1.i.5, label %if.then24.1.i.5, label %if.then24.1.i.4.if.else28.1.i_crit_edge

if.then24.1.i.4.if.else28.1.i_crit_edge:          ; preds = %if.then24.1.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.then24.1.i.5:                                  ; preds = %if.then24.1.i.4
  %conv25.1.i.5 = zext i8 %call22.1.i.5 to i32
  %call26.1.i.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.1.i.4, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i.5) #10
  %add.ptr27.1.i.5 = getelementptr i8, ptr %add.ptr27.1.i.4, i32 %call26.1.i.5
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %6, align 4
  %call22.1.i.6 = call zeroext i8 @sdio_readb(ptr noundef %79, i32 noundef 6, ptr noundef nonnull %ret.i) #10
  %80 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.1.i.6 = icmp eq i32 %81, 0
  br i1 %tobool.not.1.i.6, label %if.then24.1.i.6, label %if.then24.1.i.5.if.else28.1.i_crit_edge

if.then24.1.i.5.if.else28.1.i_crit_edge:          ; preds = %if.then24.1.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.then24.1.i.6:                                  ; preds = %if.then24.1.i.5
  %conv25.1.i.6 = zext i8 %call22.1.i.6 to i32
  %call26.1.i.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.1.i.5, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i.6) #10
  %add.ptr27.1.i.6 = getelementptr i8, ptr %add.ptr27.1.i.5, i32 %call26.1.i.6
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %6, align 4
  %call22.1.i.7 = call zeroext i8 @sdio_readb(ptr noundef %83, i32 noundef 7, ptr noundef nonnull %ret.i) #10
  %84 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.1.i.7 = icmp eq i32 %85, 0
  br i1 %tobool.not.1.i.7, label %if.then24.1.i.7, label %if.then24.1.i.6.if.else28.1.i_crit_edge

if.then24.1.i.6.if.else28.1.i_crit_edge:          ; preds = %if.then24.1.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.then24.1.i.7:                                  ; preds = %if.then24.1.i.6
  %conv25.1.i.7 = zext i8 %call22.1.i.7 to i32
  %call26.1.i.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.1.i.6, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i.7) #10
  %add.ptr27.1.i.7 = getelementptr i8, ptr %add.ptr27.1.i.6, i32 %call26.1.i.7
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %6, align 4
  %call22.1.i.8 = call zeroext i8 @sdio_readb(ptr noundef %87, i32 noundef 8, ptr noundef nonnull %ret.i) #10
  %88 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.1.i.8 = icmp eq i32 %89, 0
  br i1 %tobool.not.1.i.8, label %if.then24.1.i.8, label %if.then24.1.i.7.if.else28.1.i_crit_edge

if.then24.1.i.7.if.else28.1.i_crit_edge:          ; preds = %if.then24.1.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.then24.1.i.8:                                  ; preds = %if.then24.1.i.7
  %conv25.1.i.8 = zext i8 %call22.1.i.8 to i32
  %call26.1.i.8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.1.i.7, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i.8) #10
  %add.ptr27.1.i.8 = getelementptr i8, ptr %add.ptr27.1.i.7, i32 %call26.1.i.8
  %90 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %6, align 4
  %call22.1.i.9 = call zeroext i8 @sdio_readb(ptr noundef %91, i32 noundef 9, ptr noundef nonnull %ret.i) #10
  %92 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.1.i.9 = icmp eq i32 %93, 0
  br i1 %tobool.not.1.i.9, label %if.then24.1.i.9, label %if.then24.1.i.8.if.else28.1.i_crit_edge

if.then24.1.i.8.if.else28.1.i_crit_edge:          ; preds = %if.then24.1.i.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.1.i

if.then24.1.i.9:                                  ; preds = %if.then24.1.i.8
  call void @__sanitizer_cov_trace_pc() #12
  %conv25.1.i.9 = zext i8 %call22.1.i.9 to i32
  %call26.1.i.9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27.1.i.8, ptr noundef nonnull @.str.124, i32 noundef %conv25.1.i.9) #10
  br label %btmrvl_sdio_dump_regs.exit

btmrvl_sdio_dump_regs.exit:                       ; preds = %if.then24.1.i.9, %if.else28.1.i
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.126, ptr noundef nonnull %buf.i) #10
  %94 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %6, align 4
  call void @sdio_release_host(ptr noundef %95) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  %supports_fw_dump = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %2, i32 0, i32 6
  %96 = ptrtoint ptr %supports_fw_dump to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %supports_fw_dump, align 1, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not = icmp eq i8 %97, 0
  br i1 %tobool.not, label %if.then, label %btmrvl_sdio_dump_regs.exit.for.body_crit_edge

btmrvl_sdio_dump_regs.exit.for.body_crit_edge:    ; preds = %btmrvl_sdio_dump_regs.exit
  br label %for.body

if.then:                                          ; preds = %btmrvl_sdio_dump_regs.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.106) #10
  br label %cleanup175

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %btmrvl_sdio_dump_regs.exit.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end9.for.body_crit_edge ], [ 0, %btmrvl_sdio_dump_regs.exit.for.body_crit_edge ]
  %mem_ptr = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv, i32 1
  %98 = ptrtoint ptr %mem_ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mem_ptr, align 4
  %tobool5.not = icmp eq ptr %99, null
  br i1 %tobool5.not, label %for.body.if.end9_crit_edge, label %if.then6

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @vfree(ptr noundef nonnull %99) #10
  %100 = ptrtoint ptr %mem_ptr to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %mem_ptr, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.body.if.end9_crit_edge
  %mem_size = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv, i32 2
  %101 = ptrtoint ptr %mem_size to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %mem_size, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 15
  br i1 %exitcond.not, label %for.end, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end9
  %call10 = call i32 @btmrvl_sdio_wakeup_fw(ptr noundef %4)
  %102 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %2, align 4
  call void @sdio_claim_host(ptr noundef %103) #10
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.107) #10
  %call12 = call fastcc i32 @btmrvl_sdio_rdwr_firmware(ptr noundef %4, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 1
  br i1 %cmp13, label %for.end.done.thread_crit_edge, label %if.end16

for.end.done.thread_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.thread

if.end16:                                         ; preds = %for.end
  %reg17 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %2, i32 0, i32 4
  %104 = ptrtoint ptr %reg17 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg17, align 4
  %fw_dump_start = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %105, i32 0, i32 18
  %106 = ptrtoint ptr %fw_dump_start to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %fw_dump_start, align 1
  %conv18 = zext i8 %107 to i32
  %108 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %2, align 4
  %call20 = call zeroext i8 @sdio_readb(ptr noundef %109, i32 noundef %conv18, ptr noundef nonnull %ret) #10
  %110 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool21.not = icmp eq i32 %111, 0
  br i1 %tobool21.not, label %for.cond24.preheader, label %if.then22

for.cond24.preheader:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20)
  %cmp27319.not = icmp eq i8 %call20, 0
  br i1 %cmp27319.not, label %for.cond24.preheader.for.end124_crit_edge, label %for.body29.preheader

for.cond24.preheader.for.end124_crit_edge:        ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end124

for.body29.preheader:                             ; preds = %for.cond24.preheader
  %wide.trip.count = zext i8 %call20 to i32
  br label %for.body29

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.108) #10
  br label %done.thread

for.body29:                                       ; preds = %for.inc122.for.body29_crit_edge, %for.body29.preheader
  %indvars.iv348 = phi i32 [ 0, %for.body29.preheader ], [ %indvars.iv.next349, %for.inc122.for.body29_crit_edge ]
  %fw_dump_len.0322 = phi i32 [ 0, %for.body29.preheader ], [ %add84, %for.inc122.for.body29_crit_edge ]
  %doneflag.0321 = phi i8 [ 0, %for.body29.preheader ], [ %143, %for.inc122.for.body29_crit_edge ]
  %arrayidx32 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv348
  %call33 = call fastcc i32 @btmrvl_sdio_rdwr_firmware(ptr noundef %4, i8 noundef zeroext %doneflag.0321)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 1
  br i1 %cmp34, label %for.body29.done_crit_edge, label %if.end37

for.body29.done_crit_edge:                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end37:                                         ; preds = %for.body29
  %112 = ptrtoint ptr %reg17 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg17, align 4
  %fw_dump_start39 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %113, i32 0, i32 18
  %114 = ptrtoint ptr %fw_dump_start39 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %fw_dump_start39, align 1
  %conv40 = zext i8 %115 to i32
  %116 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %2, align 4
  %call47 = call zeroext i8 @sdio_readb(ptr noundef %117, i32 noundef %conv40, ptr noundef nonnull %ret) #10
  %118 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool48.not = icmp eq i32 %119, 0
  br i1 %tobool48.not, label %if.end50, label %if.end37.if.then49_crit_edge

if.end37.if.then49_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.then49:                                        ; preds = %if.end50.2.if.then49_crit_edge, %if.end50.1.if.then49_crit_edge, %if.end50.if.then49_crit_edge, %if.end37.if.then49_crit_edge
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.109) #10
  br label %done

if.end50:                                         ; preds = %if.end37
  %inc53 = add nuw nsw i32 %conv40, 1
  %120 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %2, align 4
  %call47.1 = call zeroext i8 @sdio_readb(ptr noundef %121, i32 noundef %inc53, ptr noundef nonnull %ret) #10
  %122 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool48.not.1 = icmp eq i32 %123, 0
  br i1 %tobool48.not.1, label %if.end50.1, label %if.end50.if.then49_crit_edge

if.end50.if.then49_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.end50.1:                                       ; preds = %if.end50
  %inc53.1 = add nuw nsw i32 %conv40, 2
  %124 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %2, align 4
  %call47.2 = call zeroext i8 @sdio_readb(ptr noundef %125, i32 noundef %inc53.1, ptr noundef nonnull %ret) #10
  %126 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool48.not.2 = icmp eq i32 %127, 0
  br i1 %tobool48.not.2, label %if.end50.2, label %if.end50.1.if.then49_crit_edge

if.end50.1.if.then49_crit_edge:                   ; preds = %if.end50.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.end50.2:                                       ; preds = %if.end50.1
  %inc53.2 = add nuw nsw i32 %conv40, 3
  %128 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %2, align 4
  %call47.3 = call zeroext i8 @sdio_readb(ptr noundef %129, i32 noundef %inc53.2, ptr noundef nonnull %ret) #10
  %130 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool48.not.3 = icmp eq i32 %131, 0
  br i1 %tobool48.not.3, label %if.end50.3, label %if.end50.2.if.then49_crit_edge

if.end50.2.if.then49_crit_edge:                   ; preds = %if.end50.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.end50.3:                                       ; preds = %if.end50.2
  %conv51.2 = zext i8 %call47.2 to i32
  %shl.2 = shl nuw nsw i32 %conv51.2, 16
  %conv51.1 = zext i8 %call47.1 to i32
  %shl.1 = shl nuw nsw i32 %conv51.1, 8
  %conv51 = zext i8 %call47 to i32
  %or.1 = or i32 %shl.1, %conv51
  %or.2 = or i32 %shl.2, %or.1
  %conv51.3 = zext i8 %call47.3 to i32
  %shl.3 = shl nuw i32 %conv51.3, 24
  %or.3 = or i32 %shl.3, %or.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.3)
  %cmp57 = icmp eq i32 %or.3, 0
  br i1 %cmp57, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.end50.3
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.110) #10
  %132 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %2, align 4
  %134 = ptrtoint ptr %reg17 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg17, align 4
  %fw_dump_ctrl = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %135, i32 0, i32 17
  %136 = ptrtoint ptr %fw_dump_ctrl to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %fw_dump_ctrl, align 1
  %conv62 = zext i8 %137 to i32
  call void @sdio_writeb(ptr noundef %133, i8 noundef zeroext -2, i32 noundef %conv62, ptr noundef nonnull %ret) #10
  %138 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool63.not = icmp eq i32 %139, 0
  br i1 %tobool63.not, label %if.then59.for.end124_crit_edge, label %if.then64

if.then59.for.end124_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end124

if.then64:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.111) #10
  br label %done

if.end66:                                         ; preds = %if.end50.3
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.112, ptr noundef %arrayidx32, i32 noundef %or.3) #10
  %add = add i32 %or.3, 1
  %call67 = call noalias ptr @vzalloc(i32 noundef %add) #14
  %mem_ptr68 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv348, i32 1
  %140 = ptrtoint ptr %mem_ptr68 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call67, ptr %mem_ptr68, align 4
  %mem_size69 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv348, i32 2
  %141 = ptrtoint ptr %mem_size69 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or.3, ptr %mem_size69, align 4
  %tobool71.not = icmp eq ptr %call67, null
  br i1 %tobool71.not, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.113, ptr noundef %arrayidx32) #10
  br label %done

if.end75:                                         ; preds = %if.end66
  %call78 = call i32 @strlen(ptr noundef %arrayidx32) #15
  %add82 = add i32 %fw_dump_len.0322, 54
  %add83 = add i32 %add82, %add
  %add84 = add i32 %add83, %call78
  %add.ptr86 = getelementptr i8, ptr %call67, i32 %or.3
  %done_flag = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv348, i32 3
  %142 = ptrtoint ptr %done_flag to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %done_flag, align 4
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.114, ptr noundef %arrayidx32) #10
  br label %do.body

do.body:                                          ; preds = %for.end114.do.body_crit_edge, %if.end75
  %dbg_ptr.0 = phi ptr [ %call67, %if.end75 ], [ %dbg_ptr.1.lcssa, %for.end114.do.body_crit_edge ]
  %call89 = call fastcc i32 @btmrvl_sdio_rdwr_firmware(ptr noundef %4, i8 noundef zeroext %143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call89)
  %cmp90 = icmp eq i32 %call89, 1
  br i1 %cmp90, label %do.body.done_crit_edge, label %if.end93

do.body.done_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end93:                                         ; preds = %do.body
  %144 = ptrtoint ptr %reg17 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg17, align 4
  %fw_dump_start95 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %145, i32 0, i32 18
  %146 = ptrtoint ptr %fw_dump_start95 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %fw_dump_start95, align 1
  %fw_dump_end = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %145, i32 0, i32 19
  %148 = ptrtoint ptr %fw_dump_end to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %fw_dump_end, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %147, i8 %149)
  %cmp100.not316 = icmp ugt i8 %147, %149
  br i1 %cmp100.not316, label %if.end93.for.end114_crit_edge, label %for.body102.preheader

if.end93.for.end114_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end114

for.body102.preheader:                            ; preds = %if.end93
  %conv98 = zext i8 %149 to i32
  %conv96 = zext i8 %147 to i32
  br label %for.body102

for.body102:                                      ; preds = %for.inc112.for.body102_crit_edge, %for.body102.preheader
  %dbg_ptr.1318 = phi ptr [ %dbg_ptr.2, %for.inc112.for.body102_crit_edge ], [ %dbg_ptr.0, %for.body102.preheader ]
  %reg.1317 = phi i32 [ %inc113, %for.inc112.for.body102_crit_edge ], [ %conv96, %for.body102.preheader ]
  %150 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %2, align 4
  %call104 = call zeroext i8 @sdio_readb(ptr noundef %151, i32 noundef %reg.1317, ptr noundef nonnull %ret) #10
  %152 = ptrtoint ptr %dbg_ptr.1318 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %call104, ptr %dbg_ptr.1318, align 1
  %153 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool105.not = icmp eq i32 %154, 0
  br i1 %tobool105.not, label %if.end107, label %if.then106

if.then106:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.109) #10
  br label %done

if.end107:                                        ; preds = %for.body102
  %cmp108 = icmp ult ptr %dbg_ptr.1318, %add.ptr86
  br i1 %cmp108, label %if.then110, label %if.else

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr i8, ptr %dbg_ptr.1318, i32 1
  br label %for.inc112

if.else:                                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.115) #10
  br label %for.inc112

for.inc112:                                       ; preds = %if.else, %if.then110
  %dbg_ptr.2 = phi ptr [ %incdec.ptr, %if.then110 ], [ %dbg_ptr.1318, %if.else ]
  %inc113 = add nuw nsw i32 %reg.1317, 1
  %exitcond347 = icmp eq i32 %reg.1317, %conv98
  br i1 %exitcond347, label %for.inc112.for.end114_crit_edge, label %for.inc112.for.body102_crit_edge

for.inc112.for.body102_crit_edge:                 ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body102

for.inc112.for.end114_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end114

for.end114:                                       ; preds = %for.inc112.for.end114_crit_edge, %if.end93.for.end114_crit_edge
  %dbg_ptr.1.lcssa = phi ptr [ %dbg_ptr.0, %if.end93.for.end114_crit_edge ], [ %dbg_ptr.2, %for.inc112.for.end114_crit_edge ]
  %cmp115 = icmp eq i32 %call89, 2
  br i1 %cmp115, label %for.inc122, label %for.end114.do.body_crit_edge

for.end114.do.body_crit_edge:                     ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc122:                                       ; preds = %for.end114
  %155 = ptrtoint ptr %mem_ptr68 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mem_ptr68, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %dbg_ptr.1.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %156 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.116, ptr noundef %arrayidx32, i32 noundef %sub.ptr.sub) #10
  %indvars.iv.next349 = add nuw nsw i32 %indvars.iv348, 1
  %exitcond350.not = icmp eq i32 %indvars.iv.next349, %wide.trip.count
  br i1 %exitcond350.not, label %for.inc122.for.end124_crit_edge, label %for.inc122.for.body29_crit_edge

for.inc122.for.body29_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

for.inc122.for.end124_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end124

for.end124:                                       ; preds = %for.inc122.for.end124_crit_edge, %if.then59.for.end124_crit_edge, %for.cond24.preheader.for.end124_crit_edge
  %fw_dump_len.0303 = phi i32 [ %fw_dump_len.0322, %if.then59.for.end124_crit_edge ], [ 0, %for.cond24.preheader.for.end124_crit_edge ], [ %add84, %for.inc122.for.end124_crit_edge ]
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.117) #10
  br label %done

done.thread:                                      ; preds = %if.then22, %for.end.done.thread_crit_edge
  %157 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %2, align 4
  call void @sdio_release_host(ptr noundef %158) #10
  br label %cleanup175

done:                                             ; preds = %for.end124, %if.then106, %do.body.done_crit_edge, %if.then72, %if.then64, %if.then49, %for.body29.done_crit_edge
  %fw_dump_len.3 = phi i32 [ %fw_dump_len.0303, %for.end124 ], [ %fw_dump_len.0322, %if.then72 ], [ %add84, %if.then106 ], [ %fw_dump_len.0322, %if.then64 ], [ %fw_dump_len.0322, %if.then49 ], [ %add84, %do.body.done_crit_edge ], [ %fw_dump_len.0322, %for.body29.done_crit_edge ]
  %159 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %2, align 4
  call void @sdio_release_host(ptr noundef %160) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fw_dump_len.3)
  %cmp126 = icmp eq i32 %fw_dump_len.3, 0
  br i1 %cmp126, label %done.cleanup175_crit_edge, label %if.end129

done.cleanup175_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup175

if.end129:                                        ; preds = %done
  %add130 = add i32 %fw_dump_len.3, 1
  %call131 = call noalias ptr @vzalloc(i32 noundef %add130) #14
  %tobool132.not = icmp eq ptr %call131, null
  br i1 %tobool132.not, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.118) #10
  br label %cleanup175

if.end134:                                        ; preds = %if.end129
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.119) #10
  br i1 %cmp27319.not, label %if.end134.for.end172_crit_edge, label %for.body140.preheader

if.end134.for.end172_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end172

for.body140.preheader:                            ; preds = %if.end134
  %wide.trip.count353 = zext i8 %call20 to i32
  br label %for.body140

for.body140:                                      ; preds = %if.end169.for.body140_crit_edge, %for.body140.preheader
  %indvars.iv351 = phi i32 [ 0, %for.body140.preheader ], [ %indvars.iv.next352, %if.end169.for.body140_crit_edge ]
  %size.0326 = phi i32 [ 0, %for.body140.preheader ], [ %size.1, %if.end169.for.body140_crit_edge ]
  %mem_ptr144 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv351, i32 1
  %161 = ptrtoint ptr %mem_ptr144 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mem_ptr144, align 4
  %tobool145.not = icmp eq ptr %162, null
  br i1 %tobool145.not, label %for.body140.if.end169_crit_edge, label %if.then146

for.body140.if.end169_crit_edge:                  ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then146:                                       ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx143 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv351
  %add.ptr147 = getelementptr i8, ptr %call131, i32 %size.0326
  %sub = sub i32 %add130, %size.0326
  %call151 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr147, i32 noundef %sub, ptr noundef nonnull @.str.120, ptr noundef %arrayidx143) #10
  %add152 = add i32 %call151, %size.0326
  %add.ptr153 = getelementptr i8, ptr %call131, i32 %add152
  %163 = ptrtoint ptr %mem_ptr144 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mem_ptr144, align 4
  %mem_size155 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv351, i32 2
  %165 = ptrtoint ptr %mem_size155 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mem_size155, align 4
  %167 = call ptr @memcpy(ptr %add.ptr153, ptr %164, i32 %166)
  %add157 = add i32 %166, %add152
  %add.ptr158 = getelementptr i8, ptr %call131, i32 %add157
  %sub160 = sub i32 %add130, %add157
  %call161 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr158, i32 noundef %sub160, ptr noundef nonnull @.str.121) #10
  %add162 = add i32 %call161, %add157
  %168 = ptrtoint ptr %mem_ptr144 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mem_ptr144, align 4
  call void @vfree(ptr noundef %169) #10
  %170 = ptrtoint ptr %mem_ptr144 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %mem_ptr144, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then146, %for.body140.if.end169_crit_edge
  %size.1 = phi i32 [ %add162, %if.then146 ], [ %size.0326, %for.body140.if.end169_crit_edge ]
  %indvars.iv.next352 = add nuw nsw i32 %indvars.iv351, 1
  %exitcond354.not = icmp eq i32 %indvars.iv.next352, %wide.trip.count353
  br i1 %exitcond354.not, label %if.end169.for.end172_crit_edge, label %if.end169.for.body140_crit_edge

if.end169.for.body140_crit_edge:                  ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body140

if.end169.for.end172_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end172

for.end172:                                       ; preds = %if.end169.for.end172_crit_edge, %if.end134.for.end172_crit_edge
  %171 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %2, align 4
  %dev174 = getelementptr inbounds %struct.sdio_func, ptr %172, i32 0, i32 1
  call void @dev_coredumpv(ptr noundef %dev174, ptr noundef nonnull %call131, i32 noundef %fw_dump_len.3, i32 noundef 3264) #10
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.122) #10
  br label %cleanup175

cleanup175:                                       ; preds = %for.end172, %if.then133, %done.cleanup175_crit_edge, %done.thread, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_sdio_register_dev(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17) #10
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -22, ptr %ret, align 4
  br label %failed

if.end:                                           ; preds = %lor.lhs.false
  tail call void @sdio_claim_host(ptr noundef nonnull %1) #10
  %call = tail call i32 @sdio_enable_func(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, i32 noundef %call) #10
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -5, ptr %ret, align 4
  br label %release_host

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @sdio_claim_irq(ptr noundef nonnull %1, ptr noundef nonnull @btmrvl_sdio_interrupt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, i32 noundef %call7) #10
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -5, ptr %ret, align 4
  br label %disable_func

if.end10:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %call12 = tail call i32 @sdio_set_block_size(ptr noundef %6, i32 noundef 64) #10
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call12, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20) #10
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %ret, align 4
  br label %release_irq

if.end15:                                         ; preds = %if.end10
  %reg16 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 4
  %9 = ptrtoint ptr %reg16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg16, align 4
  %io_port_0 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %io_port_0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %io_port_0, align 1
  %conv = zext i8 %12 to i32
  %call17 = call zeroext i8 @sdio_readb(ptr noundef nonnull %1, i32 noundef %conv, ptr noundef nonnull %ret) #10
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -5, ptr %ret, align 4
  br label %release_irq

if.end20:                                         ; preds = %if.end15
  %conv21 = zext i8 %call17 to i32
  %ioport = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 1
  %16 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv21, ptr %ioport, align 4
  %17 = ptrtoint ptr %reg16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg16, align 4
  %io_port_1 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %io_port_1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %io_port_1, align 1
  %conv23 = zext i8 %20 to i32
  %call24 = call zeroext i8 @sdio_readb(ptr noundef nonnull %1, i32 noundef %conv23, ptr noundef nonnull %ret) #10
  %21 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp25 = icmp slt i32 %22, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -5, ptr %ret, align 4
  br label %release_irq

if.end28:                                         ; preds = %if.end20
  %conv29 = zext i8 %call24 to i32
  %shl = shl nuw nsw i32 %conv29, 8
  %24 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ioport, align 4
  %or = or i32 %25, %shl
  store i32 %or, ptr %ioport, align 4
  %26 = ptrtoint ptr %reg16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg16, align 4
  %io_port_2 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %io_port_2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %io_port_2, align 1
  %conv32 = zext i8 %29 to i32
  %call33 = call zeroext i8 @sdio_readb(ptr noundef nonnull %1, i32 noundef %conv32, ptr noundef nonnull %ret) #10
  %30 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp34 = icmp slt i32 %31, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -5, ptr %ret, align 4
  br label %release_irq

if.end37:                                         ; preds = %if.end28
  %conv38 = zext i8 %call33 to i32
  %shl39 = shl nuw nsw i32 %conv38, 16
  %33 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ioport, align 4
  %or41 = or i32 %34, %shl39
  store i32 %or41, ptr %ioport, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_register_dev.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_register_dev, %if.then46)) #10
          to label %do.end [label %if.then46], !srcloc !344

if.then46:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %num = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num, align 4
  %37 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ioport, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_register_dev.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.23, i32 noundef %36, i32 noundef %38) #10
  br label %do.end

do.end:                                           ; preds = %if.then46, %if.end37
  %39 = ptrtoint ptr %reg16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg16, align 4
  %int_read_to_clear = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %int_read_to_clear to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %int_read_to_clear, align 1, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool50.not = icmp eq i8 %42, 0
  br i1 %tobool50.not, label %do.end.if.end86_crit_edge, label %if.then51

do.end.if.end86_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then51:                                        ; preds = %do.end
  %host_int_rsr = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %40, i32 0, i32 15
  %43 = ptrtoint ptr %host_int_rsr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %host_int_rsr, align 1
  %conv53 = zext i8 %44 to i32
  %call54 = call zeroext i8 @sdio_readb(ptr noundef nonnull %1, i32 noundef %conv53, ptr noundef nonnull %ret) #10
  %45 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp55 = icmp slt i32 %46, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -5, ptr %ret, align 4
  br label %release_irq

if.end58:                                         ; preds = %if.then51
  %48 = or i8 %call54, 63
  %49 = ptrtoint ptr %reg16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg16, align 4
  %host_int_rsr63 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %host_int_rsr63 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %host_int_rsr63, align 1
  %conv64 = zext i8 %52 to i32
  call void @sdio_writeb(ptr noundef nonnull %1, i8 noundef zeroext %48, i32 noundef %conv64, ptr noundef nonnull %ret) #10
  %53 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp65 = icmp slt i32 %54, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -5, ptr %ret, align 4
  br label %release_irq

if.end68:                                         ; preds = %if.end58
  %56 = ptrtoint ptr %reg16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg16, align 4
  %card_misc_cfg = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %card_misc_cfg to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %card_misc_cfg, align 1
  %conv70 = zext i8 %59 to i32
  %call71 = call zeroext i8 @sdio_readb(ptr noundef nonnull %1, i32 noundef %conv70, ptr noundef nonnull %ret) #10
  %60 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp72 = icmp slt i32 %61, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -5, ptr %ret, align 4
  br label %release_irq

if.end75:                                         ; preds = %if.end68
  %63 = or i8 %call71, 16
  %64 = ptrtoint ptr %reg16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg16, align 4
  %card_misc_cfg80 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %card_misc_cfg80 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %card_misc_cfg80, align 1
  %conv81 = zext i8 %67 to i32
  call void @sdio_writeb(ptr noundef nonnull %1, i8 noundef zeroext %63, i32 noundef %conv81, ptr noundef nonnull %ret) #10
  %68 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp82 = icmp slt i32 %69, 0
  br i1 %cmp82, label %if.then84, label %if.end75.if.end86_crit_edge

if.end75.if.end86_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then84:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -5, ptr %ret, align 4
  br label %release_irq

if.end86:                                         ; preds = %if.end75.if.end86_crit_edge, %do.end.if.end86_crit_edge
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 1, i32 8
  %71 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %card, ptr %driver_data.i, align 4
  call void @sdio_release_host(ptr noundef nonnull %1) #10
  br label %cleanup

release_irq:                                      ; preds = %if.then84, %if.then74, %if.then67, %if.then57, %if.then36, %if.then27, %if.then19, %if.then14
  %call87 = call i32 @sdio_release_irq(ptr noundef nonnull %1) #10
  br label %disable_func

disable_func:                                     ; preds = %release_irq, %if.then9
  %call88 = call i32 @sdio_disable_func(ptr noundef nonnull %1) #10
  br label %release_host

release_host:                                     ; preds = %disable_func, %if.then5
  call void @sdio_release_host(ptr noundef nonnull %1) #10
  br label %failed

failed:                                           ; preds = %release_host, %if.then
  %72 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end86
  %retval.0 = phi i32 [ %73, %failed ], [ 0, %if.end86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btmrvl_sdio_disable_host_int(ptr noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @sdio_claim_host(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %2 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret.i, align 4, !annotation !343
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %reg.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 4
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %host_int_mask1.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %host_int_mask1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %host_int_mask1.i, align 1
  %conv.i = zext i8 %8 to i32
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %4, i32 noundef %conv.i, ptr noundef nonnull %ret.i) #10
  %9 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.btmrvl_sdio_disable_host_int_mask.exit_crit_edge

if.end.btmrvl_sdio_disable_host_int_mask.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_disable_host_int_mask.exit

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %host_int_mask7.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %host_int_mask7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %host_int_mask7.i, align 1
  %conv8.i = zext i8 %16 to i32
  call void @sdio_writeb(ptr noundef %12, i8 noundef zeroext 0, i32 noundef %conv8.i, ptr noundef nonnull %ret.i) #10
  %17 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp slt i32 %18, 0
  br i1 %cmp.i, label %if.then10.i, label %if.end.i.btmrvl_sdio_disable_host_int_mask.exit_crit_edge

if.end.i.btmrvl_sdio_disable_host_int_mask.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_disable_host_int_mask.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32) #10
  br label %btmrvl_sdio_disable_host_int_mask.exit

btmrvl_sdio_disable_host_int_mask.exit:           ; preds = %if.then10.i, %if.end.i.btmrvl_sdio_disable_host_int_mask.exit_crit_edge, %if.end.btmrvl_sdio_disable_host_int_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  call void @sdio_release_host(ptr noundef %20) #10
  br label %cleanup

cleanup:                                          ; preds = %btmrvl_sdio_disable_host_int_mask.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_sdio_download_fw(ptr noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !343
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @btmrvl_sdio_verify_fw_download(ptr noundef nonnull %card, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_download_fw.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_download_fw, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !344

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_download_fw.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #10
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %reg = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %card_fw_status0 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %card_fw_status0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %card_fw_status0, align 1
  %conv = zext i8 %10 to i32
  %call13 = call zeroext i8 @sdio_readb(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %ret) #10
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.36) #10
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -5, ptr %ret, align 4
  br label %done

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13)
  %tobool17.not = icmp eq i8 %call13, 0
  br i1 %tobool17.not, label %if.else, label %do.body19

do.body19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_download_fw.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_download_fw, %if.then31)) #10
          to label %if.end47 [label %if.then31], !srcloc !344

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %conv32 = zext i8 %call13 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_download_fw.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.37, i32 noundef %conv32) #10
  br label %if.end47

if.else:                                          ; preds = %if.end16
  %helper = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 2
  %14 = ptrtoint ptr %helper to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %helper, align 4
  %tobool36.not = icmp eq ptr %15, null
  br i1 %tobool36.not, label %if.else.if.end42_crit_edge, label %if.then37

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then37:                                        ; preds = %if.else
  %call38 = call fastcc i32 @btmrvl_sdio_download_helper(ptr noundef nonnull %card)
  %16 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call38, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.if.end42_crit_edge, label %if.then40

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.38) #10
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -5, ptr %ret, align 4
  br label %done

if.end42:                                         ; preds = %if.then37.if.end42_crit_edge, %if.else.if.end42_crit_edge
  %call43 = call fastcc i32 @btmrvl_sdio_download_fw_w_helper(ptr noundef nonnull %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.39) #10
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -5, ptr %ret, align 4
  br label %done

if.end47:                                         ; preds = %if.end42.if.end47_crit_edge, %if.then31, %do.body19
  %pollnum.0 = phi i32 [ 100, %if.end42.if.end47_crit_edge ], [ 1000, %if.then31 ], [ 1000, %do.body19 ]
  %call48 = call fastcc i32 @btmrvl_sdio_verify_fw_download(ptr noundef nonnull %card, i32 noundef %pollnum.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.40) #10
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -110, ptr %ret, align 4
  br label %done

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  call void @sdio_release_host(ptr noundef %21) #10
  br label %cleanup

done:                                             ; preds = %if.then50, %if.then45, %if.then40, %if.then15
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  call void @sdio_release_host(ptr noundef %23) #10
  %24 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end51, %if.then8, %do.body, %if.then
  %retval.0 = phi i32 [ %25, %done ], [ 0, %if.end51 ], [ -22, %if.then ], [ 0, %if.then8 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btmrvl_add_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_host_to_card(ptr nocapture noundef %priv, ptr noundef %payload, i16 noundef zeroext %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i16 %nb to i32
  %sub = add nuw nsw i32 %conv, 63
  %div61 = and i32 %sub, 131008
  %4 = ptrtoint ptr %payload to i32
  %and = and i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div61, i32 %conv)
  %cmp = icmp ugt i32 %div61, %conv
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end8.i.i, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end8.i.i:                                      ; preds = %if.end
  %add10 = or i32 %div61, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 3520) #14
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end13

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memcpy(ptr %call9.i.i, ptr %payload, i32 %conv)
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.end.if.end17_crit_edge
  %buf.0 = phi ptr [ %call9.i.i, %if.end13 ], [ %payload, %if.end.if.end17_crit_edge ]
  %tmpbuf.0 = phi ptr [ %call9.i.i, %if.end13 ], [ null, %if.end.if.end17_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %7) #10
  %ioport = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end17
  %i.0 = phi i32 [ 0, %if.end17 ], [ %i.1, %do.cond.do.body_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ioport, align 4
  %call20 = tail call i32 @sdio_writesb(ptr noundef %9, i32 noundef %11, ptr noundef %buf.0, i32 noundef %div61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then23:                                        ; preds = %do.body
  %inc = add i32 %i.0, 1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.78, i32 noundef %inc, i32 noundef %call20) #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.79, i32 noundef %conv, ptr noundef %payload) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp25 = icmp sgt i32 %inc, 2
  br i1 %cmp25, label %if.then23.exit_crit_edge, label %if.then23.do.cond_crit_edge

if.then23.do.cond_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then23.exit_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

do.cond:                                          ; preds = %if.then23.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %ret.0 = phi i32 [ -5, %if.then23.do.cond_crit_edge ], [ %call20, %do.body.do.cond_crit_edge ]
  %i.1 = phi i32 [ %inc, %if.then23.do.cond_crit_edge ], [ %i.0, %do.body.do.cond_crit_edge ]
  %tobool30.not = icmp eq i32 %ret.0, 0
  br i1 %tobool30.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  %tx_dnld_rdy = getelementptr inbounds %struct.btmrvl_device, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %tx_dnld_rdy to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %tx_dnld_rdy, align 1
  br label %exit

exit:                                             ; preds = %do.end, %if.then23.exit_crit_edge
  %ret.1 = phi i32 [ 0, %do.end ], [ -5, %if.then23.exit_crit_edge ]
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %14) #10
  tail call void @kfree(ptr noundef %tmpbuf.0) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end8.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.1, %exit ], [ -22, %if.then ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_wakeup_fw(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ret, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @sdio_claim_host(ptr noundef nonnull %4) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %reg = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv = zext i8 %10 to i32
  call void @sdio_writeb(ptr noundef %6, i8 noundef zeroext 2, i32 noundef %conv, ptr noundef nonnull %ret) #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %12) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_wakeup_fw.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_wakeup_fw, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !344

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_wakeup_fw.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.81) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %14, %do.end ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_process_int_status(ptr noundef %priv) #2 align 64 {
entry:
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %driver_lock = getelementptr inbounds %struct.btmrvl_private, ptr %priv, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #10
  %2 = load i8, ptr @sdio_ireg, align 1
  store i8 0, ptr @sdio_ireg, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call3) #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #10
  %conv7 = zext i8 %2 to i32
  %and = and i32 %conv7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then:                                          ; preds = %entry
  %tx_dnld_rdy = getelementptr inbounds %struct.btmrvl_device, ptr %priv, i32 0, i32 3
  %5 = ptrtoint ptr %tx_dnld_rdy to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx_dnld_rdy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.else, label %do.body11

do.body11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_process_int_status.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_process_int_status, %if.then17)) #10
          to label %if.end24 [label %if.then17], !srcloc !344

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_process_int_status.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.83, i32 noundef %conv7) #10
  br label %if.end24

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %tx_dnld_rdy to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %tx_dnld_rdy, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17, %do.body11, %entry.if.end24_crit_edge
  %and26 = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end30_crit_edge, label %if.then28

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then28:                                        ; preds = %if.end24
  %hcidev.i = getelementptr inbounds %struct.btmrvl_device, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %hcidev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcidev.i, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then28.if.then.i_crit_edge, label %lor.lhs.false.i

if.then28.if.then.i_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then28
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then28.if.then.i_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33) #10
  br label %if.then92.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #10
  %14 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %ret.i.i, align 4, !annotation !343
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 4
  %reg1.i.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %11, i32 0, i32 4
  %17 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg1.i.i, align 4
  %card_rx_len.i.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %card_rx_len.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %card_rx_len.i.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %call.i.i = call zeroext i8 @sdio_readb(ptr noundef %16, i32 noundef %conv.i.i, ptr noundef nonnull %ret.i.i) #10
  %21 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ret.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.end5.i, label %btmrvl_sdio_read_rx_len.exit.i

btmrvl_sdio_read_rx_len.exit.i:                   ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp slt i32 %22, 0
  br i1 %cmp.i, label %if.then4.i, label %btmrvl_sdio_read_rx_len.exit.i.if.then12.i_crit_edge

btmrvl_sdio_read_rx_len.exit.i.if.then12.i_crit_edge: ; preds = %btmrvl_sdio_read_rx_len.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then4.i:                                       ; preds = %btmrvl_sdio_read_rx_len.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.84) #10
  br label %if.then92.i

if.end5.i:                                        ; preds = %if.end.i
  %conv3.i.i = zext i8 %call.i.i to i32
  %rx_unit.i.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %11, i32 0, i32 8
  %23 = ptrtoint ptr %rx_unit.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rx_unit.i.i, align 4
  %conv4.i.i = zext i8 %24 to i32
  %shl.i.i = shl i32 %conv3.i.i, %conv4.i.i
  %conv5.i.i = trunc i32 %shl.i.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv5.i.i)
  %cmp7.i = icmp ult i16 %conv5.i.i, 5
  br i1 %cmp7.i, label %if.end5.i.if.then12.i_crit_edge, label %lor.lhs.false9.i

if.end5.i.if.then12.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

lor.lhs.false9.i:                                 ; preds = %if.end5.i
  %conv.i = and i32 %shl.i.i, 65535
  %sub.i = add nuw nsw i32 %conv.i, 63
  %div1.i = and i32 %sub.i, 131008
  call void @__sanitizer_cov_trace_const_cmp4(i32 2112, i32 %div1.i)
  %cmp10.i = icmp ugt i32 %div1.i, 2112
  br i1 %cmp10.i, label %lor.lhs.false9.i.if.then12.i_crit_edge, label %if.end14.i

lor.lhs.false9.i.if.then12.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then12.i:                                      ; preds = %lor.lhs.false9.i.if.then12.i_crit_edge, %if.end5.i.if.then12.i_crit_edge, %btmrvl_sdio_read_rx_len.exit.i.if.then12.i_crit_edge
  %buf_len.013.i = phi i32 [ %shl.i.i, %lor.lhs.false9.i.if.then12.i_crit_edge ], [ %shl.i.i, %if.end5.i.if.then12.i_crit_edge ], [ 0, %btmrvl_sdio_read_rx_len.exit.i.if.then12.i_crit_edge ]
  %conv13.i = and i32 %buf_len.013.i, 65535
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.85, i32 noundef %conv13.i) #10
  br label %if.then92.i

if.end14.i:                                       ; preds = %lor.lhs.false9.i
  %add.i.i = or i32 %div1.i, 16
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i2.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i2.i, label %if.then19.i, label %if.end20.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.86) #10
  br label %if.then92.i

if.end20.i:                                       ; preds = %if.end14.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %28, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  %and.i = and i32 %29, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end29.i_crit_edge, label %if.then22.i

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %and.i) #10
  %30 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %and27.i = and i32 %32, 7
  %call28.i = call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef %and27.i) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then22.i, %if.end20.i.if.end29.i_crit_edge
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %11, align 4
  %ioport.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %11, i32 0, i32 1
  %37 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ioport.i, align 4
  %call33.i = call i32 @sdio_readsb(ptr noundef %36, ptr noundef %34, i32 noundef %38, i32 noundef %div1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.then36.i, label %if.end37.i

if.then36.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.87, i32 noundef %call33.i) #10
  br label %if.then92.i

if.end37.i:                                       ; preds = %if.end29.i
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %34, align 1
  %arrayidx39.i = getelementptr i8, ptr %34, i32 1
  %41 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %42 to i32
  %shl.i = shl nuw nsw i32 %conv40.i, 8
  %conv41.i = zext i8 %40 to i32
  %or.i = or i32 %shl.i, %conv41.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %or.i)
  %cmp51.i = icmp ult i32 %div1.i, %or.i
  br i1 %cmp51.i, label %if.then53.i, label %if.end56.i

if.then53.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.88, i32 noundef %or.i, i32 noundef %div1.i) #10
  br label %if.then92.i

if.end56.i:                                       ; preds = %if.end37.i
  %arrayidx57.i = getelementptr i8, ptr %34, i32 3
  %43 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx57.i, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i8 %44, label %sw.default.i [
    i8 2, label %if.end56.i.sw.bb.i_crit_edge
    i8 3, label %if.end56.i.sw.bb.i_crit_edge41
    i8 4, label %if.end56.i.sw.bb.i_crit_edge42
    i8 -2, label %sw.bb74.i
  ]

if.end56.i.sw.bb.i_crit_edge42:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end56.i.sw.bb.i_crit_edge41:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end56.i.sw.bb.i_crit_edge:                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end56.i.sw.bb.i_crit_edge, %if.end56.i.sw.bb.i_crit_edge41, %if.end56.i.sw.bb.i_crit_edge42
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %44, ptr %cb.i, align 8
  %call61.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %or.i) #10
  %call62.i = call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %44)
  %cmp63.i = icmp eq i8 %44, 4
  br i1 %cmp63.i, label %if.then65.i, label %sw.bb.i.if.end71.sink.split.i_crit_edge

sw.bb.i.if.end71.sink.split.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.sink.split.i

if.then65.i:                                      ; preds = %sw.bb.i
  %call66.i = call zeroext i1 @btmrvl_check_evtpkt(ptr noundef %priv, ptr noundef nonnull %call.i.i.i) #10
  br i1 %call66.i, label %if.then65.i.if.end71.sink.split.i_crit_edge, label %if.then65.i.if.end71.i_crit_edge

if.then65.i.if.end71.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i

if.then65.i.if.end71.sink.split.i_crit_edge:      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.sink.split.i

if.end71.sink.split.i:                            ; preds = %if.then65.i.if.end71.sink.split.i_crit_edge, %sw.bb.i.if.end71.sink.split.i_crit_edge
  %call68.i = call i32 @hci_recv_frame(ptr noundef %9, ptr noundef nonnull %call.i.i.i) #10
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end71.sink.split.i, %if.then65.i.if.end71.i_crit_edge
  %byte_rx.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 199, i32 8
  %47 = ptrtoint ptr %byte_rx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %byte_rx.i, align 8
  %add73.i = add i32 %48, %or.i
  store i32 %add73.i, ptr %byte_rx.i, align 8
  br label %exit.i

sw.bb74.i:                                        ; preds = %if.end56.i
  %cb75.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %cb75.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %cb75.i, align 8
  %call79.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %or.i) #10
  %call80.i = call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #10
  %call81.i = call i32 @btmrvl_process_event(ptr noundef %priv, ptr noundef nonnull %call.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %sw.bb74.i.if.end85.i_crit_edge, label %if.then83.i

sw.bb74.i.if.end85.i_crit_edge:                   ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then83.i:                                      ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #12
  %call84.i = call i32 @hci_recv_frame(ptr noundef %9, ptr noundef nonnull %call.i.i.i) #10
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then83.i, %sw.bb74.i.if.end85.i_crit_edge
  %byte_rx88.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 199, i32 8
  %50 = ptrtoint ptr %byte_rx88.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %byte_rx88.i, align 8
  %add89.i = add i32 %51, %or.i
  store i32 %add89.i, ptr %byte_rx88.i, align 8
  br label %exit.i

sw.default.i:                                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv58.i = zext i8 %44 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.89, i32 noundef %conv58.i) #10
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.79, i32 noundef %div1.i, ptr noundef %34) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %exit.i

exit.i:                                           ; preds = %sw.default.i, %if.end85.i, %if.end71.i
  %skb.0.i = phi ptr [ null, %sw.default.i ], [ %call.i.i.i, %if.end85.i ], [ %call.i.i.i, %if.end71.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool91.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool91.not.i, label %exit.i.if.end30_crit_edge, label %exit.i.if.then92.i_crit_edge

exit.i.if.then92.i_crit_edge:                     ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then92.i

exit.i.if.end30_crit_edge:                        ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then92.i:                                      ; preds = %exit.i.if.then92.i_crit_edge, %if.then53.i, %if.then36.i, %if.then19.i, %if.then12.i, %if.then4.i, %if.then.i
  %skb.019.i = phi ptr [ %skb.0.i, %exit.i.if.then92.i_crit_edge ], [ null, %if.then.i ], [ null, %if.then19.i ], [ %call.i.i.i, %if.then53.i ], [ %call.i.i.i, %if.then36.i ], [ null, %if.then12.i ], [ null, %if.then4.i ]
  %stat93.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 199
  %52 = ptrtoint ptr %stat93.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stat93.i, align 8
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %stat93.i, align 8
  call void @kfree_skb_reason(ptr noundef %skb.019.i, i32 noundef 0) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then92.i, %exit.i.if.end30_crit_edge, %if.end24.if.end30_crit_edge
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %55) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_register_hdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btmrvl_sdio_interrupt(ptr noundef %func) #2 align 64 {
entry:
  %ireg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ireg) #10
  %0 = ptrtoint ptr %ireg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ireg, align 1
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %priv1 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %func, ptr noundef %2) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %surprise_removed = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %surprise_removed, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %reg = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %int_read_to_clear = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %int_read_to_clear to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %int_read_to_clear, align 1, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %adapter1.i = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter1.i, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %hw_regs.i = getelementptr inbounds %struct.btmrvl_adapter, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %hw_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_regs.i, align 4
  %call.i = tail call i32 @sdio_readsb(ptr noundef %14, ptr noundef %16, i32 noundef 0, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.thread41

if.end11.thread41:                                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25, i32 noundef %call.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %hw_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_regs.i, align 4
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg, align 4
  %host_intstatus.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %host_intstatus.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %host_intstatus.i, align 1
  %idxprom.i = zext i8 %22 to i32
  %arrayidx.i = getelementptr i8, ptr %18, i32 %idxprom.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = ptrtoint ptr %ireg to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ireg, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_read_to_clear.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_interrupt, %if.end11.thread)) #10
          to label %do.body15 [label %if.end11.thread], !srcloc !344

if.end11.thread:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg, align 4
  %host_intstatus9.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %host_intstatus9.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %host_intstatus9.i, align 1
  %conv.i = zext i8 %29 to i32
  %conv10.i = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_read_to_clear.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.27, i32 noundef %conv.i, i32 noundef %conv10.i) #10
  br label %do.body15

if.else:                                          ; preds = %if.end6
  %call10 = call fastcc i32 @btmrvl_sdio_write_to_clear(ptr noundef nonnull %2, ptr noundef nonnull %ireg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %phi.cmp = icmp eq i32 %call10, 0
  br i1 %phi.cmp, label %if.else.do.body15_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.do.body15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

do.body15:                                        ; preds = %if.else.do.body15_crit_edge, %if.end11.thread, %if.end.i
  %driver_lock = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 6
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #10
  %30 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ireg, align 1
  %32 = load i8, ptr @sdio_ireg, align 1
  %or38 = or i8 %32, %31
  store i8 %or38, ptr @sdio_ireg, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call17) #10
  tail call void @btmrvl_interrupt(ptr noundef nonnull %4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body15, %if.else.cleanup_crit_edge, %if.end11.thread41, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ireg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_sdio_write_to_clear(ptr nocapture noundef readonly %card, ptr nocapture noundef %ireg) unnamed_addr #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !343
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %reg = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 4
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %host_intstatus = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %host_intstatus to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %host_intstatus, align 1
  %conv = zext i8 %6 to i32
  %call = call zeroext i8 @sdio_readb(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %ret) #10
  %7 = ptrtoint ptr %ireg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call, ptr %ireg, align 1
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.28, i32 noundef %9) #10
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool1.not = icmp eq i8 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_write_to_clear.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_write_to_clear, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !344

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ireg, align 1
  %conv8 = zext i8 %13 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_write_to_clear.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.30, i32 noundef %conv8) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %16 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ireg, align 1
  %18 = and i8 %17, 3
  %19 = xor i8 %18, 3
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg, align 4
  %host_intstatus14 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %host_intstatus14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %host_intstatus14, align 1
  %conv15 = zext i8 %23 to i32
  call void @sdio_writeb(ptr noundef %15, i8 noundef zeroext %19, i32 noundef %conv15, ptr noundef nonnull %ret) #10
  %24 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool16.not = icmp eq i32 %25, 0
  br i1 %tobool16.not, label %do.end.cleanup_crit_edge, label %if.then17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, i32 noundef %25) #10
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %27, %if.then17 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @btmrvl_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_sdio_verify_fw_download(ptr nocapture noundef readonly %card, i32 noundef %pollnum) unnamed_addr #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pollnum)
  %cmp15 = icmp sgt i32 %pollnum, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %reg.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tries.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  call void @sdio_claim_host(ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %2 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret.i, align 4, !annotation !343
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %card_fw_status0.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %card_fw_status0.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %card_fw_status0.i, align 1
  %conv.i = zext i8 %8 to i32
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %4, i32 noundef %conv.i, ptr noundef nonnull %ret.i) #10
  %9 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.btmrvl_sdio_read_fw_status.exit.thread_crit_edge

for.body.btmrvl_sdio_read_fw_status.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_read_fw_status.exit.thread

if.end.i:                                         ; preds = %for.body
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %card_fw_status1.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %card_fw_status1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %card_fw_status1.i, align 1
  %conv3.i = zext i8 %16 to i32
  %call4.i = call zeroext i8 @sdio_readb(ptr noundef %12, i32 noundef %conv3.i, ptr noundef nonnull %ret.i) #10
  %17 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.i = icmp eq i32 %18, 0
  br i1 %tobool5.not.i, label %if.end, label %if.end.i.btmrvl_sdio_read_fw_status.exit.thread_crit_edge

if.end.i.btmrvl_sdio_read_fw_status.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_read_fw_status.exit.thread

btmrvl_sdio_read_fw_status.exit.thread:           ; preds = %if.end.i.btmrvl_sdio_read_fw_status.exit.thread_crit_edge, %for.body.btmrvl_sdio_read_fw_status.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  call void @sdio_release_host(ptr noundef %20) #10
  br label %for.inc

if.end:                                           ; preds = %if.end.i
  %conv9.i = zext i8 %call4.i to i16
  %shl.i = shl nuw i16 %conv9.i, 8
  %conv10.i = zext i8 %call.i to i16
  %or.i = or i16 %shl.i, %conv10.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  call void @sdio_release_host(ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -292, i16 %or.i)
  %cmp3 = icmp eq i16 %or.i, -292
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 100) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %btmrvl_sdio_read_fw_status.exit.thread
  %inc = add nuw nsw i32 %tries.016, 1
  %exitcond.not = icmp eq i32 %inc, %pollnum
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %for.inc.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_sdio_download_helper(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %fw_helper = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_helper) #10
  %0 = ptrtoint ptr %fw_helper to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw_helper, align 4
  %helper1 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 2
  %1 = ptrtoint ptr %helper1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %helper1, align 4
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.sdio_func, ptr %4, i32 0, i32 1
  %call = call i32 @request_firmware(ptr noundef nonnull %fw_helper, ptr noundef %2, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %fw_helper to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_helper, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.41, i32 noundef %call) #10
  br label %done

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_download_helper.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_download_helper, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !344

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_download_helper.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.43, i32 noundef %10, i32 noundef 64) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 2312) #16
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.then10, label %do.body12.preheader

do.body12.preheader:                              ; preds = %do.end
  %reg.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 4
  %arrayidx28 = getelementptr i8, ptr %call7.i.i, i32 1
  %arrayidx32 = getelementptr i8, ptr %call7.i.i, i32 2
  %arrayidx36 = getelementptr i8, ptr %call7.i.i, i32 3
  %arrayidx37 = getelementptr i8, ptr %call7.i.i, i32 4
  %ioport = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 1
  br label %do.body12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.44) #10
  br label %done

do.body12:                                        ; preds = %if.end19.do.body12_crit_edge, %do.body12.preheader
  %hlprblknow.0 = phi i32 [ %add45, %if.end19.do.body12_crit_edge ], [ 0, %do.body12.preheader ]
  %tx_len.0 = phi i32 [ %28, %if.end19.do.body12_crit_edge ], [ 124, %do.body12.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %12 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %ret.i, align 4, !annotation !343
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %do.body12
  %tries.01.i = phi i32 [ 0, %do.body12 ], [ %inc.i, %if.end7.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %card_status.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %card_status.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %card_status.i, align 1
  %conv.i = zext i8 %18 to i32
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %14, i32 noundef %conv.i, ptr noundef nonnull %ret.i) #10
  %19 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.btmrvl_sdio_poll_card_status.exit_crit_edge

for.body.i.btmrvl_sdio_poll_card_status.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_poll_card_status.exit

if.end.i:                                         ; preds = %for.body.i
  %21 = and i8 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %21)
  %cmp4.i = icmp eq i8 %21, 9
  br i1 %cmp4.i, label %btmrvl_sdio_poll_card_status.exit.thread, label %if.end7.i

btmrvl_sdio_poll_card_status.exit.thread:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  br label %if.end16

if.end7.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748) #10
  %inc.i = add nuw nsw i32 %tries.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %for.end.i, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -110, ptr %ret.i, align 4
  br label %btmrvl_sdio_poll_card_status.exit

btmrvl_sdio_poll_card_status.exit:                ; preds = %for.end.i, %for.body.i.btmrvl_sdio_poll_card_status.exit_crit_edge
  %24 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ret.i, align 4
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.49, i32 noundef %25) #10
  %26 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp14 = icmp slt i32 %27, 0
  br i1 %cmp14, label %if.then15, label %btmrvl_sdio_poll_card_status.exit.if.end16_crit_edge

btmrvl_sdio_poll_card_status.exit.if.end16_crit_edge: ; preds = %btmrvl_sdio_poll_card_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %btmrvl_sdio_poll_card_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.45, i32 noundef %hlprblknow.0) #10
  br label %done

if.end16:                                         ; preds = %btmrvl_sdio_poll_card_status.exit.if.end16_crit_edge, %btmrvl_sdio_poll_card_status.exit.thread
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %hlprblknow.0)
  %cmp17.not = icmp sgt i32 %10, %hlprblknow.0
  br i1 %cmp17.not, label %if.end19, label %do.body48

if.end19:                                         ; preds = %if.end16
  %sub = sub i32 %10, %hlprblknow.0
  %28 = call i32 @llvm.umin.i32(i32 %sub, i32 %tx_len.0)
  %conv = trunc i32 %28 to i8
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %call7.i.i, align 8
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx28, align 1
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx32, align 2
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx36, align 1
  %arrayidx38 = getelementptr i8, ptr %8, i32 %hlprblknow.0
  %33 = call ptr @memcpy(ptr %arrayidx37, ptr %arrayidx38, i32 %28)
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 4
  %36 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ioport, align 4
  %call40 = call i32 @sdio_writesb(ptr noundef %35, i32 noundef %37, ptr noundef nonnull %call7.i.i, i32 noundef 128) #10
  %cmp41 = icmp slt i32 %call40, 0
  %add45 = add i32 %28, %hlprblknow.0
  br i1 %cmp41, label %if.then43, label %if.end19.do.body12_crit_edge

if.end19.do.body12_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

if.then43:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.46, i32 noundef %hlprblknow.0) #10
  br label %done

do.body48:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_download_helper.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_download_helper, %if.then60)) #10
          to label %do.end63 [label %if.then60], !srcloc !344

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_download_helper.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.47) #10
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.body48
  %38 = call ptr @memset(ptr %call7.i.i, i32 0, i32 64)
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 4
  %41 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ioport, align 4
  %call66 = call i32 @sdio_writesb(ptr noundef %40, i32 noundef %42, ptr noundef nonnull %call7.i.i, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %do.end63.done_crit_edge

do.end63.done_crit_edge:                          ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then69:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.48) #10
  br label %done

done:                                             ; preds = %if.then69, %do.end63.done_crit_edge, %if.then43, %if.then15, %if.then10, %if.then
  %tmphlprbuf.0 = phi ptr [ null, %if.then ], [ %call7.i.i, %if.then15 ], [ %call7.i.i, %if.then69 ], [ %call7.i.i, %if.then43 ], [ null, %if.then10 ], [ %call7.i.i, %do.end63.done_crit_edge ]
  %ret.0 = phi i32 [ -2, %if.then ], [ %27, %if.then15 ], [ %call66, %if.then69 ], [ %call40, %if.then43 ], [ -12, %if.then10 ], [ 0, %do.end63.done_crit_edge ]
  call void @kfree(ptr noundef %tmphlprbuf.0) #10
  %43 = ptrtoint ptr %fw_helper to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_helper, align 4
  call void @release_firmware(ptr noundef %44) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_helper) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_sdio_download_fw_w_helper(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %fw_firmware = alloca ptr, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_firmware) #10
  %0 = ptrtoint ptr %fw_firmware to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw_firmware, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ret, align 4, !annotation !343
  %sd_blksz_fw_dl = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 7
  %2 = ptrtoint ptr %sd_blksz_fw_dl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sd_blksz_fw_dl, align 2
  %firmware1 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 3
  %4 = ptrtoint ptr %firmware1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %firmware1, align 4
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1
  %call = call i32 @request_firmware(ptr noundef nonnull %fw_firmware, ptr noundef %5, ptr noundef %dev) #10
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %9 = ptrtoint ptr %fw_firmware to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_firmware, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.50, i32 noundef %call) #10
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2, ptr %ret, align 4
  br label %done

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_download_fw_w_helper.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_download_fw_w_helper, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !344

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_download_fw_w_helper.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.52, i32 noundef %15) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 2312) #16
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.then10, label %do.body12.preheader

do.body12.preheader:                              ; preds = %do.end
  %reg.i = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 4
  %conv73 = zext i16 %3 to i32
  %add74 = add nsw i32 %conv73, -1
  %ioport = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %card, i32 0, i32 1
  br label %do.body12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.53) #10
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -12, ptr %ret, align 4
  br label %done

do.body12:                                        ; preds = %if.end90, %do.body12.preheader
  %offset.0 = phi i32 [ %add91, %if.end90 ], [ 0, %do.body12.preheader ]
  %tx_blocks.0 = phi i32 [ %tx_blocks.1, %if.end90 ], [ 0, %do.body12.preheader ]
  %count.0 = phi i32 [ %count.1, %if.end90 ], [ 0, %do.body12.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %18 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %ret.i, align 4, !annotation !343
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %do.body12
  %tries.01.i = phi i32 [ 0, %do.body12 ], [ %inc.i, %if.end7.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %card_status.i = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %card_status.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %card_status.i, align 1
  %conv.i = zext i8 %24 to i32
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %20, i32 noundef %conv.i, ptr noundef nonnull %ret.i) #10
  %25 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.btmrvl_sdio_poll_card_status.exit_crit_edge

for.body.i.btmrvl_sdio_poll_card_status.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btmrvl_sdio_poll_card_status.exit

if.end.i:                                         ; preds = %for.body.i
  %27 = and i8 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %27)
  %cmp4.i = icmp eq i8 %27, 9
  br i1 %cmp4.i, label %btmrvl_sdio_poll_card_status.exit.thread, label %if.end7.i

btmrvl_sdio_poll_card_status.exit.thread:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  %28 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ret, align 4
  br label %if.end16

if.end7.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748) #10
  %inc.i = add nuw nsw i32 %tries.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %for.end.i, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -110, ptr %ret.i, align 4
  br label %btmrvl_sdio_poll_card_status.exit

btmrvl_sdio_poll_card_status.exit:                ; preds = %for.end.i, %for.body.i.btmrvl_sdio_poll_card_status.exit_crit_edge
  %31 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ret.i, align 4
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.49, i32 noundef %32) #10
  %33 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  %35 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp14 = icmp slt i32 %34, 0
  br i1 %cmp14, label %if.then15, label %btmrvl_sdio_poll_card_status.exit.if.end16_crit_edge

btmrvl_sdio_poll_card_status.exit.if.end16_crit_edge: ; preds = %btmrvl_sdio_poll_card_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %btmrvl_sdio_poll_card_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.54, i32 noundef %offset.0) #10
  br label %done

if.end16:                                         ; preds = %btmrvl_sdio_poll_card_status.exit.if.end16_crit_edge, %btmrvl_sdio_poll_card_status.exit.thread
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %offset.0)
  %cmp17.not = icmp ugt i32 %15, %offset.0
  br i1 %cmp17.not, label %if.end16.for.body_crit_edge, label %if.end16.do.end93_crit_edge

if.end16.do.end93_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %if.end16.for.body_crit_edge
  %tries.0160 = phi i32 [ %inc, %if.end43.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %36 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card, align 4
  %38 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i, align 4
  %sq_read_base_addr_a0 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %sq_read_base_addr_a0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sq_read_base_addr_a0, align 1
  %conv = zext i8 %41 to i32
  %call22 = call zeroext i8 @sdio_readb(ptr noundef %37, i32 noundef %conv, ptr noundef nonnull %ret) #10
  %42 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool23.not = icmp eq i32 %43, 0
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv25 = zext i8 %call22 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.55, i32 noundef %conv25, i32 noundef %conv25) #10
  %44 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -5, ptr %ret, align 4
  br label %done

if.end27:                                         ; preds = %for.body
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %47 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i, align 4
  %sq_read_base_addr_a1 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %sq_read_base_addr_a1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sq_read_base_addr_a1, align 1
  %conv30 = zext i8 %50 to i32
  %call31 = call zeroext i8 @sdio_readb(ptr noundef %46, i32 noundef %conv30, ptr noundef nonnull %ret) #10
  %51 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool32.not = icmp eq i32 %52, 0
  br i1 %tobool32.not, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %conv34 = zext i8 %call31 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.56, i32 noundef %conv34, i32 noundef %conv34) #10
  %53 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -5, ptr %ret, align 4
  br label %done

if.end36:                                         ; preds = %if.end27
  %conv38 = zext i8 %call31 to i16
  %shl = shl nuw i16 %conv38, 8
  %conv39 = zext i8 %call22 to i16
  %or = or i16 %shl, %conv39
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or)
  %tobool41.not = icmp eq i16 %or, 0
  br i1 %tobool41.not, label %if.end43, label %if.else

if.end43:                                         ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 2147480) #10
  %inc = add nuw nsw i32 %tries.0160, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end43.do.end93_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end43.do.end93_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

if.else:                                          ; preds = %if.end36
  %conv46 = zext i16 %or to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2312, i16 %or)
  %cmp47 = icmp ugt i16 %or, 2312
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.57, i32 noundef %offset.0, i32 noundef %conv46) #10
  %55 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -22, ptr %ret, align 4
  br label %done

if.end52:                                         ; preds = %if.else
  %and55 = and i32 %conv46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else67, label %if.then57

if.then57:                                        ; preds = %if.end52
  %inc58 = add i32 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc58)
  %cmp59 = icmp sgt i32 %inc58, 2
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.58, i32 noundef %offset.0) #10
  %56 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -5, ptr %ret, align 4
  br label %done

if.end62:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.59, i32 noundef %conv46, i32 noundef %conv46) #10
  br label %if.end77

if.else67:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %15, %offset.0
  %57 = call i32 @llvm.umin.i32(i32 %sub, i32 %conv46)
  %sub75 = add nsw i32 %add74, %57
  %div = sdiv i32 %sub75, %conv73
  %arrayidx = getelementptr i8, ptr %13, i32 %offset.0
  %58 = call ptr @memcpy(ptr %call7.i.i, ptr %arrayidx, i32 %57)
  br label %if.end77

if.end77:                                         ; preds = %if.else67, %if.end62
  %txlen.1 = phi i32 [ 0, %if.end62 ], [ %57, %if.else67 ]
  %tx_blocks.1 = phi i32 [ %tx_blocks.0, %if.end62 ], [ %div, %if.else67 ]
  %count.1 = phi i32 [ %inc58, %if.end62 ], [ 0, %if.else67 ]
  %59 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card, align 4
  %61 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ioport, align 4
  %mul = mul i32 %tx_blocks.1, %conv73
  %call80 = call i32 @sdio_writesb(ptr noundef %60, i32 noundef %62, ptr noundef nonnull %call7.i.i, i32 noundef %mul) #10
  %63 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call80, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end77.if.end90_crit_edge

if.end77.if.end90_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then83:                                        ; preds = %if.end77
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.60, i32 noundef %count.1, i32 noundef %offset.0) #10
  %64 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card, align 4
  %66 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %conv86 = zext i8 %69 to i32
  call void @sdio_writeb(ptr noundef %65, i8 noundef zeroext 4, i32 noundef %conv86, ptr noundef nonnull %ret) #10
  %70 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool87.not = icmp eq i32 %71, 0
  br i1 %tobool87.not, label %if.then83.if.end90_crit_edge, label %if.then88

if.then83.if.end90_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then88:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.61) #10
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.then83.if.end90_crit_edge, %if.end77.if.end90_crit_edge
  %add91 = add i32 %txlen.1, %offset.0
  br label %do.body12

do.end93:                                         ; preds = %if.end43.do.end93_crit_edge, %if.end16.do.end93_crit_edge
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.62, i32 noundef %offset.0) #10
  %72 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %ret, align 4
  br label %done

done:                                             ; preds = %do.end93, %if.then61, %if.then49, %if.then33, %if.then24, %if.then15, %if.then10, %if.then
  %tmpfwbuf.0 = phi ptr [ null, %if.then ], [ %call7.i.i, %if.then15 ], [ %call7.i.i, %do.end93 ], [ %call7.i.i, %if.then24 ], [ %call7.i.i, %if.then33 ], [ %call7.i.i, %if.then49 ], [ %call7.i.i, %if.then61 ], [ null, %if.then10 ]
  call void @kfree(ptr noundef %tmpfwbuf.0) #10
  %73 = ptrtoint ptr %fw_firmware to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fw_firmware, align 4
  call void @release_firmware(ptr noundef %74) #10
  %75 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_firmware) #10
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmrvl_wake_irq_bt(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 1
  %plt_wake_cfg = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %plt_wake_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plt_wake_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.76) #13
  %wake_by_bt = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wake_by_bt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %wake_by_bt, align 4
  tail call void @disable_irq_nosync(i32 noundef %irq) #10
  tail call void @pm_wakeup_dev_event(ptr noundef %dev1, i32 noundef 0, i1 noundef zeroext false) #10
  tail call void @pm_system_wakeup() #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btmrvl_check_evtpkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_process_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_send_module_cfg_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @sdio_get_host_pm_caps(ptr noundef nonnull %add.ptr) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_suspend, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !344

if.then6:                                         ; preds = %if.then
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.dev_name.exit_crit_edge

if.then6.dev_name.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then6.dev_name.exit_crit_edge
  %retval.0.i165 = phi ptr [ %3, %if.end.i ], [ %1, %if.then6.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.93, ptr noundef %retval.0.i165, i32 noundef %call) #10
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.then
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %do.end
  %init_name.i166 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i166 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i166, align 8
  %tobool.not.i167 = icmp eq ptr %5, null
  br i1 %tobool.not.i167, label %if.end.i168, label %if.then10.dev_name.exit170_crit_edge

if.then10.dev_name.exit170_crit_edge:             ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit170

if.end.i168:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit170

dev_name.exit170:                                 ; preds = %if.end.i168, %if.then10.dev_name.exit170_crit_edge
  %retval.0.i169 = phi ptr [ %7, %if.end.i168 ], [ %5, %if.then10.dev_name.exit170_crit_edge ]
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.94, ptr noundef %retval.0.i169) #10
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %if.end13.if.then19_crit_edge, label %lor.lhs.false

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end13
  %priv17 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %priv17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv17, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %lor.lhs.false.if.then19_crit_edge, label %if.end21

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end13.if.then19_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.95) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.96) #10
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %plt_wake_cfg = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %plt_wake_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plt_wake_cfg, align 4
  %tobool22.not = icmp eq ptr %13, null
  br i1 %tobool22.not, label %if.end21.if.end33_crit_edge, label %land.lhs.true

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end21
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp = icmp sgt i32 %15, -1
  br i1 %cmp, label %land.lhs.true24, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true24:                                  ; preds = %land.lhs.true
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i171 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i171, label %land.lhs.true24.if.end33_crit_edge, label %device_may_wakeup.exit

land.lhs.true24.if.end33_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

device_may_wakeup.exit:                           ; preds = %land.lhs.true24
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %17 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %18, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end33_crit_edge, label %if.then26

device_may_wakeup.exit.if.end33_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then26:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wake_by_bt = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %wake_by_bt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %wake_by_bt, align 4
  %20 = ptrtoint ptr %plt_wake_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %plt_wake_cfg, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  tail call void @enable_irq(i32 noundef %23) #10
  %24 = ptrtoint ptr %plt_wake_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %plt_wake_cfg, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %27, i32 noundef 1) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %device_may_wakeup.exit.if.end33_crit_edge, %land.lhs.true24.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.end21.if.end33_crit_edge
  %28 = ptrtoint ptr %priv17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv17, align 4
  %adapter = getelementptr inbounds %struct.btmrvl_private, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 4
  %is_suspending = getelementptr inbounds %struct.btmrvl_adapter, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %is_suspending to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %is_suspending, align 2
  %hcidev35 = getelementptr inbounds %struct.btmrvl_device, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %hcidev35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hcidev35, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_suspend, %if.then48)) #10
          to label %do.end51 [label %if.then48], !srcloc !344

if.then48:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %34, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.97, ptr noundef %name) #10
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %if.end33
  %call52 = tail call i32 @hci_suspend_dev(ptr noundef %34) #10
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 4
  %hs_state = getelementptr inbounds %struct.btmrvl_adapter, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %hs_state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hs_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp54.not = icmp eq i8 %38, 1
  br i1 %cmp54.not, label %do.end51.if.end80_crit_edge, label %if.then56

do.end51.if.end80_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then56:                                        ; preds = %do.end51
  %call57 = tail call i32 @btmrvl_enable_hs(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then56.if.end80_crit_edge, label %if.then59

if.then56.if.end80_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then59:                                        ; preds = %if.then56
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.98) #10
  %39 = ptrtoint ptr %plt_wake_cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %plt_wake_cfg, align 4
  %tobool61.not = icmp eq ptr %40, null
  br i1 %tobool61.not, label %if.then59.if.end76_crit_edge, label %land.lhs.true62

if.then59.if.end76_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

land.lhs.true62:                                  ; preds = %if.then59
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp65 = icmp sgt i32 %42, -1
  br i1 %cmp65, label %land.lhs.true67, label %land.lhs.true62.if.end76_crit_edge

land.lhs.true62.if.end76_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

land.lhs.true67:                                  ; preds = %land.lhs.true62
  %can_wakeup.i172 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %43 = ptrtoint ptr %can_wakeup.i172 to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i173 = load i16, ptr %can_wakeup.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i173)
  %tobool.not.i174 = icmp sgt i16 %bf.load.i173, -1
  br i1 %tobool.not.i174, label %land.lhs.true67.if.end76_crit_edge, label %device_may_wakeup.exit178

land.lhs.true67.if.end76_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

device_may_wakeup.exit178:                        ; preds = %land.lhs.true67
  %wakeup.i175 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %44 = ptrtoint ptr %wakeup.i175 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wakeup.i175, align 8
  %tobool2.i176.not = icmp eq ptr %45, null
  br i1 %tobool2.i176.not, label %device_may_wakeup.exit178.if.end76_crit_edge, label %if.then70

device_may_wakeup.exit178.if.end76_crit_edge:     ; preds = %device_may_wakeup.exit178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then70:                                        ; preds = %device_may_wakeup.exit178
  call void @__sanitizer_cov_trace_pc() #12
  %call.i179 = tail call i32 @irq_set_irq_wake(i32 noundef %42, i32 noundef 0) #10
  %46 = ptrtoint ptr %plt_wake_cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %plt_wake_cfg, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  tail call void @disable_irq(i32 noundef %49) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %device_may_wakeup.exit178.if.end76_crit_edge, %land.lhs.true67.if.end76_crit_edge, %land.lhs.true62.if.end76_crit_edge, %if.then59.if.end76_crit_edge
  %50 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter, align 4
  %is_suspending78 = getelementptr inbounds %struct.btmrvl_adapter, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %is_suspending78 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %is_suspending78, align 2
  br label %cleanup

if.end80:                                         ; preds = %if.then56.if.end80_crit_edge, %do.end51.if.end80_crit_edge
  %53 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter, align 4
  %is_suspending82 = getelementptr inbounds %struct.btmrvl_adapter, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %is_suspending82 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %is_suspending82, align 2
  %56 = load ptr, ptr %adapter, align 4
  %is_suspended = getelementptr inbounds %struct.btmrvl_adapter, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %is_suspended, align 1
  %58 = load ptr, ptr %adapter, align 4
  %hs_state85 = getelementptr inbounds %struct.btmrvl_adapter, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %hs_state85 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %hs_state85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp87 = icmp eq i8 %60, 1
  br i1 %cmp87, label %do.body90, label %do.body108

do.body90:                                        ; preds = %if.end80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_suspend, %if.then102)) #10
          to label %do.end105 [label %if.then102], !srcloc !344

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.99) #10
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %do.body90
  %call106 = tail call i32 @sdio_set_host_pm_flags(ptr noundef nonnull %add.ptr, i32 noundef 1) #10
  br label %cleanup

do.body108:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_suspend, %if.then120)) #10
          to label %cleanup [label %if.then120], !srcloc !344

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.100) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %do.body108, %do.end105, %if.end76, %if.else, %if.then19, %dev_name.exit170
  %retval.0 = phi i32 [ -16, %if.end76 ], [ %call106, %do.end105 ], [ 0, %if.then19 ], [ -38, %dev_name.exit170 ], [ 0, %if.else ], [ 0, %if.then120 ], [ 0, %do.body108 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmrvl_sdio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @sdio_get_host_pm_caps(ptr noundef nonnull %add.ptr) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_resume.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_resume, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !344

if.then6:                                         ; preds = %if.then
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.dev_name.exit_crit_edge

if.then6.dev_name.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then6.dev_name.exit_crit_edge
  %retval.0.i127 = phi ptr [ %3, %if.end.i ], [ %1, %if.then6.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_resume.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.102, ptr noundef %retval.0.i127, i32 noundef %call) #10
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.then
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end.if.then14_crit_edge, label %lor.lhs.false

do.end.if.then14_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false:                                    ; preds = %do.end
  %priv12 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %priv12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv12, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %lor.lhs.false.if.then14_crit_edge, label %if.end16

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %do.end.if.then14_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.95) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.96) #10
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %adapter = getelementptr inbounds %struct.btmrvl_private, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 4
  %is_suspended = getelementptr inbounds %struct.btmrvl_adapter, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_suspended, align 1, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %do.body20, label %if.end36

do.body20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_resume.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_resume, %if.then32)) #10
          to label %cleanup [label %if.then32], !srcloc !344

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_resume.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.103) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end16
  %hw_wakeup_firmware = getelementptr inbounds %struct.btmrvl_private, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %hw_wakeup_firmware to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_wakeup_firmware, align 4
  %call37 = tail call i32 %13(ptr noundef nonnull %7) #10
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 4
  %hs_state = getelementptr inbounds %struct.btmrvl_adapter, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %hs_state to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %hs_state, align 2
  %hcidev39 = getelementptr inbounds %struct.btmrvl_device, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %hcidev39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hcidev39, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_resume.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_resume, %if.then52)) #10
          to label %do.end55 [label %if.then52], !srcloc !344

if.then52:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_resume.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.104, ptr noundef %name) #10
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %if.end36
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 4
  %is_suspended57 = getelementptr inbounds %struct.btmrvl_adapter, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %is_suspended57 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_suspended57, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmrvl_sdio_resume.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmrvl_sdio_resume, %if.then70)) #10
          to label %do.end75 [label %if.then70], !srcloc !344

if.then70:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  %name71 = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmrvl_sdio_resume.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.105, ptr noundef %name71) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then70, %do.end55
  %call76 = tail call i32 @hci_resume_dev(ptr noundef %18) #10
  %plt_wake_cfg = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %5, i32 0, i32 11
  %22 = ptrtoint ptr %plt_wake_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plt_wake_cfg, align 4
  %tobool77.not = icmp eq ptr %23, null
  br i1 %tobool77.not, label %do.end75.cleanup_crit_edge, label %land.lhs.true

do.end75.cleanup_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end75
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp = icmp sgt i32 %25, -1
  br i1 %cmp, label %land.lhs.true79, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true79:                                  ; preds = %land.lhs.true
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i128 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i128, label %land.lhs.true79.cleanup_crit_edge, label %device_may_wakeup.exit

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %land.lhs.true79
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %27 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %28, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then81

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then81:                                        ; preds = %device_may_wakeup.exit
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %25, i32 noundef 0) #10
  %29 = ptrtoint ptr %plt_wake_cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %plt_wake_cfg, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  tail call void @disable_irq(i32 noundef %32) #10
  %33 = ptrtoint ptr %plt_wake_cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %plt_wake_cfg, align 4
  %wake_by_bt = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wake_by_bt to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %wake_by_bt, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool88.not = icmp eq i8 %36, 0
  br i1 %tobool88.not, label %if.then81.cleanup_crit_edge, label %if.then89

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then89:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 4
  tail call void @enable_irq(i32 noundef %38) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.then81.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge, %land.lhs.true79.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end75.cleanup_crit_edge, %if.then32, %do.body20, %if.else, %if.then14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_suspend_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_enable_hs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_resume_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_sdio_rdwr_firmware(ptr nocapture noundef readonly %priv, i8 noundef zeroext %doneflag) unnamed_addr #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4, !annotation !343
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %reg = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %fw_dump_ctrl = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %fw_dump_ctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_dump_ctrl, align 1
  %conv = zext i8 %8 to i32
  call void @sdio_writeb(ptr noundef %4, i8 noundef zeroext -18, i32 noundef %conv, ptr noundef nonnull %ret) #10
  %9 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %doneflag)
  %tobool16.not = icmp ne i8 %doneflag, 0
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %fw_dump_ctrl564 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %fw_dump_ctrl564 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fw_dump_ctrl564, align 1
  %conv665 = zext i8 %16 to i32
  %call66 = call zeroext i8 @sdio_readb(ptr noundef %12, i32 noundef %conv665, ptr noundef nonnull %ret) #10
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not67 = icmp eq i32 %18, 0
  br i1 %tobool7.not67, label %for.cond.preheader.if.end9_crit_edge, label %for.cond.preheader.cleanup.sink.split_crit_edge

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  br label %if.end9

if.end9:                                          ; preds = %for.body.backedge.if.end9_crit_edge, %for.cond.preheader.if.end9_crit_edge
  %call69 = phi i8 [ %call, %for.body.backedge.if.end9_crit_edge ], [ %call66, %for.cond.preheader.if.end9_crit_edge ]
  %tries.05868 = phi i32 [ %tries.058.be, %for.body.backedge.if.end9_crit_edge ], [ 0, %for.cond.preheader.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call69)
  %cmp11 = icmp eq i8 %call69, -1
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp1(i8 %call69, i8 %doneflag)
  %cmp19 = icmp eq i8 %call69, %doneflag
  %or.cond = select i1 %tobool16.not, i1 %cmp19, i1 false
  br i1 %or.cond, label %if.end14.cleanup_crit_edge, label %if.end22

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %call69)
  %cmp24.not = icmp eq i8 %call69, -18
  br i1 %cmp24.not, label %if.end34, label %if.then26

if.then26:                                        ; preds = %if.end22
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.128) #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %fw_dump_ctrl29 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %fw_dump_ctrl29 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_dump_ctrl29, align 1
  %conv30 = zext i8 %24 to i32
  call void @sdio_writeb(ptr noundef %20, i8 noundef zeroext -18, i32 noundef %conv30, ptr noundef nonnull %ret) #10
  %25 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool31.not = icmp eq i32 %26, 0
  br i1 %tobool31.not, label %if.end34.thread, label %if.then26.cleanup.sink.split_crit_edge

if.then26.cleanup.sink.split_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.end22
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %inc = add nuw nsw i32 %tries.05868, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end34.cleanup.sink.split_crit_edge, label %if.end34.for.body.backedge_crit_edge

if.end34.for.body.backedge_crit_edge:             ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

if.end34.cleanup.sink.split_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body.backedge:                                ; preds = %if.end34.thread.for.body.backedge_crit_edge, %if.end34.for.body.backedge_crit_edge
  %tries.058.be = phi i32 [ %inc, %if.end34.for.body.backedge_crit_edge ], [ %inc62, %if.end34.thread.for.body.backedge_crit_edge ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg, align 4
  %fw_dump_ctrl5 = getelementptr inbounds %struct.btmrvl_sdio_card_reg, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %fw_dump_ctrl5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fw_dump_ctrl5, align 1
  %conv6 = zext i8 %32 to i32
  %call = call zeroext i8 @sdio_readb(ptr noundef %28, i32 noundef %conv6, ptr noundef nonnull %ret) #10
  %33 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ret, align 4
  %tobool7.not = icmp eq i32 %34, 0
  br i1 %tobool7.not, label %for.body.backedge.if.end9_crit_edge, label %for.body.backedge.cleanup.sink.split_crit_edge

for.body.backedge.cleanup.sink.split_crit_edge:   ; preds = %for.body.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body.backedge.if.end9_crit_edge:              ; preds = %for.body.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end34.thread:                                  ; preds = %if.then26
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %inc62 = add nuw nsw i32 %tries.05868, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc62)
  %exitcond.not63 = icmp eq i32 %inc62, 100
  br i1 %exitcond.not63, label %if.end34.thread.cleanup_crit_edge, label %if.end34.thread.for.body.backedge_crit_edge

if.end34.thread.for.body.backedge_crit_edge:      ; preds = %if.end34.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

if.end34.thread.cleanup_crit_edge:                ; preds = %if.end34.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.body.backedge.cleanup.sink.split_crit_edge, %if.end34.cleanup.sink.split_crit_edge, %if.then26.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.129.sink = phi ptr [ @.str.127, %entry.cleanup.sink.split_crit_edge ], [ @.str.109, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ @.str.129, %if.end34.cleanup.sink.split_crit_edge ], [ @.str.127, %if.then26.cleanup.sink.split_crit_edge ], [ @.str.109, %for.body.backedge.cleanup.sink.split_crit_edge ]
  call void (ptr, ...) @bt_err(ptr noundef nonnull %.str.129.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end34.thread.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %cleanup.sink.split ], [ 0, %if.end34.thread.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 2, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !112, !114, !115, !116, !118, !120, !121, !122, !124, !126, !128, !130, !132, !133, !134, !136, !138, !139, !141, !143, !145, !147, !149, !150, !151, !153, !155, !157, !159, !160, !162, !164, !166, !168, !169, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !196, !197, !198, !199, !201, !202, !203, !204, !206, !208, !209, !210, !212, !214, !215, !216, !217, !219, !221, !223, !224, !225, !227, !228, !229, !231, !233, !235, !237, !239, !241, !243, !244, !245, !247, !249, !250, !251, !253, !255, !257, !259, !260, !262, !264, !265, !267, !268, !270, !271, !272, !274, !275, !277, !278, !280, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331}
!llvm.module.flags = !{!333, !334, !335, !336, !337, !338, !339, !340}
!llvm.ident = !{!341}

!0 = !{ptr @__initcall__kmod_btmrvl_sdio__499_1779_btmrvl_sdio_init_module6, !1, !"__initcall__kmod_btmrvl_sdio__499_1779_btmrvl_sdio_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1779, i32 1}
!2 = !{ptr @__exitcall_btmrvl_sdio_exit_module, !3, !"__exitcall_btmrvl_sdio_exit_module", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1780, i32 1}
!4 = !{ptr @__UNIQUE_ID_author500, !5, !"__UNIQUE_ID_author500", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1782, i32 1}
!6 = !{ptr @__UNIQUE_ID_description501, !7, !"__UNIQUE_ID_description501", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1783, i32 1}
!8 = !{ptr @__UNIQUE_ID_version502, !9, !"__UNIQUE_ID_version502", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1784, i32 1}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__modver_attr, !9, !"__modver_attr", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_file503, !15, !"__UNIQUE_ID_file503", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1785, i32 1}
!16 = !{ptr @__UNIQUE_ID_license504, !15, !"__UNIQUE_ID_license504", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_firmware505, !18, !"__UNIQUE_ID_firmware505", i1 false, i1 false}
!18 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1786, i32 1}
!19 = !{ptr @__UNIQUE_ID_firmware506, !20, !"__UNIQUE_ID_firmware506", i1 false, i1 false}
!20 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1787, i32 1}
!21 = !{ptr @__UNIQUE_ID_firmware507, !22, !"__UNIQUE_ID_firmware507", i1 false, i1 false}
!22 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1788, i32 1}
!23 = !{ptr @__UNIQUE_ID_firmware508, !24, !"__UNIQUE_ID_firmware508", i1 false, i1 false}
!24 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1789, i32 1}
!25 = !{ptr @__UNIQUE_ID_firmware509, !26, !"__UNIQUE_ID_firmware509", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1790, i32 1}
!27 = !{ptr @__UNIQUE_ID_firmware510, !28, !"__UNIQUE_ID_firmware510", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1791, i32 1}
!29 = !{ptr @__UNIQUE_ID_firmware511, !30, !"__UNIQUE_ID_firmware511", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1792, i32 1}
!31 = !{ptr @__UNIQUE_ID_firmware512, !32, !"__UNIQUE_ID_firmware512", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1793, i32 1}
!33 = !{ptr @__UNIQUE_ID_firmware513, !34, !"__UNIQUE_ID_firmware513", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1794, i32 1}
!35 = distinct !{null, !36, !"user_rmmod", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 138, i32 11}
!37 = !{ptr @bt_mrvl_sdio, !38, !"bt_mrvl_sdio", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1746, i32 27}
!39 = !{ptr @btmrvl_sdio_ids, !40, !"btmrvl_sdio_ids", i1 false, i1 false}
!40 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 313, i32 36}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 242, i32 13}
!43 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 243, i32 14}
!45 = !{ptr @btmrvl_sdio_sd8688, !46, !"btmrvl_sdio_sd8688", i1 false, i1 false}
!46 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 241, i32 40}
!47 = !{ptr @btmrvl_reg_8688, !48, !"btmrvl_reg_8688", i1 false, i1 false}
!48 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 141, i32 42}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 252, i32 14}
!51 = !{ptr @btmrvl_sdio_sd8787, !52, !"btmrvl_sdio_sd8787", i1 false, i1 false}
!52 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 250, i32 40}
!53 = !{ptr @btmrvl_reg_87xx, !54, !"btmrvl_reg_87xx", i1 false, i1 false}
!54 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 157, i32 42}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 261, i32 14}
!57 = !{ptr @btmrvl_sdio_sd8797, !58, !"btmrvl_sdio_sd8797", i1 false, i1 false}
!58 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 259, i32 40}
!59 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 270, i32 14}
!61 = !{ptr @btmrvl_sdio_sd8887, !62, !"btmrvl_sdio_sd8887", i1 false, i1 false}
!62 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 268, i32 40}
!63 = !{ptr @btmrvl_reg_8887, !64, !"btmrvl_reg_8887", i1 false, i1 false}
!64 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 175, i32 42}
!65 = !{ptr @.str.8, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 279, i32 14}
!67 = !{ptr @btmrvl_sdio_sd8897, !68, !"btmrvl_sdio_sd8897", i1 false, i1 false}
!68 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 277, i32 40}
!69 = !{ptr @btmrvl_reg_8897, !70, !"btmrvl_reg_8897", i1 false, i1 false}
!70 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 195, i32 42}
!71 = !{ptr @.str.9, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 288, i32 20}
!73 = !{ptr @btmrvl_sdio_sd8977, !74, !"btmrvl_sdio_sd8977", i1 false, i1 false}
!74 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 286, i32 40}
!75 = !{ptr @btmrvl_reg_89xx, !76, !"btmrvl_reg_89xx", i1 false, i1 false}
!76 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 218, i32 42}
!77 = !{ptr @.str.10, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 297, i32 14}
!79 = !{ptr @btmrvl_sdio_sd8987, !80, !"btmrvl_sdio_sd8987", i1 false, i1 false}
!80 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 295, i32 40}
!81 = !{ptr @.str.11, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 306, i32 20}
!83 = !{ptr @btmrvl_sdio_sd8997, !84, !"btmrvl_sdio_sd8997", i1 false, i1 false}
!84 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 304, i32 40}
!85 = !{ptr @.str.12, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1529, i32 2}
!87 = !{ptr @.str.13, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1549, i32 3}
!89 = !{ptr @.str.14, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1557, i32 3}
!91 = !{ptr @.str.15, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1569, i32 3}
!93 = !{ptr @.str.16, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1582, i32 3}
!95 = !{ptr @.str.17, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 954, i32 3}
!97 = !{ptr @.str.18, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 965, i32 3}
!99 = !{ptr @.str.19, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 972, i32 3}
!101 = !{ptr @.str.20, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 979, i32 3}
!103 = !{ptr @.str.21, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1008, i32 2}
!105 = !{ptr @.str.22, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.23, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @btmrvl_sdio_register_dev.__UNIQUE_ID_ddebug486, !104, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!108 = !{ptr @.str.24, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 922, i32 3}
!110 = !{ptr @.str.25, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 872, i32 3}
!112 = !{ptr @.str.26, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 877, i32 2}
!114 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @btmrvl_sdio_read_to_clear.__UNIQUE_ID_ddebug484, !113, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!116 = !{ptr @.str.28, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 888, i32 3}
!118 = !{ptr @.str.29, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 898, i32 3}
!120 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @btmrvl_sdio_write_to_clear.__UNIQUE_ID_ddebug485, !119, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!122 = !{ptr @.str.31, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 904, i32 4}
!124 = !{ptr @sdio_ireg, !125, !"sdio_ireg", i1 false, i1 false}
!125 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 139, i32 11}
!126 = !{ptr @.str.32, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 419, i32 3}
!128 = !{ptr @.str.33, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1162, i32 3}
!130 = !{ptr @.str.34, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1167, i32 3}
!132 = !{ptr @.str.35, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @btmrvl_sdio_download_fw.__UNIQUE_ID_ddebug487, !131, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!134 = !{ptr @.str.36, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1176, i32 3}
!136 = !{ptr @.str.37, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1181, i32 3}
!138 = !{ptr @btmrvl_sdio_download_fw.__UNIQUE_ID_ddebug488, !137, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!139 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1189, i32 5}
!141 = !{ptr @.str.39, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1196, i32 4}
!143 = !{ptr @.str.40, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1207, i32 3}
!145 = !{ptr @.str.41, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 486, i32 3}
!147 = !{ptr @.str.42, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 495, i32 2}
!149 = !{ptr @.str.43, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @btmrvl_sdio_download_helper.__UNIQUE_ID_ddebug478, !148, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!151 = !{ptr @.str.44, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 502, i32 3}
!153 = !{ptr @.str.45, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 519, i32 4}
!155 = !{ptr @.str.46, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 544, i32 4}
!157 = !{ptr @.str.47, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 552, i32 2}
!159 = !{ptr @btmrvl_sdio_download_helper.__UNIQUE_ID_ddebug479, !158, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!160 = !{ptr @.str.48, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 559, i32 3}
!162 = !{ptr @.str.49, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 445, i32 2}
!164 = !{ptr @.str.50, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 586, i32 3}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 595, i32 2}
!168 = !{ptr @.str.52, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @btmrvl_sdio_download_fw_w_helper.__UNIQUE_ID_ddebug480, !167, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!170 = !{ptr @.str.53, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 600, i32 3}
!172 = !{ptr @.str.54, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 615, i32 4}
!174 = !{ptr @.str.55, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 628, i32 5}
!176 = !{ptr @.str.56, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 638, i32 5}
!178 = !{ptr @.str.57, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 656, i32 4}
!180 = !{ptr @.str.58, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 667, i32 5}
!182 = !{ptr @.str.59, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 672, i32 4}
!184 = !{ptr @.str.60, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 693, i32 4}
!186 = !{ptr @.str.61, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 698, i32 5}
!188 = !{ptr @.str.62, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 704, i32 2}
!190 = !{ptr @.str.63, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 398, i32 3}
!192 = !{ptr @.str.64, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 91, i32 3}
!194 = !{ptr @.str.65, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.66, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.67, !193, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @btmrvl_sdio_probe_of._entry, !193, !"_entry", i1 false, i1 false}
!198 = !{ptr @btmrvl_sdio_probe_of._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 103, i32 4}
!201 = !{ptr @.str.70, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @btmrvl_sdio_probe_of._entry.68, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @btmrvl_sdio_probe_of._entry_ptr.71, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.72, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 108, i32 16}
!206 = !{ptr @.str.74, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 110, i32 5}
!208 = !{ptr @btmrvl_sdio_probe_of._entry.73, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @btmrvl_sdio_probe_of._entry_ptr.75, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @btmrvl_sdio_of_match_table, !211, !"btmrvl_sdio_of_match_table", i1 false, i1 false}
!211 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 56, i32 34}
!212 = !{ptr @.str.76, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 68, i32 2}
!214 = !{ptr @.str.77, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @btmrvl_wake_irq_bt._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @btmrvl_wake_irq_bt._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.78, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1138, i32 4}
!219 = !{ptr @.str.79, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1139, i32 4}
!221 = !{ptr @.str.80, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1237, i32 2}
!223 = !{ptr @.str.81, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @btmrvl_sdio_wakeup_fw.__UNIQUE_ID_ddebug489, !222, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!225 = !{ptr @.str.82, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 851, i32 4}
!227 = !{ptr @.str.83, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @btmrvl_sdio_process_int_status.__UNIQUE_ID_ddebug483, !226, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!229 = !{ptr @.str.84, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 733, i32 3}
!231 = !{ptr @.str.85, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 743, i32 3}
!233 = !{ptr @.str.86, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 751, i32 3}
!235 = !{ptr @.str.87, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 768, i32 3}
!237 = !{ptr @.str.88, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 782, i32 3}
!239 = !{ptr @.str.89, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 820, i32 3}
!241 = !{ptr @.str.90, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1612, i32 4}
!243 = !{ptr @.str.91, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @btmrvl_sdio_remove.__UNIQUE_ID_ddebug490, !242, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!245 = !{ptr @btmrvl_sdio_pm_ops, !246, !"btmrvl_sdio_pm_ops", i1 false, i1 false}
!246 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1741, i32 32}
!247 = !{ptr @.str.92, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1630, i32 3}
!249 = !{ptr @.str.93, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug491, !248, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!251 = !{ptr @.str.94, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1633, i32 4}
!253 = !{ptr @.str.95, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1639, i32 4}
!255 = !{ptr @.str.96, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1643, i32 3}
!257 = !{ptr @.str.97, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1658, i32 2}
!259 = !{ptr @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug492, !258, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!260 = !{ptr @.str.98, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1663, i32 4}
!262 = !{ptr @.str.99, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1682, i32 3}
!264 = !{ptr @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug493, !263, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!265 = !{ptr @.str.100, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1686, i32 2}
!267 = !{ptr @btmrvl_sdio_suspend.__UNIQUE_ID_ddebug494, !266, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!268 = !{ptr @.str.101, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1700, i32 3}
!270 = !{ptr @.str.102, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @btmrvl_sdio_resume.__UNIQUE_ID_ddebug495, !269, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!272 = !{ptr @.str.103, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1714, i32 3}
!274 = !{ptr @btmrvl_sdio_resume.__UNIQUE_ID_ddebug496, !273, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!275 = !{ptr @.str.104, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1721, i32 2}
!277 = !{ptr @btmrvl_sdio_resume.__UNIQUE_ID_ddebug497, !276, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!278 = !{ptr @.str.105, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1723, i32 2}
!280 = !{ptr @btmrvl_sdio_resume.__UNIQUE_ID_ddebug498, !279, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!281 = !{ptr @.str.106, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1362, i32 3}
!283 = !{ptr @.str.107, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1379, i32 2}
!285 = !{ptr @.str.108, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1390, i32 3}
!287 = !{ptr @.str.109, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1407, i32 5}
!289 = !{ptr @.str.110, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1415, i32 4}
!291 = !{ptr @.str.111, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1419, i32 5}
!293 = !{ptr @.str.112, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1425, i32 3}
!295 = !{ptr @.str.113, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1429, i32 4}
!297 = !{ptr @.str.114, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1443, i32 3}
!299 = !{ptr @.str.115, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1462, i32 6}
!301 = !{ptr @.str.116, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1466, i32 5}
!303 = !{ptr @.str.117, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1474, i32 2}
!305 = !{ptr @.str.118, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1484, i32 3}
!307 = !{ptr @.str.119, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1492, i32 2}
!309 = !{ptr @.str.120, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1499, i32 8}
!311 = !{ptr @.str.121, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1508, i32 8}
!313 = !{ptr @.str.122, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1519, i32 2}
!315 = !{ptr @.str.123, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1269, i32 23}
!317 = !{ptr @.str.124, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1278, i32 25}
!319 = distinct !{null, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1280, i32 25}
!321 = !{ptr @.str.126, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1285, i32 3}
!323 = !{ptr @mem_type_mapping_tbl, !324, !"mem_type_mapping_tbl", i1 false, i1 false}
!324 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 38, i32 35}
!325 = !{ptr @.str.127, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1304, i32 3}
!327 = !{ptr @.str.128, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1322, i32 4}
!329 = !{ptr @.str.129, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1334, i32 3}
!331 = !{ptr @.str.130, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/bluetooth/btmrvl_sdio.c", i32 1761, i32 3}
!333 = !{i32 1, !"wchar_size", i32 2}
!334 = !{i32 1, !"min_enum_size", i32 4}
!335 = !{i32 8, !"branch-target-enforcement", i32 0}
!336 = !{i32 8, !"sign-return-address", i32 0}
!337 = !{i32 8, !"sign-return-address-all", i32 0}
!338 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!339 = !{i32 7, !"uwtable", i32 1}
!340 = !{i32 7, !"frame-pointer", i32 2}
!341 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!342 = !{i8 0, i8 2}
!343 = !{!"auto-init"}
!344 = !{i64 2148220943, i64 2148220948, i64 2148220961, i64 2148221005, i64 2148221039, i64 2148221060}
