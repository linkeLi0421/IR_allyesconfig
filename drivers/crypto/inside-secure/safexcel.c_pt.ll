; ModuleID = '/llk/IR_all_yes/drivers/crypto/inside-secure/safexcel.c_pt.bc'
source_filename = "../drivers/crypto/inside-secure/safexcel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.safexcel_alg_template = type { ptr, i32, i32, [116 x i8], %union.anon.78 }
%union.anon.78 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_crypto_priv = type { ptr, ptr, ptr, ptr, %struct.safexcel_config, i32, %struct.safexcel_register_offsets, %struct.safexcel_hwconfig, i32, ptr, %struct.atomic_t, ptr }
%struct.safexcel_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_register_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_hwconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_ring = type { %struct.spinlock, ptr, %struct.safexcel_work_data, %struct.safexcel_desc_ring, %struct.safexcel_desc_ring, ptr, %struct.crypto_queue, %struct.spinlock, i32, i8, ptr, ptr, i32 }
%struct.safexcel_work_data = type { %struct.work_struct, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.safexcel_desc_ring = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.safexcel_inv_result = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.safexcel_command_desc = type { i32, i32, i32, i32, i32, i32, %struct.safexcel_control_data_desc }
%struct.safexcel_control_data_desc = type { i32, i16, i16, i32, i32, i32, i32, [4 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.safexcel_ring_irq_data = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.76, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.76 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_max_rings = internal constant [26 x i8] c"crypto_safexcel.max_rings\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_rings = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_max_rings = internal constant %struct.kernel_param { ptr @__param_str_max_rings, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @max_rings } }, section "__param", align 4
@__UNIQUE_ID_max_ringstype236 = internal constant [40 x i8] c"crypto_safexcel.parmtype=max_rings:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_rings237 = internal constant [63 x i8] c"crypto_safexcel.parm=max_rings:Maximum number of rings to use.\00", section ".modinfo", align 1
@safexcel_rdesc_check_errors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 903, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Descriptor overflow detected\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"safexcel_rdesc_check_errors\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/crypto/inside-secure/safexcel.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@safexcel_rdesc_check_errors._entry_ptr = internal global ptr @safexcel_rdesc_check_errors._entry, section ".printk_index", align 4
@safexcel_rdesc_check_errors._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 906, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Buffer overflow detected\00", [39 x i8] zeroinitializer }, align 32
@safexcel_rdesc_check_errors._entry_ptr.7 = internal global ptr @safexcel_rdesc_check_errors._entry.5, section ".printk_index", align 4
@safexcel_rdesc_check_errors._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 912, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"result descriptor error (%x)\00", [35 x i8] zeroinitializer }, align 32
@safexcel_rdesc_check_errors._entry_ptr.10 = internal global ptr @safexcel_rdesc_check_errors._entry.8, section ".printk_index", align 4
@safexcel_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 959, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not retrieve the command descriptor\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"safexcel_complete\00", [46 x i8] zeroinitializer }, align 32
@safexcel_complete._entry_ptr = internal global ptr @safexcel_complete._entry, section ".printk_index", align 4
@crypto_safexcel = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @safexcel_probe, ptr @safexcel_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @safexcel_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@safexcel_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.13, ptr @safexcel_pci_ids, ptr @safexcel_pci_probe, ptr @safexcel_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_crypto_safexcel__263_1991_safexcel_init6 = internal global ptr @safexcel_init, section ".initcall6.init", align 4
@__exitcall_safexcel_exit = internal global ptr @safexcel_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author264 = internal constant [74 x i8] c"crypto_safexcel.author=Antoine Tenart <antoine.tenart@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [56 x i8] c"crypto_safexcel.author=Ofer Heifetz <oferh@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [57 x i8] c"crypto_safexcel.author=Igal Liberman <igall@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [87 x i8] c"crypto_safexcel.description=Support for SafeXcel cryptographic engines: EIP97 & EIP197\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [66 x i8] c"crypto_safexcel.file=drivers/crypto/inside-secure/crypto_safexcel\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [31 x i8] c"crypto_safexcel.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns270 = internal constant [42 x i8] c"crypto_safexcel.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"crypto-safexcel\00", [16 x i8] zeroinitializer }, align 32
@safexcel_of_match_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"inside-secure,safexcel-eip97ies\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"inside-secure,safexcel-eip197b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"inside-secure,safexcel-eip197d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"inside-secure,safexcel-eip97\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"inside-secure,safexcel-eip197\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@safexcel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1740, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get resource\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"safexcel_probe\00", [17 x i8] zeroinitializer }, align 32
@safexcel_probe._entry_ptr = internal global ptr @safexcel_probe._entry, section ".printk_index", align 4
@safexcel_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1753, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to enable clk (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@safexcel_probe._entry_ptr.18 = internal global ptr @safexcel_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@safexcel_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.2, i32 1767, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to enable reg clk (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@safexcel_probe._entry_ptr.22 = internal global ptr @safexcel_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"safexcel-context\00", [47 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1473, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Probing for EIP97/EIP19x failed - no such device (read %08x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"safexcel_probe_generic\00", [41 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr = internal global ptr @safexcel_probe_generic._entry, section ".printk_index", align 4
@safexcel_probe_generic._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1484, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EIP%d: EIP206 not detected\0A\00", [36 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.28 = internal global ptr @safexcel_probe_generic._entry.26, section ".printk_index", align 4
@safexcel_probe_generic._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 1492, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EIP%d: EIP96 not detected.\0A\00", [36 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.31 = internal global ptr @safexcel_probe_generic._entry.29, section ".printk_index", align 4
@safexcel_probe_generic._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 1528, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"EIP%d: ICE EIP207 not detected.\0A\00", [63 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.34 = internal global ptr @safexcel_probe_generic._entry.32, section ".printk_index", align 4
@safexcel_probe_generic._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.2, i32 1538, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EIP%d: EIP96PP not detected.\0A\00", [34 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.37 = internal global ptr @safexcel_probe_generic._entry.35, section ".printk_index", align 4
@safexcel_probe_generic._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.2, i32 1547, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"EIP%d: OCE EIP207 not detected.\0A\00", [63 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.40 = internal global ptr @safexcel_probe_generic._entry.38, section ".printk_index", align 4
@safexcel_probe_generic._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.2, i32 1580, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No ring interrupt controller present!\0A\00", [57 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.43 = internal global ptr @safexcel_probe_generic._entry.41, section ".printk_index", align 4
@safexcel_probe_generic._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.2, i32 1596, ptr @.str.46, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"EIP%d:%x(%d,%d,%d,%d)-HIA:%x(%d,%d,%d),PE:%x/%x(alg:%08x)/%x/%x/%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.47 = internal global ptr @safexcel_probe_generic._entry.44, section ".printk_index", align 4
@safexcel_probe_generic._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.25, ptr @.str.2, i32 1612, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate PCI MSI interrupts\0A\00", [57 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.50 = internal global ptr @safexcel_probe_generic._entry.48, section ".printk_index", align 4
@safexcel_probe_generic._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.25, ptr @.str.2, i32 1633, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to initialize rings\0A\00", [36 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.53 = internal global ptr @safexcel_probe_generic._entry.51, section ".printk_index", align 4
@safexcel_probe_generic._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.25, ptr @.str.2, i32 1659, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get IRQ ID for ring %d\0A\00", [62 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.56 = internal global ptr @safexcel_probe_generic._entry.54, section ".printk_index", align 4
@safexcel_probe_generic.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&priv->ring[i].work_data.work)\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wq_ring%d\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@safexcel_probe_generic.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->ring[i].lock\00", [44 x i8] zeroinitializer }, align 32
@safexcel_probe_generic.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&priv->ring[i].queue_lock\00", [38 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.25, ptr @.str.2, i32 1689, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW init failed (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.66 = internal global ptr @safexcel_probe_generic._entry.64, section ".printk_index", align 4
@safexcel_probe_generic._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.25, ptr @.str.2, i32 1695, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register algorithms (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@safexcel_probe_generic._entry_ptr.69 = internal global ptr @safexcel_probe_generic._entry.67, section ".printk_index", align 4
@safexcel_request_ring_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to get device MSI IRQ %d (err %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"safexcel_request_ring_irq\00", [38 x i8] zeroinitializer }, align 32
@safexcel_request_ring_irq._entry_ptr = internal global ptr @safexcel_request_ring_irq._entry, section ".printk_index", align 4
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ring%d\00", [25 x i8] zeroinitializer }, align 32
@safexcel_request_ring_irq._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.71, ptr @.str.2, i32 1179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@safexcel_request_ring_irq._entry_ptr.75 = internal global ptr @safexcel_request_ring_irq._entry.73, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@safexcel_irq_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RDR: fatal error.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"safexcel_irq_ring\00", [46 x i8] zeroinitializer }, align 32
@safexcel_irq_ring._entry_ptr = internal global ptr @safexcel_irq_ring._entry, section ".printk_index", align 4
@safexcel_handle_result_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1039, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to handle result (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"safexcel_handle_result_descriptor\00", [62 x i8] zeroinitializer }, align 32
@safexcel_handle_result_descriptor._entry_ptr = internal global ptr @safexcel_handle_result_descriptor._entry, section ".printk_index", align 4
@safexcel_hw_init.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"crypto_safexcel\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"safexcel_hw_init\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HW init: using %d pipe(s) and %d ring(s)\0A\00", [54 x i8] zeroinitializer }, align 32
@eip197_trc_cache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Record cache probing failed (%d,%d).\00", [59 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"eip197_trc_cache_init\00", [42 x i8] zeroinitializer }, align 32
@eip197_trc_cache_init._entry_ptr = internal global ptr @eip197_trc_cache_init._entry, section ".printk_index", align 4
@eip197_trc_cache_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 265, ptr @.str.46, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TRC init: %dd,%da (%dr,%dh)\0A\00", [35 x i8] zeroinitializer }, align 32
@eip197_trc_cache_init._entry_ptr.87 = internal global ptr @eip197_trc_cache_init._entry.85, section ".printk_index", align 4
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifpp.bin\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipue.bin\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eip197d\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eip197b\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inside-secure/%s/%s\00", [44 x i8] zeroinitializer }, align 32
@eip197_load_firmwares.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"eip197_load_firmwares\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Firmware loaded successfully\0A\00", [34 x i8] zeroinitializer }, align 32
@eip197_load_firmwares.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.93, ptr @.str.2, ptr @.str.95, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Firmware set not (fully) present or init failed, falling back to BCLA mode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eip197_minifw\00", [18 x i8] zeroinitializer }, align 32
@eip197_load_firmwares.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.93, ptr @.str.2, ptr @.str.97, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Firmware load failed.\0A\00", [41 x i8] zeroinitializer }, align 32
@poll_fw_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FW(%d) for PE %d failed to start\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poll_fw_ready\00", [18 x i8] zeroinitializer }, align 32
@poll_fw_ready._entry_ptr = internal global ptr @poll_fw_ready._entry, section ".printk_index", align 4
@safexcel_hw_setup_cdesc_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 498, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to fit even 1 command desc!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"safexcel_hw_setup_cdesc_rings\00", [34 x i8] zeroinitializer }, align 32
@safexcel_hw_setup_cdesc_rings._entry_ptr = internal global ptr @safexcel_hw_setup_cdesc_rings._entry, section ".printk_index", align 4
@safexcel_algs = internal constant { [73 x ptr], [92 x i8] } { [73 x ptr] [ptr @safexcel_alg_ecb_des, ptr @safexcel_alg_cbc_des, ptr @safexcel_alg_ecb_des3_ede, ptr @safexcel_alg_cbc_des3_ede, ptr @safexcel_alg_ecb_aes, ptr @safexcel_alg_cbc_aes, ptr @safexcel_alg_cfb_aes, ptr @safexcel_alg_ofb_aes, ptr @safexcel_alg_ctr_aes, ptr @safexcel_alg_md5, ptr @safexcel_alg_sha1, ptr @safexcel_alg_sha224, ptr @safexcel_alg_sha256, ptr @safexcel_alg_sha384, ptr @safexcel_alg_sha512, ptr @safexcel_alg_hmac_md5, ptr @safexcel_alg_hmac_sha1, ptr @safexcel_alg_hmac_sha224, ptr @safexcel_alg_hmac_sha256, ptr @safexcel_alg_hmac_sha384, ptr @safexcel_alg_hmac_sha512, ptr @safexcel_alg_authenc_hmac_sha1_cbc_aes, ptr @safexcel_alg_authenc_hmac_sha224_cbc_aes, ptr @safexcel_alg_authenc_hmac_sha256_cbc_aes, ptr @safexcel_alg_authenc_hmac_sha384_cbc_aes, ptr @safexcel_alg_authenc_hmac_sha512_cbc_aes, ptr @safexcel_alg_authenc_hmac_sha1_cbc_des3_ede, ptr @safexcel_alg_authenc_hmac_sha1_ctr_aes, ptr @safexcel_alg_authenc_hmac_sha224_ctr_aes, ptr @safexcel_alg_authenc_hmac_sha256_ctr_aes, ptr @safexcel_alg_authenc_hmac_sha384_ctr_aes, ptr @safexcel_alg_authenc_hmac_sha512_ctr_aes, ptr @safexcel_alg_xts_aes, ptr @safexcel_alg_gcm, ptr @safexcel_alg_ccm, ptr @safexcel_alg_crc32, ptr @safexcel_alg_cbcmac, ptr @safexcel_alg_xcbcmac, ptr @safexcel_alg_cmac, ptr @safexcel_alg_chacha20, ptr @safexcel_alg_chachapoly, ptr @safexcel_alg_chachapoly_esp, ptr @safexcel_alg_sm3, ptr @safexcel_alg_hmac_sm3, ptr @safexcel_alg_ecb_sm4, ptr @safexcel_alg_cbc_sm4, ptr @safexcel_alg_ofb_sm4, ptr @safexcel_alg_cfb_sm4, ptr @safexcel_alg_ctr_sm4, ptr @safexcel_alg_authenc_hmac_sha1_cbc_sm4, ptr @safexcel_alg_authenc_hmac_sm3_cbc_sm4, ptr @safexcel_alg_authenc_hmac_sha1_ctr_sm4, ptr @safexcel_alg_authenc_hmac_sm3_ctr_sm4, ptr @safexcel_alg_sha3_224, ptr @safexcel_alg_sha3_256, ptr @safexcel_alg_sha3_384, ptr @safexcel_alg_sha3_512, ptr @safexcel_alg_hmac_sha3_224, ptr @safexcel_alg_hmac_sha3_256, ptr @safexcel_alg_hmac_sha3_384, ptr @safexcel_alg_hmac_sha3_512, ptr @safexcel_alg_authenc_hmac_sha1_cbc_des, ptr @safexcel_alg_authenc_hmac_sha256_cbc_des3_ede, ptr @safexcel_alg_authenc_hmac_sha224_cbc_des3_ede, ptr @safexcel_alg_authenc_hmac_sha512_cbc_des3_ede, ptr @safexcel_alg_authenc_hmac_sha384_cbc_des3_ede, ptr @safexcel_alg_authenc_hmac_sha256_cbc_des, ptr @safexcel_alg_authenc_hmac_sha224_cbc_des, ptr @safexcel_alg_authenc_hmac_sha512_cbc_des, ptr @safexcel_alg_authenc_hmac_sha384_cbc_des, ptr @safexcel_alg_rfc4106_gcm, ptr @safexcel_alg_rfc4543_gcm, ptr @safexcel_alg_rfc4309_ccm], [92 x i8] zeroinitializer }, align 32
@safexcel_alg_ecb_des = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_cbc_des = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_ecb_des3_ede = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_cbc_des3_ede = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_ecb_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_cbc_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_cfb_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_ofb_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_ctr_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_md5 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sha1 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sha224 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sha256 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sha384 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sha512 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_md5 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sha1 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sha224 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sha256 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sha384 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sha512 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha1_cbc_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha224_cbc_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha256_cbc_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha384_cbc_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha512_cbc_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha1_cbc_des3_ede = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha1_ctr_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha224_ctr_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha256_ctr_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha384_ctr_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha512_ctr_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_xts_aes = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_gcm = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_ccm = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_crc32 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_cbcmac = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_xcbcmac = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_cmac = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_chacha20 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_chachapoly = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_chachapoly_esp = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sm3 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sm3 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_ecb_sm4 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_cbc_sm4 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_ofb_sm4 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_cfb_sm4 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_ctr_sm4 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha1_cbc_sm4 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sm3_cbc_sm4 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha1_ctr_sm4 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sm3_ctr_sm4 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sha3_224 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sha3_256 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sha3_384 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_sha3_512 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sha3_224 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sha3_256 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sha3_384 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_hmac_sha3_512 = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha1_cbc_des = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha256_cbc_des3_ede = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha224_cbc_des3_ede = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha512_cbc_des3_ede = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha384_cbc_des3_ede = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha256_cbc_des = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha224_cbc_des = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha512_cbc_des = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_authenc_hmac_sha384_cbc_des = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_rfc4106_gcm = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_rfc4543_gcm = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_alg_rfc4309_ccm = external dso_local global %struct.safexcel_alg_template, align 128
@safexcel_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4334, i32 36920, i32 5806, i32 50466, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@safexcel_pci_probe.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.102, ptr @.str.2, ptr @.str.103, i8 1, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"safexcel_pci_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Probing PCIE device: vendor %04x, device %04x, subv %04x, subdev %04x, ctxt %lx\0A\00", [47 x i8] zeroinitializer }, align 32
@safexcel_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 1870, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@safexcel_pci_probe._entry_ptr = internal global ptr @safexcel_pci_probe._entry, section ".printk_index", align 4
@safexcel_pci_probe._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.102, ptr @.str.2, i32 1877, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to map IO region for BAR0\0A\00", [62 x i8] zeroinitializer }, align 32
@safexcel_pci_probe._entry_ptr.107 = internal global ptr @safexcel_pci_probe._entry.105, section ".printk_index", align 4
@safexcel_pci_probe.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.102, ptr @.str.2, ptr @.str.108, i8 1, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Device identified as FPGA based development board - applying HW reset\0A\00", [57 x i8] zeroinitializer }, align 32
@safexcel_pci_probe._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str.2, i32 1887, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to map IO region for BAR4\0A\00", [62 x i8] zeroinitializer }, align 32
@safexcel_pci_probe._entry_ptr.111 = internal global ptr @safexcel_pci_probe._entry.109, section ".printk_index", align 4
@safexcel_pci_probe.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.80, ptr @.str.102, ptr @.str.2, ptr @.str.112, i8 1, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Detected Xilinx PCIE IRQ block version %d, multiple MSI support enabled\0A\00", [55 x i8] zeroinitializer }, align 32
@safexcel_pci_probe._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.102, ptr @.str.2, i32 1912, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unrecognised IRQ block identifier %x\0A\00", [58 x i8] zeroinitializer }, align 32
@safexcel_pci_probe._entry_ptr.115 = internal global ptr @safexcel_pci_probe._entry.113, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.eip197_load_firmwares = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.91, ptr @.str.90, ptr @.str.91], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 16, i64 15045, i64 15300]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"max_rings\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 27, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 903, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 906, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 910, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 958, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"crypto_safexcel\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1834, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"safexcel_pci_driver\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1957, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1838, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [24 x i8] c"safexcel_of_match_table\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1809, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1740, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1753, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1758, i32 43 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1767, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1405, i32 40 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1472, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1484, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1492, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1527, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1538, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1546, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1580, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1589, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1612, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1633, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1659, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1666, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1669, i32 24 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1671, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1681, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1682, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1689, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1695, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1157, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1165, i32 25 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1179, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1111, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1038, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 591, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 211, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 264, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 407, i32 27 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 407, i32 39 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 414, i32 9 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 417, i32 9 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 423, i32 25 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 451, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 463, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 464, i32 9 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 469, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 355, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 498, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [14 x i8] c"safexcel_algs\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1190, i32 38 }
@___asan_gen_.422 = private unnamed_addr constant [17 x i8] c"safexcel_pci_ids\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1946, i32 35 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1854, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1870, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1877, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1883, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1887, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1894, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.459 = private constant [43 x i8] c"../drivers/crypto/inside-secure/safexcel.c\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1911, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant [35 x i8] c"switch.table.eip197_load_firmwares\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_import_ns270, ptr @__UNIQUE_ID_license269, ptr @__UNIQUE_ID_max_rings237, ptr @__UNIQUE_ID_max_ringstype236, ptr @__exitcall_safexcel_exit, ptr @__initcall__kmod_crypto_safexcel__263_1991_safexcel_init6, ptr @__param_max_rings, ptr @eip197_trc_cache_init._entry, ptr @eip197_trc_cache_init._entry.85, ptr @eip197_trc_cache_init._entry_ptr, ptr @eip197_trc_cache_init._entry_ptr.87, ptr @poll_fw_ready._entry, ptr @poll_fw_ready._entry_ptr, ptr @safexcel_complete._entry, ptr @safexcel_complete._entry_ptr, ptr @safexcel_exit, ptr @safexcel_handle_result_descriptor._entry, ptr @safexcel_handle_result_descriptor._entry_ptr, ptr @safexcel_hw_setup_cdesc_rings._entry, ptr @safexcel_hw_setup_cdesc_rings._entry_ptr, ptr @safexcel_irq_ring._entry, ptr @safexcel_irq_ring._entry_ptr, ptr @safexcel_pci_probe._entry, ptr @safexcel_pci_probe._entry.105, ptr @safexcel_pci_probe._entry.109, ptr @safexcel_pci_probe._entry.113, ptr @safexcel_pci_probe._entry_ptr, ptr @safexcel_pci_probe._entry_ptr.107, ptr @safexcel_pci_probe._entry_ptr.111, ptr @safexcel_pci_probe._entry_ptr.115, ptr @safexcel_probe._entry, ptr @safexcel_probe._entry.16, ptr @safexcel_probe._entry.20, ptr @safexcel_probe._entry_ptr, ptr @safexcel_probe._entry_ptr.18, ptr @safexcel_probe._entry_ptr.22, ptr @safexcel_probe_generic._entry, ptr @safexcel_probe_generic._entry.26, ptr @safexcel_probe_generic._entry.29, ptr @safexcel_probe_generic._entry.32, ptr @safexcel_probe_generic._entry.35, ptr @safexcel_probe_generic._entry.38, ptr @safexcel_probe_generic._entry.41, ptr @safexcel_probe_generic._entry.44, ptr @safexcel_probe_generic._entry.48, ptr @safexcel_probe_generic._entry.51, ptr @safexcel_probe_generic._entry.54, ptr @safexcel_probe_generic._entry.64, ptr @safexcel_probe_generic._entry.67, ptr @safexcel_probe_generic._entry_ptr, ptr @safexcel_probe_generic._entry_ptr.28, ptr @safexcel_probe_generic._entry_ptr.31, ptr @safexcel_probe_generic._entry_ptr.34, ptr @safexcel_probe_generic._entry_ptr.37, ptr @safexcel_probe_generic._entry_ptr.40, ptr @safexcel_probe_generic._entry_ptr.43, ptr @safexcel_probe_generic._entry_ptr.47, ptr @safexcel_probe_generic._entry_ptr.50, ptr @safexcel_probe_generic._entry_ptr.53, ptr @safexcel_probe_generic._entry_ptr.56, ptr @safexcel_probe_generic._entry_ptr.66, ptr @safexcel_probe_generic._entry_ptr.69, ptr @safexcel_rdesc_check_errors._entry, ptr @safexcel_rdesc_check_errors._entry.5, ptr @safexcel_rdesc_check_errors._entry.8, ptr @safexcel_rdesc_check_errors._entry_ptr, ptr @safexcel_rdesc_check_errors._entry_ptr.10, ptr @safexcel_rdesc_check_errors._entry_ptr.7, ptr @safexcel_request_ring_irq._entry, ptr @safexcel_request_ring_irq._entry.73, ptr @safexcel_request_ring_irq._entry_ptr, ptr @safexcel_request_ring_irq._entry_ptr.75, ptr @max_rings, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @crypto_safexcel, ptr @safexcel_pci_driver, ptr @.str.13, ptr @safexcel_of_match_table, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @safexcel_probe_generic.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @safexcel_probe_generic.__key.60, ptr @.str.61, ptr @safexcel_probe_generic.__key.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @safexcel_algs, ptr @safexcel_pci_ids, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @switch.table.eip197_load_firmwares], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_rdesc_check_errors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_rdesc_check_errors._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_rdesc_check_errors._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_safexcel to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_of_match_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_probe_generic._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_request_ring_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_request_ring_irq._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_irq_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_handle_result_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eip197_trc_cache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eip197_trc_cache_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_fw_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_hw_setup_cdesc_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_algs to i32), i32 292, i32 384, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_pci_probe._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_pci_probe._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_pci_probe._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.eip197_load_firmwares to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @safexcel_dequeue(ptr nocapture noundef readonly %priv, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  %commands = alloca i32, align 4
  %results = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %commands) #10
  %0 = ptrtoint ptr %commands to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %commands, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %results) #10
  %1 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %results, align 4, !annotation !244
  %ring1 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1, align 4
  %req2 = getelementptr %struct.safexcel_ring, ptr %3, i32 %ring, i32 10
  %4 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req2, align 4
  %backlog5 = getelementptr %struct.safexcel_ring, ptr %3, i32 %ring, i32 11
  %6 = ptrtoint ptr %backlog5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backlog5, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.while.body_crit_edge, label %entry.handle_req_crit_edge

entry.handle_req_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_req

entry.while.body_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %if.end37, %land.lhs.true.while.body_crit_edge, %entry.while.body_crit_edge
  %nreq.0 = phi i32 [ %inc, %if.end37 ], [ %nreq.1, %land.lhs.true.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %cdesc.0 = phi i32 [ %add, %if.end37 ], [ %cdesc.1, %land.lhs.true.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %rdesc.0 = phi i32 [ %add38, %if.end37 ], [ %rdesc.1, %land.lhs.true.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %8 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1, align 4
  %queue_lock = getelementptr %struct.safexcel_ring, ptr %9, i32 %ring, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #10
  %10 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring1, align 4
  %queue = getelementptr %struct.safexcel_ring, ptr %11, i32 %ring, i32 6
  %backlog.i = getelementptr %struct.safexcel_ring, ptr %11, i32 %ring, i32 6, i32 1
  %12 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %13, %queue
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %13
  %call13 = call ptr @crypto_dequeue_request(ptr noundef %queue) #10
  %14 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1, align 4
  %queue_lock16 = getelementptr %struct.safexcel_ring, ptr %15, i32 %ring, i32 7
  call void @_raw_spin_unlock_bh(ptr noundef %queue_lock16) #10
  %tobool17.not = icmp eq ptr %call13, null
  br i1 %tobool17.not, label %while.body.finalize_crit_edge, label %while.body.handle_req_crit_edge

while.body.handle_req_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_req

while.body.finalize_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %finalize

handle_req:                                       ; preds = %while.body.handle_req_crit_edge, %entry.handle_req_crit_edge
  %req.0 = phi ptr [ %5, %entry.handle_req_crit_edge ], [ %call13, %while.body.handle_req_crit_edge ]
  %backlog.0 = phi ptr [ %7, %entry.handle_req_crit_edge ], [ %spec.select.i, %while.body.handle_req_crit_edge ]
  %nreq.1 = phi i32 [ 0, %entry.handle_req_crit_edge ], [ %nreq.0, %while.body.handle_req_crit_edge ]
  %cdesc.1 = phi i32 [ 0, %entry.handle_req_crit_edge ], [ %cdesc.0, %while.body.handle_req_crit_edge ]
  %rdesc.1 = phi i32 [ 0, %entry.handle_req_crit_edge ], [ %rdesc.0, %while.body.handle_req_crit_edge ]
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req.0, i32 0, i32 3
  %16 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tfm, align 4
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_ctx.i, align 4
  %call27 = call i32 %19(ptr noundef nonnull %req.0, i32 noundef %ring, ptr noundef nonnull %commands, ptr noundef nonnull %results) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %handle_req.finalize_crit_edge

handle_req.finalize_crit_edge:                    ; preds = %handle_req
  call void @__sanitizer_cov_trace_pc() #12
  br label %finalize

if.end30:                                         ; preds = %handle_req
  %tobool31.not = icmp eq ptr %backlog.0, null
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %backlog.0, i32 0, i32 1
  %20 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %complete, align 4
  call void %21(ptr noundef nonnull %backlog.0, i32 noundef -115) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %22 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %commands, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool34.not = icmp eq i32 %23, 0
  br i1 %tobool34.not, label %land.lhs.true, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end33
  %24 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %results, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool35.not = icmp eq i32 %25, 0
  br i1 %tobool35.not, label %land.lhs.true.while.body_crit_edge, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true.while.body_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %if.end33.if.end37_crit_edge
  %add = add i32 %23, %cdesc.1
  %26 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %results, align 4
  %add38 = add i32 %27, %rdesc.1
  %inc = add i32 %nreq.1, 1
  br label %while.body

finalize:                                         ; preds = %handle_req.finalize_crit_edge, %while.body.finalize_crit_edge
  %req.0.sink = phi ptr [ null, %while.body.finalize_crit_edge ], [ %req.0, %handle_req.finalize_crit_edge ]
  %backlog.0.sink = phi ptr [ null, %while.body.finalize_crit_edge ], [ %backlog.0, %handle_req.finalize_crit_edge ]
  %nreq.2 = phi i32 [ %nreq.0, %while.body.finalize_crit_edge ], [ %nreq.1, %handle_req.finalize_crit_edge ]
  %cdesc.2 = phi i32 [ %cdesc.0, %while.body.finalize_crit_edge ], [ %cdesc.1, %handle_req.finalize_crit_edge ]
  %rdesc.2 = phi i32 [ %rdesc.0, %while.body.finalize_crit_edge ], [ %rdesc.1, %handle_req.finalize_crit_edge ]
  %28 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1, align 4
  %req41 = getelementptr %struct.safexcel_ring, ptr %29, i32 %ring, i32 10
  %30 = ptrtoint ptr %req41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %req.0.sink, ptr %req41, align 4
  %31 = load ptr, ptr %ring1, align 4
  %backlog44 = getelementptr %struct.safexcel_ring, ptr %31, i32 %ring, i32 11
  %32 = ptrtoint ptr %backlog44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %backlog.0.sink, ptr %backlog44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.2)
  %tobool45.not = icmp eq i32 %nreq.2, 0
  br i1 %tobool45.not, label %finalize.cleanup_crit_edge, label %if.end47

finalize.cleanup_crit_edge:                       ; preds = %finalize
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %finalize
  %33 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring1, align 4
  %arrayidx49 = getelementptr %struct.safexcel_ring, ptr %34, i32 %ring
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx49) #10
  %35 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ring1, align 4
  %requests = getelementptr %struct.safexcel_ring, ptr %36, i32 %ring, i32 8
  %37 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %requests, align 4
  %add52 = add i32 %38, %nreq.2
  store i32 %add52, ptr %requests, align 4
  %39 = load ptr, ptr %ring1, align 4
  %busy = getelementptr %struct.safexcel_ring, ptr %39, i32 %ring, i32 9
  %40 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %busy, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool55.not = icmp eq i8 %41, 0
  br i1 %tobool55.not, label %if.then56, label %if.end47.if.end60_crit_edge

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then56:                                        ; preds = %if.end47
  %requests.i = getelementptr %struct.safexcel_ring, ptr %39, i32 %ring, i32 8
  %42 = ptrtoint ptr %requests.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %requests.i, align 4
  %44 = call i32 @llvm.smin.i32(i32 %43, i32 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.then56.safexcel_try_push_requests.exit_crit_edge, label %do.body.i

if.then56.safexcel_try_push_requests.exit_crit_edge: ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %safexcel_try_push_requests.exit

do.body.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  call void @arm_heavy_mb() #10
  %or.i = or i32 %44, 8388608
  %45 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 4
  %hia_aic_xdr.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 3
  %48 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 %49
  %mul.i = shl i32 %ring, 12
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 2048
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %45) #10, !srcloc !247
  br label %safexcel_try_push_requests.exit

safexcel_try_push_requests.exit:                  ; preds = %do.body.i, %if.then56.safexcel_try_push_requests.exit_crit_edge
  %50 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ring1, align 4
  %busy59 = getelementptr %struct.safexcel_ring, ptr %51, i32 %ring, i32 9
  %52 = ptrtoint ptr %busy59 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %busy59, align 4
  br label %if.end60

if.end60:                                         ; preds = %safexcel_try_push_requests.exit, %if.end47.if.end60_crit_edge
  %53 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring1, align 4
  %arrayidx62 = getelementptr %struct.safexcel_ring, ptr %54, i32 %ring
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx62) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  call void @arm_heavy_mb() #10
  %rd_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 6
  %55 = ptrtoint ptr %rd_offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rd_offset, align 4
  %mul = mul i32 %56, %rdesc.2
  %57 = call i32 @llvm.bswap.i32(i32 %mul)
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 4
  %hia_aic_xdr = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 3
  %60 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr = getelementptr i8, ptr %59, i32 %61
  %mul64 = shl i32 %ring, 12
  %add.ptr65 = getelementptr i8, ptr %add.ptr, i32 %mul64
  %add.ptr66 = getelementptr i8, ptr %add.ptr65, i32 2048
  %add.ptr67 = getelementptr i8, ptr %add.ptr66, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %57) #10, !srcloc !247
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @arm_heavy_mb() #10
  %cd_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 3
  %62 = ptrtoint ptr %cd_offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cd_offset, align 4
  %mul72 = mul i32 %63, %cdesc.2
  %64 = call i32 @llvm.bswap.i32(i32 %mul72)
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 4
  %67 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr76 = getelementptr i8, ptr %66, i32 %68
  %add.ptr78 = getelementptr i8, ptr %add.ptr76, i32 %mul64
  %add.ptr79 = getelementptr i8, ptr %add.ptr78, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %64) #10, !srcloc !247
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %finalize.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %results) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %commands) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @safexcel_rdesc_check_errors(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %rdp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %res_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %res_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res_offset, align 4
  %add.ptr = getelementptr i8, ptr %rdp, i32 %1
  %2 = ptrtoint ptr %rdp to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load = load i32, ptr %rdp, align 1
  %3 = and i32 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %4 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  %5 = and i32 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %land.rhs, label %lor.rhs.if.end_crit_edge

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %lor.rhs
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 5)
  %bf.load11 = load i40, ptr %add.ptr, align 1
  %8 = and i40 %bf.load11, 8388352
  %tobool15.not = icmp eq i40 %8, 0
  br i1 %tobool15.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end_crit_edge, !prof !250

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  br i1 %tobool5.not, label %if.end.if.end25_crit_edge, label %do.end

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end.if.end25_crit_edge
  %11 = ptrtoint ptr %rdp to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load26 = load i32, ptr %rdp, align 1
  %12 = and i32 %bf.load26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool30.not = icmp eq i32 %12, 0
  br i1 %tobool30.not, label %if.end25.if.end36_crit_edge, label %do.end34

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %dev35 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.end25.if.end36_crit_edge
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 5)
  %bf.load37 = load i40, ptr %add.ptr, align 1
  %16 = trunc i40 %bf.load37 to i32
  %17 = and i32 %16, 4220416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool41.not = icmp eq i32 %17, 0
  br i1 %tobool41.not, label %if.else, label %do.end45

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %18 = lshr i32 %16, 8
  %bf.cast40 = and i32 %18, 32767
  %dev46 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef %bf.cast40) #13
  br label %cleanup

if.else:                                          ; preds = %if.end36
  %21 = and i32 %16, 39168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool56.not = icmp eq i32 %21, 0
  br i1 %tobool56.not, label %if.else58, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %22 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool64.not = icmp eq i32 %22, 0
  %. = select i1 %tobool64.not, i32 -22, i32 -74
  br label %cleanup

cleanup:                                          ; preds = %if.else58, %if.else.cleanup_crit_edge, %do.end45, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end45 ], [ 0, %land.rhs.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %., %if.else58 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @safexcel_rdr_req_set(ptr noundef %priv, i32 noundef %ring, ptr noundef %rdesc, ptr noundef %req) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @safexcel_ring_rdr_rdesc_index(ptr noundef %priv, i32 noundef %ring, ptr noundef %rdesc) #10
  %ring1 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring1, align 4
  %rdr_req = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring, i32 5
  %2 = ptrtoint ptr %rdr_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdr_req, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %call
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req, ptr %arrayidx2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_ring_rdr_rdesc_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @safexcel_rdr_req_get(ptr noundef %priv, i32 noundef %ring) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @safexcel_ring_first_rdr_index(ptr noundef %priv, i32 noundef %ring) #10
  %ring1 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring1, align 4
  %rdr_req = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring, i32 5
  %2 = ptrtoint ptr %rdr_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdr_req, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %call
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_ring_first_rdr_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @safexcel_complete(ptr noundef %priv, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond4.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring1, align 4
  %cdr = getelementptr %struct.safexcel_ring, ptr %1, i32 %ring, i32 3
  %call = tail call ptr @safexcel_ring_next_rptr(ptr noundef %priv, ptr noundef %cdr) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %do.cond4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #13
  br label %cleanup

do.cond4:                                         ; preds = %do.body
  %4 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load = load i32, ptr %call, align 1
  %5 = and i32 %bf.load, 512
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.cond4.do.body_crit_edge, label %do.cond4.cleanup_crit_edge

do.cond4.cleanup_crit_edge:                       ; preds = %do.cond4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond4.do.body_crit_edge:                       ; preds = %do.cond4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cleanup:                                          ; preds = %do.cond4.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @safexcel_ring_next_rptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @safexcel_inv_complete(ptr nocapture noundef readonly %req, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %error)
  %cmp = icmp eq i32 %error, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %error1 = getelementptr inbounds %struct.safexcel_inv_result, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %error1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %error, ptr %error1, align 4
  tail call void @complete(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @safexcel_invalidate_cache(ptr noundef %async, ptr noundef %priv, i32 noundef %ctxr_dma, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  %dmmy = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmmy) #10
  %0 = ptrtoint ptr %dmmy to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dmmy, align 4, !annotation !244
  %call = call ptr @safexcel_add_cdesc(ptr noundef %priv, i32 noundef %ring, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %ctxr_dma, ptr noundef nonnull %dmmy) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %control_data = getelementptr inbounds %struct.safexcel_command_desc, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %control_data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load = load i32, ptr %control_data, align 1
  %bf.set = and i32 %bf.load, -32768
  %bf.clear5 = or i32 %bf.set, 3
  store i32 %bf.clear5, ptr %control_data, align 1
  %context_lo = getelementptr inbounds %struct.safexcel_command_desc, ptr %call, i32 0, i32 6, i32 3
  %3 = ptrtoint ptr %context_lo to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %context_lo, align 1
  %and = and i32 %4, -4
  store i32 %and, ptr %context_lo, align 1
  %control0 = getelementptr inbounds %struct.safexcel_command_desc, ptr %call, i32 0, i32 6, i32 5
  %5 = ptrtoint ptr %control0 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 100663296, ptr %control0, align 1
  %call9 = call ptr @safexcel_add_rdesc(ptr noundef %priv, i32 noundef %ring, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0) #10
  %cmp.i33 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call9 to i32
  %ring14 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %7 = ptrtoint ptr %ring14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring14, align 4
  %cdr = getelementptr %struct.safexcel_ring, ptr %8, i32 %ring, i32 3
  call void @safexcel_ring_rollback_wptr(ptr noundef %priv, ptr noundef %cdr) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @safexcel_ring_rdr_rdesc_index(ptr noundef %priv, i32 noundef %ring, ptr noundef %call9) #10
  %ring1.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %9 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring1.i, align 4
  %rdr_req.i = getelementptr %struct.safexcel_ring, ptr %10, i32 %ring, i32 5
  %11 = ptrtoint ptr %rdr_req.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdr_req.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %12, i32 %call.i
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %async, ptr %arrayidx2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %6, %if.then11 ], [ 0, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmmy) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @safexcel_add_cdesc(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @safexcel_add_rdesc(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @safexcel_ring_rollback_wptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @crypto_safexcel) #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @safexcel_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @safexcel_pci_driver, ptr noundef null, ptr noundef nonnull @.str.80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @crypto_safexcel, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @safexcel_pci_driver) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end4_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.then.if.end4_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 168, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %1 = ptrtoint ptr %call3 to i32
  %version = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %version, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #13
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %clk, align 4
  %cmp.i.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call12 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  %10 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %if.end10.cleanup_crit_edge [
    i32 -2, label %if.end10.if.end27_crit_edge
    i32 0, label %if.end18
  ]

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call.i96 = tail call i32 @clk_prepare(ptr noundef %call12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.do.end25_crit_edge

if.end18.do.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end27_crit_edge, label %if.then3.i

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call12) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i, %if.end18.do.end25_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i96, %if.end18.do.end25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end27:                                         ; preds = %if.end.i.if.end27_crit_edge, %if.end10.if.end27_crit_edge
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.19) #10
  %reg_clk = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %reg_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %reg_clk, align 4
  %cmp.i.i97 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call29 to i32
  %spec.select.i98 = select i1 %cmp.i.i97, i32 %12, i32 0
  %13 = zext i32 %spec.select.i98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %spec.select.i98, label %if.end27.err_core_clk_crit_edge [
    i32 -2, label %if.end27.if.end45_crit_edge
    i32 0, label %if.end36
  ]

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end27.err_core_clk_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_clk

if.end36:                                         ; preds = %if.end27
  %call.i99 = tail call i32 @clk_prepare(ptr noundef %call29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %if.end.i103, label %if.end36.do.end43_crit_edge

if.end36.do.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.end.i103:                                      ; preds = %if.end36
  %call1.i101 = tail call i32 @clk_enable(ptr noundef %call29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool2.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool2.not.i102, label %if.end.i103.if.end45_crit_edge, label %if.then3.i104

if.end.i103.if.end45_crit_edge:                   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then3.i104:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call29) #10
  br label %do.end43

do.end43:                                         ; preds = %if.then3.i104, %if.end36.do.end43_crit_edge
  %retval.0.i105.ph = phi i32 [ %call1.i101, %if.then3.i104 ], [ %call.i99, %if.end36.do.end43_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i105.ph) #13
  br label %err_core_clk

if.end45:                                         ; preds = %if.end.i103.if.end45_crit_edge, %if.end27.if.end45_crit_edge
  %call.i107 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp.i108 = icmp eq i32 %call.i107, 0
  br i1 %cmp.i108, label %if.end49, label %if.end45.err_reg_clk_crit_edge

if.end45.err_reg_clk_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_reg_clk

if.end49:                                         ; preds = %if.end45
  %call1.i109 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #10
  %call50 = tail call fastcc i32 @safexcel_probe_generic(ptr noundef %pdev, ptr noundef nonnull %call.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %if.end49.err_reg_clk_crit_edge

if.end49.err_reg_clk_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_reg_clk

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_reg_clk:                                      ; preds = %if.end49.err_reg_clk_crit_edge, %if.end45.err_reg_clk_crit_edge
  %ret.0 = phi i32 [ %call50, %if.end49.err_reg_clk_crit_edge ], [ %call.i107, %if.end45.err_reg_clk_crit_edge ]
  %14 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  tail call void @clk_unprepare(ptr noundef %15) #10
  br label %err_core_clk

err_core_clk:                                     ; preds = %err_reg_clk, %do.end43, %if.end27.err_core_clk_crit_edge
  %ret.1 = phi i32 [ %retval.0.i105.ph, %do.end43 ], [ %ret.0, %err_reg_clk ], [ %12, %if.end27.err_core_clk_crit_edge ]
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %err_core_clk, %if.end49.cleanup_crit_edge, %do.end25, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %retval.0.i.ph, %do.end25 ], [ %ret.1, %err_core_clk ], [ -12, %entry.cleanup_crit_edge ], [ %9, %if.end10.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwconfig.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [73 x ptr], ptr @safexcel_algs, i32 0, i32 %i.027.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %algo_mask.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %algo_mask.i, align 8
  %6 = ptrtoint ptr %hwconfig.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwconfig.i, align 4
  %and.i = and i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp3.not.i = icmp eq i32 %and.i, %5
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %type.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %9, label %if.else14.i [
    i32 0, label %if.then6.i
    i32 1, label %if.then11.i
  ]

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %alg.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 4
  tail call void @crypto_unregister_skcipher(ptr noundef %alg.i) #10
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %alg13.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 4
  tail call void @crypto_unregister_aead(ptr noundef %alg13.i) #10
  br label %for.inc.i

if.else14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %alg16.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 4
  tail call void @crypto_unregister_ahash(ptr noundef %alg16.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else14.i, %if.then11.i, %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 73
  br i1 %exitcond.not.i, label %safexcel_unregister_algorithms.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

safexcel_unregister_algorithms.exit:              ; preds = %for.inc.i
  tail call fastcc void @safexcel_hw_reset_rings(ptr noundef %1)
  %reg_clk = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_clk, align 4
  tail call void @clk_disable(ptr noundef %12) #10
  tail call void @clk_unprepare(ptr noundef %12) #10
  %clk = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #10
  tail call void @clk_unprepare(ptr noundef %14) #10
  %rings = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13.not = icmp eq i32 %16, 0
  br i1 %cmp13.not, label %safexcel_unregister_algorithms.exit.for.end_crit_edge, label %for.body.lr.ph

safexcel_unregister_algorithms.exit.for.end_crit_edge: ; preds = %safexcel_unregister_algorithms.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %safexcel_unregister_algorithms.exit
  %ring = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring, align 4
  %irq = getelementptr %struct.safexcel_ring, ptr %18, i32 %i.014, i32 12
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %20, ptr noundef null, i1 noundef zeroext true) #10
  %21 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring, align 4
  %workqueue = getelementptr %struct.safexcel_ring, ptr %22, i32 %i.014, i32 1
  %23 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %24) #10
  %inc = add nuw i32 %i.014, 1
  %25 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rings, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %safexcel_unregister_algorithms.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_probe_generic(ptr noundef %pdev, ptr noundef %priv, i32 noundef %is_pci_dev) unnamed_addr #0 align 64 {
entry:
  %wq_name = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.23, ptr noundef %1, i32 noundef 168, i32 noundef 1, i32 noundef 0) #10
  %context_pool = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %context_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %context_pool, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup525_crit_edge, label %if.end

entry.cleanup525_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup525

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 65532
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !251
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  %and = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 13770, i32 %and)
  %cmp = icmp eq i32 %and, 13770
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %6, 16
  %and7 = and i32 %shr, 4095
  %hiaver = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %hiaver to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and7, ptr %hiaver, align 4
  br label %if.end58

if.else:                                          ; preds = %if.end
  %shr8.mask = and i32 %6, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -902496256, i32 %shr8.mask)
  %cmp10 = icmp eq i32 %shr8.mask, -902496256
  br i1 %cmp10, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and12 = shl i32 %6, 4
  %shl = and i32 %and12, 3840
  %shr13 = lshr i32 %6, 4
  %and14 = and i32 %shr13, 240
  %or = or i32 %shl, %and14
  %shr15 = lshr i32 %6, 12
  %and16 = and i32 %shr15, 15
  %or17 = or i32 %or, %and16
  %hiaver19 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %hiaver19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or17, ptr %hiaver19, align 4
  br label %if.end58

if.else20:                                        ; preds = %if.else
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %add.ptr25 = getelementptr i8, ptr %10, i32 655356
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !251
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %and29 = and i32 %12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 13770, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 13770
  br i1 %cmp30, label %if.then31, label %if.else37

if.then31:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  %shr32 = lshr i32 %12, 16
  %and33 = and i32 %shr32, 4095
  %hiaver35 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %hiaver35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and33, ptr %hiaver35, align 4
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or36 = or i32 %15, 2
  store i32 %or36, ptr %flags, align 4
  br label %if.end58

if.else37:                                        ; preds = %if.else20
  %shr38.mask = and i32 %12, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -902496256, i32 %shr38.mask)
  %cmp40 = icmp eq i32 %shr38.mask, -902496256
  br i1 %cmp40, label %if.then41, label %if.else37.cleanup525_crit_edge

if.else37.cleanup525_crit_edge:                   ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup525

if.then41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  %and42 = shl i32 %12, 4
  %shl43 = and i32 %and42, 3840
  %shr44 = lshr i32 %12, 4
  %and45 = and i32 %shr44, 240
  %or46 = or i32 %shl43, %and45
  %shr47 = lshr i32 %12, 12
  %and48 = and i32 %shr47, 15
  %or49 = or i32 %or46, %and48
  %hiaver51 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %hiaver51 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or49, ptr %hiaver51, align 4
  %flags52 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 8
  %17 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags52, align 4
  %or53 = or i32 %18, 2
  store i32 %or53, ptr %flags52, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then41, %if.then31, %if.then11, %if.then6
  %tobool59.not = phi i1 [ false, %if.then11 ], [ false, %if.then41 ], [ true, %if.then31 ], [ true, %if.then6 ]
  %mask.0 = phi i32 [ 3, %if.then11 ], [ 3, %if.then41 ], [ 0, %if.then31 ], [ 0, %if.then6 ]
  %flags.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 8
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end58.safexcel_init_register_offsets.exit_crit_edge

if.end58.safexcel_init_register_offsets.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %safexcel_init_register_offsets.exit

if.else.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %safexcel_init_register_offsets.exit

safexcel_init_register_offsets.exit:              ; preds = %if.else.i, %if.end58.safexcel_init_register_offsets.exit_crit_edge
  %storemerge.i = phi i32 [ 0, %if.else.i ], [ 589824, %if.end58.safexcel_init_register_offsets.exit_crit_edge ]
  %.sink42.i = phi i32 [ 0, %if.else.i ], [ 591872, %if.end58.safexcel_init_register_offsets.exit_crit_edge ]
  %.sink41.i = phi i32 [ 0, %if.else.i ], [ 524288, %if.end58.safexcel_init_register_offsets.exit_crit_edge ]
  %.sink40.i = phi i32 [ 61440, %if.else.i ], [ 573440, %if.end58.safexcel_init_register_offsets.exit_crit_edge ]
  %.sink39.i = phi i32 [ 61952, %if.else.i ], [ 573504, %if.end58.safexcel_init_register_offsets.exit_crit_edge ]
  %.sink38.i = phi i32 [ 62464, %if.else.i ], [ 577536, %if.end58.safexcel_init_register_offsets.exit_crit_edge ]
  %.sink37.i = phi i32 [ 62976, %if.else.i ], [ 577600, %if.end58.safexcel_init_register_offsets.exit_crit_edge ]
  %.sink36.i = phi i32 [ 65536, %if.else.i ], [ 983040, %if.end58.safexcel_init_register_offsets.exit_crit_edge ]
  %.sink35.i = phi i32 [ 65536, %if.else.i ], [ 655360, %if.end58.safexcel_init_register_offsets.exit_crit_edge ]
  %offsets1.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6
  %21 = ptrtoint ptr %offsets1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge.i, ptr %offsets1.i, align 4
  %22 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge.i, ptr %22, align 4
  %24 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink42.i, ptr %24, align 4
  %26 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink41.i, ptr %26, align 4
  %28 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink40.i, ptr %28, align 4
  %30 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink39.i, ptr %30, align 4
  %32 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 6
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink38.i, ptr %32, align 4
  %34 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 7
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink37.i, ptr %34, align 4
  %36 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink36.i, ptr %36, align 4
  %38 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 9
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink35.i, ptr %38, align 4
  %40 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 10
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink36.i, ptr %40, align 4
  br i1 %tobool59.not, label %safexcel_init_register_offsets.exit.if.end75_crit_edge, label %if.then60

safexcel_init_register_offsets.exit.if.end75_crit_edge: ; preds = %safexcel_init_register_offsets.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then60:                                        ; preds = %safexcel_init_register_offsets.exit
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 4
  %add.ptr64 = getelementptr i8, ptr %43, i32 %storemerge.i
  %add.ptr65 = getelementptr i8, ptr %add.ptr64, i32 65524
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #10, !srcloc !251
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  %xor = xor i32 %45, %mask.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %xor)
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 4
  %49 = ptrtoint ptr %offsets1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offsets1.i, align 4
  %add.ptr73 = getelementptr i8, ptr %48, i32 %50
  %add.ptr74 = getelementptr i8, ptr %add.ptr73, i32 65524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %46) #10, !srcloc !247
  br label %if.end75

if.end75:                                         ; preds = %if.then60, %safexcel_init_register_offsets.exit.if.end75_crit_edge
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 4
  %53 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %40, align 4
  %add.ptr80 = getelementptr i8, ptr %52, i32 %54
  %add.ptr81 = getelementptr i8, ptr %add.ptr80, i32 65532
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #10, !srcloc !251
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 4
  %and86 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end75
  %trunc = trunc i32 %56 to i16
  %59 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.118)
  switch i16 %trunc, label %land.lhs.true.do.end102_crit_edge [
    i16 15045, label %land.lhs.true.if.end104_crit_edge
    i16 15300, label %land.lhs.true.if.end104_crit_edge825
  ]

land.lhs.true.if.end104_crit_edge825:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

land.lhs.true.if.end104_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

land.lhs.true.do.end102_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102

lor.lhs.false:                                    ; preds = %if.end75
  %and97 = and i32 %56, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 40545, i32 %and97)
  %cmp98.not = icmp eq i32 %and97, 40545
  br i1 %cmp98.not, label %lor.lhs.false.if.end104_crit_edge, label %lor.lhs.false.do.end102_crit_edge

lor.lhs.false.do.end102_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102

lor.lhs.false.if.end104_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

do.end102:                                        ; preds = %lor.lhs.false.do.end102_crit_edge, %land.lhs.true.do.end102_crit_edge
  %60 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.24, i32 noundef %56) #13
  br label %cleanup525

if.end104:                                        ; preds = %lor.lhs.false.if.end104_crit_edge, %land.lhs.true.if.end104_crit_edge, %land.lhs.true.if.end104_crit_edge825
  %shr105 = lshr i32 %56, 16
  %and106 = and i32 %shr105, 4095
  %hwconfig107 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7
  %hwver = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %hwver to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and106, ptr %hwver, align 4
  %shr108 = lshr i32 %56, 28
  %and109 = and i32 %56, 255
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 4
  %65 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %38, align 4
  %add.ptr114 = getelementptr i8, ptr %64, i32 %66
  %add.ptr115 = getelementptr i8, ptr %add.ptr114, i32 8188
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #10, !srcloc !251
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %and119 = and i32 %68, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 12750, i32 %and119)
  %cmp120.not = icmp eq i32 %and119, 12750
  br i1 %cmp120.not, label %if.end126, label %do.end124

do.end124:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.27, i32 noundef %and109) #13
  br label %cleanup525

if.end126:                                        ; preds = %if.end104
  %shr127 = lshr i32 %68, 16
  %and128 = and i32 %shr127, 4095
  %ppver = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 3
  %71 = ptrtoint ptr %ppver to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and128, ptr %ppver, align 4
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 4
  %74 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %38, align 4
  %add.ptr135 = getelementptr i8, ptr %73, i32 %75
  %add.ptr136 = getelementptr i8, ptr %add.ptr135, i32 5116
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #10, !srcloc !251
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  %and140 = and i32 %77, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 40800, i32 %and140)
  %cmp141.not = icmp eq i32 %and140, 40800
  br i1 %cmp141.not, label %if.end146, label %do.end145

do.end145:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %and109) #13
  br label %cleanup525

if.end146:                                        ; preds = %if.end126
  %shr147 = lshr i32 %77, 16
  %and148 = and i32 %shr147, 4095
  %pever = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 5
  %78 = ptrtoint ptr %pever to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and148, ptr %pever, align 4
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 4
  %81 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %40, align 4
  %add.ptr155 = getelementptr i8, ptr %80, i32 %82
  %add.ptr156 = getelementptr i8, ptr %add.ptr155, i32 65528
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr156) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 4
  %86 = ptrtoint ptr %offsets1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offsets1.i, align 4
  %add.ptr165 = getelementptr i8, ptr %85, i32 %87
  %add.ptr166 = getelementptr i8, ptr %add.ptr165, i32 65528
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166) #10, !srcloc !251
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %icever = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 4
  %90 = ptrtoint ptr %icever to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %icever, align 4
  %ocever = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 6
  %91 = ptrtoint ptr %ocever to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %ocever, align 4
  %psever = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 7
  %92 = ptrtoint ptr %psever to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %psever, align 4
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i, align 4
  %and174 = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.else294, label %if.then176

if.then176:                                       ; preds = %if.end146
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 4
  %97 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %38, align 4
  %add.ptr182 = getelementptr i8, ptr %96, i32 %98
  %add.ptr183 = getelementptr i8, ptr %add.ptr182, i32 8184
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr183) #10, !srcloc !251
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  %shr187 = lshr i32 %89, 25
  %and188 = and i32 %shr187, 15
  %hwdataw = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 8
  %101 = ptrtoint ptr %hwdataw to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and188, ptr %hwdataw, align 4
  %shr190 = lshr i32 %89, 9
  %and191 = and i32 %shr190, 7
  %add = add nuw nsw i32 %and191, 4
  %hwcfsize = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 9
  %102 = ptrtoint ptr %hwcfsize to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add, ptr %hwcfsize, align 4
  %shr193 = lshr i32 %89, 12
  %and194 = and i32 %shr193, 7
  %add195 = add nuw nsw i32 %and194, 4
  %hwrfsize = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 10
  %103 = ptrtoint ptr %hwrfsize to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add195, ptr %hwrfsize, align 4
  %shr197 = lshr i32 %89, 4
  %and198 = and i32 %shr197, 31
  %hwnumpes = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 11
  %104 = ptrtoint ptr %hwnumpes to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and198, ptr %hwnumpes, align 4
  %and201 = and i32 %89, 15
  %hwnumrings = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 12
  %105 = ptrtoint ptr %hwnumrings to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and201, ptr %hwnumrings, align 4
  %and203 = and i32 %89, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %if.then176.if.end208_crit_edge, label %if.then205

if.then176.if.end208_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

if.then205:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags.i, align 4
  %or207 = or i32 %107, 4
  store i32 %or207, ptr %flags.i, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %if.then176.if.end208_crit_edge
  %108 = and i32 %100, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %108)
  %cmp211 = icmp eq i32 %108, 256
  br i1 %cmp211, label %if.then212, label %if.end208.if.end236_crit_edge

if.end208.if.end236_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then212:                                       ; preds = %if.end208
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i, align 4
  %or214 = or i32 %110, 8
  store i32 %or214, ptr %flags.i, align 4
  %111 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv, align 4
  %113 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %38, align 4
  %add.ptr220 = getelementptr i8, ptr %112, i32 %114
  %add.ptr221 = getelementptr i8, ptr %add.ptr220, i32 4092
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr221) #10, !srcloc !251
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  %and225 = and i32 %116, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 12495, i32 %and225)
  %cmp226.not = icmp eq i32 %and225, 12495
  br i1 %cmp226.not, label %if.end231, label %do.end230

do.end230:                                        ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %and109) #13
  br label %cleanup525

if.end231:                                        ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #12
  %shr232 = lshr i32 %116, 16
  %and233 = and i32 %shr232, 4095
  %117 = ptrtoint ptr %icever to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and233, ptr %icever, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.end231, %if.end208.if.end236_crit_edge
  %118 = and i32 %100, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %118)
  %cmp239 = icmp eq i32 %118, 1024
  br i1 %cmp239, label %if.then240, label %if.end236.if.end285_crit_edge

if.end236.if.end285_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end285

if.then240:                                       ; preds = %if.end236
  %119 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags.i, align 4
  %or242 = or i32 %120, 32
  store i32 %or242, ptr %flags.i, align 4
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv, align 4
  %123 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %38, align 4
  %add.ptr248 = getelementptr i8, ptr %122, i32 %124
  %add.ptr249 = getelementptr i8, ptr %add.ptr248, i32 7932
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr249) #10, !srcloc !251
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  %and253 = and i32 %126, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 40800, i32 %and253)
  %cmp254.not = icmp eq i32 %and253, 40800
  br i1 %cmp254.not, label %if.end259, label %do.end258

do.end258:                                        ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %and109) #13
  br label %cleanup525

if.end259:                                        ; preds = %if.then240
  %shr260 = lshr i32 %126, 16
  %and261 = and i32 %shr260, 4095
  %127 = ptrtoint ptr %psever to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %and261, ptr %psever, align 4
  %128 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %priv, align 4
  %130 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %38, align 4
  %add.ptr269 = getelementptr i8, ptr %129, i32 %131
  %add.ptr270 = getelementptr i8, ptr %add.ptr269, i32 4092
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr270) #10, !srcloc !251
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  %and274 = and i32 %133, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 12495, i32 %and274)
  %cmp275.not = icmp eq i32 %and274, 12495
  br i1 %cmp275.not, label %if.end280, label %do.end279

do.end279:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %and109) #13
  br label %cleanup525

if.end280:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #12
  %shr281 = lshr i32 %133, 16
  %and282 = and i32 %shr281, 4095
  %134 = ptrtoint ptr %ocever to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and282, ptr %ocever, align 4
  br label %if.end285

if.end285:                                        ; preds = %if.end280, %if.end236.if.end285_crit_edge
  %.mask = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool287.not = icmp eq i32 %.mask, 0
  br i1 %tobool287.not, label %if.then288, label %if.end285.if.end291_crit_edge

if.end285.if.end291_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end291

if.then288:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags.i, align 4
  %or290 = or i32 %136, 16
  store i32 %or290, ptr %flags.i, align 4
  br label %if.end291

if.end291:                                        ; preds = %if.then288, %if.end285.if.end291_crit_edge
  %137 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags.i, align 4
  %or293 = or i32 %138, 1
  store i32 %or293, ptr %flags.i, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else294, %if.end291
  br label %for.body

if.else294:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  %shr295 = lshr i32 %89, 25
  %and296 = and i32 %shr295, 7
  %hwdataw298 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 8
  %139 = ptrtoint ptr %hwdataw298 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %and296, ptr %hwdataw298, align 4
  %shr299 = lshr i32 %89, 8
  %and300 = and i32 %shr299, 15
  %hwcfsize302 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 9
  %140 = ptrtoint ptr %hwcfsize302 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and300, ptr %hwcfsize302, align 4
  %shr303 = lshr i32 %89, 12
  %and304 = and i32 %shr303, 15
  %hwrfsize306 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 10
  %141 = ptrtoint ptr %hwrfsize306 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %and304, ptr %hwrfsize306, align 4
  %hwnumpes308 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 11
  %142 = ptrtoint ptr %hwnumpes308 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %hwnumpes308, align 4
  %and310 = and i32 %89, 15
  %hwnumrings312 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 12
  %143 = ptrtoint ptr %hwnumrings312 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %and310, ptr %hwnumrings312, align 4
  br label %for.body.preheader

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %hwnumraic768 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 13
  %144 = ptrtoint ptr %hwnumraic768 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 14, ptr %hwnumraic768, align 4
  br label %if.end337

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0782 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %145 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %priv, align 4
  %147 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %24, align 4
  %add.ptr319 = getelementptr i8, ptr %146, i32 %148
  %mul.neg = mul nsw i32 %i.0782, -4096
  %sub = add nsw i32 %mul.neg, 57372
  %add.ptr320 = getelementptr i8, ptr %add.ptr319, i32 %sub
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr320) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  %150 = and i32 %149, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -919207936, i32 %150)
  %cmp325.not = icmp eq i32 %150, -919207936
  br i1 %cmp325.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0782, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %hwnumraic = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 13
  %151 = ptrtoint ptr %hwnumraic to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %i.0782, ptr %hwnumraic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0782)
  %tobool331.not = icmp eq i32 %i.0782, 0
  br i1 %tobool331.not, label %do.end335, label %for.end.if.end337_crit_edge

for.end.if.end337_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end337

do.end335:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.42) #13
  br label %cleanup525

if.end337:                                        ; preds = %for.end.if.end337_crit_edge, %for.end.thread
  %hwnumraic770 = phi ptr [ %hwnumraic768, %for.end.thread ], [ %hwnumraic, %for.end.if.end337_crit_edge ]
  %154 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %priv, align 4
  %156 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %38, align 4
  %add.ptr343 = getelementptr i8, ptr %155, i32 %157
  %add.ptr344 = getelementptr i8, ptr %add.ptr343, i32 5112
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr344) #10, !srcloc !251
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  %160 = ptrtoint ptr %hwconfig107 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %hwconfig107, align 4
  %161 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev1, align 4
  %163 = ptrtoint ptr %hwver to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %hwver, align 4
  %hwnumpes356 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 11
  %165 = ptrtoint ptr %hwnumpes356 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %hwnumpes356, align 4
  %hwnumrings358 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 12
  %167 = ptrtoint ptr %hwnumrings358 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %hwnumrings358, align 4
  %169 = ptrtoint ptr %hwnumraic770 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %hwnumraic770, align 4
  %hiaver362 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 2
  %171 = ptrtoint ptr %hiaver362 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %hiaver362, align 4
  %hwdataw364 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 8
  %173 = ptrtoint ptr %hwdataw364 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %hwdataw364, align 4
  %hwcfsize366 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 9
  %175 = ptrtoint ptr %hwcfsize366 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %hwcfsize366, align 4
  %hwrfsize368 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 10
  %177 = ptrtoint ptr %hwrfsize368 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %hwrfsize368, align 4
  %179 = ptrtoint ptr %ppver to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ppver, align 4
  %181 = ptrtoint ptr %pever to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pever, align 4
  %183 = ptrtoint ptr %icever to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %icever, align 4
  %185 = ptrtoint ptr %ocever to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %ocever, align 4
  %187 = ptrtoint ptr %psever to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %psever, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %162, ptr noundef nonnull @.str.45, i32 noundef %and109, i32 noundef %164, i32 noundef %shr108, i32 noundef %166, i32 noundef %168, i32 noundef %170, i32 noundef %172, i32 noundef %174, i32 noundef %176, i32 noundef %178, i32 noundef %180, i32 noundef %182, i32 noundef %159, i32 noundef %184, i32 noundef %186, i32 noundef %188) #13
  tail call fastcc void @safexcel_configure(ptr noundef %priv)
  %version381 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 5
  %189 = ptrtoint ptr %version381 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %version381, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %190)
  %cmp382 = icmp eq i32 %190, 3
  br i1 %cmp382, label %if.then383, label %if.end337.if.end395_crit_edge

if.end337.if.end395_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end395

if.then383:                                       ; preds = %if.end337
  %rings = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 1
  %191 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %rings, align 4
  %add384 = add i32 %192, 1
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef %add384, i32 noundef %add384, i32 noundef 6, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp389 = icmp slt i32 %call.i, 0
  br i1 %cmp389, label %do.end393, label %if.then383.if.end395_crit_edge

if.then383.if.end395_crit_edge:                   ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end395

do.end393:                                        ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49) #13
  br label %cleanup525

if.end395:                                        ; preds = %if.then383.if.end395_crit_edge, %if.end337.if.end395_crit_edge
  %rings397 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 1
  %193 = ptrtoint ptr %rings397 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rings397, align 4
  %195 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %194, i32 276) #10
  %196 = extractvalue { i32, i1 } %195, 1
  br i1 %196, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !267

devm_kcalloc.exit.thread:                         ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #12
  %ring772 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %197 = ptrtoint ptr %ring772 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr null, ptr %ring772, align 4
  br label %cleanup525

devm_kcalloc.exit:                                ; preds = %if.end395
  %198 = extractvalue { i32, i1 } %195, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %198, i32 noundef 3520) #10
  %ring = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %199 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call5.i.i, ptr %ring, align 4
  %tobool400.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool400.not, label %devm_kcalloc.exit.cleanup525_crit_edge, label %for.cond403.preheader

devm_kcalloc.exit.cleanup525_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup525

for.cond403.preheader:                            ; preds = %devm_kcalloc.exit
  %200 = ptrtoint ptr %rings397 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %rings397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp406783.not = icmp eq i32 %201, 0
  br i1 %cmp406783.not, label %for.cond403.preheader.for.end510_crit_edge, label %for.cond403.preheader.for.body407_crit_edge

for.cond403.preheader.for.body407_crit_edge:      ; preds = %for.cond403.preheader
  br label %for.body407

for.cond403.preheader.for.end510_crit_edge:       ; preds = %for.cond403.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end510

for.body407:                                      ; preds = %for.inc508.for.body407_crit_edge, %for.cond403.preheader.for.body407_crit_edge
  %i.1784 = phi i32 [ %inc509, %for.inc508.for.body407_crit_edge ], [ 0, %for.cond403.preheader.for.body407_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %wq_name) #10
  %202 = call ptr @memset(ptr %wq_name, i32 0, i32 9)
  %203 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ring, align 4
  %cdr = getelementptr %struct.safexcel_ring, ptr %204, i32 %i.1784, i32 3
  %rdr = getelementptr %struct.safexcel_ring, ptr %204, i32 %i.1784, i32 4
  %call411 = call i32 @safexcel_init_ring_descriptors(ptr noundef %priv, ptr noundef %cdr, ptr noundef %rdr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411)
  %tobool412.not = icmp eq i32 %call411, 0
  br i1 %tobool412.not, label %if.end417, label %do.end416

do.end416:                                        ; preds = %for.body407
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.52) #13
  br label %cleanup503.thread

if.end417:                                        ; preds = %for.body407
  %call5.i.i760 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 1600, i32 noundef 3520) #10
  %205 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ring, align 4
  %rdr_req = getelementptr %struct.safexcel_ring, ptr %206, i32 %i.1784, i32 5
  %207 = ptrtoint ptr %rdr_req to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call5.i.i760, ptr %rdr_req, align 4
  %208 = load ptr, ptr %ring, align 4
  %rdr_req423 = getelementptr %struct.safexcel_ring, ptr %208, i32 %i.1784, i32 5
  %209 = ptrtoint ptr %rdr_req423 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rdr_req423, align 4
  %tobool424.not = icmp eq ptr %210, null
  br i1 %tobool424.not, label %if.end417.cleanup503.thread_crit_edge, label %if.end426

if.end417.cleanup503.thread_crit_edge:            ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup503.thread

if.end426:                                        ; preds = %if.end417
  %call.i763 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 8, i32 noundef 3520) #10
  %tobool428.not = icmp eq ptr %call.i763, null
  br i1 %tobool428.not, label %if.end426.cleanup503.thread_crit_edge, label %if.end430

if.end426.cleanup503.thread_crit_edge:            ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup503.thread

if.end430:                                        ; preds = %if.end426
  %211 = ptrtoint ptr %call.i763 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %priv, ptr %call.i763, align 4
  %ring432 = getelementptr inbounds %struct.safexcel_ring_irq_data, ptr %call.i763, i32 0, i32 1
  %212 = ptrtoint ptr %ring432 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %i.1784, ptr %ring432, align 4
  %add433 = add i32 %i.1784, %is_pci_dev
  %call434 = call fastcc i32 @safexcel_request_ring_irq(ptr noundef %pdev, i32 noundef %add433, i32 noundef %is_pci_dev, i32 noundef %i.1784, ptr noundef nonnull %call.i763)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call434)
  %cmp435 = icmp slt i32 %call434, 0
  br i1 %cmp435, label %do.end439, label %if.end440

do.end439:                                        ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %i.1784) #13
  br label %cleanup503.thread

if.end440:                                        ; preds = %if.end430
  %213 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ring, align 4
  %irq443 = getelementptr %struct.safexcel_ring, ptr %214, i32 %i.1784, i32 12
  %215 = ptrtoint ptr %irq443 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %call434, ptr %irq443, align 4
  %216 = load ptr, ptr %ring, align 4
  %priv446 = getelementptr %struct.safexcel_ring, ptr %216, i32 %i.1784, i32 2, i32 1
  %217 = ptrtoint ptr %priv446 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %priv, ptr %priv446, align 4
  %218 = load ptr, ptr %ring, align 4
  %ring450 = getelementptr %struct.safexcel_ring, ptr %218, i32 %i.1784, i32 2, i32 2
  %219 = ptrtoint ptr %ring450 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %i.1784, ptr %ring450, align 4
  %220 = load ptr, ptr %ring, align 4
  %work_data454 = getelementptr %struct.safexcel_ring, ptr %220, i32 %i.1784, i32 2
  call void @__init_work(ptr noundef %work_data454, i32 noundef 0) #10
  %221 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ring, align 4
  %work_data457 = getelementptr %struct.safexcel_ring, ptr %222, i32 %i.1784, i32 2
  %223 = ptrtoint ptr %work_data457 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 -64, ptr %work_data457, align 4
  %224 = load ptr, ptr %ring, align 4
  %lockdep_map = getelementptr %struct.safexcel_ring, ptr %224, i32 %i.1784, i32 2, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.57, ptr noundef nonnull @safexcel_probe_generic.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %225 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ring, align 4
  %entry467 = getelementptr %struct.safexcel_ring, ptr %226, i32 %i.1784, i32 2, i32 0, i32 1
  %227 = ptrtoint ptr %entry467 to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile ptr %entry467, ptr %entry467, align 4
  %prev.i = getelementptr %struct.safexcel_ring, ptr %226, i32 %i.1784, i32 2, i32 0, i32 1, i32 1
  %228 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %entry467, ptr %prev.i, align 4
  %229 = load ptr, ptr %ring, align 4
  %func = getelementptr %struct.safexcel_ring, ptr %229, i32 %i.1784, i32 2, i32 0, i32 2
  %230 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @safexcel_dequeue_work, ptr %func, align 4
  %call474 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %wq_name, i32 noundef 9, ptr noundef nonnull @.str.58, i32 noundef %i.1784)
  %call476 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.59, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %wq_name) #10
  %231 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ring, align 4
  %workqueue = getelementptr %struct.safexcel_ring, ptr %232, i32 %i.1784, i32 1
  %233 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call476, ptr %workqueue, align 4
  %234 = load ptr, ptr %ring, align 4
  %workqueue481 = getelementptr %struct.safexcel_ring, ptr %234, i32 %i.1784, i32 1
  %235 = ptrtoint ptr %workqueue481 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %workqueue481, align 4
  %tobool482.not = icmp eq ptr %236, null
  br i1 %tobool482.not, label %if.end440.cleanup503.thread_crit_edge, label %for.inc508

if.end440.cleanup503.thread_crit_edge:            ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup503.thread

cleanup503.thread:                                ; preds = %if.end440.cleanup503.thread_crit_edge, %do.end439, %if.end426.cleanup503.thread_crit_edge, %if.end417.cleanup503.thread_crit_edge, %do.end416
  %retval.3.ph = phi i32 [ %call411, %do.end416 ], [ %call434, %do.end439 ], [ -12, %if.end440.cleanup503.thread_crit_edge ], [ -12, %if.end426.cleanup503.thread_crit_edge ], [ -12, %if.end417.cleanup503.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %wq_name) #10
  br label %cleanup525

for.inc508:                                       ; preds = %if.end440
  %requests = getelementptr %struct.safexcel_ring, ptr %234, i32 %i.1784, i32 8
  %237 = ptrtoint ptr %requests to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %requests, align 4
  %238 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ring, align 4
  %busy = getelementptr %struct.safexcel_ring, ptr %239, i32 %i.1784, i32 9
  %240 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %busy, align 4
  %241 = load ptr, ptr %ring, align 4
  %queue = getelementptr %struct.safexcel_ring, ptr %241, i32 %i.1784, i32 6
  call void @crypto_init_queue(ptr noundef %queue, i32 noundef 400) #10
  %242 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ring, align 4
  %arrayidx493 = getelementptr %struct.safexcel_ring, ptr %243, i32 %i.1784
  call void @__raw_spin_lock_init(ptr noundef %arrayidx493, ptr noundef nonnull @.str.61, ptr noundef nonnull @safexcel_probe_generic.__key.60, i16 noundef signext 3) #10
  %244 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ring, align 4
  %queue_lock = getelementptr %struct.safexcel_ring, ptr %245, i32 %i.1784, i32 7
  call void @__raw_spin_lock_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.63, ptr noundef nonnull @safexcel_probe_generic.__key.62, i16 noundef signext 3) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %wq_name) #10
  %inc509 = add nuw i32 %i.1784, 1
  %246 = ptrtoint ptr %rings397 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %rings397, align 4
  %cmp406 = icmp ult i32 %inc509, %247
  br i1 %cmp406, label %for.inc508.for.body407_crit_edge, label %for.inc508.for.end510_crit_edge

for.inc508.for.end510_crit_edge:                  ; preds = %for.inc508
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end510

for.inc508.for.body407_crit_edge:                 ; preds = %for.inc508
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body407

for.end510:                                       ; preds = %for.inc508.for.end510_crit_edge, %for.cond403.preheader.for.end510_crit_edge
  %ring_used = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ring_used, i32 noundef 4) #10
  %248 = ptrtoint ptr %ring_used to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile i32 0, ptr %ring_used, align 4
  %call511 = call fastcc i32 @safexcel_hw_init(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call511)
  %tobool512.not = icmp eq i32 %call511, 0
  br i1 %tobool512.not, label %if.end517, label %do.end516

do.end516:                                        ; preds = %for.end510
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %call511) #13
  br label %cleanup525

if.end517:                                        ; preds = %for.end510
  %call518 = call fastcc i32 @safexcel_register_algorithms(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call518)
  %tobool519.not = icmp eq i32 %call518, 0
  br i1 %tobool519.not, label %if.end517.cleanup525_crit_edge, label %do.end523

if.end517.cleanup525_crit_edge:                   ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup525

do.end523:                                        ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %call518) #13
  br label %cleanup525

cleanup525:                                       ; preds = %do.end523, %if.end517.cleanup525_crit_edge, %do.end516, %cleanup503.thread, %devm_kcalloc.exit.cleanup525_crit_edge, %devm_kcalloc.exit.thread, %do.end393, %do.end335, %do.end279, %do.end258, %do.end230, %do.end145, %do.end124, %do.end102, %if.else37.cleanup525_crit_edge, %entry.cleanup525_crit_edge
  %retval.4 = phi i32 [ -19, %do.end102 ], [ -19, %do.end124 ], [ -19, %do.end145 ], [ -19, %do.end230 ], [ -19, %do.end258 ], [ -19, %do.end279 ], [ %call511, %do.end516 ], [ %call518, %do.end523 ], [ -19, %do.end335 ], [ -12, %entry.cleanup525_crit_edge ], [ -19, %if.else37.cleanup525_crit_edge ], [ %call.i, %do.end393 ], [ -12, %devm_kcalloc.exit.cleanup525_crit_edge ], [ 0, %if.end517.cleanup525_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %retval.3.ph, %cleanup503.thread ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @safexcel_configure(ptr nocapture noundef %priv) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwdataw = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %hwdataw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwdataw, align 4
  %hwnumpes = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 11
  %2 = ptrtoint ptr %hwnumpes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwnumpes, align 4
  %config = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %config, align 4
  %hwnumrings = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 12
  %5 = ptrtoint ptr %hwnumrings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwnumrings, align 4
  %7 = load i32, ptr @max_rings, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %6, i32 %7)
  %rings = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 1
  %hwnumraic = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 13
  %9 = ptrtoint ptr %hwnumraic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwnumraic, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  %12 = ptrtoint ptr %rings to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rings, align 4
  %cd_size = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %cd_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %cd_size, align 4
  %add = sub i32 15, %notmask
  %and = and i32 %add, %notmask
  %cd_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 3
  %cdsh_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 4
  %add23 = sub i32 3, %notmask
  %and25 = and i32 %add23, %notmask
  %res_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 7
  %add29 = add i32 %and25, 8
  %rd_size = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %rd_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add29, ptr %rd_size, align 4
  %add33 = add i32 %add29, %sub
  %and35 = and i32 %add33, %notmask
  %rd_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 6
  %mul = shl i32 %and, 2
  %15 = ptrtoint ptr %cd_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %cd_offset, align 4
  %16 = ptrtoint ptr %cdsh_offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %cdsh_offset, align 4
  %mul44 = shl i32 %and35, 2
  %17 = ptrtoint ptr %rd_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul44, ptr %rd_offset, align 4
  %mul47 = shl i32 %and25, 2
  %18 = ptrtoint ptr %res_offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul47, ptr %res_offset, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_init_ring_descriptors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_request_ring_irq(ptr noundef %pdev, i32 noundef %irqid, i32 noundef %is_pci_dev, i32 noundef %ring_id, ptr noundef %ring_irq_priv) unnamed_addr #0 align 64 {
entry:
  %irq_name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_pci_dev)
  %tobool.not = icmp eq i32 %is_pci_dev, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %irqid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70, i32 noundef %irqid, i32 noundef %call) #13
  br label %cleanup26

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %irq_name) #10
  %0 = call ptr @memset(ptr %irq_name, i32 0, i32 6)
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %irq_name, i32 noundef 6, ptr noundef nonnull @.str.72, i32 noundef %irqid)
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call6 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull %irq_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %irq_name) #10
  br i1 %cmp7, label %if.else.cleanup26_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else.cleanup26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %irq.0 = phi i32 [ %call6, %if.else.if.end14_crit_edge ], [ %call, %if.then.if.end14_crit_edge ]
  %dev.0 = phi ptr [ %dev4, %if.else.if.end14_crit_edge ], [ %dev1, %if.then.if.end14_crit_edge ]
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev.0, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.dev_name.exit_crit_edge

if.end14.dev_name.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dev.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.0, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end14.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %if.end14.dev_name.exit_crit_edge ]
  %call16 = call i32 @devm_request_threaded_irq(ptr noundef %dev.0, i32 noundef %irq.0, ptr noundef nonnull @safexcel_irq_ring, ptr noundef nonnull @safexcel_irq_ring_thread, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef %ring_irq_priv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end22, label %do.end21

do.end21:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.0, ptr noundef nonnull @.str.74, i32 noundef %irq.0) #13
  br label %cleanup26

if.end22:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 @cpumask_local_spread(i32 noundef %ring_id, i32 noundef -1) #10
  %rem.i = and i32 %call23, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call23, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call.i.i = call i32 @__irq_apply_affinity_hint(i32 noundef %irq.0, ptr noundef %add.ptr.i, i1 noundef zeroext true) #10
  br label %cleanup26

cleanup26:                                        ; preds = %if.end22, %do.end21, %if.else.cleanup26_crit_edge, %do.end
  %retval.2 = phi i32 [ %call16, %do.end21 ], [ %irq.0, %if.end22 ], [ %call6, %if.else.cleanup26_crit_edge ], [ %call, %do.end ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_irq_ring(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ring2 = getelementptr inbounds %struct.safexcel_ring_irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %hia_aic_r = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %hia_aic_r to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hia_aic_r, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %mul = shl i32 %3, 12
  %sub = sub i32 57360, %mul
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %sub
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %mul5 = shl i32 %3, 1
  %add = or i32 %mul5, 1
  %shl = shl nuw i32 1, %add
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.do.body49_crit_edge, label %if.then7

if.end.do.body49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

if.then7:                                         ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %hia_aic_xdr = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 %13
  %add.ptr14 = getelementptr i8, ptr %add.ptr12, i32 %mul
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 2048
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #10, !srcloc !251
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !269
  %and20 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else, label %do.end, !prof !250

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.76) #13
  br label %do.body36

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %and25 = lshr i32 %15, 3
  %18 = and i32 %and25, 2
  br label %do.body36

do.body36:                                        ; preds = %if.else, %do.end
  %rc.0 = phi i32 [ 0, %do.end ], [ %18, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %and39 = shl i32 %15, 24
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr43 = getelementptr i8, ptr %20, i32 %22
  %add.ptr45 = getelementptr i8, ptr %add.ptr43, i32 %mul
  %add.ptr46 = getelementptr i8, ptr %add.ptr45, i32 2048
  %add.ptr47 = getelementptr i8, ptr %add.ptr46, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %and39) #10, !srcloc !247
  br label %do.body49

do.body49:                                        ; preds = %do.body36, %if.end.do.body49_crit_edge
  %rc.1 = phi i32 [ %rc.0, %do.body36 ], [ 0, %if.end.do.body49_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = ptrtoint ptr %hia_aic_r to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hia_aic_r, align 4
  %add.ptr55 = getelementptr i8, ptr %24, i32 %26
  %add.ptr58 = getelementptr i8, ptr %add.ptr55, i32 %sub
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %8) #10, !srcloc !247
  br label %cleanup

cleanup:                                          ; preds = %do.body49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %do.body49 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_irq_ring_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %should_complete.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ring2 = getelementptr inbounds %struct.safexcel_ring_irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %4 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ret.i, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %should_complete.i) #10
  %5 = ptrtoint ptr %should_complete.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %should_complete.i, align 1, !annotation !244
  %hia_aic_xdr.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 6, i32 3
  %mul.i = shl i32 %3, 12
  %ring1.i.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 11
  %dev.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 1
  %rd_offset.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 4, i32 6
  br label %handle_results.i

handle_results.i:                                 ; preds = %if.end29.i.handle_results.i_crit_edge, %entry
  %handled.0.i = phi i32 [ 0, %entry ], [ %handled.187.i, %if.end29.i.handle_results.i_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 2048
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 48
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 %9
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #10, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  %and.i = and i32 %10, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %handle_results.i.requests_left.i_crit_edge, label %for.body.preheader.i

handle_results.i.requests_left.i_crit_edge:       ; preds = %handle_results.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %requests_left.i

for.body.preheader.i:                             ; preds = %handle_results.i
  %11 = add i32 %and.i, %handled.0.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.093.i = phi i32 [ %inc14.i, %if.end13.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %handled.192.i = phi i32 [ %inc.i, %if.end13.i.for.body.i_crit_edge ], [ %handled.0.i, %for.body.preheader.i ]
  %tot_descs.091.i = phi i32 [ %add.i, %if.end13.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %call.i.i = call i32 @safexcel_ring_first_rdr_index(ptr noundef %1, i32 noundef %3) #10
  %12 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring1.i.i, align 4
  %rdr_req.i.i = getelementptr %struct.safexcel_ring, ptr %13, i32 %3, i32 5
  %14 = ptrtoint ptr %rdr_req.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdr_req.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %15, i32 %call.i.i
  %16 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx2.i.i, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %19, i32 1, i32 1
  %20 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle_result.i, align 4
  %call7.i = call i32 %21(ptr noundef %1, i32 noundef %3, ptr noundef %17, ptr noundef nonnull %should_complete.i, ptr noundef nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.78, i32 noundef %call7.i) #13
  br label %acknowledge.i

if.end10.i:                                       ; preds = %for.body.i
  %24 = ptrtoint ptr %should_complete.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %should_complete.i, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool11.not.i = icmp eq i8 %25, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end13.i_crit_edge, label %if.then12.i

if.end10.i.if.end13.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @local_bh_disable() #10
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %complete.i, align 4
  %28 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ret.i, align 4
  call void %27(ptr noundef %17, i32 noundef %29) #10
  call fastcc void @local_bh_enable() #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end13.i_crit_edge
  %add.i = add i32 %call7.i, %tot_descs.091.i
  %inc.i = add i32 %handled.192.i, 1
  %inc14.i = add nuw nsw i32 %i.093.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, %and.i
  br i1 %exitcond.not.i, label %if.end13.i.acknowledge.i_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end13.i.acknowledge.i_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %acknowledge.i

acknowledge.i:                                    ; preds = %if.end13.i.acknowledge.i_crit_edge, %do.end.i
  %tot_descs.089.i = phi i32 [ %tot_descs.091.i, %do.end.i ], [ %add.i, %if.end13.i.acknowledge.i_crit_edge ]
  %handled.187.i = phi i32 [ %handled.192.i, %do.end.i ], [ %11, %if.end13.i.acknowledge.i_crit_edge ]
  %i.085.i = phi i32 [ %i.093.i, %do.end.i ], [ %and.i, %if.end13.i.acknowledge.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.085.i)
  %tobool15.not.i = icmp eq i32 %i.085.i, 0
  br i1 %tobool15.not.i, label %acknowledge.i.if.end29.i_crit_edge, label %do.body17.i

acknowledge.i.if.end29.i_crit_edge:               ; preds = %acknowledge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

do.body17.i:                                      ; preds = %acknowledge.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  call void @arm_heavy_mb() #10
  %shl.i = shl i32 %i.085.i, 24
  %30 = ptrtoint ptr %rd_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rd_offset.i, align 4
  %mul20.i = mul i32 %31, %tot_descs.089.i
  %or.i = or i32 %mul20.i, %shl.i
  %32 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %35 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %34, i32 %mul.i
  %add.ptr26.i = getelementptr i8, ptr %add.ptr24.i, i32 2048
  %add.ptr27.i = getelementptr i8, ptr %add.ptr26.i, i32 48
  %add.ptr28.i = getelementptr i8, ptr %add.ptr27.i, i32 %36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %32) #10, !srcloc !247
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.body17.i, %acknowledge.i.if.end29.i_crit_edge
  %cmp30.i = icmp eq i32 %and.i, 127
  br i1 %cmp30.i, label %if.end29.i.handle_results.i_crit_edge, label %if.end29.i.requests_left.i_crit_edge

if.end29.i.requests_left.i_crit_edge:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %requests_left.i

if.end29.i.handle_results.i_crit_edge:            ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_results.i

requests_left.i:                                  ; preds = %if.end29.i.requests_left.i_crit_edge, %handle_results.i.requests_left.i_crit_edge
  %handled.2.i = phi i32 [ %handled.187.i, %if.end29.i.requests_left.i_crit_edge ], [ %handled.0.i, %handle_results.i.requests_left.i_crit_edge ]
  %37 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring1.i.i, align 4
  %arrayidx.i = getelementptr %struct.safexcel_ring, ptr %38, i32 %3
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #10
  %39 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ring1.i.i, align 4
  %requests.i = getelementptr %struct.safexcel_ring, ptr %40, i32 %3, i32 8
  %41 = ptrtoint ptr %requests.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %requests.i, align 4
  %sub.i = sub i32 %42, %handled.2.i
  store i32 %sub.i, ptr %requests.i, align 4
  %43 = load ptr, ptr %ring1.i.i, align 4
  %requests.i.i = getelementptr %struct.safexcel_ring, ptr %43, i32 %3, i32 8
  %44 = ptrtoint ptr %requests.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %requests.i.i, align 4
  %46 = call i32 @llvm.smin.i32(i32 %45, i32 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i, label %requests_left.i.safexcel_try_push_requests.exit.i_crit_edge, label %do.body.i.i

requests_left.i.safexcel_try_push_requests.exit.i_crit_edge: ; preds = %requests_left.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %safexcel_try_push_requests.exit.i

do.body.i.i:                                      ; preds = %requests_left.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  call void @arm_heavy_mb() #10
  %or.i.i = or i32 %46, 8388608
  %47 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %51
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 2048
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %47) #10, !srcloc !247
  br label %safexcel_try_push_requests.exit.i

safexcel_try_push_requests.exit.i:                ; preds = %do.body.i.i, %requests_left.i.safexcel_try_push_requests.exit.i_crit_edge
  %52 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring1.i.i, align 4
  %requests38.i = getelementptr %struct.safexcel_ring, ptr %53, i32 %3, i32 8
  %54 = ptrtoint ptr %requests38.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %requests38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool39.not.i = icmp eq i32 %55, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %safexcel_try_push_requests.exit.i.safexcel_handle_result_descriptor.exit_crit_edge

safexcel_try_push_requests.exit.i.safexcel_handle_result_descriptor.exit_crit_edge: ; preds = %safexcel_try_push_requests.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %safexcel_handle_result_descriptor.exit

if.then40.i:                                      ; preds = %safexcel_try_push_requests.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %busy.i = getelementptr %struct.safexcel_ring, ptr %53, i32 %3, i32 9
  %56 = ptrtoint ptr %busy.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %busy.i, align 4
  br label %safexcel_handle_result_descriptor.exit

safexcel_handle_result_descriptor.exit:           ; preds = %if.then40.i, %safexcel_try_push_requests.exit.i.safexcel_handle_result_descriptor.exit_crit_edge
  %57 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ring1.i.i, align 4
  %arrayidx45.i = getelementptr %struct.safexcel_ring, ptr %58, i32 %3
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx45.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %should_complete.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  %59 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ring1.i.i, align 4
  %workqueue = getelementptr %struct.safexcel_ring, ptr %60, i32 %3, i32 1
  %61 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %workqueue, align 4
  %work_data = getelementptr %struct.safexcel_ring, ptr %60, i32 %3, i32 2
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %work_data) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_dequeue_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.safexcel_work_data, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ring = getelementptr inbounds %struct.safexcel_work_data, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring, align 4
  tail call void @safexcel_dequeue(ptr noundef %1, i32 noundef %3)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_hw_init(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @safexcel_hw_init.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@safexcel_hw_init, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !274

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %config = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 4
  %rings = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rings, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @safexcel_hw_init.__UNIQUE_ID_ddebug253, ptr noundef %1, ptr noundef nonnull @.str.82, i32 noundef %3, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.do.body19_crit_edge, label %if.then5

do.end.do.body19_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %offsets = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6
  %10 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offsets, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 65524
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  %13 = or i32 %12, 20480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %16 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offsets, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 %17
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 65524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %13) #10, !srcloc !247
  br label %do.body19

do.body19:                                        ; preds = %if.then5, %do.end.do.body19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %offsets23 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6
  %hia_gen_cfg = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 8
  %20 = ptrtoint ptr %hia_gen_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hia_gen_cfg, align 4
  %add.ptr24 = getelementptr i8, ptr %19, i32 %21
  %add.ptr25 = getelementptr i8, ptr %add.ptr24, i32 65524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 2063597568) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %hia_aic_g = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %hia_aic_g to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hia_aic_g, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 %25
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 63496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %28 = ptrtoint ptr %hia_aic_g to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hia_aic_g, align 4
  %add.ptr39 = getelementptr i8, ptr %27, i32 %29
  %add.ptr40 = getelementptr i8, ptr %add.ptr39, i32 63504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 -1) #10, !srcloc !247
  %config41 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4
  %30 = ptrtoint ptr %config41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %config41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp671.not = icmp eq i32 %31, 0
  br i1 %cmp671.not, label %do.body19.for.cond228.preheader_crit_edge, label %do.body43.lr.ph

do.body19.for.cond228.preheader_crit_edge:        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond228.preheader

do.body43.lr.ph:                                  ; preds = %do.body19
  %hia_dfe_thr = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 5
  %hia_dfe = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 4
  %pe93 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 9
  %rings116 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 1
  %hia_dse_thr = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 7
  %hwnumpes = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 11
  %hia_dse = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 6
  br label %do.body43

for.cond228.preheader:                            ; preds = %while.end.for.cond228.preheader_crit_edge, %do.body19.for.cond228.preheader_crit_edge
  %rings230 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rings230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp231674.not = icmp eq i32 %33, 0
  br i1 %cmp231674.not, label %for.cond228.preheader.for.cond382.preheader_crit_edge, label %do.body233.lr.ph

for.cond228.preheader.for.cond382.preheader_crit_edge: ; preds = %for.cond228.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond382.preheader

do.body233.lr.ph:                                 ; preds = %for.cond228.preheader
  %hia_aic_r = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 2
  %hia_aic_xdr = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 3
  %cd_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 3
  br label %do.body233

do.body43:                                        ; preds = %while.end.do.body43_crit_edge, %do.body43.lr.ph
  %pe.0672 = phi i32 [ 0, %do.body43.lr.ph ], [ %inc, %while.end.do.body43_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  %36 = ptrtoint ptr %hia_dfe_thr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hia_dfe_thr, align 4
  %add.ptr48 = getelementptr i8, ptr %35, i32 %37
  %mul = shl i32 %pe.0672, 7
  %add.ptr49 = getelementptr i8, ptr %add.ptr48, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 128) #10, !srcloc !247
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and51 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body43.if.end64_crit_edge, label %do.body54

do.body43.if.end64_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.body54:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !281
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %42 = ptrtoint ptr %offsets23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offsets23, align 4
  %add.ptr60 = getelementptr i8, ptr %41, i32 %43
  %mul61 = shl i32 %pe.0672, 3
  %add62 = add i32 %mul61, 16
  %add.ptr63 = getelementptr i8, ptr %add.ptr60, i32 %add62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 128) #10, !srcloc !247
  br label %if.end64

if.end64:                                         ; preds = %do.body54, %do.body43.if.end64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %46 = ptrtoint ptr %hia_dfe to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hia_dfe, align 4
  %add.ptr74 = getelementptr i8, ptr %45, i32 %47
  %add.ptr77 = getelementptr i8, ptr %add.ptr74, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 1443452647) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 4
  %50 = ptrtoint ptr %hia_dfe_thr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hia_dfe_thr, align 4
  %add.ptr84 = getelementptr i8, ptr %49, i32 %51
  %add.ptr87 = getelementptr i8, ptr %add.ptr84, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 4
  %54 = ptrtoint ptr %pe93 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pe93, align 4
  %add.ptr94 = getelementptr i8, ptr %53, i32 %55
  %mul95 = shl i32 %pe.0672, 13
  %add.ptr97 = getelementptr i8, ptr %add.ptr94, i32 %mul95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 9830400) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 4
  %58 = ptrtoint ptr %pe93 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pe93, align 4
  %add.ptr104 = getelementptr i8, ptr %57, i32 %59
  %add106 = or i32 %mul95, 256
  %add.ptr107 = getelementptr i8, ptr %add.ptr104, i32 %add106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 7733248) #10, !srcloc !247
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags, align 4
  %and109 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end64.do.body129_crit_edge, label %do.body112

if.end64.do.body129_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body129

do.body112:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %rings116 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rings116, align 4
  %sub117 = sub i32 32, %63
  %shr = lshr i32 -1, %sub117
  %or120 = or i32 %shr, 1073741824
  %64 = tail call i32 @llvm.bswap.i32(i32 %or120)
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 4
  %67 = ptrtoint ptr %offsets23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %offsets23, align 4
  %add.ptr124 = getelementptr i8, ptr %66, i32 %68
  %mul125 = shl i32 %pe.0672, 3
  %add126 = add i32 %mul125, 16
  %add.ptr127 = getelementptr i8, ptr %add.ptr124, i32 %add126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %64) #10, !srcloc !247
  br label %do.body129

do.body129:                                       ; preds = %do.body112, %if.end64.do.body129_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 4
  %71 = ptrtoint ptr %hia_dse_thr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hia_dse_thr, align 4
  %add.ptr134 = getelementptr i8, ptr %70, i32 %72
  %add.ptr137 = getelementptr i8, ptr %add.ptr134, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 128) #10, !srcloc !247
  %add145 = or i32 %mul, 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body129
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 4
  %75 = ptrtoint ptr %hia_dse_thr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hia_dse_thr, align 4
  %add.ptr143 = getelementptr i8, ptr %74, i32 %add145
  %add.ptr146 = getelementptr i8, ptr %add.ptr143, i32 %76
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !288
  %78 = and i32 %77, 15728640
  %cmp151.not = icmp eq i32 %78, 15728640
  br i1 %cmp151.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %79 = ptrtoint ptr %hwnumpes to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hwnumpes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp152 = icmp sgt i32 %80, 4
  %. = select i1 %cmp152, i32 10, i32 8
  %.635 = select i1 %cmp152, i32 9, i32 7
  %shl155 = shl nuw nsw i32 %., 8
  %or156 = or i32 %shl155, %.635
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  %and161 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  %val.0.v = select i1 %tobool162.not, i32 -1073692624, i32 -536821712
  %val.0 = or i32 %or156, %val.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  tail call void @arm_heavy_mb() #10
  %83 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 4
  %86 = ptrtoint ptr %hia_dse to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hia_dse, align 4
  %add.ptr171 = getelementptr i8, ptr %85, i32 %87
  %add.ptr174 = getelementptr i8, ptr %add.ptr171, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 %83) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  tail call void @arm_heavy_mb() #10
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv, align 4
  %90 = ptrtoint ptr %hia_dse_thr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hia_dse_thr, align 4
  %add.ptr181 = getelementptr i8, ptr %89, i32 %91
  %add.ptr184 = getelementptr i8, ptr %add.ptr181, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void @arm_heavy_mb() #10
  %92 = shl nuw i32 %., 28
  %93 = shl nuw nsw i32 %.635, 24
  %94 = or i32 %92, %93
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 4
  %97 = ptrtoint ptr %pe93 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pe93, align 4
  %add.ptr194 = getelementptr i8, ptr %96, i32 %98
  %add196 = or i32 %mul95, 7168
  %add.ptr197 = getelementptr i8, ptr %add.ptr194, i32 %add196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 %94) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 4
  %101 = ptrtoint ptr %pe93 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pe93, align 4
  %add.ptr204 = getelementptr i8, ptr %100, i32 %102
  %add206 = or i32 %mul95, 4096
  %add.ptr207 = getelementptr i8, ptr %add.ptr204, i32 %add206
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 17152) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %103 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv, align 4
  %105 = ptrtoint ptr %pe93 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pe93, align 4
  %add.ptr214 = getelementptr i8, ptr %104, i32 %106
  %add216 = or i32 %mul95, 4100
  %add.ptr217 = getelementptr i8, ptr %add.ptr214, i32 %add216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217, i32 -1) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %107 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv, align 4
  %109 = ptrtoint ptr %pe93 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pe93, align 4
  %add.ptr224 = getelementptr i8, ptr %108, i32 %110
  %add226 = or i32 %mul95, 4144
  %add.ptr227 = getelementptr i8, ptr %add.ptr224, i32 %add226
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 -1) #10, !srcloc !247
  %inc = add nuw i32 %pe.0672, 1
  %111 = ptrtoint ptr %config41 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %config41, align 4
  %cmp = icmp ult i32 %inc, %112
  br i1 %cmp, label %while.end.do.body43_crit_edge, label %while.end.for.cond228.preheader_crit_edge

while.end.for.cond228.preheader_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond228.preheader

while.end.do.body43_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

for.cond306.preheader:                            ; preds = %do.body233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp309676.not = icmp eq i32 %145, 0
  br i1 %cmp309676.not, label %for.cond306.preheader.for.cond382.preheader_crit_edge, label %do.body311.lr.ph

for.cond306.preheader.for.cond382.preheader_crit_edge: ; preds = %for.cond306.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond382.preheader

do.body311.lr.ph:                                 ; preds = %for.cond306.preheader
  %hia_aic_xdr316 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 3
  %rd_offset = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 6
  br label %do.body311

do.body233:                                       ; preds = %do.body233.do.body233_crit_edge, %do.body233.lr.ph
  %i.0675 = phi i32 [ 0, %do.body233.lr.ph ], [ %inc304, %do.body233.do.body233_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !295
  tail call void @arm_heavy_mb() #10
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv, align 4
  %115 = ptrtoint ptr %hia_aic_r to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %hia_aic_r, align 4
  %add.ptr238 = getelementptr i8, ptr %114, i32 %116
  %mul239 = shl i32 %i.0675, 12
  %sub240 = sub i32 57364, %mul239
  %add.ptr241 = getelementptr i8, ptr %add.ptr238, i32 %sub240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr241, i32 -1) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %117 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %priv, align 4
  %119 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr247 = getelementptr i8, ptr %118, i32 32
  %add.ptr249 = getelementptr i8, ptr %add.ptr247, i32 %120
  %add.ptr250 = getelementptr i8, ptr %add.ptr249, i32 %mul239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr250, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !297
  tail call void @arm_heavy_mb() #10
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv, align 4
  %123 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr257 = getelementptr i8, ptr %122, i32 44
  %add.ptr259 = getelementptr i8, ptr %add.ptr257, i32 %124
  %add.ptr260 = getelementptr i8, ptr %add.ptr259, i32 %mul239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr260, i32 128) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %125 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %priv, align 4
  %127 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr267 = getelementptr i8, ptr %126, i32 48
  %add.ptr269 = getelementptr i8, ptr %add.ptr267, i32 %128
  %add.ptr270 = getelementptr i8, ptr %add.ptr269, i32 %mul239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr270, i32 128) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  tail call void @arm_heavy_mb() #10
  %129 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv, align 4
  %131 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr277 = getelementptr i8, ptr %130, i32 52
  %add.ptr279 = getelementptr i8, ptr %add.ptr277, i32 %132
  %add.ptr280 = getelementptr i8, ptr %add.ptr279, i32 %mul239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !300
  tail call void @arm_heavy_mb() #10
  %133 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %priv, align 4
  %135 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr287 = getelementptr i8, ptr %134, i32 56
  %add.ptr289 = getelementptr i8, ptr %add.ptr287, i32 %136
  %add.ptr290 = getelementptr i8, ptr %add.ptr289, i32 %mul239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr290, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !301
  tail call void @arm_heavy_mb() #10
  %137 = ptrtoint ptr %cd_offset to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cd_offset, align 4
  %mul295 = mul i32 %138, 400
  %139 = tail call i32 @llvm.bswap.i32(i32 %mul295)
  %140 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %priv, align 4
  %142 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr299 = getelementptr i8, ptr %141, i32 24
  %add.ptr301 = getelementptr i8, ptr %add.ptr299, i32 %143
  %add.ptr302 = getelementptr i8, ptr %add.ptr301, i32 %mul239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr302, i32 %139) #10, !srcloc !247
  %inc304 = add nuw i32 %i.0675, 1
  %144 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rings230, align 4
  %cmp231 = icmp ult i32 %inc304, %145
  br i1 %cmp231, label %do.body233.do.body233_crit_edge, label %for.cond306.preheader

do.body233.do.body233_crit_edge:                  ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body233

for.cond382.preheader:                            ; preds = %do.body311.for.cond382.preheader_crit_edge, %for.cond306.preheader.for.cond382.preheader_crit_edge, %for.cond228.preheader.for.cond382.preheader_crit_edge
  %146 = ptrtoint ptr %config41 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %config41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp385678.not = icmp eq i32 %147, 0
  br i1 %cmp385678.not, label %for.cond382.preheader.do.body426_crit_edge, label %do.body387.lr.ph

for.cond382.preheader.do.body426_crit_edge:       ; preds = %for.cond382.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body426

do.body387.lr.ph:                                 ; preds = %for.cond382.preheader
  %hia_dfe_thr400 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 5
  %hia_dse_thr418 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 7
  br label %do.body387

do.body311:                                       ; preds = %do.body311.do.body311_crit_edge, %do.body311.lr.ph
  %i.1677 = phi i32 [ 0, %do.body311.lr.ph ], [ %inc380, %do.body311.do.body311_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void @arm_heavy_mb() #10
  %148 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %priv, align 4
  %150 = ptrtoint ptr %hia_aic_xdr316 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %hia_aic_xdr316, align 4
  %mul318 = shl i32 %i.1677, 12
  %add.ptr319 = getelementptr i8, ptr %149, i32 2080
  %add.ptr320 = getelementptr i8, ptr %add.ptr319, i32 %151
  %add.ptr321 = getelementptr i8, ptr %add.ptr320, i32 %mul318
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr321, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  tail call void @arm_heavy_mb() #10
  %152 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %priv, align 4
  %154 = ptrtoint ptr %hia_aic_xdr316 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %hia_aic_xdr316, align 4
  %add.ptr330 = getelementptr i8, ptr %153, i32 2092
  %add.ptr331 = getelementptr i8, ptr %add.ptr330, i32 %155
  %add.ptr332 = getelementptr i8, ptr %add.ptr331, i32 %mul318
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr332, i32 128) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  tail call void @arm_heavy_mb() #10
  %156 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %priv, align 4
  %158 = ptrtoint ptr %hia_aic_xdr316 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %hia_aic_xdr316, align 4
  %add.ptr341 = getelementptr i8, ptr %157, i32 2096
  %add.ptr342 = getelementptr i8, ptr %add.ptr341, i32 %159
  %add.ptr343 = getelementptr i8, ptr %add.ptr342, i32 %mul318
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr343, i32 128) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %160 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %priv, align 4
  %162 = ptrtoint ptr %hia_aic_xdr316 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %hia_aic_xdr316, align 4
  %add.ptr352 = getelementptr i8, ptr %161, i32 2100
  %add.ptr353 = getelementptr i8, ptr %add.ptr352, i32 %163
  %add.ptr354 = getelementptr i8, ptr %add.ptr353, i32 %mul318
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr354, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %164 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %priv, align 4
  %166 = ptrtoint ptr %hia_aic_xdr316 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %hia_aic_xdr316, align 4
  %add.ptr363 = getelementptr i8, ptr %165, i32 2104
  %add.ptr364 = getelementptr i8, ptr %add.ptr363, i32 %167
  %add.ptr365 = getelementptr i8, ptr %add.ptr364, i32 %mul318
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr365, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !307
  tail call void @arm_heavy_mb() #10
  %168 = ptrtoint ptr %rd_offset to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rd_offset, align 4
  %mul370 = mul i32 %169, 400
  %170 = tail call i32 @llvm.bswap.i32(i32 %mul370)
  %171 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %priv, align 4
  %173 = ptrtoint ptr %hia_aic_xdr316 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %hia_aic_xdr316, align 4
  %add.ptr376 = getelementptr i8, ptr %172, i32 2072
  %add.ptr377 = getelementptr i8, ptr %add.ptr376, i32 %174
  %add.ptr378 = getelementptr i8, ptr %add.ptr377, i32 %mul318
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr378, i32 %170) #10, !srcloc !247
  %inc380 = add nuw i32 %i.1677, 1
  %175 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rings230, align 4
  %cmp309 = icmp ult i32 %inc380, %176
  br i1 %cmp309, label %do.body311.do.body311_crit_edge, label %do.body311.for.cond382.preheader_crit_edge

do.body311.for.cond382.preheader_crit_edge:       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond382.preheader

do.body311.do.body311_crit_edge:                  ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body311

do.body387:                                       ; preds = %do.body387.do.body387_crit_edge, %do.body387.lr.ph
  %pe.1679 = phi i32 [ 0, %do.body387.lr.ph ], [ %inc424, %do.body387.do.body387_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  tail call void @arm_heavy_mb() #10
  %177 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rings230, align 4
  %sub393 = sub i32 32, %178
  %shr394 = lshr i32 -1, %sub393
  %or397 = or i32 %shr394, 1073741824
  %179 = tail call i32 @llvm.bswap.i32(i32 %or397)
  %180 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %priv, align 4
  %182 = ptrtoint ptr %hia_dfe_thr400 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %hia_dfe_thr400, align 4
  %add.ptr401 = getelementptr i8, ptr %181, i32 %183
  %mul402 = shl i32 %pe.1679, 7
  %add.ptr404 = getelementptr i8, ptr %add.ptr401, i32 %mul402
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr404, i32 %179) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !309
  tail call void @arm_heavy_mb() #10
  %184 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %rings230, align 4
  %sub411 = sub i32 32, %185
  %shr412 = lshr i32 -1, %sub411
  %or415 = or i32 %shr412, 1073741824
  %186 = tail call i32 @llvm.bswap.i32(i32 %or415)
  %187 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %priv, align 4
  %189 = ptrtoint ptr %hia_dse_thr418 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %hia_dse_thr418, align 4
  %add.ptr419 = getelementptr i8, ptr %188, i32 %190
  %add.ptr422 = getelementptr i8, ptr %add.ptr419, i32 %mul402
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr422, i32 %186) #10, !srcloc !247
  %inc424 = add nuw i32 %pe.1679, 1
  %191 = ptrtoint ptr %config41 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %config41, align 4
  %cmp385 = icmp ult i32 %inc424, %192
  br i1 %cmp385, label %do.body387.do.body387_crit_edge, label %do.body387.do.body426_crit_edge

do.body387.do.body426_crit_edge:                  ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body426

do.body387.do.body387_crit_edge:                  ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body387

do.body426:                                       ; preds = %do.body387.do.body426_crit_edge, %for.cond382.preheader.do.body426_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  tail call void @arm_heavy_mb() #10
  %193 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %priv, align 4
  %195 = ptrtoint ptr %hia_aic_g to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %hia_aic_g, align 4
  %add.ptr432 = getelementptr i8, ptr %194, i32 %196
  %add.ptr433 = getelementptr i8, ptr %add.ptr432, i32 63504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr433, i32 61567) #10, !srcloc !247
  %197 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %flags, align 4
  %and435 = and i32 %198, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and435)
  %tobool436.not = icmp eq i32 %and435, 0
  br i1 %tobool436.not, label %if.else451, label %do.body438

do.body438:                                       ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %199 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %priv, align 4
  %add.ptr442 = getelementptr i8, ptr %200, i32 1000432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr442, i32 1077936256) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %201 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %priv, align 4
  %pe448 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 9
  %203 = ptrtoint ptr %pe448 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %pe448, align 4
  %add.ptr449 = getelementptr i8, ptr %202, i32 %204
  %add.ptr450 = getelementptr i8, ptr %add.ptr449, i32 4140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr450, i32 134217728) #10, !srcloc !247
  br label %if.end461

if.else451:                                       ; preds = %do.body426
  %and453 = and i32 %198, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and453)
  %tobool454.not = icmp eq i32 %and453, 0
  br i1 %tobool454.not, label %if.else451.if.end461_crit_edge, label %if.then455

if.else451.if.end461_crit_edge:                   ; preds = %if.else451
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end461

if.then455:                                       ; preds = %if.else451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @arm_heavy_mb() #10
  %205 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %206, i32 1009696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @arm_heavy_mb() #10
  %207 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %priv, align 4
  %add.ptr.1.i.i = getelementptr i8, ptr %208, i32 1009700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i.i, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @arm_heavy_mb() #10
  %209 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %priv, align 4
  %add.ptr.2.i.i = getelementptr i8, ptr %210, i32 1009704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i.i, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @arm_heavy_mb() #10
  %211 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %priv, align 4
  %add.ptr.3.i.i = getelementptr i8, ptr %212, i32 1009708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i.i, i32 0) #10, !srcloc !247
  %213 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %rings230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp252.not.i.i = icmp eq i32 %214, 0
  br i1 %cmp252.not.i.i, label %if.then455.eip197_trc_cache_setupvirt.exit.i_crit_edge, label %if.then455.do.body4.i.i_crit_edge

if.then455.do.body4.i.i_crit_edge:                ; preds = %if.then455
  br label %do.body4.i.i

if.then455.eip197_trc_cache_setupvirt.exit.i_crit_edge: ; preds = %if.then455
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_trc_cache_setupvirt.exit.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %if.then455.do.body4.i.i_crit_edge
  %i.153.i.i = phi i32 [ %inc26.i.i, %do.body4.i.i.do.body4.i.i_crit_edge ], [ 0, %if.then455.do.body4.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %215 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %priv, align 4
  %mul8.i.i = shl i32 %i.153.i.i, 5
  %add9.i.i = add i32 %mul8.i.i, 1007616
  %add.ptr10.i.i = getelementptr i8, ptr %216, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %217 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %priv, align 4
  %add16.i.i = add i32 %mul8.i.i, 1007620
  %add.ptr17.i.i = getelementptr i8, ptr %218, i32 %add16.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  tail call void @arm_heavy_mb() #10
  %219 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %priv, align 4
  %add23.i.i = add i32 %mul8.i.i, 1007632
  %add.ptr24.i.i = getelementptr i8, ptr %220, i32 %add23.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i, i32 67109063) #10, !srcloc !247
  %inc26.i.i = add nuw i32 %i.153.i.i, 1
  %221 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %rings230, align 4
  %cmp2.i.i = icmp ult i32 %inc26.i.i, %222
  br i1 %cmp2.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge, label %do.body4.i.i.eip197_trc_cache_setupvirt.exit.i_crit_edge

do.body4.i.i.eip197_trc_cache_setupvirt.exit.i_crit_edge: ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_trc_cache_setupvirt.exit.i

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

eip197_trc_cache_setupvirt.exit.i:                ; preds = %do.body4.i.i.eip197_trc_cache_setupvirt.exit.i_crit_edge, %if.then455.eip197_trc_cache_setupvirt.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  tail call void @arm_heavy_mb() #10
  %223 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %priv, align 4
  %add.ptr32.i.i = getelementptr i8, ptr %224, i32 1009672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call void @arm_heavy_mb() #10
  %225 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %priv, align 4
  %add.ptr37.i.i = getelementptr i8, ptr %226, i32 1009676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i.i, i32 0) #10, !srcloc !247
  %227 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %228, i32 1015792
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  %230 = and i32 %229, -1886388225
  %231 = or i32 %230, 275775488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  tail call void @arm_heavy_mb() #10
  %232 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %priv, align 4
  %add.ptr3.i = getelementptr i8, ptr %233, i32 1015792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %231) #10, !srcloc !247
  %234 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %priv, align 4
  %add.ptr7.i = getelementptr i8, ptr %235, i32 1015792
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !251
  %237 = lshr i32 %236, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %and11.i = and i32 %237, 7
  %add.i = add nuw nsw i32 %and11.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @arm_heavy_mb() #10
  %238 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %priv, align 4
  %add.ptr16.i = getelementptr i8, ptr %239, i32 985136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #10, !srcloc !247
  %240 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %priv, align 4
  %add.ptr20.i = getelementptr i8, ptr %241, i32 985120
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  %243 = or i32 %242, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @arm_heavy_mb() #10
  %244 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %priv, align 4
  %add.ptr29.i = getelementptr i8, ptr %245, i32 985120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %243) #10, !srcloc !247
  %call30.i = tail call fastcc i32 @eip197_trc_cache_probe(ptr noundef %priv, i32 noundef %add.i, i32 noundef -1, i32 noundef 32) #10
  %246 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %priv, align 4
  %add.ptr34.i = getelementptr i8, ptr %247, i32 985120
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  %249 = and i32 %248, -74448897
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  tail call void @arm_heavy_mb() #10
  %250 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %priv, align 4
  %add.ptr43.i = getelementptr i8, ptr %251, i32 985120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %249) #10, !srcloc !247
  %call44.i = tail call fastcc i32 @eip197_trc_cache_probe(ptr noundef %priv, i32 noundef 0, i32 noundef 1073741823, i32 noundef 16) #10
  %shr45.i = lshr i32 %call44.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  tail call void @arm_heavy_mb() #10
  %252 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %priv, align 4
  %add.ptr50.i = getelementptr i8, ptr %253, i32 985136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 0) #10, !srcloc !247
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call30.i)
  %cmp.i = icmp ult i32 %call30.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call44.i)
  %cmp51.i = icmp ult i32 %call44.i, 128
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp51.i
  br i1 %or.cond.i, label %eip197_trc_cache_init.exit, label %if.end.i

if.end.i:                                         ; preds = %eip197_trc_cache_setupvirt.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 261888, i32 %call30.i)
  %cmp57.i = icmp ult i32 %call30.i, 261888
  %div181.i = lshr i32 %call30.i, 8
  %cond.i = select i1 %cmp57.i, i32 %div181.i, i32 1023
  %shr58.i = lshr i32 %call44.i, 5
  %254 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %shr58.i) #10
  %sub.i = sub nsw i32 %shr45.i, %254
  %255 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 false) #10, !range !328
  %sub66.i = sub nsw i32 29, %255
  %shl.i = shl i32 16, %sub66.i
  %shr67.i = ashr exact i32 %shl.i, 2
  %sub68.i = sub nsw i32 %shr45.i, %shr67.i
  %256 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %sub68.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %cmp62.i.not.i = icmp eq i32 %256, 0
  br i1 %cmp62.i.not.i, label %if.end.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.for.end.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %sub4.i.i = add nsw i32 %256, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.063.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add1.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.063.i.i, 4
  %add.i.i = add nuw nsw i32 %mul.i.i, 917504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %257 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %priv, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %258, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 -61696) #10, !srcloc !247
  %add1.i.i = add nuw nsw i32 %i.063.i.i, 1
  %sub.i183.i = shl i32 %i.063.i.i, 10
  %shl.i.i = add i32 %sub.i183.i, -1024
  %or.i.i = or i32 %shl.i.i, %add1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.063.i.i)
  %cmp2.i184.i = icmp eq i32 %i.063.i.i, 0
  %or3.i.i = or i32 %or.i.i, 1047552
  call void @__sanitizer_cov_trace_cmp4(i32 %i.063.i.i, i32 %sub4.i.i)
  %cmp5.i.i = icmp eq i32 %i.063.i.i, %sub4.i.i
  %or7.i.i = or i32 %or.i.i, 1023
  %spec.select.i.i = select i1 %cmp5.i.i, i32 %or7.i.i, i32 %or.i.i
  %val.0.i.i = select i1 %cmp2.i184.i, i32 %or3.i.i, i32 %spec.select.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  tail call void @arm_heavy_mb() #10
  %259 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #10
  %260 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %priv, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %261, i32 4
  %add.ptr14.i.i = getelementptr i8, ptr %add.ptr13.i.i, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %259) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  tail call void @arm_heavy_mb() #10
  %262 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %priv, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %263, i32 8
  %add.ptr20.i.i = getelementptr i8, ptr %add.ptr19.i.i, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %264 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %priv, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %265, i32 12
  %add.ptr26.i.i = getelementptr i8, ptr %add.ptr25.i.i, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 0) #10, !srcloc !247
  %exitcond.not.i.i = icmp eq i32 %add1.i.i, %256
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.for.end.i.i_crit_edge
  %mul27.i.i = shl nuw nsw i32 %256, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp2964.i.i = icmp sgt i32 %shl.i, 0
  br i1 %cmp2964.i.i, label %for.end.i.i.do.body31.i.i_crit_edge, label %for.end.i.i.eip197_trc_cache_init.exit.thread_crit_edge

for.end.i.i.eip197_trc_cache_init.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_trc_cache_init.exit.thread

for.end.i.i.do.body31.i.i_crit_edge:              ; preds = %for.end.i.i
  br label %do.body31.i.i

do.body31.i.i:                                    ; preds = %do.body31.i.i.do.body31.i.i_crit_edge, %for.end.i.i.do.body31.i.i_crit_edge
  %i.165.i.i = phi i32 [ %inc40.i.i, %do.body31.i.i.do.body31.i.i_crit_edge ], [ 0, %for.end.i.i.do.body31.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  tail call void @arm_heavy_mb() #10
  %266 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %priv, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %267, i32 917504
  %add.ptr36.i.i = getelementptr i8, ptr %add.ptr35.i.i, i32 %mul27.i.i
  %mul37.i.i = shl i32 %i.165.i.i, 2
  %add.ptr38.i.i = getelementptr i8, ptr %add.ptr36.i.i, i32 %mul37.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 -193) #10, !srcloc !247
  %inc40.i.i = add nuw nsw i32 %i.165.i.i, 1
  %exitcond66.not.i.i = icmp eq i32 %inc40.i.i, %shl.i
  br i1 %exitcond66.not.i.i, label %do.body31.i.i.eip197_trc_cache_init.exit.thread_crit_edge, label %do.body31.i.i.do.body31.i.i_crit_edge

do.body31.i.i.do.body31.i.i_crit_edge:            ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31.i.i

do.body31.i.i.eip197_trc_cache_init.exit.thread_crit_edge: ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_trc_cache_init.exit.thread

eip197_trc_cache_init.exit.thread:                ; preds = %do.body31.i.i.eip197_trc_cache_init.exit.thread_crit_edge, %for.end.i.i.eip197_trc_cache_init.exit.thread_crit_edge
  %268 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %priv, align 4
  %add.ptr78.i = getelementptr i8, ptr %269, i32 1015792
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !334
  %271 = and i32 %270, -1879048193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  tail call void @arm_heavy_mb() #10
  %272 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %priv, align 4
  %add.ptr87.i = getelementptr i8, ptr %273, i32 1015792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 %271) #10, !srcloc !247
  %sub88.i = shl i32 %256, 16
  %shl89.i = add i32 %sub88.i, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !336
  tail call void @arm_heavy_mb() #10
  %274 = tail call i32 @llvm.bswap.i32(i32 %shl89.i) #10
  %275 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %priv, align 4
  %add.ptr95.i = getelementptr i8, ptr %276, i32 985124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95.i, i32 %274) #10, !srcloc !247
  %or97.i = or i32 %256, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  tail call void @arm_heavy_mb() #10
  %277 = tail call i32 @llvm.bswap.i32(i32 %or97.i) #10
  %278 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %priv, align 4
  %add.ptr102.i = getelementptr i8, ptr %279, i32 985128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102.i, i32 %277) #10, !srcloc !247
  %shl105.i = shl nsw i32 %sub66.i, 4
  %or106.i = or i32 %shl105.i, 16778240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  tail call void @arm_heavy_mb() #10
  %280 = tail call i32 @llvm.bswap.i32(i32 %or106.i) #10
  %281 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %priv, align 4
  %add.ptr111.i = getelementptr i8, ptr %282, i32 985120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.i, i32 %280) #10, !srcloc !247
  %dev115.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %283 = ptrtoint ptr %dev115.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev115.i, align 4
  %add116.i = shl i32 %shl.i, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %284, ptr noundef nonnull @.str.86, i32 noundef %call30.i, i32 noundef %shr45.i, i32 noundef %256, i32 noundef %add116.i) #13
  br label %if.end461

eip197_trc_cache_init.exit:                       ; preds = %eip197_trc_cache_setupvirt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %285 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %286, ptr noundef nonnull @.str.83, i32 noundef %call30.i, i32 noundef %shr45.i) #13
  br label %cleanup

if.end461:                                        ; preds = %eip197_trc_cache_init.exit.thread, %if.else451.if.end461_crit_edge, %do.body438
  %287 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %flags, align 4
  %and463 = and i32 %288, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and463)
  %tobool464.not = icmp eq i32 %and463, 0
  br i1 %tobool464.not, label %if.end461.if.end470_crit_edge, label %if.then465

if.end461.if.end470_crit_edge:                    ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end470

if.then465:                                       ; preds = %if.end461
  %call466 = tail call fastcc i32 @eip197_load_firmwares(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call466)
  %tobool467.not = icmp eq i32 %call466, 0
  br i1 %tobool467.not, label %if.then465.if.end470_crit_edge, label %if.then465.cleanup_crit_edge

if.then465.cleanup_crit_edge:                     ; preds = %if.then465
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then465.if.end470_crit_edge:                   ; preds = %if.then465
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end470

if.end470:                                        ; preds = %if.then465.if.end470_crit_edge, %if.end461.if.end470_crit_edge
  %cd_size.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 2
  %289 = ptrtoint ptr %cd_size.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %cd_size.i, align 4
  %hwdataw.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 8
  %291 = ptrtoint ptr %hwdataw.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %hwdataw.i, align 4
  %notmask.i = shl nsw i32 -1, %292
  %sub.i637 = xor i32 %notmask.i, -1
  %add.i638 = add i32 %290, %sub.i637
  %shr.i = lshr i32 %add.i638, %292
  %293 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %flags, align 4
  %and.i = and i32 %294, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %hwcfsize7.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 9
  %295 = ptrtoint ptr %hwcfsize7.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %hwcfsize7.i, align 4
  %shl8.i = shl nuw i32 1, %296
  %div9.i = udiv i32 %shl8.i, %shr.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #12
  %297 = ptrtoint ptr %config41 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %config41, align 4
  %mul.i = shl i32 %298, 1
  %299 = tail call i32 @llvm.umin.i32(i32 %div9.i, i32 %mul.i) #10
  br label %if.end.i639

if.else.i:                                        ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #12
  %sub10.i = add i32 %div9.i, -1
  br label %if.end.i639

if.end.i639:                                      ; preds = %if.else.i, %if.then.i
  %cd_fetch_cnt.0.i = phi i32 [ %299, %if.then.i ], [ %sub10.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cd_fetch_cnt.0.i)
  %tobool11.not.i = icmp eq i32 %cd_fetch_cnt.0.i, 0
  br i1 %tobool11.not.i, label %safexcel_hw_setup_cdesc_rings.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i639
  %300 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %rings230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %cmp15142.not.i = icmp eq i32 %301, 0
  br i1 %cmp15142.not.i, label %for.cond.preheader.i.cond.false_crit_edge, label %do.body16.lr.ph.i

for.cond.preheader.i.cond.false_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

do.body16.lr.ph.i:                                ; preds = %for.cond.preheader.i
  %ring.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %hia_aic_xdr.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 3
  %cd_offset.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 3
  %mul60.i = shl i32 %cd_fetch_cnt.0.i, 16
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.body16.i.do.body16.i_crit_edge, %do.body16.lr.ph.i
  %i.0143.i = phi i32 [ 0, %do.body16.lr.ph.i ], [ %inc.i, %do.body16.i.do.body16.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !339
  tail call void @arm_heavy_mb() #10
  %302 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %ring.i, align 4
  %base_dma.i = getelementptr %struct.safexcel_ring, ptr %303, i32 %i.0143.i, i32 3, i32 4
  %304 = ptrtoint ptr %base_dma.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %base_dma.i, align 4
  %306 = tail call i32 @llvm.bswap.i32(i32 %305) #10
  %307 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %priv, align 4
  %309 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr.i641 = getelementptr i8, ptr %308, i32 %310
  %mul20.i = shl i32 %i.0143.i, 12
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i641, i32 %mul20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %306) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !340
  tail call void @arm_heavy_mb() #10
  %311 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %priv, align 4
  %313 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %312, i32 4
  %add.ptr37.i = getelementptr i8, ptr %add.ptr35.i, i32 %314
  %add.ptr38.i = getelementptr i8, ptr %add.ptr37.i, i32 %mul20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !341
  tail call void @arm_heavy_mb() #10
  %315 = ptrtoint ptr %cd_offset.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %cd_offset.i, align 4
  %shl43.i = shl i32 %316, 14
  %317 = ptrtoint ptr %cd_size.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %cd_size.i, align 4
  %or.i = or i32 %shl43.i, %318
  %or46.i = or i32 %or.i, -1073741824
  %319 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #10
  %320 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %priv, align 4
  %322 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr50.i642 = getelementptr i8, ptr %321, i32 28
  %add.ptr52.i = getelementptr i8, ptr %add.ptr50.i642, i32 %323
  %add.ptr53.i = getelementptr i8, ptr %add.ptr52.i, i32 %mul20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %319) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !342
  tail call void @arm_heavy_mb() #10
  %324 = ptrtoint ptr %hwdataw.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %hwdataw.i, align 4
  %shl59.i = shl i32 %shr.i, %325
  %shl61.i = mul i32 %mul60.i, %shl59.i
  %326 = ptrtoint ptr %cd_offset.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %cd_offset.i, align 4
  %div64141.i = lshr i32 %327, 2
  %mul65.i = mul i32 %div64141.i, %cd_fetch_cnt.0.i
  %or66.i = or i32 %mul65.i, %shl61.i
  %328 = tail call i32 @llvm.bswap.i32(i32 %or66.i) #10
  %329 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %priv, align 4
  %331 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %330, i32 32
  %add.ptr72.i = getelementptr i8, ptr %add.ptr70.i, i32 %332
  %add.ptr73.i = getelementptr i8, ptr %add.ptr72.i, i32 %mul20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %328) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !343
  tail call void @arm_heavy_mb() #10
  %333 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %priv, align 4
  %335 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr81.i = getelementptr i8, ptr %334, i32 36
  %add.ptr83.i = getelementptr i8, ptr %add.ptr81.i, i32 %336
  %add.ptr84.i = getelementptr i8, ptr %add.ptr83.i, i32 %mul20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 166) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !344
  tail call void @arm_heavy_mb() #10
  %337 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %priv, align 4
  %339 = ptrtoint ptr %hia_aic_xdr.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %hia_aic_xdr.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %338, i32 60
  %add.ptr93.i = getelementptr i8, ptr %add.ptr91.i, i32 %340
  %add.ptr94.i = getelementptr i8, ptr %add.ptr93.i, i32 %mul20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 1056964608) #10, !srcloc !247
  %inc.i = add nuw i32 %i.0143.i, 1
  %341 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %rings230, align 4
  %cmp15.i = icmp ult i32 %inc.i, %342
  br i1 %cmp15.i, label %do.body16.i.do.body16.i_crit_edge, label %do.body16.i.cond.false_crit_edge

do.body16.i.cond.false_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

do.body16.i.do.body16.i_crit_edge:                ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16.i

safexcel_hw_setup_cdesc_rings.exit:               ; preds = %if.end.i639
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i640 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %343 = ptrtoint ptr %dev.i640 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dev.i640, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %344, ptr noundef nonnull @.str.100) #13
  br label %cleanup

cond.false:                                       ; preds = %do.body16.i.cond.false_crit_edge, %for.cond.preheader.i.cond.false_crit_edge
  %345 = ptrtoint ptr %hwdataw.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %hwdataw.i, align 4
  %notmask.neg.i = shl nuw i32 1, %346
  %add.i645 = add nuw i32 %notmask.neg.i, 3
  %shr.i646 = lshr i32 %add.i645, %346
  %347 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %flags, align 4
  %and.i648 = and i32 %348, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i648)
  %tobool.not.i649 = icmp eq i32 %and.i648, 0
  %hwrfsize6.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7, i32 10
  %349 = ptrtoint ptr %hwrfsize6.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %hwrfsize6.i, align 4
  %shl7.i = shl nuw i32 1, %350
  %div8.i = udiv i32 %shl7.i, %shr.i646
  br i1 %tobool.not.i649, label %if.else.i653, label %if.then.i652

if.then.i652:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  %351 = ptrtoint ptr %config41 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %config41, align 4
  %mul.i651 = shl i32 %352, 1
  %353 = tail call i32 @llvm.umin.i32(i32 %div8.i, i32 %mul.i651) #10
  br label %if.end.i655

if.else.i653:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  %sub9.i = add i32 %div8.i, -1
  br label %if.end.i655

if.end.i655:                                      ; preds = %if.else.i653, %if.then.i652
  %rd_fetch_cnt.0.i = phi i32 [ %353, %if.then.i652 ], [ %sub9.i, %if.else.i653 ]
  %354 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %rings230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %cmp112.not.i = icmp eq i32 %355, 0
  br i1 %cmp112.not.i, label %if.end.i655.cleanup_crit_edge, label %do.body.lr.ph.i

if.end.i655.cleanup_crit_edge:                    ; preds = %if.end.i655
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.lr.ph.i:                                  ; preds = %if.end.i655
  %ring.i656 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %hia_aic_xdr.i657 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 3
  %rd_offset.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 6
  %rd_size.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 5
  %mul55.i = shl i32 %rd_fetch_cnt.0.i, 16
  %hia_aic_r.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i665, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !345
  tail call void @arm_heavy_mb() #10
  %356 = ptrtoint ptr %ring.i656 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ring.i656, align 4
  %base_dma.i658 = getelementptr %struct.safexcel_ring, ptr %357, i32 %i.03.i, i32 4, i32 4
  %358 = ptrtoint ptr %base_dma.i658 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %base_dma.i658, align 4
  %360 = tail call i32 @llvm.bswap.i32(i32 %359) #10
  %361 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %priv, align 4
  %363 = ptrtoint ptr %hia_aic_xdr.i657 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %hia_aic_xdr.i657, align 4
  %add.ptr.i659 = getelementptr i8, ptr %362, i32 2048
  %mul13.i = shl i32 %i.03.i, 12
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i659, i32 %364
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 %mul13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %360) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  tail call void @arm_heavy_mb() #10
  %365 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %priv, align 4
  %367 = ptrtoint ptr %hia_aic_xdr.i657 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %hia_aic_xdr.i657, align 4
  %add.ptr31.i = getelementptr i8, ptr %366, i32 2052
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %368
  %add.ptr33.i = getelementptr i8, ptr %add.ptr32.i, i32 %mul13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  tail call void @arm_heavy_mb() #10
  %369 = ptrtoint ptr %rd_offset.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %rd_offset.i, align 4
  %shl38.i = shl i32 %370, 14
  %371 = ptrtoint ptr %rd_size.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %rd_size.i, align 4
  %or.i660 = or i32 %shl38.i, %372
  %or40.i = or i32 %or.i660, -2147483648
  %373 = tail call i32 @llvm.bswap.i32(i32 %or40.i) #10
  %374 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %priv, align 4
  %376 = ptrtoint ptr %hia_aic_xdr.i657 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %hia_aic_xdr.i657, align 4
  %add.ptr46.i = getelementptr i8, ptr %375, i32 2076
  %add.ptr47.i = getelementptr i8, ptr %add.ptr46.i, i32 %377
  %add.ptr48.i = getelementptr i8, ptr %add.ptr47.i, i32 %mul13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %373) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !348
  tail call void @arm_heavy_mb() #10
  %378 = ptrtoint ptr %hwdataw.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %hwdataw.i, align 4
  %shl54.i = shl i32 %shr.i646, %379
  %shl56.i = mul i32 %mul55.i, %shl54.i
  %380 = ptrtoint ptr %rd_offset.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %rd_offset.i, align 4
  %div591.i = lshr i32 %381, 2
  %mul60.i661 = mul i32 %div591.i, %rd_fetch_cnt.0.i
  %or61.i = or i32 %mul60.i661, %shl56.i
  %382 = tail call i32 @llvm.bswap.i32(i32 %or61.i) #10
  %383 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %priv, align 4
  %385 = ptrtoint ptr %hia_aic_xdr.i657 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %hia_aic_xdr.i657, align 4
  %add.ptr67.i = getelementptr i8, ptr %384, i32 2080
  %add.ptr68.i = getelementptr i8, ptr %add.ptr67.i, i32 %386
  %add.ptr69.i = getelementptr i8, ptr %add.ptr68.i, i32 %mul13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %382) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !349
  tail call void @arm_heavy_mb() #10
  %387 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %priv, align 4
  %389 = ptrtoint ptr %hia_aic_xdr.i657 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %hia_aic_xdr.i657, align 4
  %add.ptr80.i = getelementptr i8, ptr %388, i32 2084
  %add.ptr81.i662 = getelementptr i8, ptr %add.ptr80.i, i32 %390
  %add.ptr82.i = getelementptr i8, ptr %add.ptr81.i662, i32 %mul13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 49318) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !350
  tail call void @arm_heavy_mb() #10
  %391 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %priv, align 4
  %393 = ptrtoint ptr %hia_aic_xdr.i657 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %hia_aic_xdr.i657, align 4
  %add.ptr91.i663 = getelementptr i8, ptr %392, i32 2108
  %add.ptr92.i = getelementptr i8, ptr %add.ptr91.i663, i32 %394
  %add.ptr93.i664 = getelementptr i8, ptr %add.ptr92.i, i32 %mul13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i664, i32 -16777216) #10, !srcloc !247
  %395 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %priv, align 4
  %397 = ptrtoint ptr %hia_aic_r.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %hia_aic_r.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %396, i32 %398
  %sub98.i = sub i32 57352, %mul13.i
  %add.ptr99.i = getelementptr i8, ptr %add.ptr96.i, i32 %sub98.i
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.i) #10, !srcloc !251
  %400 = tail call i32 @llvm.bswap.i32(i32 %399) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !351
  %mul102.i = shl i32 %i.03.i, 1
  %add103.i = or i32 %mul102.i, 1
  %shl104.i = shl nuw i32 1, %add103.i
  %or105.i = or i32 %400, %shl104.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !352
  tail call void @arm_heavy_mb() #10
  %401 = tail call i32 @llvm.bswap.i32(i32 %or105.i) #10
  %402 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %priv, align 4
  %404 = ptrtoint ptr %hia_aic_r.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %hia_aic_r.i, align 4
  %add.ptr112.i = getelementptr i8, ptr %403, i32 %405
  %add.ptr115.i = getelementptr i8, ptr %add.ptr112.i, i32 %sub98.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115.i, i32 %401) #10, !srcloc !247
  %inc.i665 = add nuw i32 %i.03.i, 1
  %406 = ptrtoint ptr %rings230 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %rings230, align 4
  %cmp11.i = icmp ult i32 %inc.i665, %407
  br i1 %cmp11.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

cleanup:                                          ; preds = %do.body.i.cleanup_crit_edge, %if.end.i655.cleanup_crit_edge, %safexcel_hw_setup_cdesc_rings.exit, %if.then465.cleanup_crit_edge, %eip197_trc_cache_init.exit
  %retval.0 = phi i32 [ -19, %eip197_trc_cache_init.exit ], [ %call466, %if.then465.cleanup_crit_edge ], [ -19, %safexcel_hw_setup_cdesc_rings.exit ], [ 0, %if.end.i655.cleanup_crit_edge ], [ 0, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_register_algorithms(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwconfig = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.085 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [73 x ptr], ptr @safexcel_algs, i32 0, i32 %i.085
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %1, align 128
  %algo_mask = getelementptr inbounds %struct.safexcel_alg_template, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %algo_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %algo_mask, align 8
  %5 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwconfig, align 4
  %and = and i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %4)
  %cmp5.not = icmp eq i32 %and, %4
  br i1 %cmp5.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %type = getelementptr inbounds %struct.safexcel_alg_template, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %8, label %if.else17 [
    i32 0, label %if.then8
    i32 1, label %if.then13
  ]

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %alg = getelementptr inbounds %struct.safexcel_alg_template, ptr %1, i32 0, i32 4
  %call = tail call i32 @crypto_register_skcipher(ptr noundef %alg) #10
  br label %if.end22

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %alg15 = getelementptr inbounds %struct.safexcel_alg_template, ptr %1, i32 0, i32 4
  %call16 = tail call i32 @crypto_register_aead(ptr noundef %alg15) #10
  br label %if.end22

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %alg19 = getelementptr inbounds %struct.safexcel_alg_template, ptr %1, i32 0, i32 4
  %call20 = tail call i32 @crypto_register_ahash(ptr noundef %alg19) #10
  br label %if.end22

if.end22:                                         ; preds = %if.else17, %if.then13, %if.then8
  %ret.0 = phi i32 [ %call, %if.then8 ], [ %call16, %if.then13 ], [ %call20, %if.else17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end22.for.inc_crit_edge, label %for.cond25.preheader

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond25.preheader:                             ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.085)
  %cmp2687.not = icmp eq i32 %i.085, 0
  br i1 %cmp2687.not, label %for.cond25.preheader.cleanup_crit_edge, label %for.cond25.preheader.for.body27_crit_edge

for.cond25.preheader.for.body27_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body27

for.cond25.preheader.cleanup_crit_edge:           ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 73
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body27:                                       ; preds = %for.inc56.for.body27_crit_edge, %for.cond25.preheader.for.body27_crit_edge
  %j.088 = phi i32 [ %inc57, %for.inc56.for.body27_crit_edge ], [ 0, %for.cond25.preheader.for.body27_crit_edge ]
  %arrayidx28 = getelementptr [73 x ptr], ptr @safexcel_algs, i32 0, i32 %j.088
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx28, align 4
  %algo_mask29 = getelementptr inbounds %struct.safexcel_alg_template, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %algo_mask29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %algo_mask29, align 8
  %14 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwconfig, align 4
  %and32 = and i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %and32, i32 %13)
  %cmp35.not = icmp eq i32 %and32, %13
  br i1 %cmp35.not, label %if.end37, label %for.body27.for.inc56_crit_edge

for.body27.for.inc56_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc56

if.end37:                                         ; preds = %for.body27
  %type39 = getelementptr inbounds %struct.safexcel_alg_template, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %type39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type39, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %17, label %if.else51 [
    i32 0, label %if.then41
    i32 1, label %if.then48
  ]

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %alg43 = getelementptr inbounds %struct.safexcel_alg_template, ptr %11, i32 0, i32 4
  tail call void @crypto_unregister_skcipher(ptr noundef %alg43) #10
  br label %for.inc56

if.then48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %alg50 = getelementptr inbounds %struct.safexcel_alg_template, ptr %11, i32 0, i32 4
  tail call void @crypto_unregister_aead(ptr noundef %alg50) #10
  br label %for.inc56

if.else51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %alg53 = getelementptr inbounds %struct.safexcel_alg_template, ptr %11, i32 0, i32 4
  tail call void @crypto_unregister_ahash(ptr noundef %alg53) #10
  br label %for.inc56

for.inc56:                                        ; preds = %if.else51, %if.then48, %if.then41, %for.body27.for.inc56_crit_edge
  %inc57 = add nuw nsw i32 %j.088, 1
  %exitcond91.not = icmp eq i32 %inc57, %i.085
  br i1 %exitcond91.not, label %for.inc56.cleanup_crit_edge, label %for.inc56.for.body27_crit_edge

for.inc56.for.body27_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27

for.inc56.cleanup_crit_edge:                      ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc56.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond25.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.cond25.preheader.cleanup_crit_edge ], [ %ret.0, %for.inc56.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eip197_load_firmwares(ptr noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %fw = alloca [2 x ptr], align 4
  %fw_path = alloca [37 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !244
  %1 = getelementptr inbounds [2 x ptr], ptr %fw, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %fw_path) #10
  %3 = call ptr @memset(ptr %fw_path, i32 255, i32 37)
  %version = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.eip197_load_firmwares, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %config.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4
  %pe1.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 9
  %flags.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 8
  %arrayidx55.1 = getelementptr inbounds [2 x ptr], ptr %fw, i32 0, i32 1
  br label %retry_fw

retry_fw:                                         ; preds = %if.then73, %do.body61, %switch.lookup
  %tobool59.not = phi i1 [ true, %switch.lookup ], [ false, %do.body61 ], [ false, %if.then73 ]
  %dir.1 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.96, %do.body61 ], [ @.str.96, %if.then73 ]
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_path, i32 noundef 37, ptr noundef nonnull @.str.92, ptr noundef nonnull %dir.1, ptr noundef nonnull @.str.88)
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call11 = call i32 @firmware_request_nowarn(ptr noundef nonnull %fw, ptr noundef nonnull %fw_path, ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %retry_fw.for.inc_crit_edge, label %if.then12

retry_fw.for.inc_crit_edge:                       ; preds = %retry_fw
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then12:                                        ; preds = %retry_fw
  br i1 %tobool59.not, label %lor.lhs.false14, label %if.then12.do.body79_crit_edge

if.then12.do.body79_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79

lor.lhs.false14:                                  ; preds = %if.then12
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp16.not = icmp eq i32 %11, 1
  br i1 %cmp16.not, label %if.end18, label %lor.lhs.false14.do.body61_crit_edge

lor.lhs.false14.do.body61_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

if.end18:                                         ; preds = %lor.lhs.false14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call22 = call i32 @firmware_request_nowarn(ptr noundef nonnull %fw, ptr noundef nonnull @.str.88, ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end18.for.inc_crit_edge, label %if.end18.do.body61_crit_edge

if.end18.do.body61_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end18.for.inc_crit_edge, %retry_fw.for.inc_crit_edge
  %call.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_path, i32 noundef 37, ptr noundef nonnull @.str.92, ptr noundef nonnull %dir.1, ptr noundef nonnull @.str.89)
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call11.1 = call i32 @firmware_request_nowarn(ptr noundef %1, ptr noundef nonnull %fw_path, ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then12.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then12.1:                                      ; preds = %for.inc
  br i1 %tobool59.not, label %lor.lhs.false14.1, label %if.then12.1.for.body54_crit_edge

if.then12.1.for.body54_crit_edge:                 ; preds = %if.then12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

lor.lhs.false14.1:                                ; preds = %if.then12.1
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp16.not.1 = icmp eq i32 %17, 1
  br i1 %cmp16.not.1, label %if.end18.1, label %lor.lhs.false14.1.for.body54_crit_edge

lor.lhs.false14.1.for.body54_crit_edge:           ; preds = %lor.lhs.false14.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

if.end18.1:                                       ; preds = %lor.lhs.false14.1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call22.1 = call i32 @firmware_request_nowarn(ptr noundef %1, ptr noundef nonnull @.str.89, ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.1)
  %tobool23.not.1 = icmp eq i32 %call22.1, 0
  br i1 %tobool23.not.1, label %if.end18.1.for.inc.1_crit_edge, label %if.end18.1.for.body54_crit_edge

if.end18.1.for.body54_crit_edge:                  ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

if.end18.1.for.inc.1_crit_edge:                   ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end18.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %20 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp121.not.i = icmp eq i32 %21, 0
  br i1 %cmp121.not.i, label %for.inc.1.eip197_init_firmware.exit_crit_edge, label %for.inc.1.do.body.i_crit_edge

for.inc.1.do.body.i_crit_edge:                    ; preds = %for.inc.1
  br label %do.body.i

for.inc.1.eip197_init_firmware.exit_crit_edge:    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_init_firmware.exit

do.body.i:                                        ; preds = %for.inc85.i.do.body.i_crit_edge, %for.inc.1.do.body.i_crit_edge
  %pe.0122.i = phi i32 [ %inc86.i, %for.inc85.i.do.body.i_crit_edge ], [ 0, %for.inc.1.do.body.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !353
  call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %24 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pe1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %25
  %mul.i = shl i32 %pe.0122.i, 13
  %add.i = or i32 %mul.i, 3328
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 50331648) #10, !srcloc !247
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !354
  call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %28 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pe1.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %27, i32 %29
  %add11.i = or i32 %mul.i, 3584
  %add.ptr12.i = getelementptr i8, ptr %add.ptr9.i, i32 %add11.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #10, !srcloc !247
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %32 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pe1.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %31, i32 %33
  %add18.i = or i32 %mul.i, 3332
  %add.ptr19.i = getelementptr i8, ptr %add.ptr16.i, i32 %add18.i
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #10, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !355
  %35 = or i32 %34, 201326595
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !356
  call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %38 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pe1.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %37, i32 %39
  %add.ptr30.i = getelementptr i8, ptr %add.ptr27.i, i32 %add18.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %35) #10, !srcloc !247
  %add42.i = or i32 %mul.i, 2048
  br label %do.body34.i

do.body34.i:                                      ; preds = %do.body34.i.do.body34.i_crit_edge, %do.body.i
  %i.0120.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %do.body34.i.do.body34.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %42 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pe1.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %41, i32 %add42.i
  %add.ptr43.i = getelementptr i8, ptr %add.ptr40.i, i32 %43
  %shl.i = shl i32 %i.0120.i, 2
  %add.ptr44.i = getelementptr i8, ptr %add.ptr43.i, i32 %shl.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 0) #10, !srcloc !247
  %inc.i = add nuw nsw i32 %i.0120.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %do.body45.i, label %do.body34.i.do.body34.i_crit_edge

do.body34.i.do.body34.i_crit_edge:                ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i

do.body45.i:                                      ; preds = %do.body34.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %46 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pe1.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %45, i32 %47
  %add53.i = or i32 %mul.i, 3456
  %add.ptr54.i = getelementptr i8, ptr %add.ptr51.i, i32 %add53.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 29360128) #10, !srcloc !247
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 4
  %50 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pe1.i, align 4
  %add.ptr61.i = getelementptr i8, ptr %49, i32 %51
  %add63.i = or i32 %mul.i, 3200
  %add.ptr64.i = getelementptr i8, ptr %add.ptr61.i, i32 %add63.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 29360128) #10, !srcloc !247
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 4
  %54 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pe1.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %53, i32 %55
  %add73.i = or i32 %mul.i, 4080
  %add.ptr74.i = getelementptr i8, ptr %add.ptr71.i, i32 %add73.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 33554432) #10, !srcloc !247
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body45.i.for.inc85.i_crit_edge, label %do.body75.i

do.body45.i.for.inc85.i_crit_edge:                ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i

do.body75.i:                                      ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  call void @arm_heavy_mb() #10
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 4
  %60 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pe1.i, align 4
  %add.ptr81.i = getelementptr i8, ptr %59, i32 %61
  %add83.i = or i32 %mul.i, 8180
  %add.ptr84.i = getelementptr i8, ptr %add.ptr81.i, i32 %add83.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 33554432) #10, !srcloc !247
  br label %for.inc85.i

for.inc85.i:                                      ; preds = %do.body75.i, %do.body45.i.for.inc85.i_crit_edge
  %inc86.i = add nuw i32 %pe.0122.i, 1
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %config.i, align 4
  %cmp.i = icmp ult i32 %inc86.i, %63
  br i1 %cmp.i, label %for.inc85.i.do.body.i_crit_edge, label %for.inc85.i.eip197_init_firmware.exit_crit_edge

for.inc85.i.eip197_init_firmware.exit_crit_edge:  ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_init_firmware.exit

for.inc85.i.do.body.i_crit_edge:                  ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

eip197_init_firmware.exit:                        ; preds = %for.inc85.i.eip197_init_firmware.exit_crit_edge, %for.inc.1.eip197_init_firmware.exit_crit_edge
  %64 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fw, align 4
  %data1.i = getelementptr inbounds %struct.firmware, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data1.i, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp10.not.i = icmp ult i32 %69, 4
  br i1 %cmp10.not.i, label %eip197_init_firmware.exit.eip197_write_firmware.exit_crit_edge, label %eip197_init_firmware.exit.do.body.i146_crit_edge

eip197_init_firmware.exit.do.body.i146_crit_edge: ; preds = %eip197_init_firmware.exit
  br label %do.body.i146

eip197_init_firmware.exit.eip197_write_firmware.exit_crit_edge: ; preds = %eip197_init_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_write_firmware.exit

do.body.i146:                                     ; preds = %do.body.i146.do.body.i146_crit_edge, %eip197_init_firmware.exit.do.body.i146_crit_edge
  %i.011.i = phi i32 [ %inc.i144, %do.body.i146.do.body.i146_crit_edge ], [ 0, %eip197_init_firmware.exit.do.body.i146_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !362
  call void @arm_heavy_mb() #10
  %arrayidx.i = getelementptr i32, ptr %67, i32 %i.011.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #10
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 4
  %add.ptr.i141 = getelementptr i8, ptr %74, i32 917504
  %mul.i142 = shl i32 %i.011.i, 2
  %add.ptr2.i143 = getelementptr i8, ptr %add.ptr.i141, i32 %mul.i142
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i143, i32 %72) #10, !srcloc !247
  %inc.i144 = add nuw nsw i32 %i.011.i, 1
  %75 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %65, align 4
  %div8.i = lshr i32 %76, 2
  %cmp.i145 = icmp ult i32 %inc.i144, %div8.i
  br i1 %cmp.i145, label %do.body.i146.do.body.i146_crit_edge, label %for.end.loopexit.i

do.body.i146.do.body.i146_crit_edge:              ; preds = %do.body.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i146

for.end.loopexit.i:                               ; preds = %do.body.i146
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i = add nsw i32 %i.011.i, -1
  br label %eip197_write_firmware.exit

eip197_write_firmware.exit:                       ; preds = %for.end.loopexit.i, %eip197_init_firmware.exit.eip197_write_firmware.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ -2, %eip197_init_firmware.exit.eip197_write_firmware.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %77 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp30191.not = icmp eq i32 %78, 0
  br i1 %cmp30191.not, label %eip197_write_firmware.exit.for.end36_crit_edge, label %eip197_write_firmware.exit.do.body_crit_edge

eip197_write_firmware.exit.do.body_crit_edge:     ; preds = %eip197_write_firmware.exit
  br label %do.body

eip197_write_firmware.exit.for.end36_crit_edge:   ; preds = %eip197_write_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end36

do.body:                                          ; preds = %do.body.do.body_crit_edge, %eip197_write_firmware.exit.do.body_crit_edge
  %pe.0192 = phi i32 [ %inc35, %do.body.do.body_crit_edge ], [ 0, %eip197_write_firmware.exit.do.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !363
  call void @arm_heavy_mb() #10
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 4
  %81 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pe1.i, align 4
  %add.ptr = getelementptr i8, ptr %80, i32 %82
  %mul = shl i32 %pe.0192, 13
  %add = or i32 %mul, 4080
  %add.ptr33 = getelementptr i8, ptr %add.ptr, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 16777216) #10, !srcloc !247
  %inc35 = add nuw i32 %pe.0192, 1
  %83 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %config.i, align 4
  %cmp30 = icmp ult i32 %inc35, %84
  br i1 %cmp30, label %do.body.do.body_crit_edge, label %do.body.for.end36_crit_edge

do.body.for.end36_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end36

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end36:                                        ; preds = %do.body.for.end36_crit_edge, %eip197_write_firmware.exit.for.end36_crit_edge
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %data1.i147 = getelementptr inbounds %struct.firmware, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %data1.i147 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data1.i147, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp10.not.i148 = icmp ult i32 %90, 4
  br i1 %cmp10.not.i148, label %for.end36.eip197_write_firmware.exit161_crit_edge, label %for.end36.do.body.i157_crit_edge

for.end36.do.body.i157_crit_edge:                 ; preds = %for.end36
  br label %do.body.i157

for.end36.eip197_write_firmware.exit161_crit_edge: ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_write_firmware.exit161

do.body.i157:                                     ; preds = %do.body.i157.do.body.i157_crit_edge, %for.end36.do.body.i157_crit_edge
  %i.011.i149 = phi i32 [ %inc.i154, %do.body.i157.do.body.i157_crit_edge ], [ 0, %for.end36.do.body.i157_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !362
  call void @arm_heavy_mb() #10
  %arrayidx.i150 = getelementptr i32, ptr %88, i32 %i.011.i149
  %91 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i150, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92) #10
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 4
  %add.ptr.i151 = getelementptr i8, ptr %95, i32 917504
  %mul.i152 = shl i32 %i.011.i149, 2
  %add.ptr2.i153 = getelementptr i8, ptr %add.ptr.i151, i32 %mul.i152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i153, i32 %93) #10, !srcloc !247
  %inc.i154 = add nuw nsw i32 %i.011.i149, 1
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %86, align 4
  %div8.i155 = lshr i32 %97, 2
  %cmp.i156 = icmp ult i32 %inc.i154, %div8.i155
  br i1 %cmp.i156, label %do.body.i157.do.body.i157_crit_edge, label %for.end.loopexit.i159

do.body.i157.do.body.i157_crit_edge:              ; preds = %do.body.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i157

for.end.loopexit.i159:                            ; preds = %do.body.i157
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i158 = add nsw i32 %i.011.i149, -1
  br label %eip197_write_firmware.exit161

eip197_write_firmware.exit161:                    ; preds = %for.end.loopexit.i159, %for.end36.eip197_write_firmware.exit161_crit_edge
  %i.0.lcssa.i160 = phi i32 [ -2, %for.end36.eip197_write_firmware.exit161_crit_edge ], [ %phi.bo.i158, %for.end.loopexit.i159 ]
  %98 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp55.not.i = icmp eq i32 %99, 0
  br i1 %cmp55.not.i, label %eip197_write_firmware.exit161.for.end.i_crit_edge, label %do.body.lr.ph.i167

eip197_write_firmware.exit161.for.end.i_crit_edge: ; preds = %eip197_write_firmware.exit161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.body.lr.ph.i167:                               ; preds = %eip197_write_firmware.exit161
  %sub.i = shl i32 %i.0.lcssa.i, 16
  %and.i165 = add i32 %sub.i, 2147418112
  %shl.i166 = and i32 %and.i165, 2146435072
  %or.i = or i32 %shl.i166, 8
  %val.0.i = select i1 %tobool59.not, i32 %or.i, i32 0
  %100 = call i32 @llvm.bswap.i32(i32 %val.0.i) #10
  %sub16.i = shl i32 %i.0.lcssa.i160, 16
  %and17.i = add i32 %sub16.i, 2147418112
  %shl18.i = and i32 %and17.i, 2146435072
  %or19.i = or i32 %shl18.i, 8
  %val.1.i = select i1 %tobool59.not, i32 %or19.i, i32 0
  %101 = call i32 @llvm.bswap.i32(i32 %val.1.i) #10
  br label %do.body.i179

do.body.i179:                                     ; preds = %do.body.i179.do.body.i179_crit_edge, %do.body.lr.ph.i167
  %pe.056.i = phi i32 [ 0, %do.body.lr.ph.i167 ], [ %inc.i177, %do.body.i179.do.body.i179_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  call void @arm_heavy_mb() #10
  %102 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv, align 4
  %104 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pe1.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %103, i32 %105
  %mul.i169 = shl i32 %pe.056.i, 13
  %add.i170 = or i32 %mul.i169, 4080
  %add.ptr2.i171 = getelementptr i8, ptr %add.ptr.i168, i32 %add.i170
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i171, i32 0) #10, !srcloc !247
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  call void @arm_heavy_mb() #10
  %106 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv, align 4
  %108 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pe1.i, align 4
  %add.ptr9.i172 = getelementptr i8, ptr %107, i32 %109
  %add11.i173 = or i32 %mul.i169, 3456
  %add.ptr12.i174 = getelementptr i8, ptr %add.ptr9.i172, i32 %add11.i173
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i174, i32 %100) #10, !srcloc !247
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !366
  call void @arm_heavy_mb() #10
  %110 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %priv, align 4
  %112 = ptrtoint ptr %pe1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pe1.i, align 4
  %add.ptr27.i175 = getelementptr i8, ptr %111, i32 %113
  %add29.i = or i32 %mul.i169, 3200
  %add.ptr30.i176 = getelementptr i8, ptr %add.ptr27.i175, i32 %add29.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i176, i32 %101) #10, !srcloc !247
  %inc.i177 = add nuw i32 %pe.056.i, 1
  %114 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %config.i, align 4
  %cmp.i178 = icmp ult i32 %inc.i177, %115
  br i1 %cmp.i178, label %do.body.i179.do.body.i179_crit_edge, label %do.body.i179.for.end.i_crit_edge

do.body.i179.for.end.i_crit_edge:                 ; preds = %do.body.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.body.i179.do.body.i179_crit_edge:              ; preds = %do.body.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i179

for.end.i:                                        ; preds = %do.body.i179.for.end.i_crit_edge, %eip197_write_firmware.exit161.for.end.i_crit_edge
  br i1 %tobool59.not, label %if.end33.i, label %for.end.i.do.body41_crit_edge

for.end.i.do.body41_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41

if.end33.i:                                       ; preds = %for.end.i
  %call.i = call fastcc zeroext i1 @poll_fw_ready(ptr noundef %priv, i32 noundef 1) #10
  br i1 %call.i, label %eip197_start_firmware.exit, label %if.end33.i.for.body54_crit_edge

if.end33.i.for.body54_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

eip197_start_firmware.exit:                       ; preds = %if.end33.i
  %call36.i = call fastcc zeroext i1 @poll_fw_ready(ptr noundef %priv, i32 noundef 0) #10
  br i1 %call36.i, label %eip197_start_firmware.exit.do.body41_crit_edge, label %eip197_start_firmware.exit.for.body54_crit_edge

eip197_start_firmware.exit.for.body54_crit_edge:  ; preds = %eip197_start_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

eip197_start_firmware.exit.do.body41_crit_edge:   ; preds = %eip197_start_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41

do.body41:                                        ; preds = %eip197_start_firmware.exit.do.body41_crit_edge, %for.end.i.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eip197_load_firmwares.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@eip197_load_firmwares, %if.then46)) #10
          to label %cleanup [label %if.then46], !srcloc !274

if.then46:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eip197_load_firmwares.__UNIQUE_ID_ddebug246, ptr noundef %117, ptr noundef nonnull @.str.94) #10
  br label %cleanup

for.body54:                                       ; preds = %eip197_start_firmware.exit.for.body54_crit_edge, %if.end33.i.for.body54_crit_edge, %if.end18.1.for.body54_crit_edge, %lor.lhs.false14.1.for.body54_crit_edge, %if.then12.1.for.body54_crit_edge
  %exitcond.not = phi i1 [ false, %eip197_start_firmware.exit.for.body54_crit_edge ], [ false, %if.end33.i.for.body54_crit_edge ], [ true, %if.then12.1.for.body54_crit_edge ], [ true, %lor.lhs.false14.1.for.body54_crit_edge ], [ true, %if.end18.1.for.body54_crit_edge ]
  %ret.0.ph = phi i32 [ -19, %eip197_start_firmware.exit.for.body54_crit_edge ], [ -19, %if.end33.i.for.body54_crit_edge ], [ %call11.1, %if.then12.1.for.body54_crit_edge ], [ %call11.1, %lor.lhs.false14.1.for.body54_crit_edge ], [ %call22.1, %if.end18.1.for.body54_crit_edge ]
  %118 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %119) #10
  br i1 %exitcond.not, label %for.body54.for.end58_crit_edge, label %for.body54.1

for.body54.for.end58_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end58

for.body54.1:                                     ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx55.1, align 4
  call void @release_firmware(ptr noundef %121) #10
  br label %for.end58

for.end58:                                        ; preds = %for.body54.1, %for.body54.for.end58_crit_edge
  br i1 %tobool59.not, label %for.end58.do.body61_crit_edge, label %for.end58.do.body79_crit_edge

for.end58.do.body79_crit_edge:                    ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79

for.end58.do.body61_crit_edge:                    ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

do.body61:                                        ; preds = %for.end58.do.body61_crit_edge, %if.end18.do.body61_crit_edge, %lor.lhs.false14.do.body61_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eip197_load_firmwares.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@eip197_load_firmwares, %if.then73)) #10
          to label %retry_fw [label %if.then73], !srcloc !274

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eip197_load_firmwares.__UNIQUE_ID_ddebug247, ptr noundef %123, ptr noundef nonnull @.str.95) #10
  br label %retry_fw

do.body79:                                        ; preds = %for.end58.do.body79_crit_edge, %if.then12.do.body79_crit_edge
  %ret.0201205 = phi i32 [ %ret.0.ph, %for.end58.do.body79_crit_edge ], [ %call11, %if.then12.do.body79_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eip197_load_firmwares.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@eip197_load_firmwares, %if.then91)) #10
          to label %cleanup [label %if.then91], !srcloc !274

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eip197_load_firmwares.__UNIQUE_ID_ddebug248, ptr noundef %125, ptr noundef nonnull @.str.97) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %do.body79, %if.then46, %do.body41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then46 ], [ %ret.0201205, %if.then91 ], [ 0, %do.body41 ], [ %ret.0201205, %do.body79 ]
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %fw_path) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eip197_trc_cache_probe(ptr nocapture noundef readonly %priv, i32 noundef %maxbanks, i32 noundef %probemask, i32 noundef %stride) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %maxbanks, 16
  %shl = shl nuw i32 1, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %stride)
  %cmp276 = icmp ugt i32 %shl, %stride
  br i1 %cmp276, label %while.body.preheader, label %entry.while.end28_crit_edge

entry.while.end28_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end28

while.body.preheader:                             ; preds = %entry
  %sub = add i32 %maxbanks, -1
  %sub.lobit = ashr i32 %sub, 31
  br label %while.body

while.body:                                       ; preds = %eip197_trc_cache_banksel.exit70.while.body_crit_edge, %while.body.preheader
  %addrhi.079 = phi i32 [ %addrhi.0.shr, %eip197_trc_cache_banksel.exit70.while.body_crit_edge ], [ %shl, %while.body.preheader ]
  %addrlo.078 = phi i32 [ %shr.addrlo.0, %eip197_trc_cache_banksel.exit70.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %actbank.077 = phi i32 [ %shr.i, %eip197_trc_cache_banksel.exit70.while.body_crit_edge ], [ %sub.lobit, %while.body.preheader ]
  %add3 = add i32 %addrhi.079, %addrlo.078
  %shr = lshr i32 %add3, 1
  %xor = xor i32 %shr, -1414677826
  %and = and i32 %xor, %probemask
  %shr.i = lshr i32 %add3, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %actbank.077)
  %cmp.not.i = icmp eq i32 %shr.i, %actbank.077
  br i1 %cmp.not.i, label %while.body.eip197_trc_cache_banksel.exit_crit_edge, label %if.then.i

while.body.eip197_trc_cache_banksel.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_trc_cache_banksel.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1015792
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  %3 = and i32 %2, -7340033
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  %shl.i = shl nuw nsw i32 %shr.i, 12
  %or.i = or i32 %4, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 1015792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %5) #10, !srcloc !247
  br label %eip197_trc_cache_banksel.exit

eip197_trc_cache_banksel.exit:                    ; preds = %if.then.i, %while.body.eip197_trc_cache_banksel.exit_crit_edge
  %actbank.1 = phi i32 [ %actbank.077, %while.body.eip197_trc_cache_banksel.exit_crit_edge ], [ %shr.i, %if.then.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 917504
  %and4 = and i32 %shr, 65535
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %and4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #10, !srcloc !247
  %11 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 false) #10, !range !328
  %shl6 = lshr i32 -2147483648, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6, i32 %stride)
  %cmp8.not73 = icmp ult i32 %shl6, %stride
  br i1 %cmp8.not73, label %eip197_trc_cache_banksel.exit.while.end_crit_edge, label %while.body9.lr.ph

eip197_trc_cache_banksel.exit.while.end_crit_edge: ; preds = %eip197_trc_cache_banksel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body9.lr.ph:                                ; preds = %eip197_trc_cache_banksel.exit
  %neg = xor i32 %and, -1
  %12 = tail call i32 @llvm.bswap.i32(i32 %neg)
  br label %while.body9

while.body9:                                      ; preds = %eip197_trc_cache_banksel.exit62.while.body9_crit_edge, %while.body9.lr.ph
  %delta.075 = phi i32 [ %shl6, %while.body9.lr.ph ], [ %shr18, %eip197_trc_cache_banksel.exit62.while.body9_crit_edge ]
  %actbank.274 = phi i32 [ %actbank.1, %while.body9.lr.ph ], [ %actbank.3, %eip197_trc_cache_banksel.exit62.while.body9_crit_edge ]
  %sub10 = sub i32 %shr, %delta.075
  %shr.i55 = lshr i32 %sub10, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i55, i32 %actbank.274)
  %cmp.not.i56 = icmp eq i32 %shr.i55, %actbank.274
  br i1 %cmp.not.i56, label %while.body9.eip197_trc_cache_banksel.exit62_crit_edge, label %if.then.i61

while.body9.eip197_trc_cache_banksel.exit62_crit_edge: ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_trc_cache_banksel.exit62

if.then.i61:                                      ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %add.ptr.i57 = getelementptr i8, ptr %14, i32 1015792
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  %16 = and i32 %15, -7340033
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %shl.i58 = shl nuw nsw i32 %shr.i55, 12
  %or.i59 = or i32 %17, %shl.i58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  tail call void @arm_heavy_mb() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i59) #10
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %add.ptr3.i60 = getelementptr i8, ptr %20, i32 1015792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i60, i32 %18) #10, !srcloc !247
  br label %eip197_trc_cache_banksel.exit62

eip197_trc_cache_banksel.exit62:                  ; preds = %if.then.i61, %while.body9.eip197_trc_cache_banksel.exit62_crit_edge
  %actbank.3 = phi i32 [ %actbank.274, %while.body9.eip197_trc_cache_banksel.exit62_crit_edge ], [ %shr.i55, %if.then.i61 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %add.ptr15 = getelementptr i8, ptr %22, i32 917504
  %and16 = and i32 %sub10, 65535
  %add.ptr17 = getelementptr i8, ptr %add.ptr15, i32 %and16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %12) #10, !srcloc !247
  %shr18 = lshr i32 %delta.075, 1
  %cmp8.not = icmp ult i32 %shr18, %stride
  br i1 %cmp8.not, label %eip197_trc_cache_banksel.exit62.while.end_crit_edge, label %eip197_trc_cache_banksel.exit62.while.body9_crit_edge

eip197_trc_cache_banksel.exit62.while.body9_crit_edge: ; preds = %eip197_trc_cache_banksel.exit62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body9

eip197_trc_cache_banksel.exit62.while.end_crit_edge: ; preds = %eip197_trc_cache_banksel.exit62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %eip197_trc_cache_banksel.exit62.while.end_crit_edge, %eip197_trc_cache_banksel.exit.while.end_crit_edge
  %actbank.2.lcssa = phi i32 [ %actbank.1, %eip197_trc_cache_banksel.exit.while.end_crit_edge ], [ %actbank.3, %eip197_trc_cache_banksel.exit62.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %actbank.2.lcssa)
  %cmp.not.i64 = icmp eq i32 %shr.i, %actbank.2.lcssa
  br i1 %cmp.not.i64, label %while.end.eip197_trc_cache_banksel.exit70_crit_edge, label %if.then.i69

while.end.eip197_trc_cache_banksel.exit70_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %eip197_trc_cache_banksel.exit70

if.then.i69:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %add.ptr.i65 = getelementptr i8, ptr %24, i32 1015792
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  %26 = and i32 %25, -7340033
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  %shl.i66 = shl nuw nsw i32 %shr.i, 12
  %or.i67 = or i32 %27, %shl.i66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i67) #10
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  %add.ptr3.i68 = getelementptr i8, ptr %30, i32 1015792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i68, i32 %28) #10, !srcloc !247
  br label %eip197_trc_cache_banksel.exit70

eip197_trc_cache_banksel.exit70:                  ; preds = %if.then.i69, %while.end.eip197_trc_cache_banksel.exit70_crit_edge
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  %add.ptr20 = getelementptr i8, ptr %32, i32 917504
  %add.ptr22 = getelementptr i8, ptr %add.ptr20, i32 %and4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #10, !srcloc !251
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  %and26 = and i32 %34, %probemask
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %and)
  %cmp27 = icmp eq i32 %and26, %and
  %shr.addrlo.0 = select i1 %cmp27, i32 %shr, i32 %addrlo.078
  %addrhi.0.shr = select i1 %cmp27, i32 %addrhi.079, i32 %shr
  %sub1 = sub i32 %addrhi.0.shr, %shr.addrlo.0
  %cmp2 = icmp ugt i32 %sub1, %stride
  br i1 %cmp2, label %eip197_trc_cache_banksel.exit70.while.body_crit_edge, label %eip197_trc_cache_banksel.exit70.while.end28_crit_edge

eip197_trc_cache_banksel.exit70.while.end28_crit_edge: ; preds = %eip197_trc_cache_banksel.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end28

eip197_trc_cache_banksel.exit70.while.body_crit_edge: ; preds = %eip197_trc_cache_banksel.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end28:                                      ; preds = %eip197_trc_cache_banksel.exit70.while.end28_crit_edge, %entry.while.end28_crit_edge
  %addrhi.0.lcssa = phi i32 [ %shl, %entry.while.end28_crit_edge ], [ %addrhi.0.shr, %eip197_trc_cache_banksel.exit70.while.end28_crit_edge ]
  ret i32 %addrhi.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @poll_fw_ready(ptr nocapture noundef readonly %priv, i32 noundef %fpp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fpp)
  %tobool.not = icmp eq i32 %fpp, 0
  %. = select i1 %tobool.not, i32 20, i32 24
  %config = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26.not = icmp eq i32 %1, 0
  br i1 %cmp26.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pe3 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pe.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %pe.027, 13
  %add = or i32 %mul, 2048
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pe3, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %.
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %5
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp6.not = icmp eq i32 %6, 16777216
  br i1 %cmp6.not, label %for.body.for.inc_crit_edge, label %while.cond

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond:                                       ; preds = %for.body
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %9 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pe3, align 4
  %add.ptr.1 = getelementptr i8, ptr %8, i32 %.
  %add.ptr4.1 = getelementptr i8, ptr %add.ptr.1, i32 %10
  %add.ptr5.1 = getelementptr i8, ptr %add.ptr4.1, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.1) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %11)
  %cmp6.not.1 = icmp eq i32 %11, 16777216
  br i1 %cmp6.not.1, label %while.cond.for.inc_crit_edge, label %while.cond.1

while.cond.for.inc_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.1:                                     ; preds = %while.cond
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %14 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pe3, align 4
  %add.ptr.2 = getelementptr i8, ptr %13, i32 %.
  %add.ptr4.2 = getelementptr i8, ptr %add.ptr.2, i32 %15
  %add.ptr5.2 = getelementptr i8, ptr %add.ptr4.2, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.2) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %16)
  %cmp6.not.2 = icmp eq i32 %16, 16777216
  br i1 %cmp6.not.2, label %while.cond.1.for.inc_crit_edge, label %while.cond.2

while.cond.1.for.inc_crit_edge:                   ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.2:                                     ; preds = %while.cond.1
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %19 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pe3, align 4
  %add.ptr.3 = getelementptr i8, ptr %18, i32 %.
  %add.ptr4.3 = getelementptr i8, ptr %add.ptr.3, i32 %20
  %add.ptr5.3 = getelementptr i8, ptr %add.ptr4.3, i32 %add
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.3) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %21)
  %cmp6.not.3 = icmp eq i32 %21, 16777216
  br i1 %cmp6.not.3, label %while.cond.2.for.inc_crit_edge, label %while.cond.3

while.cond.2.for.inc_crit_edge:                   ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.3:                                     ; preds = %while.cond.2
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %24 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pe3, align 4
  %add.ptr.4 = getelementptr i8, ptr %23, i32 %.
  %add.ptr4.4 = getelementptr i8, ptr %add.ptr.4, i32 %25
  %add.ptr5.4 = getelementptr i8, ptr %add.ptr4.4, i32 %add
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.4) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %26)
  %cmp6.not.4 = icmp eq i32 %26, 16777216
  br i1 %cmp6.not.4, label %while.cond.3.for.inc_crit_edge, label %while.cond.4

while.cond.3.for.inc_crit_edge:                   ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.4:                                     ; preds = %while.cond.3
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  %29 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pe3, align 4
  %add.ptr.5 = getelementptr i8, ptr %28, i32 %.
  %add.ptr4.5 = getelementptr i8, ptr %add.ptr.5, i32 %30
  %add.ptr5.5 = getelementptr i8, ptr %add.ptr4.5, i32 %add
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.5) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %31)
  %cmp6.not.5 = icmp eq i32 %31, 16777216
  br i1 %cmp6.not.5, label %while.cond.4.for.inc_crit_edge, label %while.cond.5

while.cond.4.for.inc_crit_edge:                   ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.5:                                     ; preds = %while.cond.4
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %34 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pe3, align 4
  %add.ptr.6 = getelementptr i8, ptr %33, i32 %.
  %add.ptr4.6 = getelementptr i8, ptr %add.ptr.6, i32 %35
  %add.ptr5.6 = getelementptr i8, ptr %add.ptr4.6, i32 %add
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.6) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %36)
  %cmp6.not.6 = icmp eq i32 %36, 16777216
  br i1 %cmp6.not.6, label %while.cond.5.for.inc_crit_edge, label %while.cond.6

while.cond.5.for.inc_crit_edge:                   ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.6:                                     ; preds = %while.cond.5
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 4
  %39 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pe3, align 4
  %add.ptr.7 = getelementptr i8, ptr %38, i32 %.
  %add.ptr4.7 = getelementptr i8, ptr %add.ptr.7, i32 %40
  %add.ptr5.7 = getelementptr i8, ptr %add.ptr4.7, i32 %add
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.7) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %41)
  %cmp6.not.7 = icmp eq i32 %41, 16777216
  br i1 %cmp6.not.7, label %while.cond.6.for.inc_crit_edge, label %while.cond.7

while.cond.6.for.inc_crit_edge:                   ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.7:                                     ; preds = %while.cond.6
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 4
  %44 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pe3, align 4
  %add.ptr.8 = getelementptr i8, ptr %43, i32 %.
  %add.ptr4.8 = getelementptr i8, ptr %add.ptr.8, i32 %45
  %add.ptr5.8 = getelementptr i8, ptr %add.ptr4.8, i32 %add
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.8) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %46)
  %cmp6.not.8 = icmp eq i32 %46, 16777216
  br i1 %cmp6.not.8, label %while.cond.7.for.inc_crit_edge, label %while.cond.8

while.cond.7.for.inc_crit_edge:                   ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.8:                                     ; preds = %while.cond.7
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 4
  %49 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pe3, align 4
  %add.ptr.9 = getelementptr i8, ptr %48, i32 %.
  %add.ptr4.9 = getelementptr i8, ptr %add.ptr.9, i32 %50
  %add.ptr5.9 = getelementptr i8, ptr %add.ptr4.9, i32 %add
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.9) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %51)
  %cmp6.not.9 = icmp eq i32 %51, 16777216
  br i1 %cmp6.not.9, label %while.cond.8.for.inc_crit_edge, label %while.cond.9

while.cond.8.for.inc_crit_edge:                   ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.9:                                     ; preds = %while.cond.8
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 4
  %54 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pe3, align 4
  %add.ptr.10 = getelementptr i8, ptr %53, i32 %.
  %add.ptr4.10 = getelementptr i8, ptr %add.ptr.10, i32 %55
  %add.ptr5.10 = getelementptr i8, ptr %add.ptr4.10, i32 %add
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.10) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %56)
  %cmp6.not.10 = icmp eq i32 %56, 16777216
  br i1 %cmp6.not.10, label %while.cond.9.for.inc_crit_edge, label %while.cond.10

while.cond.9.for.inc_crit_edge:                   ; preds = %while.cond.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.10:                                    ; preds = %while.cond.9
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 4
  %59 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pe3, align 4
  %add.ptr.11 = getelementptr i8, ptr %58, i32 %.
  %add.ptr4.11 = getelementptr i8, ptr %add.ptr.11, i32 %60
  %add.ptr5.11 = getelementptr i8, ptr %add.ptr4.11, i32 %add
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.11) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %61)
  %cmp6.not.11 = icmp eq i32 %61, 16777216
  br i1 %cmp6.not.11, label %while.cond.10.for.inc_crit_edge, label %while.cond.11

while.cond.10.for.inc_crit_edge:                  ; preds = %while.cond.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.11:                                    ; preds = %while.cond.10
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 4
  %64 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pe3, align 4
  %add.ptr.12 = getelementptr i8, ptr %63, i32 %.
  %add.ptr4.12 = getelementptr i8, ptr %add.ptr.12, i32 %65
  %add.ptr5.12 = getelementptr i8, ptr %add.ptr4.12, i32 %add
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.12) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %66)
  %cmp6.not.12 = icmp eq i32 %66, 16777216
  br i1 %cmp6.not.12, label %while.cond.11.for.inc_crit_edge, label %while.cond.12

while.cond.11.for.inc_crit_edge:                  ; preds = %while.cond.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.12:                                    ; preds = %while.cond.11
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv, align 4
  %69 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pe3, align 4
  %add.ptr.13 = getelementptr i8, ptr %68, i32 %.
  %add.ptr4.13 = getelementptr i8, ptr %add.ptr.13, i32 %70
  %add.ptr5.13 = getelementptr i8, ptr %add.ptr4.13, i32 %add
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.13) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %71)
  %cmp6.not.13 = icmp eq i32 %71, 16777216
  br i1 %cmp6.not.13, label %while.cond.12.for.inc_crit_edge, label %while.cond.13

while.cond.12.for.inc_crit_edge:                  ; preds = %while.cond.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.13:                                    ; preds = %while.cond.12
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 4
  %74 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pe3, align 4
  %add.ptr.14 = getelementptr i8, ptr %73, i32 %.
  %add.ptr4.14 = getelementptr i8, ptr %add.ptr.14, i32 %75
  %add.ptr5.14 = getelementptr i8, ptr %add.ptr4.14, i32 %add
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.14) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %76)
  %cmp6.not.14 = icmp eq i32 %76, 16777216
  br i1 %cmp6.not.14, label %while.cond.13.for.inc_crit_edge, label %while.cond.14

while.cond.13.for.inc_crit_edge:                  ; preds = %while.cond.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.14:                                    ; preds = %while.cond.13
  %77 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv, align 4
  %79 = ptrtoint ptr %pe3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pe3, align 4
  %add.ptr.15 = getelementptr i8, ptr %78, i32 %.
  %add.ptr4.15 = getelementptr i8, ptr %add.ptr.15, i32 %80
  %add.ptr5.15 = getelementptr i8, ptr %add.ptr4.15, i32 %add
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.15) #10, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %81)
  %cmp6.not.15 = icmp eq i32 %81, 16777216
  br i1 %cmp6.not.15, label %while.cond.14.for.inc_crit_edge, label %while.cond.15

while.cond.14.for.inc_crit_edge:                  ; preds = %while.cond.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.15:                                    ; preds = %while.cond.14
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.98, i32 noundef %fpp, i32 noundef %pe.027) #13
  br label %cleanup

for.inc:                                          ; preds = %while.cond.14.for.inc_crit_edge, %while.cond.13.for.inc_crit_edge, %while.cond.12.for.inc_crit_edge, %while.cond.11.for.inc_crit_edge, %while.cond.10.for.inc_crit_edge, %while.cond.9.for.inc_crit_edge, %while.cond.8.for.inc_crit_edge, %while.cond.7.for.inc_crit_edge, %while.cond.6.for.inc_crit_edge, %while.cond.5.for.inc_crit_edge, %while.cond.4.for.inc_crit_edge, %while.cond.3.for.inc_crit_edge, %while.cond.2.for.inc_crit_edge, %while.cond.1.for.inc_crit_edge, %while.cond.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %pe.027, 1
  %84 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %config, align 4
  %cmp = icmp ult i32 %inc, %85
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.cond.15, %entry.cleanup_crit_edge
  %cmp23 = phi i1 [ false, %while.cond.15 ], [ true, %entry.cleanup_crit_edge ], [ true, %for.inc.cleanup_crit_edge ]
  ret i1 %cmp23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @safexcel_hw_reset_rings(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rings = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp75.not = icmp eq i32 %1, 0
  br i1 %cmp75.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %hia_aic_xdr = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 6, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.076 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !372
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 60
  %mul = shl i32 %i.076, 12
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %5
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 1056964608) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !373
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %8 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 2108
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 %9
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -16777216) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %12 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr20 = getelementptr i8, ptr %11, i32 %13
  %add.ptr22 = getelementptr i8, ptr %add.ptr20, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !375
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %16 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr30 = getelementptr i8, ptr %15, i32 4
  %add.ptr32 = getelementptr i8, ptr %add.ptr30, i32 %17
  %add.ptr33 = getelementptr i8, ptr %add.ptr32, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %20 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr40 = getelementptr i8, ptr %19, i32 2048
  %add.ptr42 = getelementptr i8, ptr %add.ptr40, i32 %21
  %add.ptr43 = getelementptr i8, ptr %add.ptr42, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %24 = ptrtoint ptr %hia_aic_xdr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hia_aic_xdr, align 4
  %add.ptr53 = getelementptr i8, ptr %23, i32 2052
  %add.ptr54 = getelementptr i8, ptr %add.ptr53, i32 %25
  %add.ptr55 = getelementptr i8, ptr %add.ptr54, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #10, !srcloc !247
  %inc = add nuw i32 %i.076, 1
  %26 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rings, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @safexcel_pci_probe.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@safexcel_pci_probe, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !274

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ent, align 4
  %device = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %subvendor = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 2
  %4 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %subvendor, align 4
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 3
  %6 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subdevice, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @safexcel_pci_probe.__UNIQUE_ID_ddebug260, ptr noundef %dev1, ptr noundef nonnull @.str.103, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 168) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %dev8 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %dev8, align 4
  %driver_data9 = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %12 = ptrtoint ptr %driver_data9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data9, align 4
  %version = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %version, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.104) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call17 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str.80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #10
  %16 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call24, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %call7.i.i, align 8
  %19 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp = icmp eq i32 %20, 3
  br i1 %cmp, label %do.body27, label %if.end23.if.end113_crit_edge

if.end23.if.end113_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

do.body27:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @safexcel_pci_probe.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@safexcel_pci_probe, %if.then39)) #10
          to label %do.end42 [label %if.then39], !srcloc !274

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @safexcel_pci_probe.__UNIQUE_ID_ddebug261, ptr noundef %dev1, ptr noundef nonnull @.str.108) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27
  %call43 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull @.str.80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end49, label %do.end48

do.end48:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.110) #13
  br label %cleanup

if.end49:                                         ; preds = %do.end42
  %call50 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #10
  %arrayidx51 = getelementptr ptr, ptr %call50, i32 2
  %21 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx51, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 8192
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !251
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  %shr.mask = and i32 %24, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 532807680, i32 %shr.mask)
  %cmp55 = icmp eq i32 %shr.mask, 532807680
  br i1 %cmp55, label %do.body57, label %do.end95

do.body57:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @safexcel_pci_probe.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@safexcel_pci_probe, %if.then69)) #10
          to label %do.body73 [label %if.then69], !srcloc !274

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %24, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @safexcel_pci_probe.__UNIQUE_ID_ddebug262, ptr noundef %dev1, ptr noundef nonnull @.str.112, i32 noundef %and) #10
  br label %do.body73

do.body73:                                        ; preds = %if.then69, %do.body57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !379
  tail call void @arm_heavy_mb() #10
  %add.ptr76 = getelementptr i8, ptr %22, i32 8320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 66051) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  tail call void @arm_heavy_mb() #10
  %add.ptr80 = getelementptr i8, ptr %22, i32 8324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 67438087) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  tail call void @arm_heavy_mb() #10
  %add.ptr84 = getelementptr i8, ptr %22, i32 8328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 134810123) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !382
  tail call void @arm_heavy_mb() #10
  %add.ptr88 = getelementptr i8, ptr %22, i32 8332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 202182159) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !383
  tail call void @arm_heavy_mb() #10
  %add.ptr92 = getelementptr i8, ptr %22, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 -1) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %add.ptr101 = getelementptr i8, ptr %26, i32 2097152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 16777216) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !385
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !386
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %add.ptr109 = getelementptr i8, ptr %28, i32 2097152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !387
  tail call void @arm_heavy_mb() #10
  br label %if.end113

do.end95:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.114, i32 noundef %24) #13
  br label %cleanup

if.end113:                                        ; preds = %do.body73, %if.end23.if.end113_crit_edge
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %call114 = tail call fastcc i32 @safexcel_probe_generic(ptr noundef %pdev, ptr noundef nonnull %call7.i.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %do.end95, %do.end48, %do.end22, %do.end15, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %call17, %do.end22 ], [ %call43, %do.end48 ], [ %call114, %if.end113 ], [ -19, %do.end95 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_pci_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwconfig.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [73 x ptr], ptr @safexcel_algs, i32 0, i32 %i.027.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %algo_mask.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %algo_mask.i, align 8
  %6 = ptrtoint ptr %hwconfig.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwconfig.i, align 4
  %and.i = and i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp3.not.i = icmp eq i32 %and.i, %5
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %type.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %9, label %if.else14.i [
    i32 0, label %if.then6.i
    i32 1, label %if.then11.i
  ]

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %alg.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 4
  tail call void @crypto_unregister_skcipher(ptr noundef %alg.i) #10
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %alg13.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 4
  tail call void @crypto_unregister_aead(ptr noundef %alg13.i) #10
  br label %for.inc.i

if.else14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %alg16.i = getelementptr inbounds %struct.safexcel_alg_template, ptr %3, i32 0, i32 4
  tail call void @crypto_unregister_ahash(ptr noundef %alg16.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else14.i, %if.then11.i, %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 73
  br i1 %exitcond.not.i, label %for.cond.preheader, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.preheader:                               ; preds = %for.inc.i
  %rings = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.not = icmp eq i32 %12, 0
  br i1 %cmp6.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ring = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring, align 4
  %workqueue = getelementptr %struct.safexcel_ring, ptr %14, i32 %i.07, i32 1
  %15 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %16) #10
  %inc = add nuw i32 %i.07, 1
  %17 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rings, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call fastcc void @safexcel_hw_reset_rings(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !120, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !173, !175, !177, !179, !181, !182, !183, !185, !186, !188, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !205, !207, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !228, !230, !231, !233, !234}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @__param_max_rings, !1, !"__param_max_rings", i1 false, i1 false}
!1 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_max_ringstype236, !1, !"__UNIQUE_ID_max_ringstype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_max_rings237, !4, !"__UNIQUE_ID_max_rings237", i1 false, i1 false}
!4 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 29, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 903, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @safexcel_rdesc_check_errors._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @safexcel_rdesc_check_errors._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 906, i32 3}
!15 = !{ptr @safexcel_rdesc_check_errors._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @safexcel_rdesc_check_errors._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 910, i32 3}
!19 = !{ptr @safexcel_rdesc_check_errors._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @safexcel_rdesc_check_errors._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 958, i32 4}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @safexcel_complete._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @safexcel_complete._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__initcall__kmod_crypto_safexcel__263_1991_safexcel_init6, !27, !"__initcall__kmod_crypto_safexcel__263_1991_safexcel_init6", i1 false, i1 false}
!27 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1991, i32 1}
!28 = !{ptr @__exitcall_safexcel_exit, !29, !"__exitcall_safexcel_exit", i1 false, i1 false}
!29 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1992, i32 1}
!30 = !{ptr @__UNIQUE_ID_author264, !31, !"__UNIQUE_ID_author264", i1 false, i1 false}
!31 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1994, i32 1}
!32 = !{ptr @__UNIQUE_ID_author265, !33, !"__UNIQUE_ID_author265", i1 false, i1 false}
!33 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1995, i32 1}
!34 = !{ptr @__UNIQUE_ID_author266, !35, !"__UNIQUE_ID_author266", i1 false, i1 false}
!35 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1996, i32 1}
!36 = !{ptr @__UNIQUE_ID_description267, !37, !"__UNIQUE_ID_description267", i1 false, i1 false}
!37 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1997, i32 1}
!38 = !{ptr @__UNIQUE_ID_file268, !39, !"__UNIQUE_ID_file268", i1 false, i1 false}
!39 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1998, i32 1}
!40 = !{ptr @__UNIQUE_ID_license269, !39, !"__UNIQUE_ID_license269", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_import_ns270, !42, !"__UNIQUE_ID_import_ns270", i1 false, i1 false}
!42 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1999, i32 1}
!43 = !{ptr @__param_str_max_rings, !1, !"__param_str_max_rings", i1 false, i1 false}
!44 = !{ptr @max_rings, !45, !"max_rings", i1 false, i1 false}
!45 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 27, i32 12}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1838, i32 11}
!48 = !{ptr @crypto_safexcel, !49, !"crypto_safexcel", i1 false, i1 false}
!49 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1834, i32 32}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1740, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @safexcel_probe._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @safexcel_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1753, i32 4}
!57 = !{ptr @safexcel_probe._entry.16, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @safexcel_probe._entry_ptr.18, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1758, i32 43}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1767, i32 4}
!63 = !{ptr @safexcel_probe._entry.20, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @safexcel_probe._entry_ptr.22, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1405, i32 40}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1472, i32 3}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @safexcel_probe_generic._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @safexcel_probe_generic._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1484, i32 3}
!74 = !{ptr @safexcel_probe_generic._entry.26, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @safexcel_probe_generic._entry_ptr.28, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1492, i32 3}
!78 = !{ptr @safexcel_probe_generic._entry.29, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @safexcel_probe_generic._entry_ptr.31, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1527, i32 5}
!82 = !{ptr @safexcel_probe_generic._entry.32, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @safexcel_probe_generic._entry_ptr.34, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1538, i32 5}
!86 = !{ptr @safexcel_probe_generic._entry.35, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @safexcel_probe_generic._entry_ptr.37, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1546, i32 5}
!90 = !{ptr @safexcel_probe_generic._entry.38, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @safexcel_probe_generic._entry_ptr.40, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1580, i32 3}
!94 = !{ptr @safexcel_probe_generic._entry.41, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @safexcel_probe_generic._entry_ptr.43, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1589, i32 2}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @safexcel_probe_generic._entry.44, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @safexcel_probe_generic._entry_ptr.47, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1612, i32 4}
!103 = !{ptr @safexcel_probe_generic._entry.48, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @safexcel_probe_generic._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1633, i32 4}
!107 = !{ptr @safexcel_probe_generic._entry.51, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @safexcel_probe_generic._entry_ptr.53, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1659, i32 4}
!111 = !{ptr @safexcel_probe_generic._entry.54, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @safexcel_probe_generic._entry_ptr.56, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @safexcel_probe_generic.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1666, i32 3}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1669, i32 24}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1671, i32 4}
!120 = !{ptr @safexcel_probe_generic.__key.60, !121, !"__key", i1 false, i1 false}
!121 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1681, i32 3}
!122 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @safexcel_probe_generic.__key.62, !124, !"__key", i1 false, i1 false}
!124 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1682, i32 3}
!125 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1689, i32 3}
!128 = !{ptr @safexcel_probe_generic._entry.64, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @safexcel_probe_generic._entry_ptr.66, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1695, i32 3}
!132 = !{ptr @safexcel_probe_generic._entry.67, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @safexcel_probe_generic._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1157, i32 4}
!136 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @safexcel_request_ring_irq._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @safexcel_request_ring_irq._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1165, i32 25}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1179, i32 3}
!143 = !{ptr @safexcel_request_ring_irq._entry.73, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @safexcel_request_ring_irq._entry_ptr.75, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1111, i32 4}
!147 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @safexcel_irq_ring._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @safexcel_irq_ring._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1038, i32 4}
!152 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @safexcel_handle_result_descriptor._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @safexcel_handle_result_descriptor._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 591, i32 2}
!157 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @safexcel_hw_init.__UNIQUE_ID_ddebug253, !156, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 211, i32 3}
!162 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @eip197_trc_cache_init._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @eip197_trc_cache_init._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 264, i32 2}
!167 = !{ptr @eip197_trc_cache_init._entry.85, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @eip197_trc_cache_init._entry_ptr.87, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 407, i32 27}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 407, i32 39}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 414, i32 9}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 417, i32 9}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 423, i32 25}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 451, i32 3}
!181 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @eip197_load_firmwares.__UNIQUE_ID_ddebug246, !180, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 463, i32 3}
!185 = !{ptr @eip197_load_firmwares.__UNIQUE_ID_ddebug247, !184, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 464, i32 9}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 469, i32 2}
!190 = !{ptr @eip197_load_firmwares.__UNIQUE_ID_ddebug248, !189, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 355, i32 4}
!193 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @poll_fw_ready._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @poll_fw_ready._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 498, i32 3}
!198 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @safexcel_hw_setup_cdesc_rings._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @safexcel_hw_setup_cdesc_rings._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @safexcel_algs, !202, !"safexcel_algs", i1 false, i1 false}
!202 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1190, i32 38}
!203 = !{ptr @safexcel_of_match_table, !204, !"safexcel_of_match_table", i1 false, i1 false}
!204 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1809, i32 34}
!205 = !{ptr @safexcel_pci_driver, !206, !"safexcel_pci_driver", i1 false, i1 false}
!206 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1957, i32 26}
!207 = !{ptr @safexcel_pci_ids, !208, !"safexcel_pci_ids", i1 false, i1 false}
!208 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1946, i32 35}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1854, i32 2}
!211 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @safexcel_pci_probe.__UNIQUE_ID_ddebug260, !210, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1870, i32 3}
!215 = !{ptr @safexcel_pci_probe._entry, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @safexcel_pci_probe._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1877, i32 3}
!219 = !{ptr @safexcel_pci_probe._entry.105, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @safexcel_pci_probe._entry_ptr.107, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1883, i32 3}
!223 = !{ptr @safexcel_pci_probe.__UNIQUE_ID_ddebug261, !222, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!224 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1887, i32 4}
!226 = !{ptr @safexcel_pci_probe._entry.109, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @safexcel_pci_probe._entry_ptr.111, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1894, i32 4}
!230 = !{ptr @safexcel_pci_probe.__UNIQUE_ID_ddebug262, !229, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/crypto/inside-secure/safexcel.c", i32 1911, i32 4}
!233 = !{ptr @safexcel_pci_probe._entry.113, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @safexcel_pci_probe._entry_ptr.115, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{!"auto-init"}
!245 = !{i8 0, i8 2}
!246 = !{i64 2155051100}
!247 = !{i64 6305962}
!248 = !{i64 2155051964}
!249 = !{i64 2155052764}
!250 = !{!"branch_weights", i32 2000, i32 1}
!251 = !{i64 6306380}
!252 = !{i64 2155082512}
!253 = !{i64 2155083957}
!254 = !{i64 2155085544}
!255 = !{i64 2155085852}
!256 = !{i64 2155086746}
!257 = !{i64 2155089609}
!258 = !{i64 2155092092}
!259 = !{i64 2155094478}
!260 = !{i64 2155095166}
!261 = !{i64 2155095934}
!262 = !{i64 2155100189}
!263 = !{i64 2155102723}
!264 = !{i64 2155105212}
!265 = !{i64 2155110586}
!266 = !{i64 2155113128}
!267 = !{!"branch_weights", i32 1, i32 2000}
!268 = !{i64 2155068074}
!269 = !{i64 2155069130}
!270 = !{i64 2155071437}
!271 = !{i64 2155072103}
!272 = !{i64 2155062026}
!273 = !{i64 2155064897}
!274 = !{i64 2148779562, i64 2148779567, i64 2148779580, i64 2148779624, i64 2148779658, i64 2148779679}
!275 = !{i64 2155006419}
!276 = !{i64 2155006749}
!277 = !{i64 2155007742}
!278 = !{i64 2155008633}
!279 = !{i64 2155010104}
!280 = !{i64 2155011632}
!281 = !{i64 2155012396}
!282 = !{i64 2155013848}
!283 = !{i64 2155014430}
!284 = !{i64 2155015052}
!285 = !{i64 2155015749}
!286 = !{i64 2155017685}
!287 = !{i64 2155019503}
!288 = !{i64 2155020615}
!289 = !{i64 2155023846}
!290 = !{i64 2155024428}
!291 = !{i64 2155025072}
!292 = !{i64 2155026002}
!293 = !{i64 2155026590}
!294 = !{i64 2155027199}
!295 = !{i64 2155028781}
!296 = !{i64 2155030292}
!297 = !{i64 2155031060}
!298 = !{i64 2155031909}
!299 = !{i64 2155032647}
!300 = !{i64 2155033304}
!301 = !{i64 2155033995}
!302 = !{i64 2155034757}
!303 = !{i64 2155035547}
!304 = !{i64 2155036418}
!305 = !{i64 2155037178}
!306 = !{i64 2155037857}
!307 = !{i64 2155038570}
!308 = !{i64 2155040541}
!309 = !{i64 2155043541}
!310 = !{i64 2155046175}
!311 = !{i64 2155047633}
!312 = !{i64 2155048404}
!313 = !{i64 2154930172}
!314 = !{i64 2154930617}
!315 = !{i64 2154931063}
!316 = !{i64 2154931529}
!317 = !{i64 2154931968}
!318 = !{i64 2154932363}
!319 = !{i64 2154941687}
!320 = !{i64 2154943360}
!321 = !{i64 2154944044}
!322 = !{i64 2154944962}
!323 = !{i64 2154945640}
!324 = !{i64 2154946029}
!325 = !{i64 2154946713}
!326 = !{i64 2154947712}
!327 = !{i64 2154948113}
!328 = !{i32 0, i32 33}
!329 = !{i64 2154937358}
!330 = !{i64 2154937901}
!331 = !{i64 2154938300}
!332 = !{i64 2154938694}
!333 = !{i64 2154940108}
!334 = !{i64 2154956290}
!335 = !{i64 2154957189}
!336 = !{i64 2154957624}
!337 = !{i64 2154958067}
!338 = !{i64 2154958533}
!339 = !{i64 2154984900}
!340 = !{i64 2154985816}
!341 = !{i64 2154986920}
!342 = !{i64 2154988080}
!343 = !{i64 2154989197}
!344 = !{i64 2154990803}
!345 = !{i64 2154994530}
!346 = !{i64 2154995468}
!347 = !{i64 2154996479}
!348 = !{i64 2154997568}
!349 = !{i64 2154998875}
!350 = !{i64 2155000503}
!351 = !{i64 2155002425}
!352 = !{i64 2155002912}
!353 = !{i64 2154960794}
!354 = !{i64 2154961356}
!355 = !{i64 2154962351}
!356 = !{i64 2154963025}
!357 = !{i64 2154963607}
!358 = !{i64 2154964518}
!359 = !{i64 2154965682}
!360 = !{i64 2154966616}
!361 = !{i64 2154967364}
!362 = !{i64 2154968003}
!363 = !{i64 2154972987}
!364 = !{i64 2154970916}
!365 = !{i64 2154971603}
!366 = !{i64 2154972296}
!367 = !{i64 2154933041}
!368 = !{i64 2154933961}
!369 = !{i64 2154935736}
!370 = !{i64 2154936209}
!371 = !{i64 2154937050}
!372 = !{i64 2155128150}
!373 = !{i64 2155130614}
!374 = !{i64 2155132127}
!375 = !{i64 2155132784}
!376 = !{i64 2155133456}
!377 = !{i64 2155134135}
!378 = !{i64 2155155008}
!379 = !{i64 2155157998}
!380 = !{i64 2155158433}
!381 = !{i64 2155158868}
!382 = !{i64 2155159303}
!383 = !{i64 2155160672}
!384 = !{i64 2155163655}
!385 = !{i64 2155163976}
!386 = !{i64 2155164201}
!387 = !{i64 2155164522}
