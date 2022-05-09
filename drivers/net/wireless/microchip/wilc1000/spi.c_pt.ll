; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/microchip/wilc1000/spi.c_pt.bc'
source_filename = "../drivers/net/wireless/microchip/wilc1000/spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.wilc_hif_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wilc = type { ptr, ptr, i32, i8, ptr, i8, i32, i8, i32, i32, i8, %struct.list_head, %struct.mutex, %struct.srcu_struct, i8, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, i32, %struct.mutex, %struct.wilc_cfg_frame, i32, i8, ptr, i32, ptr, [4 x %struct.txq_handle], i32, %struct.wilc_tx_queue_status, %struct.rxq_entry_t, ptr, ptr, i8, ptr, %struct.wilc_cfg, ptr, ptr, %struct.mutex, i8, i8, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [5 x i32] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.wilc_cfg_frame = type { %struct.wilc_cfg_cmd_hdr, [1468 x i8] }
%struct.wilc_cfg_cmd_hdr = type { i8, i8, i16, i32 }
%struct.txq_handle = type { %struct.txq_entry_t, i16, %struct.txq_fw_recv_queue_stat }
%struct.txq_entry_t = type { %struct.list_head, i32, i8, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.txq_fw_recv_queue_stat = type { i8, i8 }
%struct.wilc_tx_queue_status = type { [1000 x i8], i16, [4 x i16], i16, i8 }
%struct.rxq_entry_t = type { %struct.list_head, ptr, i32 }
%struct.wilc_cfg = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.wilc_spi = type { i8, i8, i8, i8, %struct.wilc_gpios }
%struct.wilc_gpios = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.wilc_spi_special_cmd_rsp = type { i8, i8, i8 }
%struct.wilc_spi_rsp_data = type { i8, i8, [0 x i8] }
%struct.wilc_spi_read_rsp_data = type { i8, [4 x i8], [0 x i8] }

@__param_str_enable_crc7 = internal constant [25 x i8] c"wilc1000_spi.enable_crc7\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable_crc7 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_crc7 = internal constant %struct.kernel_param { ptr @__param_str_enable_crc7, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @enable_crc7 } }, section "__param", align 4
@__UNIQUE_ID_enable_crc7type480 = internal constant [39 x i8] c"wilc1000_spi.parmtype=enable_crc7:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_crc7481 = internal constant [211 x i8] c"wilc1000_spi.parm=enable_crc7:Enable CRC7 checksum to protect command transfers\0A\09\09\09against corruption during the SPI transfer.\0A\09\09\09Command transfers are short and the CPU-cycle cost\0A\09\09\09of enabling this is small.\00", section ".modinfo", align 1
@__param_str_enable_crc16 = internal constant [26 x i8] c"wilc1000_spi.enable_crc16\00", align 1
@enable_crc16 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_crc16 = internal constant %struct.kernel_param { ptr @__param_str_enable_crc16, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @enable_crc16 } }, section "__param", align 4
@__UNIQUE_ID_enable_crc16type482 = internal constant [40 x i8] c"wilc1000_spi.parmtype=enable_crc16:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_crc16483 = internal constant [220 x i8] c"wilc1000_spi.parm=enable_crc16:Enable CRC16 checksum to protect data transfers\0A\09\09\09against corruption during the SPI transfer.\0A\09\09\09Data transfers can be large and the CPU-cycle cost\0A\09\09\09of enabling this may be substantial.\00", section ".modinfo", align 1
@__initcall__kmod_wilc1000_spi__484_276_wilc_spi_driver_init6 = internal global ptr @wilc_spi_driver_init, section ".initcall6.init", align 4
@wilc_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @wilc_spi_id, ptr @wilc_bus_probe, ptr @wilc_bus_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wilc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wilc_spi_driver_exit = internal global ptr @wilc_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file485 = internal constant [71 x i8] c"wilc1000_spi.file=drivers/net/wireless/microchip/wilc1000/wilc1000-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license486 = internal constant [25 x i8] c"wilc1000_spi.license=GPL\00", section ".modinfo", align 1
@wilc_spi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"wilc1000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wilc1000_spi\00", [19 x i8] zeroinitializer }, align 32
@wilc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,wilc1000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wilc_hif_spi = internal constant { %struct.wilc_hif_func, [36 x i8] } { %struct.wilc_hif_func { ptr @wilc_spi_init, ptr @wilc_spi_deinit, ptr @wilc_spi_read_reg, ptr @wilc_spi_write_reg, ptr @wilc_spi_read, ptr @wilc_spi_write, ptr @wilc_spi_read_int, ptr @wilc_spi_clear_int_ext, ptr @wilc_spi_read_size, ptr @wilc_spi_write, ptr @wilc_spi_read, ptr @wilc_spi_sync_ext, ptr null, ptr null, ptr @wilc_spi_reset }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wilc_spi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1060, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fail cmd read chip id...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wilc_spi_init\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/microchip/wilc1000/spi.c\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wilc_spi_init._entry_ptr = internal global ptr @wilc_spi_init._entry, section ".printk_index", align 4
@wilc_spi_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1084, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed with CRC7 on and off.\0A\00", [34 x i8] zeroinitializer }, align 32
@wilc_spi_init._entry_ptr.9 = internal global ptr @wilc_spi_init._entry.7, section ".printk_index", align 4
@wilc_spi_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[wilc spi %d]: Failed internal write reg\0A\00", [54 x i8] zeroinitializer }, align 32
@wilc_spi_init._entry_ptr.12 = internal global ptr @wilc_spi_init._entry.10, section ".printk_index", align 4
@wilc_spi_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_init._entry_ptr.14 = internal global ptr @wilc_spi_init._entry.13, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@spi_internal_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 902, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed internal read cmd...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_internal_read\00", [46 x i8] zeroinitializer }, align 32
@spi_internal_read._entry_ptr = internal global ptr @spi_internal_read._entry, section ".printk_index", align 4
@wilc_spi_single_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 510, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmd [%x] not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wilc_spi_single_read\00", [43 x i8] zeroinitializer }, align 32
@wilc_spi_single_read._entry_ptr = internal global ptr @wilc_spi_single_read._entry, section ".printk_index", align 4
@wilc_spi_single_read._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"spi buffer size too small (%d) (%d) (%zu)\0A\00", [53 x i8] zeroinitializer }, align 32
@wilc_spi_single_read._entry_ptr.21 = internal global ptr @wilc_spi_single_read._entry.19, section ".printk_index", align 4
@wilc_spi_single_read._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.4, i32 531, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed cmd write, bus error...\0A\00", [32 x i8] zeroinitializer }, align 32
@wilc_spi_single_read._entry_ptr.24 = internal global ptr @wilc_spi_single_read._entry.22, section ".printk_index", align 4
@wilc_spi_single_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.4, i32 540, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed cmd, cmd (%02x), resp (%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@wilc_spi_single_read._entry_ptr.27 = internal global ptr @wilc_spi_single_read._entry.25, section ".printk_index", align 4
@wilc_spi_single_read._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.4, i32 546, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed cmd state response state (%02x)\0A\00", [56 x i8] zeroinitializer }, align 32
@wilc_spi_single_read._entry_ptr.30 = internal global ptr @wilc_spi_single_read._entry.28, section ".printk_index", align 4
@wilc_spi_single_read._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.4, i32 555, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error, data start missing\0A\00", [37 x i8] zeroinitializer }, align 32
@wilc_spi_single_read._entry_ptr.33 = internal global ptr @wilc_spi_single_read._entry.31, section ".printk_index", align 4
@wilc_spi_single_read._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.4, i32 570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: bad CRC 0x%04x (calculated 0x%04x)\0A\00", [56 x i8] zeroinitializer }, align 32
@wilc_spi_single_read._entry_ptr.36 = internal global ptr @wilc_spi_single_read._entry.34, section ".printk_index", align 4
@wilc_spi_tx_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPI transaction failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wilc_spi_tx_rx\00", [17 x i8] zeroinitializer }, align 32
@wilc_spi_tx_rx._entry_ptr = internal global ptr @wilc_spi_tx_rx._entry, section ".printk_index", align 4
@wilc_spi_tx_rx._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"can't read data with the following length: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@wilc_spi_tx_rx._entry_ptr.41 = internal global ptr @wilc_spi_tx_rx._entry.39, section ".printk_index", align 4
@spi_internal_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 886, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed internal write cmd...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_internal_write\00", [45 x i8] zeroinitializer }, align 32
@spi_internal_write._entry_ptr = internal global ptr @spi_internal_write._entry, section ".printk_index", align 4
@wilc_spi_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 611, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"write cmd [%x] not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wilc_spi_write_cmd\00", [45 x i8] zeroinitializer }, align 32
@wilc_spi_write_cmd._entry_ptr = internal global ptr @wilc_spi_write_cmd._entry, section ".printk_index", align 4
@wilc_spi_write_cmd._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.45, ptr @.str.4, i32 623, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_write_cmd._entry_ptr.47 = internal global ptr @wilc_spi_write_cmd._entry.46, section ".printk_index", align 4
@wilc_spi_write_cmd._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.45, ptr @.str.4, i32 628, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_write_cmd._entry_ptr.49 = internal global ptr @wilc_spi_write_cmd._entry.48, section ".printk_index", align 4
@wilc_spi_write_cmd._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str.4, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed cmd response, cmd (%02x), resp (%02x)\0A\00", [50 x i8] zeroinitializer }, align 32
@wilc_spi_write_cmd._entry_ptr.52 = internal global ptr @wilc_spi_write_cmd._entry.50, section ".printk_index", align 4
@wilc_spi_write_cmd._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.45, ptr @.str.4, i32 646, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_write_cmd._entry_ptr.54 = internal global ptr @wilc_spi_write_cmd._entry.53, section ".printk_index", align 4
@wilc_spi_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 853, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed cmd, read reg (%08x)...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wilc_spi_read_reg\00", [46 x i8] zeroinitializer }, align 32
@wilc_spi_read_reg._entry_ptr = internal global ptr @wilc_spi_read_reg._entry, section ".printk_index", align 4
@wilc_spi_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 932, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed cmd, write reg (%08x)...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wilc_spi_write_reg\00", [45 x i8] zeroinitializer }, align 32
@wilc_spi_write_reg._entry_ptr = internal global ptr @wilc_spi_write_reg._entry, section ".printk_index", align 4
@wilc_spi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 872, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed cmd, read block (%08x)...\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wilc_spi_read\00", [18 x i8] zeroinitializer }, align 32
@wilc_spi_read._entry_ptr = internal global ptr @wilc_spi_read._entry, section ".printk_index", align 4
@wilc_spi_dma_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 690, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dma read write cmd [%x] not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wilc_spi_dma_rw\00", [16 x i8] zeroinitializer }, align 32
@wilc_spi_dma_rw._entry_ptr = internal global ptr @wilc_spi_dma_rw._entry, section ".printk_index", align 4
@wilc_spi_dma_rw._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 700, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"spi buffer size too small (%d)(%d) (%zu)\0A\00", [54 x i8] zeroinitializer }, align 32
@wilc_spi_dma_rw._entry_ptr.65 = internal global ptr @wilc_spi_dma_rw._entry.63, section ".printk_index", align 4
@wilc_spi_dma_rw._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.62, ptr @.str.4, i32 705, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_dma_rw._entry_ptr.67 = internal global ptr @wilc_spi_dma_rw._entry.66, section ".printk_index", align 4
@wilc_spi_dma_rw._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.62, ptr @.str.4, i32 713, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_dma_rw._entry_ptr.69 = internal global ptr @wilc_spi_dma_rw._entry.68, section ".printk_index", align 4
@wilc_spi_dma_rw._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.62, ptr @.str.4, i32 719, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_dma_rw._entry_ptr.71 = internal global ptr @wilc_spi_dma_rw._entry.70, section ".printk_index", align 4
@wilc_spi_dma_rw._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.4, i32 742, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed resp read, bus err\0A\00", [37 x i8] zeroinitializer }, align 32
@wilc_spi_dma_rw._entry_ptr.74 = internal global ptr @wilc_spi_dma_rw._entry.72, section ".printk_index", align 4
@wilc_spi_dma_rw._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.4, i32 754, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed block read, bus err\0A\00", [36 x i8] zeroinitializer }, align 32
@wilc_spi_dma_rw._entry_ptr.77 = internal global ptr @wilc_spi_dma_rw._entry.75, section ".printk_index", align 4
@wilc_spi_dma_rw._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.62, ptr @.str.4, i32 764, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed block CRC read, bus err\0A\00", [32 x i8] zeroinitializer }, align 32
@wilc_spi_dma_rw._entry_ptr.80 = internal global ptr @wilc_spi_dma_rw._entry.78, section ".printk_index", align 4
@wilc_spi_dma_rw._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.62, ptr @.str.4, i32 772, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_dma_rw._entry_ptr.82 = internal global ptr @wilc_spi_dma_rw._entry.81, section ".printk_index", align 4
@wilc_spi_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.83, ptr @.str.4, i32 352, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wilc_spi_rx\00", [20 x i8] zeroinitializer }, align 32
@wilc_spi_rx._entry_ptr = internal global ptr @wilc_spi_rx._entry, section ".printk_index", align 4
@wilc_spi_rx._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.83, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_rx._entry_ptr.85 = internal global ptr @wilc_spi_rx._entry.84, section ".printk_index", align 4
@wilc_spi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.4, i32 999, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed cmd, write block (%08x)...\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wilc_spi_write\00", [17 x i8] zeroinitializer }, align 32
@wilc_spi_write._entry_ptr = internal global ptr @wilc_spi_write._entry, section ".printk_index", align 4
@wilc_spi_write._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.4, i32 1008, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed block data write...\0A\00", [36 x i8] zeroinitializer }, align 32
@wilc_spi_write._entry_ptr.90 = internal global ptr @wilc_spi_write._entry.88, section ".printk_index", align 4
@spi_data_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed data block cmd write, bus error...\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_data_write\00", [17 x i8] zeroinitializer }, align 32
@spi_data_write._entry_ptr = internal global ptr @spi_data_write._entry, section ".printk_index", align 4
@spi_data_write._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.4, i32 444, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed data block write, bus error...\0A\00", [57 x i8] zeroinitializer }, align 32
@spi_data_write._entry_ptr.95 = internal global ptr @spi_data_write._entry.93, section ".printk_index", align 4
@spi_data_write._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed data block crc write, bus error...\0A\00", [53 x i8] zeroinitializer }, align 32
@spi_data_write._entry_ptr.98 = internal global ptr @spi_data_write._entry.96, section ".printk_index", align 4
@wilc_spi_tx.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.4, ptr @.str.100, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wilc_spi_tx\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Request writing %d bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@wilc_spi_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.99, ptr @.str.4, i32 309, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_tx._entry_ptr = internal global ptr @wilc_spi_tx._entry, section ".printk_index", align 4
@wilc_spi_tx._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.99, ptr @.str.4, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"can't write data with the following length: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@wilc_spi_tx._entry_ptr.103 = internal global ptr @wilc_spi_tx._entry.101, section ".printk_index", align 4
@spi_data_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.4, i32 959, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed bus error...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_data_rsp\00", [19 x i8] zeroinitializer }, align 32
@spi_data_rsp._entry_ptr = internal global ptr @spi_data_rsp._entry, section ".printk_index", align 4
@spi_data_rsp._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.4, i32 970, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Data packet response missing (%02x %02x %02x %02x)\0A\00", [44 x i8] zeroinitializer }, align 32
@spi_data_rsp._entry_ptr.108 = internal global ptr @spi_data_rsp._entry.106, section ".printk_index", align 4
@spi_data_rsp._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.4, i32 979, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Data response error (%02x %02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@spi_data_rsp._entry_ptr.111 = internal global ptr @spi_data_rsp._entry.109, section ".printk_index", align 4
@wilc_spi_sync_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.4, i32 1181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Too many interrupts (%d)...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wilc_spi_sync_ext\00", [46 x i8] zeroinitializer }, align 32
@wilc_spi_sync_ext._entry_ptr = internal global ptr @wilc_spi_sync_ext._entry, section ".printk_index", align 4
@wilc_spi_sync_ext._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.4, i32 1191, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed read reg (%08x)...\0A\00", [37 x i8] zeroinitializer }, align 32
@wilc_spi_sync_ext._entry_ptr.116 = internal global ptr @wilc_spi_sync_ext._entry.114, section ".printk_index", align 4
@wilc_spi_sync_ext._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.4, i32 1198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed write reg (%08x)...\0A\00", [36 x i8] zeroinitializer }, align 32
@wilc_spi_sync_ext._entry_ptr.119 = internal global ptr @wilc_spi_sync_ext._entry.117, section ".printk_index", align 4
@wilc_spi_sync_ext._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.4, i32 1208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_sync_ext._entry_ptr.121 = internal global ptr @wilc_spi_sync_ext._entry.120, section ".printk_index", align 4
@wilc_spi_sync_ext._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.4, i32 1218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_sync_ext._entry_ptr.123 = internal global ptr @wilc_spi_sync_ext._entry.122, section ".printk_index", align 4
@wilc_spi_sync_ext._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.4, i32 1225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_sync_ext._entry_ptr.125 = internal global ptr @wilc_spi_sync_ext._entry.124, section ".printk_index", align 4
@wilc_spi_sync_ext._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.4, i32 1235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_sync_ext._entry_ptr.127 = internal global ptr @wilc_spi_sync_ext._entry.126, section ".printk_index", align 4
@wilc_spi_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.4, i32 1032, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed cmd reset\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wilc_spi_reset\00", [17 x i8] zeroinitializer }, align 32
@wilc_spi_reset._entry_ptr = internal global ptr @wilc_spi_reset._entry, section ".printk_index", align 4
@wilc_spi_special_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.130, ptr @.str.4, i32 812, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wilc_spi_special_cmd\00", [43 x i8] zeroinitializer }, align 32
@wilc_spi_special_cmd._entry_ptr = internal global ptr @wilc_spi_special_cmd._entry, section ".printk_index", align 4
@wilc_spi_special_cmd._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.130, ptr @.str.4, i32 817, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_special_cmd._entry_ptr.132 = internal global ptr @wilc_spi_special_cmd._entry.131, section ".printk_index", align 4
@wilc_spi_special_cmd._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.130, ptr @.str.4, i32 826, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_special_cmd._entry_ptr.134 = internal global ptr @wilc_spi_special_cmd._entry.133, section ".printk_index", align 4
@wilc_spi_special_cmd._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.130, ptr @.str.4, i32 832, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_spi_special_cmd._entry_ptr.136 = internal global ptr @wilc_spi_special_cmd._entry.135, section ".printk_index", align 4
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@wilc_parse_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.4, i32 175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"missing reset gpio.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wilc_parse_gpios\00", [47 x i8] zeroinitializer }, align 32
@wilc_parse_gpios._entry_ptr = internal global ptr @wilc_parse_gpios._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 196, i64 202]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 195, i64 201]
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"enable_crc7\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 18, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"enable_crc16\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 26, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"wilc_spi_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 267, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"wilc_spi_id\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 261, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 269, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [14 x i8] c"wilc_of_match\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 255, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"wilc_hif_spi\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1244, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 227, i32 51 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1060, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1084, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1105, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1124, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 902, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 510, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 524, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 531, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 538, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 545, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 555, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 568, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 390, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 392, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 886, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 611, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 621, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 628, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 638, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 645, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 853, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 932, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 872, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 689, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 699, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 705, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 711, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 718, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 741, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 753, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 763, i32 5 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 770, i32 5 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 352, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 355, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 998, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1008, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 433, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 443, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 457, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 300, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 309, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 313, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 959, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 968, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 978, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1181, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1190, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1197, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1207, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1217, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1224, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1234, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1032, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 811, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 817, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 824, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 831, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 168, i32 7 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 173, i32 12 }
@___asan_gen_.517 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.524 = private constant [49 x i8] c"../drivers/net/wireless/microchip/wilc1000/spi.c\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 175, i32 4 }
@llvm.compiler.used = appending global [196 x ptr] [ptr @__UNIQUE_ID_enable_crc16483, ptr @__UNIQUE_ID_enable_crc16type482, ptr @__UNIQUE_ID_enable_crc7481, ptr @__UNIQUE_ID_enable_crc7type480, ptr @__UNIQUE_ID_file485, ptr @__UNIQUE_ID_license486, ptr @__exitcall_wilc_spi_driver_exit, ptr @__initcall__kmod_wilc1000_spi__484_276_wilc_spi_driver_init6, ptr @__param_enable_crc16, ptr @__param_enable_crc7, ptr @spi_data_rsp._entry, ptr @spi_data_rsp._entry.106, ptr @spi_data_rsp._entry.109, ptr @spi_data_rsp._entry_ptr, ptr @spi_data_rsp._entry_ptr.108, ptr @spi_data_rsp._entry_ptr.111, ptr @spi_data_write._entry, ptr @spi_data_write._entry.93, ptr @spi_data_write._entry.96, ptr @spi_data_write._entry_ptr, ptr @spi_data_write._entry_ptr.95, ptr @spi_data_write._entry_ptr.98, ptr @spi_internal_read._entry, ptr @spi_internal_read._entry_ptr, ptr @spi_internal_write._entry, ptr @spi_internal_write._entry_ptr, ptr @wilc_parse_gpios._entry, ptr @wilc_parse_gpios._entry_ptr, ptr @wilc_spi_dma_rw._entry, ptr @wilc_spi_dma_rw._entry.63, ptr @wilc_spi_dma_rw._entry.66, ptr @wilc_spi_dma_rw._entry.68, ptr @wilc_spi_dma_rw._entry.70, ptr @wilc_spi_dma_rw._entry.72, ptr @wilc_spi_dma_rw._entry.75, ptr @wilc_spi_dma_rw._entry.78, ptr @wilc_spi_dma_rw._entry.81, ptr @wilc_spi_dma_rw._entry_ptr, ptr @wilc_spi_dma_rw._entry_ptr.65, ptr @wilc_spi_dma_rw._entry_ptr.67, ptr @wilc_spi_dma_rw._entry_ptr.69, ptr @wilc_spi_dma_rw._entry_ptr.71, ptr @wilc_spi_dma_rw._entry_ptr.74, ptr @wilc_spi_dma_rw._entry_ptr.77, ptr @wilc_spi_dma_rw._entry_ptr.80, ptr @wilc_spi_dma_rw._entry_ptr.82, ptr @wilc_spi_driver_exit, ptr @wilc_spi_init._entry, ptr @wilc_spi_init._entry.10, ptr @wilc_spi_init._entry.13, ptr @wilc_spi_init._entry.7, ptr @wilc_spi_init._entry_ptr, ptr @wilc_spi_init._entry_ptr.12, ptr @wilc_spi_init._entry_ptr.14, ptr @wilc_spi_init._entry_ptr.9, ptr @wilc_spi_read._entry, ptr @wilc_spi_read._entry_ptr, ptr @wilc_spi_read_reg._entry, ptr @wilc_spi_read_reg._entry_ptr, ptr @wilc_spi_reset._entry, ptr @wilc_spi_reset._entry_ptr, ptr @wilc_spi_rx._entry, ptr @wilc_spi_rx._entry.84, ptr @wilc_spi_rx._entry_ptr, ptr @wilc_spi_rx._entry_ptr.85, ptr @wilc_spi_single_read._entry, ptr @wilc_spi_single_read._entry.19, ptr @wilc_spi_single_read._entry.22, ptr @wilc_spi_single_read._entry.25, ptr @wilc_spi_single_read._entry.28, ptr @wilc_spi_single_read._entry.31, ptr @wilc_spi_single_read._entry.34, ptr @wilc_spi_single_read._entry_ptr, ptr @wilc_spi_single_read._entry_ptr.21, ptr @wilc_spi_single_read._entry_ptr.24, ptr @wilc_spi_single_read._entry_ptr.27, ptr @wilc_spi_single_read._entry_ptr.30, ptr @wilc_spi_single_read._entry_ptr.33, ptr @wilc_spi_single_read._entry_ptr.36, ptr @wilc_spi_special_cmd._entry, ptr @wilc_spi_special_cmd._entry.131, ptr @wilc_spi_special_cmd._entry.133, ptr @wilc_spi_special_cmd._entry.135, ptr @wilc_spi_special_cmd._entry_ptr, ptr @wilc_spi_special_cmd._entry_ptr.132, ptr @wilc_spi_special_cmd._entry_ptr.134, ptr @wilc_spi_special_cmd._entry_ptr.136, ptr @wilc_spi_sync_ext._entry, ptr @wilc_spi_sync_ext._entry.114, ptr @wilc_spi_sync_ext._entry.117, ptr @wilc_spi_sync_ext._entry.120, ptr @wilc_spi_sync_ext._entry.122, ptr @wilc_spi_sync_ext._entry.124, ptr @wilc_spi_sync_ext._entry.126, ptr @wilc_spi_sync_ext._entry_ptr, ptr @wilc_spi_sync_ext._entry_ptr.116, ptr @wilc_spi_sync_ext._entry_ptr.119, ptr @wilc_spi_sync_ext._entry_ptr.121, ptr @wilc_spi_sync_ext._entry_ptr.123, ptr @wilc_spi_sync_ext._entry_ptr.125, ptr @wilc_spi_sync_ext._entry_ptr.127, ptr @wilc_spi_tx._entry, ptr @wilc_spi_tx._entry.101, ptr @wilc_spi_tx._entry_ptr, ptr @wilc_spi_tx._entry_ptr.103, ptr @wilc_spi_tx_rx._entry, ptr @wilc_spi_tx_rx._entry.39, ptr @wilc_spi_tx_rx._entry_ptr, ptr @wilc_spi_tx_rx._entry_ptr.41, ptr @wilc_spi_write._entry, ptr @wilc_spi_write._entry.88, ptr @wilc_spi_write._entry_ptr, ptr @wilc_spi_write._entry_ptr.90, ptr @wilc_spi_write_cmd._entry, ptr @wilc_spi_write_cmd._entry.46, ptr @wilc_spi_write_cmd._entry.48, ptr @wilc_spi_write_cmd._entry.50, ptr @wilc_spi_write_cmd._entry.53, ptr @wilc_spi_write_cmd._entry_ptr, ptr @wilc_spi_write_cmd._entry_ptr.47, ptr @wilc_spi_write_cmd._entry_ptr.49, ptr @wilc_spi_write_cmd._entry_ptr.52, ptr @wilc_spi_write_cmd._entry_ptr.54, ptr @wilc_spi_write_reg._entry, ptr @wilc_spi_write_reg._entry_ptr, ptr @enable_crc7, ptr @enable_crc16, ptr @wilc_spi_driver, ptr @wilc_spi_id, ptr @.str, ptr @wilc_of_match, ptr @wilc_hif_spi, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.83, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_crc7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_crc16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_hif_spi to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_internal_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_single_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_single_read._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_single_read._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_single_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_single_read._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_single_read._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_single_read._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_tx_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_tx_rx._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_internal_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_write_cmd._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_write_cmd._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_write_cmd._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_write_cmd._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_dma_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_dma_rw._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_dma_rw._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_dma_rw._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_dma_rw._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_dma_rw._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_dma_rw._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_dma_rw._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_dma_rw._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_rx._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_write._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_data_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_data_write._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_data_write._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_tx._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_data_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_data_rsp._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_data_rsp._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_sync_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_sync_ext._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_sync_ext._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_sync_ext._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_sync_ext._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_sync_ext._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_sync_ext._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_special_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_special_cmd._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_special_cmd._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_spi_special_cmd._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_parse_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @wilc_spi_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wilc_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @wilc_spi_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_bus_probe(ptr noundef %spi) #2 align 64 {
entry:
  %wilc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wilc) #8
  %0 = ptrtoint ptr %wilc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %wilc, align 4, !annotation !281
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @wilc_cfg80211_init(ptr noundef nonnull %wilc, ptr noundef %spi, i32 noundef 1, ptr noundef nonnull @wilc_hif_spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.free_crit_edge

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wilc, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %driver_data.i.i, align 4
  %dev6 = getelementptr inbounds %struct.wilc, ptr %3, i32 0, i32 37
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi, ptr %dev6, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %3, i32 0, i32 41
  %6 = ptrtoint ptr %bus_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %bus_data, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %dev_irq_num = getelementptr inbounds %struct.wilc, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %dev_irq_num to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dev_irq_num, align 4
  %gpios1.i = getelementptr inbounds %struct.wilc_spi, ptr %call7.i.i, i32 0, i32 4
  %call3.i = call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.137, i32 noundef 3) #8
  %10 = ptrtoint ptr %gpios1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3.i, ptr %gpios1.i, align 4
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  %call6.i = call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.138, i32 noundef 7) #8
  %reset.i = getelementptr inbounds %struct.wilc_spi, ptr %call7.i.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6.i, ptr %reset.i, align 8
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %wilc_parse_gpios.exit, label %if.then.i.if.end9_crit_edge

if.then.i.if.end9_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.138, i32 noundef 7) #8
  %reset15.i = getelementptr inbounds %struct.wilc_spi, ptr %call7.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %reset15.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14.i, ptr %reset15.i, align 8
  br label %if.end9

wilc_parse_gpios.exit:                            ; preds = %if.then.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.139) #12
  %13 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset.i, align 8
  %cmp = icmp slt ptr %14, null
  br i1 %cmp, label %wilc_parse_gpios.exit.netdev_cleanup_crit_edge, label %wilc_parse_gpios.exit.if.end9_crit_edge

wilc_parse_gpios.exit.if.end9_crit_edge:          ; preds = %wilc_parse_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

wilc_parse_gpios.exit.netdev_cleanup_crit_edge:   ; preds = %wilc_parse_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_cleanup

if.end9:                                          ; preds = %wilc_parse_gpios.exit.if.end9_crit_edge, %if.else.i, %if.then.i.if.end9_crit_edge
  %call11 = call ptr @devm_clk_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  %15 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wilc, align 4
  %rtc_clk = getelementptr inbounds %struct.wilc, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call11, ptr %rtc_clk, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end9.netdev_cleanup_crit_edge, label %if.end17

if.end9.netdev_cleanup_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_cleanup

if.end17:                                         ; preds = %if.end9
  %call.i = call i32 @clk_prepare(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i30 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i30, label %if.end.i, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %call1.i = call i32 @clk_enable(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call11) #8
  br label %cleanup

netdev_cleanup:                                   ; preds = %if.end9.netdev_cleanup_crit_edge, %wilc_parse_gpios.exit.netdev_cleanup_crit_edge
  %ret.0.in = phi ptr [ %14, %wilc_parse_gpios.exit.netdev_cleanup_crit_edge ], [ %call11, %if.end9.netdev_cleanup_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %18 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wilc, align 4
  call void @wilc_netdev_cleanup(ptr noundef %19) #8
  br label %free

free:                                             ; preds = %netdev_cleanup, %if.end.free_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.free_crit_edge ], [ %ret.0, %netdev_cleanup ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wilc) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_bus_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  %rtc_clk = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  tail call void @wilc_netdev_cleanup(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_cfg80211_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_netdev_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_init(ptr nocapture noundef readonly %wilc, i1 noundef zeroext %resume) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %chipid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !281
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid) #8
  %5 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %chipid, align 4, !annotation !281
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1.i = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -54, i32 noundef 4096, ptr noundef nonnull %chipid, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 4096) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2) #12
  br label %if.end4

if.end4:                                          ; preds = %do.end, %entry.if.end4_crit_edge
  %8 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_data, align 4
  %gpios1.i = getelementptr inbounds %struct.wilc_spi, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %gpios1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpios1.i, align 4
  call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #8
  %reset.i = getelementptr inbounds %struct.wilc_spi, ptr %9, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset.i, align 4
  call void @gpiod_set_value(ptr noundef %18, i32 noundef 0) #8
  %probing_crc = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %probing_crc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %probing_crc, align 1
  %20 = load i8, ptr @enable_crc7, align 1, !range !282
  %crc7_enabled = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %crc7_enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %crc7_enabled, align 2
  %crc16_enabled = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %crc16_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %crc16_enabled, align 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus_data, align 4
  %call1.i107 = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -60, i32 noundef 36, ptr noundef nonnull %reg, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool.not.i108 = icmp eq i32 %call1.i107, 0
  br i1 %tobool.not.i108, label %if.end4.if.end21_crit_edge, label %if.then.i

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i:                                        ; preds = %if.end4
  %probing_crc.i = getelementptr inbounds %struct.wilc_spi, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %probing_crc.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %probing_crc.i, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not.i = icmp eq i8 %28, 0
  br i1 %tobool2.not.i, label %do.end.i109, label %if.then.i.if.end11_crit_edge

if.then.i.if.end11_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end.i109:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.15) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end.i109, %if.then.i.if.end11_crit_edge
  %29 = load i8, ptr @enable_crc7, align 1, !range !282
  %30 = xor i8 %29, 1
  %31 = ptrtoint ptr %crc7_enabled to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %crc7_enabled, align 2
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus_data, align 4
  %call1.i107.1 = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -60, i32 noundef 36, ptr noundef nonnull %reg, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107.1)
  %tobool.not.i108.1 = icmp eq i32 %call1.i107.1, 0
  br i1 %tobool.not.i108.1, label %if.end11.if.end21_crit_edge, label %if.then.i.1

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i.1:                                      ; preds = %if.end11
  %probing_crc.i.1 = getelementptr inbounds %struct.wilc_spi, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %probing_crc.i.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %probing_crc.i.1, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool2.not.i.1 = icmp eq i8 %37, 0
  br i1 %tobool2.not.i.1, label %do.end.i109.1, label %if.then.i.1.if.end11.1_crit_edge

if.then.i.1.if.end11.1_crit_edge:                 ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.1

do.end.i109.1:                                    ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.15) #12
  br label %if.end11.1

if.end11.1:                                       ; preds = %do.end.i109.1, %if.then.i.1.if.end11.1_crit_edge
  %38 = load i8, ptr @enable_crc7, align 1, !range !282
  %39 = xor i8 %38, 1
  %40 = ptrtoint ptr %crc7_enabled to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %crc7_enabled, align 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end11.if.end21_crit_edge, %if.end4.if.end21_crit_edge
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg, align 4
  %43 = and i32 %42, -201326593
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %reg, align 4
  %46 = load i8, ptr @enable_crc7, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool22.not = icmp eq i8 %46, 0
  br i1 %tobool22.not, label %if.end21.if.end24_crit_edge, label %if.then23

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %44, 4
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %reg, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge
  %48 = load i8, ptr @enable_crc16, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool25.not = icmp eq i8 %48, 0
  br i1 %tobool25.not, label %if.end24.do.end31_crit_edge, label %if.then26

if.end24.do.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg, align 4
  %or27 = or i32 %50, 8
  store i32 %or27, ptr %reg, align 4
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %if.end24.do.end31_crit_edge
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg, align 4
  %and32 = and i32 %52, -113
  %or48 = or i32 %and32, 80
  store i32 %or48, ptr %reg, align 4
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %call1.i111 = call fastcc i32 @wilc_spi_write_cmd(ptr noundef %wilc, i8 noundef zeroext -61, i32 noundef 36, i32 noundef %or48, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %if.end56, label %do.end54

do.end54:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.42) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef 1107) #12
  br label %cleanup

if.end56:                                         ; preds = %do.end31
  %55 = load i8, ptr @enable_crc7, align 1, !range !282
  %56 = ptrtoint ptr %crc7_enabled to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %crc7_enabled, align 2
  %57 = load i8, ptr @enable_crc16, align 1, !range !282
  %58 = ptrtoint ptr %crc16_enabled to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %crc16_enabled, align 1
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %61 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus_data, align 4
  %call1.i116 = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -60, i32 noundef 36, ptr noundef nonnull %reg, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116)
  %tobool.not.i117 = icmp eq i32 %call1.i116, 0
  br i1 %tobool.not.i117, label %if.end5.i122, label %if.then.i120

if.then.i120:                                     ; preds = %if.end56
  %probing_crc.i118 = getelementptr inbounds %struct.wilc_spi, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %probing_crc.i118 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %probing_crc.i118, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool2.not.i119 = icmp eq i8 %64, 0
  br i1 %tobool2.not.i119, label %do.end.i121, label %if.then.i120.spi_internal_read.exit123_crit_edge

if.then.i120.spi_internal_read.exit123_crit_edge: ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_internal_read.exit123

do.end.i121:                                      ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.15) #12
  br label %spi_internal_read.exit123

if.end5.i122:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #8
  %68 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %reg, align 4
  br label %spi_internal_read.exit123

spi_internal_read.exit123:                        ; preds = %if.end5.i122, %do.end.i121, %if.then.i120.spi_internal_read.exit123_crit_edge
  %69 = ptrtoint ptr %probing_crc to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %probing_crc, align 1
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %call1.i125 = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -54, i32 noundef 4096, ptr noundef nonnull %chipid, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i125)
  %tobool.not.i126 = icmp eq i32 %call1.i125, 0
  br i1 %tobool.not.i126, label %if.end72, label %do.end70

do.end70:                                         ; preds = %spi_internal_read.exit123
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.55, i32 noundef 4096) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end72:                                         ; preds = %spi_internal_read.exit123
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end70, %do.end54, %if.end11.1, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i107.1, %if.end11.1 ], [ %call1.i111, %do.end54 ], [ %call1.i125, %do.end70 ], [ 0, %if.end72 ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_deinit(ptr nocapture noundef readonly %wilc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %0 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 4
  %3 = load ptr, ptr %bus_data, align 4
  %gpios1.i = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 4
  %reset3.i = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %reset3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset3.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #8
  %6 = ptrtoint ptr %gpios1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpios1.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_read_reg(ptr nocapture noundef readonly %wilc, i32 noundef %addr, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %addr)
  %cmp = icmp ult i32 %addr, 48
  %spec.select = select i1 %cmp, i8 -60, i8 -54
  %spec.select13 = zext i1 %cmp to i8
  %call1 = tail call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext %spec.select, i32 noundef %addr, ptr noundef %data, i8 noundef zeroext %spec.select13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %addr) #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_write_reg(ptr nocapture noundef readonly %wilc, i32 noundef %addr, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %addr)
  %cmp = icmp ult i32 %addr, 48
  %spec.select = select i1 %cmp, i8 -61, i8 -55
  %spec.select12 = zext i1 %cmp to i8
  %call1 = tail call fastcc i32 @wilc_spi_write_cmd(ptr noundef %wilc, i8 noundef zeroext %spec.select, i32 noundef %addr, i32 noundef %data, i8 noundef zeroext %spec.select12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %addr) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_read(ptr nocapture noundef readonly %wilc, i32 noundef %addr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp = icmp ult i32 %size, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @wilc_spi_dma_rw(ptr noundef %wilc, i8 noundef zeroext -56, i32 noundef %addr, ptr noundef %buf, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %addr) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_write(ptr nocapture noundef readonly %wilc, i32 noundef %addr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %rsp.i = alloca [4 x i8], align 4
  %cmd.i = alloca i8, align 1
  %crc.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp = icmp ult i32 %size, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @wilc_spi_dma_rw(ptr noundef %wilc, i8 noundef zeroext -57, i32 noundef %addr, ptr noundef null, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.86, i32 noundef %addr) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %bus_data.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %4 = ptrtoint ptr %bus_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crc.i) #8
  %6 = ptrtoint ptr %crc.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %crc.i, align 1, !annotation !281
  %7 = getelementptr inbounds [2 x i8], ptr %crc.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !281
  %crc16_enabled.i = getelementptr inbounds %struct.wilc_spi, ptr %5, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end37.i.do.body.i_crit_edge, %if.end4
  %sz.addr.0.i = phi i32 [ %size, %if.end4 ], [ %sub.i, %if.end37.i.do.body.i_crit_edge ]
  %ix.0.i = phi i32 [ 0, %if.end4 ], [ %add.i, %if.end37.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %sz.addr.0.i)
  %cmp.i = icmp ult i32 %sz.addr.0.i, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ix.0.i)
  %cmp1.i = icmp eq i32 %ix.0.i, 0
  %..i = select i1 %cmp1.i, i8 -15, i8 -14
  %nbytes.0.i = select i1 %cmp.i, i32 %sz.addr.0.i, i32 8192
  %order.0.i = select i1 %cmp.i, i8 -13, i8 %..i
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %order.0.i, ptr %cmd.i, align 1
  %call7.i = call fastcc i32 @wilc_spi_tx(ptr noundef %wilc, ptr noundef nonnull %cmd.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %do.body.i.do.end10_crit_edge

do.body.i.do.end10_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

if.end11.i:                                       ; preds = %do.body.i
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %ix.0.i
  %call12.i = call fastcc i32 @wilc_spi_tx(ptr noundef %wilc, ptr noundef %arrayidx.i, i32 noundef %nbytes.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %if.end11.i.do.end10_crit_edge

if.end11.i.do.end10_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

if.end19.i:                                       ; preds = %if.end11.i
  %10 = ptrtoint ptr %crc16_enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %crc16_enabled.i, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not.i = icmp eq i8 %11, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end37.i_crit_edge, label %if.then21.i

if.end19.i.if.end37.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then21.i:                                      ; preds = %if.end19.i
  %call23.i = call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %arrayidx.i, i32 noundef %nbytes.0.i) #8
  %12 = lshr i16 %call23.i, 8
  %conv25.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %crc.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv25.i, ptr %crc.i, align 1
  %conv27.i = trunc i16 %call23.i to i8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv27.i, ptr %7, align 1
  %call29.i = call fastcc i32 @wilc_spi_tx(ptr noundef %wilc, ptr noundef nonnull %crc.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then21.i.if.end37.i_crit_edge, label %if.then21.i.do.end10_crit_edge

if.then21.i.do.end10_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

if.then21.i.if.end37.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then21.i.if.end37.i_crit_edge, %if.end19.i.if.end37.i_crit_edge
  %add.i = add i32 %nbytes.0.i, %ix.0.i
  %sub.i = sub i32 %sz.addr.0.i, %nbytes.0.i
  %tobool39.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool39.not.i, label %if.end12, label %if.end37.i.do.body.i_crit_edge

if.end37.i.do.body.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end10:                                         ; preds = %if.then21.i.do.end10_crit_edge, %if.end11.i.do.end10_crit_edge, %do.body.i.do.end10_crit_edge
  %.str.97.sink.i = phi ptr [ @.str.91, %do.body.i.do.end10_crit_edge ], [ @.str.94, %if.end11.i.do.end10_crit_edge ], [ @.str.97, %if.then21.i.do.end10_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.97.sink.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crc.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.89) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end37.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crc.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp.i) #8
  %17 = getelementptr inbounds [4 x i8], ptr %rsp.i, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i8], ptr %rsp.i, i32 0, i32 3
  %19 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %rsp.i, align 4
  %call1.i = call fastcc i32 @wilc_spi_rx(ptr noundef %wilc, ptr noundef nonnull %rsp.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i26 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i26, label %do.end17.preheader.i, label %do.end.i

do.end17.preheader.i:                             ; preds = %if.end12
  %20 = getelementptr inbounds [4 x i8], ptr %rsp.i, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 2
  %.mask.i = and i8 %22, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %.mask.i)
  %cmp18.i = icmp eq i8 %.mask.i, -64
  br i1 %cmp18.i, label %do.end17.preheader.i.do.end52.i_crit_edge, label %for.inc.i

do.end17.preheader.i.do.end52.i_crit_edge:        ; preds = %do.end17.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.104) #12
  br label %spi_data_rsp.exit

for.inc.i:                                        ; preds = %do.end17.preheader.i
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %17, align 1
  %.mask.1.i = and i8 %24, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %.mask.1.i)
  %cmp18.1.i = icmp eq i8 %.mask.1.i, -64
  br i1 %cmp18.1.i, label %for.inc.i.do.end52.i_crit_edge, label %for.inc.1.i

for.inc.i.do.end52.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %25 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rsp.i, align 4
  %.mask.2.i = and i8 %26, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %.mask.2.i)
  %cmp18.2.i = icmp eq i8 %.mask.2.i, -64
  br i1 %cmp18.2.i, label %for.inc.1.i.do.end52.i_crit_edge, label %for.inc.2.i

for.inc.1.i.do.end52.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv30.i = zext i8 %26 to i32
  %conv32.i = zext i8 %24 to i32
  %conv34.i = zext i8 %22 to i32
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %18, align 1
  %conv36.i = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.107, i32 noundef %conv30.i, i32 noundef %conv32.i, i32 noundef %conv34.i, i32 noundef %conv36.i) #12
  br label %spi_data_rsp.exit

do.end52.i:                                       ; preds = %for.inc.1.i.do.end52.i_crit_edge, %for.inc.i.do.end52.i_crit_edge, %do.end17.preheader.i.do.end52.i_crit_edge
  %i.03.lcssa.i = phi i32 [ 2, %do.end17.preheader.i.do.end52.i_crit_edge ], [ 1, %for.inc.i.do.end52.i_crit_edge ], [ 0, %for.inc.1.i.do.end52.i_crit_edge ]
  %arrayidx54.i = getelementptr [4 x i8], ptr %rsp.i, i32 0, i32 %i.03.lcssa.i
  %29 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx54.i, align 1
  %31 = and i8 %30, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp58.not.i = icmp eq i8 %31, 3
  %add.i27 = add nuw nsw i32 %i.03.lcssa.i, 1
  br i1 %cmp58.not.i, label %lor.lhs.false.i, label %do.end52.i.do.end67.i_crit_edge

do.end52.i.do.end67.i_crit_edge:                  ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67.i

lor.lhs.false.i:                                  ; preds = %do.end52.i
  %arrayidx60.i = getelementptr [4 x i8], ptr %rsp.i, i32 0, i32 %add.i27
  %32 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx60.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp62.not.i = icmp eq i8 %33, 0
  br i1 %cmp62.not.i, label %lor.lhs.false.i.spi_data_rsp.exit_crit_edge, label %lor.lhs.false.i.do.end67.i_crit_edge

lor.lhs.false.i.do.end67.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67.i

lor.lhs.false.i.spi_data_rsp.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_data_rsp.exit

do.end67.i:                                       ; preds = %lor.lhs.false.i.do.end67.i_crit_edge, %do.end52.i.do.end67.i_crit_edge
  %conv70.i = zext i8 %30 to i32
  %arrayidx72.i = getelementptr [4 x i8], ptr %rsp.i, i32 0, i32 %add.i27
  %34 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %35 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.110, i32 noundef %conv70.i, i32 noundef %conv73.i) #12
  br label %spi_data_rsp.exit

spi_data_rsp.exit:                                ; preds = %do.end67.i, %lor.lhs.false.i.spi_data_rsp.exit_crit_edge, %for.inc.2.i, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ -1, %for.inc.2.i ], [ -1, %do.end67.i ], [ 0, %lor.lhs.false.i.spi_data_rsp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_data_rsp.exit, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %do.end10 ], [ %retval.0.i, %spi_data_rsp.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_read_int(ptr nocapture noundef readonly %wilc, ptr noundef %int_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %bus_data.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data.i, align 4
  %call1.i = tail call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -60, i32 noundef 64, ptr noundef %int_status, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %probing_crc.i = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %probing_crc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %probing_crc.i, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp eq i8 %5, 0
  br i1 %tobool2.not.i, label %do.end.i, label %if.then.i.spi_internal_read.exit_crit_edge

if.then.i.spi_internal_read.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_internal_read.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %spi_internal_read.exit

if.end5.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_status, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %int_status, align 4
  br label %spi_internal_read.exit

spi_internal_read.exit:                           ; preds = %if.end5.i, %do.end.i, %if.then.i.spi_internal_read.exit_crit_edge
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_clear_int_ext(ptr nocapture noundef readonly %wilc, i32 noundef %val) #2 align 64 {
entry:
  %check = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %check) #8
  %0 = ptrtoint ptr %check to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %check, align 4, !annotation !281
  %dev.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %bus_data.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %call1.i = call fastcc i32 @wilc_spi_write_cmd(ptr noundef %wilc, i8 noundef zeroext -61, i32 noundef 68, i32 noundef %val, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.spi_internal_write.exit_crit_edge

entry.spi_internal_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_internal_write.exit

while.cond:                                       ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %call1.i.1 = call fastcc i32 @wilc_spi_write_cmd(ptr noundef %wilc, i8 noundef zeroext -61, i32 noundef 68, i32 noundef %val, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.1, label %while.cond.spi_internal_write.exit_crit_edge

while.cond.spi_internal_write.exit_crit_edge:     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_internal_write.exit

if.end.1:                                         ; preds = %while.cond
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %bus_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_data.i, align 4
  %call1.i13.1 = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -60, i32 noundef 68, ptr noundef nonnull %check, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13.1)
  %tobool.not.i14.1 = icmp eq i32 %call1.i13.1, 0
  br i1 %tobool.not.i14.1, label %if.end.1.while.end_crit_edge, label %if.end.1.if.then.i_crit_edge

if.end.1.if.then.i_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.1.while.end_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

spi_internal_write.exit:                          ; preds = %while.cond.spi_internal_write.exit_crit_edge, %entry.spi_internal_write.exit_crit_edge
  %.lcssa = phi ptr [ %2, %entry.spi_internal_write.exit_crit_edge ], [ %4, %while.cond.spi_internal_write.exit_crit_edge ]
  %call1.i.lcssa = phi i32 [ %call1.i, %entry.spi_internal_write.exit_crit_edge ], [ %call1.i.1, %while.cond.spi_internal_write.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %.lcssa, ptr noundef nonnull @.str.42) #12
  br label %while.end

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %bus_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus_data.i, align 4
  %call1.i13 = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -60, i32 noundef 68, ptr noundef nonnull %check, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %lor.lhs.false, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.1.if.then.i_crit_edge
  %.lcssa28 = phi ptr [ %10, %if.end.if.then.i_crit_edge ], [ %6, %if.end.1.if.then.i_crit_edge ]
  %.lcssa26 = phi ptr [ %12, %if.end.if.then.i_crit_edge ], [ %8, %if.end.1.if.then.i_crit_edge ]
  %call1.i13.lcssa = phi i32 [ %call1.i13, %if.end.if.then.i_crit_edge ], [ %call1.i13.1, %if.end.1.if.then.i_crit_edge ]
  %probing_crc.i = getelementptr inbounds %struct.wilc_spi, ptr %.lcssa26, i32 0, i32 1
  %13 = ptrtoint ptr %probing_crc.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %probing_crc.i, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not.i = icmp eq i8 %14, 0
  br i1 %tobool2.not.i, label %do.end.i15, label %if.then.i.while.end_crit_edge

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end.i15:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %.lcssa28, ptr noundef nonnull @.str.15) #12
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %check, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %check to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %check, align 4
  %19 = xor i32 %17, %val
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %lor.lhs.false.while.end_crit_edge, label %while.cond

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %lor.lhs.false.while.end_crit_edge, %do.end.i15, %if.then.i.while.end_crit_edge, %spi_internal_write.exit, %if.end.1.while.end_crit_edge
  %ret.1 = phi i32 [ %call1.i.lcssa, %spi_internal_write.exit ], [ %call1.i13.lcssa, %if.then.i.while.end_crit_edge ], [ %call1.i13.lcssa, %do.end.i15 ], [ 0, %lor.lhs.false.while.end_crit_edge ], [ 0, %if.end.1.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %check) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_read_size(ptr nocapture noundef readonly %wilc, ptr noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %bus_data.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data.i, align 4
  %call1.i = tail call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -60, i32 noundef 64, ptr noundef %size, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %probing_crc.i = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %probing_crc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %probing_crc.i, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp eq i8 %5, 0
  br i1 %tobool2.not.i, label %do.end.i, label %if.then.i.spi_internal_read.exit_crit_edge

if.then.i.spi_internal_read.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_internal_read.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %spi_internal_read.exit

if.end5.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %size, align 4
  br label %spi_internal_read.exit

spi_internal_read.exit:                           ; preds = %if.end5.i, %do.end.i, %if.then.i.spi_internal_read.exit_crit_edge
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %and = and i32 %11, 65535
  store i32 %and, ptr %size, align 4
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_sync_ext(ptr nocapture noundef readonly %wilc, i32 noundef %nint) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %nint)
  %cmp = icmp sgt i32 %nint, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.112, i32 noundef %nint) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -54, i32 noundef 5128, ptr noundef nonnull %reg, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 5128) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 5128) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %5 = or i32 %4, 65536
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reg, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call1.i106 = call fastcc i32 @wilc_spi_write_cmd(ptr noundef %wilc, i8 noundef zeroext -55, i32 noundef 5128, i32 noundef %6, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106)
  %tobool.not.i107 = icmp eq i32 %call1.i106, 0
  br i1 %tobool.not.i107, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.57, i32 noundef 5128) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.118, i32 noundef 5128) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call1.i110 = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -54, i32 noundef 6656, ptr noundef nonnull %reg, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110)
  %tobool.not.i111 = icmp eq i32 %call1.i110, 0
  br i1 %tobool.not.i111, label %wilc_spi_read_reg.exit114, label %do.end22

wilc_spi_read_reg.exit114:                        ; preds = %if.end16
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nint)
  %cmp26132 = icmp sgt i32 %nint, 0
  br i1 %cmp26132, label %for.body.preheader, label %wilc_spi_read_reg.exit114.for.end_crit_edge

wilc_spi_read_reg.exit114.for.end_crit_edge:      ; preds = %wilc_spi_read_reg.exit114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %wilc_spi_read_reg.exit114
  %16 = add nsw i32 %nint, -1
  %or27 = or i32 %14, 134217728
  %dec = add nsw i32 %nint, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %exitcond.not = icmp eq i32 %16, 0
  br i1 %exitcond.not, label %for.body.preheader.for.cond.for.end_crit_edge_crit_edge, label %for.body.1

for.body.preheader.for.cond.for.end_crit_edge_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.for.end_crit_edge

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.55, i32 noundef 6656) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 6656) #12
  br label %cleanup

for.body.1:                                       ; preds = %for.body.preheader
  %or27.1 = or i32 %14, 402653184
  %dec.1 = add nsw i32 %nint, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %exitcond.not.1 = icmp eq i32 %16, 1
  br i1 %exitcond.not.1, label %for.body.1.for.cond.for.end_crit_edge_crit_edge, label %for.body.2

for.body.1.for.cond.for.end_crit_edge_crit_edge:  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.for.end_crit_edge

for.body.2:                                       ; preds = %for.body.1
  %or27.2 = or i32 %14, 939524096
  %dec.2 = add nsw i32 %nint, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %exitcond.not.2 = icmp eq i32 %16, 2
  br i1 %exitcond.not.2, label %for.body.2.for.cond.for.end_crit_edge_crit_edge, label %for.body.3

for.body.2.for.cond.for.end_crit_edge_crit_edge:  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.for.end_crit_edge

for.body.3:                                       ; preds = %for.body.2
  %or27.3 = or i32 %14, 2013265920
  %dec.3 = add nsw i32 %nint, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %exitcond.not.3 = icmp eq i32 %16, 3
  br i1 %exitcond.not.3, label %for.body.3.for.cond.for.end_crit_edge_crit_edge, label %for.body.4

for.body.3.for.cond.for.end_crit_edge_crit_edge:  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.for.end_crit_edge

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  %or27.4 = or i32 %14, -134217728
  %dec.4 = add nsw i32 %nint, -5
  br label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body.4, %for.body.3.for.cond.for.end_crit_edge_crit_edge, %for.body.2.for.cond.for.end_crit_edge_crit_edge, %for.body.1.for.cond.for.end_crit_edge_crit_edge, %for.body.preheader.for.cond.for.end_crit_edge_crit_edge
  %or27.lcssa = phi i32 [ %or27, %for.body.preheader.for.cond.for.end_crit_edge_crit_edge ], [ %or27.1, %for.body.1.for.cond.for.end_crit_edge_crit_edge ], [ %or27.2, %for.body.2.for.cond.for.end_crit_edge_crit_edge ], [ %or27.3, %for.body.3.for.cond.for.end_crit_edge_crit_edge ], [ %or27.4, %for.body.4 ]
  %dec.lcssa = phi i32 [ %dec, %for.body.preheader.for.cond.for.end_crit_edge_crit_edge ], [ %dec.1, %for.body.1.for.cond.for.end_crit_edge_crit_edge ], [ %dec.2, %for.body.2.for.cond.for.end_crit_edge_crit_edge ], [ %dec.3, %for.body.3.for.cond.for.end_crit_edge_crit_edge ], [ %dec.4, %for.body.4 ]
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or27.lcssa, ptr %reg, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %wilc_spi_read_reg.exit114.for.end_crit_edge
  %nint.addr.0.lcssa = phi i32 [ %dec.lcssa, %for.cond.for.end_crit_edge ], [ %nint, %wilc_spi_read_reg.exit114.for.end_crit_edge ]
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call1.i116 = call fastcc i32 @wilc_spi_write_cmd(ptr noundef %wilc, i8 noundef zeroext -55, i32 noundef 6656, i32 noundef %19, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116)
  %tobool.not.i117 = icmp eq i32 %call1.i116, 0
  br i1 %tobool.not.i117, label %if.end35, label %do.end33

do.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.57, i32 noundef 6656) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.118, i32 noundef 6656) #12
  br label %cleanup

if.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nint.addr.0.lcssa)
  %tobool36.not = icmp eq i32 %nint.addr.0.lcssa, 0
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call1.i121 = call fastcc i32 @wilc_spi_single_read(ptr noundef %wilc, i8 noundef zeroext -54, i32 noundef 6660, ptr noundef nonnull %reg, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %tobool.not.i122 = icmp eq i32 %call1.i121, 0
  br i1 %tobool.not.i122, label %wilc_spi_read_reg.exit125, label %do.end43

wilc_spi_read_reg.exit125:                        ; preds = %if.then37
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nint.addr.0.lcssa)
  %cmp49139 = icmp sgt i32 %nint.addr.0.lcssa, 0
  br i1 %cmp49139, label %for.body51.preheader, label %wilc_spi_read_reg.exit125.for.end57_crit_edge

wilc_spi_read_reg.exit125.for.end57_crit_edge:    ; preds = %wilc_spi_read_reg.exit125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end57

for.body51.preheader:                             ; preds = %wilc_spi_read_reg.exit125
  call void @__sanitizer_cov_trace_pc() #10
  %28 = add nsw i32 %nint.addr.0.lcssa, -1
  %umin144 = call i32 @llvm.umin.i32(i32 %28, i32 2)
  %or53 = or i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin144)
  %exitcond145.not = icmp eq i32 %umin144, 0
  %or53.1 = or i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin144)
  %exitcond145.not.1 = icmp eq i32 %umin144, 1
  %or53.2 = or i32 %26, 7
  %spec.select = select i1 %exitcond145.not.1, i32 %or53.1, i32 %or53.2
  %or53.lcssa = select i1 %exitcond145.not, i32 %or53, i32 %spec.select
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or53.lcssa, ptr %reg, align 4
  br label %for.end57

do.end43:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.55, i32 noundef 6660) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 6660) #12
  br label %cleanup

for.end57:                                        ; preds = %for.body51.preheader, %wilc_spi_read_reg.exit125.for.end57_crit_edge
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg, align 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %call1.i127 = call fastcc i32 @wilc_spi_write_cmd(ptr noundef %wilc, i8 noundef zeroext -55, i32 noundef 6660, i32 noundef %31, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i127)
  %tobool.not.i128 = icmp eq i32 %call1.i127, 0
  br i1 %tobool.not.i128, label %for.end57.cleanup_crit_edge, label %do.end63

for.end57.cleanup_crit_edge:                      ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end63:                                         ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.57, i32 noundef 6660) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.118, i32 noundef 6660) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %for.end57.cleanup_crit_edge, %do.end43, %if.end35.cleanup_crit_edge, %do.end33, %do.end22, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1.i, %do.end6 ], [ %call1.i106, %do.end14 ], [ %call1.i110, %do.end22 ], [ %call1.i116, %do.end33 ], [ %call1.i121, %do.end43 ], [ %call1.i127, %do.end63 ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %for.end57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_spi_reset(ptr nocapture noundef readonly %wilc) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %tr.i.i = alloca %struct.spi_transfer, align 4
  %wb.i = alloca [32 x i8], align 1
  %rb.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wb.i) #8
  %4 = getelementptr inbounds [32 x i8], ptr %wb.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rb.i) #8
  %5 = getelementptr inbounds i8, ptr %wb.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 28)
  %7 = call ptr @memset(ptr %rb.i, i32 0, i32 32)
  %8 = ptrtoint ptr %wb.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -49, ptr %wb.i, align 1
  %9 = call ptr @memset(ptr %4, i32 255, i32 3)
  %crc7_enabled.i = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %crc7_enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %crc7_enabled.i, align 2, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.if.end27.i_crit_edge, label %if.then17.i

entry.if.end27.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call zeroext i8 @crc7_be(i8 noundef zeroext -2, ptr noundef nonnull %wb.i, i32 noundef 4) #8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call.i.i, ptr %5, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then17.i, %entry.if.end27.i_crit_edge
  %cmd_len.0.i = phi i32 [ 5, %if.then17.i ], [ 4, %entry.if.end27.i_crit_edge ]
  %add22.i = add nuw nsw i32 %cmd_len.0.i, 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tr.i.i) #8
  %15 = getelementptr inbounds i8, ptr %tr.i.i, i32 12
  %16 = call ptr @memset(ptr %15, i32 0, i32 84)
  %17 = ptrtoint ptr %tr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wb.i, ptr %tr.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rb.i, ptr %rx_buf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add22.i, ptr %len.i.i, align 4
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %bits_per_word.i.i, align 1
  %21 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %22 = getelementptr inbounds i8, ptr %msg.i.i, i32 12
  %23 = call ptr @memset(ptr %22, i32 0, i32 36)
  %24 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %14, ptr %21, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end27.i.spi_message_add_tail.exit.i.i_crit_edge

if.end27.i.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i.i, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.end27.i.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %wilc_spi_tx_rx.exit.thread.i, label %wilc_spi_tx_rx.exit.i

wilc_spi_tx_rx.exit.thread.i:                     ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.37) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  br label %do.end36.i

wilc_spi_tx_rx.exit.i:                            ; preds = %spi_message_add_tail.exit.i.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool32.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool32.not.i, label %if.end38.i, label %wilc_spi_tx_rx.exit.i.do.end36.i_crit_edge

wilc_spi_tx_rx.exit.i.do.end36.i_crit_edge:       ; preds = %wilc_spi_tx_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36.i

do.end36.i:                                       ; preds = %wilc_spi_tx_rx.exit.i.do.end36.i_crit_edge, %wilc_spi_tx_rx.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #12
  br label %land.lhs.true

if.end38.i:                                       ; preds = %wilc_spi_tx_rx.exit.i
  %arrayidx39.i = getelementptr [32 x i8], ptr %rb.i, i32 0, i32 %cmd_len.0.i
  %rsp_cmd_type.i = getelementptr inbounds %struct.wilc_spi_special_cmd_rsp, ptr %arrayidx39.i, i32 0, i32 1
  %33 = ptrtoint ptr %rsp_cmd_type.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rsp_cmd_type.i, align 1
  %conv40.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -49, i8 %34)
  %cmp42.not.i = icmp eq i8 %34, -49
  br i1 %cmp42.not.i, label %if.end55.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end38.i
  %probing_crc.i = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %probing_crc.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %probing_crc.i, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool45.not.i = icmp eq i8 %36, 0
  br i1 %tobool45.not.i, label %do.end49.i, label %if.then44.i.land.lhs.true_crit_edge

if.then44.i.land.lhs.true_crit_edge:              ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

do.end49.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef 207, i32 noundef %conv40.i) #12
  br label %land.lhs.true

if.end55.i:                                       ; preds = %if.end38.i
  %status.i = getelementptr inbounds %struct.wilc_spi_special_cmd_rsp, ptr %arrayidx39.i, i32 0, i32 2
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp57.not.i = icmp eq i8 %38, 0
  br i1 %cmp57.not.i, label %wilc_spi_special_cmd.exit, label %do.end62.i

do.end62.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv56.i = zext i8 %38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %conv56.i) #12
  br label %land.lhs.true

wilc_spi_special_cmd.exit:                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rb.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wb.i) #8
  br label %if.end

land.lhs.true:                                    ; preds = %do.end62.i, %do.end49.i, %if.then44.i.land.lhs.true_crit_edge, %do.end36.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rb.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wb.i) #8
  %probing_crc = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %probing_crc to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %probing_crc, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool2.not = icmp eq i8 %40, 0
  br i1 %tobool2.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.128) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %wilc_spi_special_cmd.exit
  %retval.0.i10 = phi i32 [ -22, %do.end ], [ -22, %land.lhs.true.if.end_crit_edge ], [ 0, %wilc_spi_special_cmd.exit ]
  ret i32 %retval.0.i10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_spi_single_read(ptr nocapture noundef readonly %wilc, i8 noundef zeroext %cmd, i32 noundef %adr, ptr noundef writeonly %b, i8 noundef zeroext %clockless) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %tr.i = alloca %struct.spi_transfer, align 4
  %wb = alloca [32 x i8], align 1
  %rb = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wb) #8
  %4 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 1
  %5 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 2
  %6 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 3
  %7 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rb) #8
  %8 = getelementptr inbounds i8, ptr %wb, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 31)
  %10 = call ptr @memset(ptr %rb, i32 0, i32 32)
  %11 = ptrtoint ptr %wb to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cmd, ptr %wb, align 1
  %conv = zext i8 %cmd to i32
  %12 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %cmd, label %do.end [
    i8 -54, label %if.then
    i8 -60, label %if.then17
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %adr, 16
  %conv4 = trunc i32 %shr to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %4, align 1
  %shr5 = lshr i32 %adr, 8
  %conv6 = trunc i32 %shr5 to i8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv6, ptr %5, align 1
  %conv10 = trunc i32 %adr to i8
  br label %if.end43

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr18 = lshr i32 %adr, 8
  %conv19 = trunc i32 %shr18 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %clockless)
  %cmp24 = icmp eq i8 %clockless, 1
  %conv31 = or i8 %conv19, -128
  %storemerge = select i1 %cmp24, i8 %conv31, i8 %conv19
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %storemerge, ptr %4, align 1
  %conv32 = trunc i32 %adr to i8
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv32, ptr %5, align 1
  br label %if.end43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %conv) #12
  br label %cleanup

if.end43:                                         ; preds = %if.then17, %if.then
  %storemerge225 = phi i8 [ 0, %if.then17 ], [ %conv10, %if.then ]
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %storemerge225, ptr %6, align 1
  %crc7_enabled = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %crc7_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %crc7_enabled, align 2, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end43.if.end59_crit_edge, label %if.then44

if.end43.if.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then44:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call zeroext i8 @crc7_be(i8 noundef zeroext -2, ptr noundef nonnull %wb, i32 noundef 4) #8
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call.i, ptr %7, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then44, %if.end43.if.end59_crit_edge
  %cmd_len.0 = phi i32 [ 5, %if.then44 ], [ 4, %if.end43.if.end59_crit_edge ]
  %resp_len.0 = phi i32 [ 17, %if.then44 ], [ 15, %if.end43.if.end59_crit_edge ]
  %add51 = add nuw nsw i32 %resp_len.0, %cmd_len.0
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tr.i) #8
  %23 = getelementptr inbounds i8, ptr %tr.i, i32 12
  %24 = call ptr @memset(ptr %23, i32 0, i32 84)
  %25 = ptrtoint ptr %tr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %wb, ptr %tr.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 1
  %26 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rb, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 2
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add51, ptr %len.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 8
  %28 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %bits_per_word.i, align 1
  %29 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %30 = getelementptr inbounds i8, ptr %msg.i, i32 12
  %31 = call ptr @memset(ptr %30, i32 0, i32 36)
  %32 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %34 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %22, ptr %29, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end59.spi_message_add_tail.exit.i_crit_edge

if.end59.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %38 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 18, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %40 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end59.spi_message_add_tail.exit.i_crit_edge
  %call2.i = call i32 @spi_sync(ptr noundef %22, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %wilc_spi_tx_rx.exit.thread, label %wilc_spi_tx_rx.exit

wilc_spi_tx_rx.exit.thread:                       ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.37) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  br label %do.end68

wilc_spi_tx_rx.exit:                              ; preds = %spi_message_add_tail.exit.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool64.not = icmp eq i32 %call2.i, 0
  br i1 %tobool64.not, label %if.end70, label %wilc_spi_tx_rx.exit.do.end68_crit_edge

wilc_spi_tx_rx.exit.do.end68_crit_edge:           ; preds = %wilc_spi_tx_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

do.end68:                                         ; preds = %wilc_spi_tx_rx.exit.do.end68_crit_edge, %wilc_spi_tx_rx.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end70:                                         ; preds = %wilc_spi_tx_rx.exit
  %arrayidx71 = getelementptr [32 x i8], ptr %rb, i32 0, i32 %cmd_len.0
  %41 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %cmd)
  %cmp74.not = icmp ne i8 %42, %cmd
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %clockless)
  %tobool76.not = icmp eq i8 %clockless, 0
  %or.cond = and i1 %tobool76.not, %cmp74.not
  br i1 %or.cond, label %if.then77, label %if.end88

if.then77:                                        ; preds = %if.end70
  %probing_crc = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %probing_crc to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %probing_crc, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool78.not = icmp eq i8 %44, 0
  br i1 %tobool78.not, label %do.end82, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end82:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv72) #12
  br label %cleanup

if.end88:                                         ; preds = %if.end70
  %status = getelementptr inbounds %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 1
  %45 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp90.not = icmp ne i8 %46, 0
  %or.cond219 = and i1 %tobool76.not, %cmp90.not
  br i1 %or.cond219, label %do.end97, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end88
  %arrayidx104 = getelementptr %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 2, i32 0
  %47 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %48)
  %cmp107 = icmp ugt i8 %48, -17
  br i1 %cmp107, label %for.body.preheader.if.end118_crit_edge, label %for.inc

for.body.preheader.if.end118_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

do.end97:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %conv89 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %conv89) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx104.1 = getelementptr %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx104.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %50)
  %cmp107.1 = icmp ugt i8 %50, -17
  br i1 %cmp107.1, label %for.inc.if.end118_crit_edge, label %for.inc.1

for.inc.if.end118_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

for.inc.1:                                        ; preds = %for.inc
  %arrayidx104.2 = getelementptr %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx104.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %52)
  %cmp107.2 = icmp ugt i8 %52, -17
  br i1 %cmp107.2, label %for.inc.1.if.end118_crit_edge, label %for.inc.2

for.inc.1.if.end118_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx104.3 = getelementptr %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 2, i32 3
  %53 = ptrtoint ptr %arrayidx104.3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx104.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %54)
  %cmp107.3 = icmp ugt i8 %54, -17
  br i1 %cmp107.3, label %for.inc.2.if.end118_crit_edge, label %for.inc.3

for.inc.2.if.end118_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx104.4 = getelementptr %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %arrayidx104.4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx104.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %56)
  %cmp107.4 = icmp ugt i8 %56, -17
  br i1 %cmp107.4, label %for.inc.3.if.end118_crit_edge, label %for.inc.4

for.inc.3.if.end118_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx104.5 = getelementptr %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 2, i32 5
  %57 = ptrtoint ptr %arrayidx104.5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx104.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %58)
  %cmp107.5 = icmp ugt i8 %58, -17
  br i1 %cmp107.5, label %for.inc.4.if.end118_crit_edge, label %for.inc.5

for.inc.4.if.end118_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx104.6 = getelementptr %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 2, i32 6
  %59 = ptrtoint ptr %arrayidx104.6 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx104.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %60)
  %cmp107.6 = icmp ugt i8 %60, -17
  br i1 %cmp107.6, label %for.inc.5.if.end118_crit_edge, label %for.inc.6

for.inc.5.if.end118_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx104.7 = getelementptr %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 2, i32 7
  %61 = ptrtoint ptr %arrayidx104.7 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx104.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %62)
  %cmp107.7 = icmp ugt i8 %62, -17
  br i1 %cmp107.7, label %for.inc.6.if.end118_crit_edge, label %for.inc.7

for.inc.6.if.end118_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end118:                                        ; preds = %for.inc.6.if.end118_crit_edge, %for.inc.5.if.end118_crit_edge, %for.inc.4.if.end118_crit_edge, %for.inc.3.if.end118_crit_edge, %for.inc.2.if.end118_crit_edge, %for.inc.1.if.end118_crit_edge, %for.inc.if.end118_crit_edge, %for.body.preheader.if.end118_crit_edge
  %i.0223.lcssa = phi i32 [ 0, %for.body.preheader.if.end118_crit_edge ], [ 1, %for.inc.if.end118_crit_edge ], [ 2, %for.inc.1.if.end118_crit_edge ], [ 3, %for.inc.2.if.end118_crit_edge ], [ 4, %for.inc.3.if.end118_crit_edge ], [ 5, %for.inc.4.if.end118_crit_edge ], [ 6, %for.inc.5.if.end118_crit_edge ], [ 7, %for.inc.6.if.end118_crit_edge ]
  %arrayidx120 = getelementptr %struct.wilc_spi_rsp_data, ptr %arrayidx71, i32 0, i32 2, i32 %i.0223.lcssa
  %tobool121.not = icmp eq ptr %b, null
  br i1 %tobool121.not, label %if.end118.if.end125_crit_edge, label %if.then122

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %data123 = getelementptr inbounds %struct.wilc_spi_read_rsp_data, ptr %arrayidx120, i32 0, i32 1
  %63 = ptrtoint ptr %data123 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %data123, align 1
  %65 = ptrtoint ptr %b to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %b, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %if.end118.if.end125_crit_edge
  br i1 %tobool76.not, label %land.lhs.true127, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true127:                                 ; preds = %if.end125
  %crc16_enabled = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 3
  %66 = ptrtoint ptr %crc16_enabled to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %crc16_enabled, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool128.not = icmp eq i8 %67, 0
  br i1 %tobool128.not, label %land.lhs.true127.cleanup_crit_edge, label %if.then130

land.lhs.true127.cleanup_crit_edge:               ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then130:                                       ; preds = %land.lhs.true127
  %crc131 = getelementptr inbounds %struct.wilc_spi_read_rsp_data, ptr %arrayidx120, i32 0, i32 2
  %68 = ptrtoint ptr %crc131 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %crc131, align 1
  %conv133 = zext i8 %69 to i32
  %shl = shl nuw nsw i32 %conv133, 8
  %arrayidx135 = getelementptr %struct.wilc_spi_read_rsp_data, ptr %arrayidx120, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %71 to i32
  %or137 = or i32 %shl, %conv136
  %data139 = getelementptr inbounds %struct.wilc_spi_read_rsp_data, ptr %arrayidx120, i32 0, i32 1
  %call141 = call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %data139, i32 noundef 4) #8
  %conv143 = zext i16 %call141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or137, i32 %conv143)
  %cmp144.not = icmp eq i32 %or137, %conv143
  br i1 %cmp144.not, label %if.then130.cleanup_crit_edge, label %do.end149

if.then130.cleanup_crit_edge:                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end149:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.18, i32 noundef %or137, i32 noundef %conv143) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end149, %if.then130.cleanup_crit_edge, %land.lhs.true127.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %for.inc.7, %do.end97, %do.end82, %if.then77.cleanup_crit_edge, %do.end68, %do.end
  %retval.0 = phi i32 [ -22, %do.end68 ], [ -22, %for.inc.7 ], [ -22, %do.end149 ], [ -22, %do.end97 ], [ -22, %do.end ], [ -22, %do.end82 ], [ -22, %if.then77.cleanup_crit_edge ], [ 0, %if.then130.cleanup_crit_edge ], [ 0, %land.lhs.true127.cleanup_crit_edge ], [ 0, %if.end125.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rb) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wb) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc7_be(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_spi_write_cmd(ptr nocapture noundef readonly %wilc, i8 noundef zeroext %cmd, i32 noundef %adr, i32 noundef %data, i8 noundef zeroext %clockless) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %tr.i = alloca %struct.spi_transfer, align 4
  %wb = alloca [32 x i8], align 1
  %rb = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wb) #8
  %4 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 1
  %5 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 2
  %6 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 3
  %7 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rb) #8
  %8 = getelementptr inbounds i8, ptr %wb, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 31)
  %10 = call ptr @memset(ptr %rb, i32 0, i32 32)
  %11 = ptrtoint ptr %wb to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cmd, ptr %wb, align 1
  %conv = zext i8 %cmd to i32
  %12 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %cmd, label %do.end [
    i8 -61, label %if.then
    i8 -55, label %if.then29
  ]

if.then:                                          ; preds = %entry
  %shr = lshr i32 %adr, 8
  %conv4 = trunc i32 %shr to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %clockless)
  %cmp6 = icmp eq i8 %clockless, 1
  %conv13 = or i8 %conv4, -128
  %storemerge = select i1 %cmp6, i8 %conv13, i8 %conv4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %storemerge, ptr %4, align 1
  %conv14 = trunc i32 %adr to i8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14, ptr %5, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %data, ptr %6, align 1
  %crc7_enabled = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %crc7_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %crc7_enabled, align 2, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.then.if.end59_crit_edge, label %if.then20

if.then.if.end59_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call zeroext i8 @crc7_be(i8 noundef zeroext -2, ptr noundef nonnull %wb, i32 noundef 7) #8
  %crc = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 7
  %18 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call.i, ptr %crc, align 1
  br label %if.end59

if.then29:                                        ; preds = %entry
  %19 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 4
  %shr30 = lshr i32 %adr, 16
  %conv31 = trunc i32 %shr30 to i8
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv31, ptr %4, align 1
  %shr35 = lshr i32 %adr, 8
  %conv36 = trunc i32 %shr35 to i8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv36, ptr %5, align 1
  %conv40 = trunc i32 %adr to i8
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv40, ptr %6, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %data, ptr %19, align 1
  %crc7_enabled46 = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %crc7_enabled46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %crc7_enabled46, align 2, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool47.not = icmp eq i8 %25, 0
  br i1 %tobool47.not, label %if.then29.if.end59_crit_edge, label %if.then48

if.then29.if.end59_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then48:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %call.i161 = call zeroext i8 @crc7_be(i8 noundef zeroext -2, ptr noundef nonnull %wb, i32 noundef 8) #8
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call.i161, ptr %7, align 1
  br label %if.end59

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %conv) #12
  br label %cleanup

if.end59:                                         ; preds = %if.then48, %if.then29.if.end59_crit_edge, %if.then20, %if.then.if.end59_crit_edge
  %cmd_len.0 = phi i32 [ 7, %if.then20 ], [ 7, %if.then.if.end59_crit_edge ], [ 8, %if.then48 ], [ 8, %if.then29.if.end59_crit_edge ]
  %crc7_enabled60 = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %crc7_enabled60 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %crc7_enabled60, align 2, !range !282
  %29 = zext i8 %28 to i32
  %spec.select = add nuw nsw i32 %cmd_len.0, %29
  %add64 = add nuw nsw i32 %spec.select, 2
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tr.i) #8
  %32 = getelementptr inbounds i8, ptr %tr.i, i32 12
  %33 = call ptr @memset(ptr %32, i32 0, i32 84)
  %34 = ptrtoint ptr %tr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %wb, ptr %tr.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 1
  %35 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rb, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 2
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add64, ptr %len.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 8
  %37 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %bits_per_word.i, align 1
  %38 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %39 = getelementptr inbounds i8, ptr %msg.i, i32 12
  %40 = call ptr @memset(ptr %39, i32 0, i32 36)
  %41 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %43 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %31, ptr %38, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end59.spi_message_add_tail.exit.i_crit_edge

if.end59.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %47 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %49 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end59.spi_message_add_tail.exit.i_crit_edge
  %call2.i = call i32 @spi_sync(ptr noundef %31, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %wilc_spi_tx_rx.exit.thread, label %wilc_spi_tx_rx.exit

wilc_spi_tx_rx.exit.thread:                       ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.37) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  br label %do.end81

wilc_spi_tx_rx.exit:                              ; preds = %spi_message_add_tail.exit.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool77.not = icmp eq i32 %call2.i, 0
  br i1 %tobool77.not, label %if.end83, label %wilc_spi_tx_rx.exit.do.end81_crit_edge

wilc_spi_tx_rx.exit.do.end81_crit_edge:           ; preds = %wilc_spi_tx_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end81

do.end81:                                         ; preds = %wilc_spi_tx_rx.exit.do.end81_crit_edge, %wilc_spi_tx_rx.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end83:                                         ; preds = %wilc_spi_tx_rx.exit
  %arrayidx84 = getelementptr [32 x i8], ptr %rb, i32 0, i32 %spec.select
  %50 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx84, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %cmd)
  %cmp87.not = icmp ne i8 %51, %cmd
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %clockless)
  %tobool89.not = icmp eq i8 %clockless, 0
  %or.cond = and i1 %tobool89.not, %cmp87.not
  br i1 %or.cond, label %do.end93, label %if.end98

do.end93:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %conv85 = zext i8 %51 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv85) #12
  br label %cleanup

if.end98:                                         ; preds = %if.end83
  %status = getelementptr inbounds %struct.wilc_spi_rsp_data, ptr %arrayidx84, i32 0, i32 1
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp100.not = icmp ne i8 %53, 0
  %or.cond160 = and i1 %tobool89.not, %cmp100.not
  br i1 %or.cond160, label %do.end107, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end107:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %conv99 = zext i8 %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %conv99) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %if.end98.cleanup_crit_edge, %do.end93, %do.end81, %do.end
  %retval.0 = phi i32 [ -22, %do.end81 ], [ -22, %do.end107 ], [ -22, %do.end93 ], [ -22, %do.end ], [ 0, %if.end98.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rb) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_spi_dma_rw(ptr nocapture noundef readonly %wilc, i8 noundef zeroext %cmd, i32 noundef %adr, ptr noundef %b, i32 noundef %sz) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %tr.i = alloca %struct.spi_transfer, align 4
  %wb = alloca [32 x i8], align 1
  %rb = alloca [32 x i8], align 1
  %crc = alloca [2 x i8], align 1
  %rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wb) #8
  %4 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 1
  %5 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 2
  %6 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 3
  %7 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rb) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crc) #8
  %8 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %crc, align 1, !annotation !281
  %9 = getelementptr inbounds [2 x i8], ptr %crc, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !281
  %11 = getelementptr inbounds i8, ptr %wb, i32 7
  %12 = call ptr @memset(ptr %11, i32 0, i32 25)
  %13 = call ptr @memset(ptr %rb, i32 0, i32 32)
  %14 = ptrtoint ptr %wb to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %cmd, ptr %wb, align 1
  %conv = zext i8 %cmd to i32
  %shr39 = lshr i32 %adr, 16
  %conv40 = trunc i32 %shr39 to i8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv40, ptr %4, align 1
  %shr44 = lshr i32 %adr, 8
  %conv45 = trunc i32 %shr44 to i8
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv45, ptr %5, align 1
  %conv49 = trunc i32 %adr to i8
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv49, ptr %6, align 1
  %shr53 = lshr i32 %sz, 16
  %conv54 = trunc i32 %shr53 to i8
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv54, ptr %7, align 1
  %shr58 = lshr i32 %sz, 8
  %conv59 = trunc i32 %shr58 to i8
  %arrayidx62 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv59, ptr %arrayidx62, align 1
  %conv63 = trunc i32 %sz to i8
  %arrayidx66 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv63, ptr %arrayidx66, align 1
  %crc7_enabled67 = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %crc7_enabled67 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %crc7_enabled67, align 2, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool68.not = icmp eq i8 %22, 0
  br i1 %tobool68.not, label %entry.if.end80_crit_edge, label %if.then69

entry.if.end80_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then69:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call zeroext i8 @crc7_be(i8 noundef zeroext -2, ptr noundef nonnull %wb, i32 noundef 7) #8
  %crc73 = getelementptr inbounds [32 x i8], ptr %wb, i32 0, i32 7
  %23 = ptrtoint ptr %crc73 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call.i, ptr %crc73, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then69, %entry.if.end80_crit_edge
  %24 = ptrtoint ptr %crc7_enabled67 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %crc7_enabled67, align 2, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool82.not = icmp eq i8 %25, 0
  %spec.select = select i1 %tobool82.not, i32 7, i32 8
  %add85 = add nuw nsw i32 %spec.select, 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tr.i) #8
  %28 = getelementptr inbounds i8, ptr %tr.i, i32 12
  %29 = call ptr @memset(ptr %28, i32 0, i32 84)
  %30 = ptrtoint ptr %tr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %wb, ptr %tr.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 1
  %31 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %rb, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 2
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add85, ptr %len.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 8
  %33 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 8, ptr %bits_per_word.i, align 1
  %34 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %35 = getelementptr inbounds i8, ptr %msg.i, i32 12
  %36 = call ptr @memset(ptr %35, i32 0, i32 36)
  %37 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %39 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %27, ptr %34, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end80.spi_message_add_tail.exit.i_crit_edge

if.end80.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr.i, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %45 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end80.spi_message_add_tail.exit.i_crit_edge
  %call2.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %wilc_spi_tx_rx.exit.thread, label %wilc_spi_tx_rx.exit

wilc_spi_tx_rx.exit.thread:                       ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.37) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  br label %do.end102

wilc_spi_tx_rx.exit:                              ; preds = %spi_message_add_tail.exit.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool98.not = icmp eq i32 %call2.i, 0
  br i1 %tobool98.not, label %if.end104, label %wilc_spi_tx_rx.exit.do.end102_crit_edge

wilc_spi_tx_rx.exit.do.end102_crit_edge:          ; preds = %wilc_spi_tx_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102

do.end102:                                        ; preds = %wilc_spi_tx_rx.exit.do.end102_crit_edge, %wilc_spi_tx_rx.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #12
  br label %cleanup206

if.end104:                                        ; preds = %wilc_spi_tx_rx.exit
  %arrayidx105 = getelementptr [32 x i8], ptr %rb, i32 0, i32 %spec.select
  %46 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx105, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %cmd)
  %cmp108.not = icmp eq i8 %47, %cmd
  br i1 %cmp108.not, label %if.end118, label %do.end113

do.end113:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %conv106 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv106) #12
  br label %cleanup206

if.end118:                                        ; preds = %if.end104
  %status = getelementptr inbounds %struct.wilc_spi_rsp_data, ptr %arrayidx105, i32 0, i32 1
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp120.not = icmp eq i8 %49, 0
  br i1 %cmp120.not, label %lor.lhs.false133, label %do.end125

do.end125:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %conv119 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %conv119) #12
  br label %cleanup206

lor.lhs.false133:                                 ; preds = %if.end118
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %cmd)
  %cmp135 = icmp eq i8 %cmd, -57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz)
  %cmp139.not293 = icmp eq i32 %sz, 0
  %or.cond296 = or i1 %cmp135, %cmp139.not293
  br i1 %or.cond296, label %lor.lhs.false133.cleanup206_crit_edge, label %while.body.lr.ph

lor.lhs.false133.cleanup206_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup206

while.body.lr.ph:                                 ; preds = %lor.lhs.false133
  %crc16_enabled = getelementptr inbounds %struct.wilc_spi, ptr %3, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ix.0295 = phi i32 [ 0, %while.body.lr.ph ], [ %add204, %cleanup.while.body_crit_edge ]
  %sz.addr.0294 = phi i32 [ %sz, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rsp) #8
  %50 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %rsp, align 1, !annotation !281
  %51 = call i32 @llvm.umin.i32(i32 %sz.addr.0294, i32 8192)
  br label %do.body146

do.body146:                                       ; preds = %if.end154.do.body146_crit_edge, %while.body
  %retry.0 = phi i32 [ 100, %while.body ], [ %dec, %if.end154.do.body146_crit_edge ]
  %call147 = call fastcc i32 @wilc_spi_rx(ptr noundef %wilc, ptr noundef nonnull %rsp, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end154, label %do.end152

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.73) #12
  br label %cleanup.thread

if.end154:                                        ; preds = %do.body146
  %52 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rsp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %53)
  %cmp157 = icmp ugt i8 %53, -17
  %dec = add nsw i32 %retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool162.not = icmp eq i32 %retry.0, 0
  %or.cond = select i1 %cmp157, i1 true, i1 %tobool162.not
  br i1 %or.cond, label %do.end163, label %if.end154.do.body146_crit_edge

if.end154.do.body146_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

do.end163:                                        ; preds = %if.end154
  %arrayidx164 = getelementptr i8, ptr %b, i32 %ix.0295
  %call165 = call fastcc i32 @wilc_spi_rx(ptr noundef %wilc, ptr noundef %arrayidx164, i32 noundef %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end172, label %do.end170

do.end170:                                        ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.76) #12
  br label %cleanup.thread

if.end172:                                        ; preds = %do.end163
  %54 = ptrtoint ptr %crc16_enabled to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %crc16_enabled, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool173.not = icmp eq i8 %55, 0
  br i1 %tobool173.not, label %if.end172.cleanup_crit_edge, label %if.then174

if.end172.cleanup_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then174:                                       ; preds = %if.end172
  %call176 = call fastcc i32 @wilc_spi_rx(ptr noundef %wilc, ptr noundef nonnull %crc, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end183, label %do.end181

do.end181:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.79) #12
  br label %cleanup.thread

if.end183:                                        ; preds = %if.then174
  %56 = ptrtoint ptr %crc to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %crc, align 1
  %conv185 = zext i8 %57 to i32
  %shl = shl nuw nsw i32 %conv185, 8
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %9, align 1
  %conv187 = zext i8 %59 to i32
  %or = or i32 %shl, %conv187
  %call190 = call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %arrayidx164, i32 noundef %51) #8
  %conv192 = zext i16 %call190 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv192)
  %cmp193.not = icmp eq i32 %or, %conv192
  br i1 %cmp193.not, label %if.end183.cleanup_crit_edge, label %do.end198

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end198:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.62, i32 noundef %or, i32 noundef %conv192) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end198, %do.end181, %do.end170, %do.end152
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rsp) #8
  br label %cleanup206

cleanup:                                          ; preds = %if.end183.cleanup_crit_edge, %if.end172.cleanup_crit_edge
  %add204 = add i32 %ix.0295, %51
  %sub = sub i32 %sz.addr.0294, %51
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rsp) #8
  %cmp139.not = icmp eq i32 %sub, 0
  br i1 %cmp139.not, label %cleanup.cleanup206_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.cleanup206_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup206

cleanup206:                                       ; preds = %cleanup.cleanup206_crit_edge, %cleanup.thread, %lor.lhs.false133.cleanup206_crit_edge, %do.end125, %do.end113, %do.end102
  %retval.2 = phi i32 [ -22, %do.end102 ], [ -22, %do.end113 ], [ -22, %do.end125 ], [ 0, %lor.lhs.false133.cleanup206_crit_edge ], [ -22, %cleanup.thread ], [ 0, %cleanup.cleanup206_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crc) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rb) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wb) #8
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_spi_rx(ptr nocapture noundef readonly %wilc, ptr noundef %rb, i32 noundef %rlen) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %tr = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tr) #8
  %2 = getelementptr inbounds i8, ptr %tr, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rb, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rlen, ptr %len, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %rlen, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %tr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %tr, align 4
  %7 = getelementptr inbounds i8, ptr %msg, i32 8
  %8 = getelementptr inbounds i8, ptr %msg, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 36)
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %7, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %call4 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %spi_message_add_tail.exit.if.end8_crit_edge

spi_message_add_tail.exit.if.end8_crit_edge:      ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %spi_message_add_tail.exit.if.end8_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %spec.select = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #8
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_spi_tx(ptr nocapture noundef readonly %wilc, ptr noundef %b, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %tr = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #8
  %tobool.not = icmp eq ptr %b, null
  br i1 %tobool.not, label %do.end24, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tr) #8
  %2 = getelementptr inbounds i8, ptr %tr, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %tr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %b, ptr %tr, align 4
  %len1 = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 2
  %5 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %len1, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3520) #13
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr) #8
  br label %cleanup27

if.end:                                           ; preds = %if.then
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %rx_buf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_spi_tx.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_spi_tx, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !283

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wilc_spi_tx.__UNIQUE_ID_ddebug487, ptr noundef %1, ptr noundef nonnull @.str.100, i32 noundef %len) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %7 = getelementptr inbounds i8, ptr %msg, i32 8
  %8 = getelementptr inbounds i8, ptr %msg, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 36)
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %7, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %call13 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %spi_message_add_tail.exit.cleanup_crit_edge

spi_message_add_tail.exit.cleanup_crit_edge:      ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end18:                                         ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %spi_message_add_tail.exit.cleanup_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tr) #8
  br label %cleanup27

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.102, i32 noundef %len) #12
  br label %cleanup27

cleanup27:                                        ; preds = %do.end24, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ -12, %cleanup.thread ], [ %call13, %cleanup ], [ -22, %do.end24 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !257, !258, !260, !261, !263, !265, !267, !268, !269, !270}
!llvm.module.flags = !{!272, !273, !274, !275, !276, !277, !278, !279}
!llvm.ident = !{!280}

!0 = !{ptr @__param_enable_crc7, !1, !"__param_enable_crc7", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_enable_crc7type480, !1, !"__UNIQUE_ID_enable_crc7type480", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable_crc7481, !4, !"__UNIQUE_ID_enable_crc7481", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 20, i32 1}
!5 = !{ptr @__param_enable_crc16, !6, !"__param_enable_crc16", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 27, i32 1}
!7 = !{ptr @__UNIQUE_ID_enable_crc16type482, !6, !"__UNIQUE_ID_enable_crc16type482", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_enable_crc16483, !9, !"__UNIQUE_ID_enable_crc16483", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 28, i32 1}
!10 = !{ptr @__initcall__kmod_wilc1000_spi__484_276_wilc_spi_driver_init6, !11, !"__initcall__kmod_wilc1000_spi__484_276_wilc_spi_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 276, i32 1}
!12 = !{ptr @__exitcall_wilc_spi_driver_exit, !11, !"__exitcall_wilc_spi_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file485, !14, !"__UNIQUE_ID_file485", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 277, i32 1}
!15 = !{ptr @__UNIQUE_ID_license486, !14, !"__UNIQUE_ID_license486", i1 false, i1 false}
!16 = !{ptr @enable_crc7, !17, !"enable_crc7", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 18, i32 13}
!18 = !{ptr @enable_crc16, !19, !"enable_crc16", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 26, i32 13}
!20 = !{ptr @__param_str_enable_crc7, !1, !"__param_str_enable_crc7", i1 false, i1 false}
!21 = !{ptr @__param_str_enable_crc16, !6, !"__param_str_enable_crc16", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 269, i32 11}
!24 = !{ptr @wilc_spi_driver, !25, !"wilc_spi_driver", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 267, i32 26}
!26 = !{ptr @wilc_spi_id, !27, !"wilc_spi_id", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 261, i32 35}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 227, i32 51}
!30 = !{ptr @wilc_hif_spi, !31, !"wilc_hif_spi", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1244, i32 35}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1060, i32 3}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wilc_spi_init._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @wilc_spi_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1084, i32 3}
!42 = !{ptr @wilc_spi_init._entry.7, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wilc_spi_init._entry_ptr.9, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1105, i32 3}
!46 = !{ptr @wilc_spi_init._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wilc_spi_init._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @wilc_spi_init._entry.13, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1124, i32 3}
!50 = !{ptr @wilc_spi_init._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 902, i32 4}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @spi_internal_read._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @spi_internal_read._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 510, i32 3}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @wilc_spi_single_read._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @wilc_spi_single_read._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 524, i32 3}
!63 = !{ptr @wilc_spi_single_read._entry.19, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @wilc_spi_single_read._entry_ptr.21, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 531, i32 3}
!67 = !{ptr @wilc_spi_single_read._entry.22, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wilc_spi_single_read._entry_ptr.24, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 538, i32 4}
!71 = !{ptr @wilc_spi_single_read._entry.25, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @wilc_spi_single_read._entry_ptr.27, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 545, i32 3}
!75 = !{ptr @wilc_spi_single_read._entry.28, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @wilc_spi_single_read._entry_ptr.30, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 555, i32 3}
!79 = !{ptr @wilc_spi_single_read._entry.31, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @wilc_spi_single_read._entry_ptr.33, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 568, i32 4}
!83 = !{ptr @wilc_spi_single_read._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wilc_spi_single_read._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 390, i32 4}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @wilc_spi_tx_rx._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @wilc_spi_tx_rx._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 392, i32 3}
!92 = !{ptr @wilc_spi_tx_rx._entry.39, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @wilc_spi_tx_rx._entry_ptr.41, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 886, i32 3}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @spi_internal_write._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @spi_internal_write._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 611, i32 3}
!101 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @wilc_spi_write_cmd._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @wilc_spi_write_cmd._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @wilc_spi_write_cmd._entry.46, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 621, i32 3}
!106 = !{ptr @wilc_spi_write_cmd._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @wilc_spi_write_cmd._entry.48, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 628, i32 3}
!109 = !{ptr @wilc_spi_write_cmd._entry_ptr.49, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 638, i32 3}
!112 = !{ptr @wilc_spi_write_cmd._entry.50, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @wilc_spi_write_cmd._entry_ptr.52, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @wilc_spi_write_cmd._entry.53, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 645, i32 3}
!116 = !{ptr @wilc_spi_write_cmd._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 853, i32 3}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @wilc_spi_read_reg._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @wilc_spi_read_reg._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 932, i32 3}
!124 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @wilc_spi_write_reg._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @wilc_spi_write_reg._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 872, i32 3}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @wilc_spi_read._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @wilc_spi_read._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 689, i32 3}
!134 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @wilc_spi_dma_rw._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @wilc_spi_dma_rw._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 699, i32 3}
!139 = !{ptr @wilc_spi_dma_rw._entry.63, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @wilc_spi_dma_rw._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @wilc_spi_dma_rw._entry.66, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 705, i32 3}
!143 = !{ptr @wilc_spi_dma_rw._entry_ptr.67, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @wilc_spi_dma_rw._entry.68, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 711, i32 3}
!146 = !{ptr @wilc_spi_dma_rw._entry_ptr.69, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @wilc_spi_dma_rw._entry.70, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 718, i32 3}
!149 = !{ptr @wilc_spi_dma_rw._entry_ptr.71, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 741, i32 5}
!152 = !{ptr @wilc_spi_dma_rw._entry.72, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @wilc_spi_dma_rw._entry_ptr.74, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 753, i32 4}
!156 = !{ptr @wilc_spi_dma_rw._entry.75, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @wilc_spi_dma_rw._entry_ptr.77, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 763, i32 5}
!160 = !{ptr @wilc_spi_dma_rw._entry.78, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @wilc_spi_dma_rw._entry_ptr.80, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @wilc_spi_dma_rw._entry.81, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 770, i32 5}
!164 = !{ptr @wilc_spi_dma_rw._entry_ptr.82, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 352, i32 4}
!167 = !{ptr @wilc_spi_rx._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @wilc_spi_rx._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @wilc_spi_rx._entry.84, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 355, i32 3}
!171 = !{ptr @wilc_spi_rx._entry_ptr.85, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 998, i32 3}
!174 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @wilc_spi_write._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @wilc_spi_write._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1008, i32 3}
!179 = !{ptr @wilc_spi_write._entry.88, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @wilc_spi_write._entry_ptr.90, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 433, i32 4}
!183 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @spi_data_write._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @spi_data_write._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 443, i32 4}
!188 = !{ptr @spi_data_write._entry.93, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @spi_data_write._entry_ptr.95, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 457, i32 5}
!192 = !{ptr @spi_data_write._entry.96, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @spi_data_write._entry_ptr.98, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 300, i32 3}
!196 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @wilc_spi_tx.__UNIQUE_ID_ddebug487, !195, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!198 = !{ptr @wilc_spi_tx._entry, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 309, i32 4}
!200 = !{ptr @wilc_spi_tx._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 313, i32 3}
!203 = !{ptr @wilc_spi_tx._entry.101, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @wilc_spi_tx._entry_ptr.103, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 959, i32 3}
!207 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @spi_data_rsp._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @spi_data_rsp._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 968, i32 3}
!212 = !{ptr @spi_data_rsp._entry.106, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @spi_data_rsp._entry_ptr.108, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 978, i32 3}
!216 = !{ptr @spi_data_rsp._entry.109, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @spi_data_rsp._entry_ptr.111, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1181, i32 3}
!220 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @wilc_spi_sync_ext._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @wilc_spi_sync_ext._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.115, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1190, i32 3}
!225 = !{ptr @wilc_spi_sync_ext._entry.114, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @wilc_spi_sync_ext._entry_ptr.116, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1197, i32 3}
!229 = !{ptr @wilc_spi_sync_ext._entry.117, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @wilc_spi_sync_ext._entry_ptr.119, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @wilc_spi_sync_ext._entry.120, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1207, i32 3}
!233 = !{ptr @wilc_spi_sync_ext._entry_ptr.121, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @wilc_spi_sync_ext._entry.122, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1217, i32 3}
!236 = !{ptr @wilc_spi_sync_ext._entry_ptr.123, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @wilc_spi_sync_ext._entry.124, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1224, i32 4}
!239 = !{ptr @wilc_spi_sync_ext._entry_ptr.125, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @wilc_spi_sync_ext._entry.126, !241, !"_entry", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1234, i32 4}
!242 = !{ptr @wilc_spi_sync_ext._entry_ptr.127, !241, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.128, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 1032, i32 3}
!245 = !{ptr @.str.129, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @wilc_spi_reset._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @wilc_spi_reset._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.130, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 811, i32 3}
!250 = !{ptr @wilc_spi_special_cmd._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @wilc_spi_special_cmd._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @wilc_spi_special_cmd._entry.131, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 817, i32 3}
!254 = !{ptr @wilc_spi_special_cmd._entry_ptr.132, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @wilc_spi_special_cmd._entry.133, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 824, i32 4}
!257 = !{ptr @wilc_spi_special_cmd._entry_ptr.134, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @wilc_spi_special_cmd._entry.135, !259, !"_entry", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 831, i32 3}
!260 = !{ptr @wilc_spi_special_cmd._entry_ptr.136, !259, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.137, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 168, i32 7}
!263 = !{ptr @.str.138, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 173, i32 12}
!265 = !{ptr @.str.139, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 175, i32 4}
!267 = !{ptr @.str.140, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @wilc_parse_gpios._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @wilc_parse_gpios._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @wilc_of_match, !271, !"wilc_of_match", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/microchip/wilc1000/spi.c", i32 255, i32 34}
!272 = !{i32 1, !"wchar_size", i32 2}
!273 = !{i32 1, !"min_enum_size", i32 4}
!274 = !{i32 8, !"branch-target-enforcement", i32 0}
!275 = !{i32 8, !"sign-return-address", i32 0}
!276 = !{i32 8, !"sign-return-address-all", i32 0}
!277 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!278 = !{i32 7, !"uwtable", i32 1}
!279 = !{i32 7, !"frame-pointer", i32 2}
!280 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!281 = !{!"auto-init"}
!282 = !{i8 0, i8 2}
!283 = !{i64 2148749863, i64 2148749868, i64 2148749881, i64 2148749925, i64 2148749959, i64 2148749980}
