; ModuleID = '/llk/IR_all_yes/drivers/nfc/nfcmrvl/fw_dnld.c_pt.bc'
source_filename = "../drivers/nfc/nfcmrvl/fw_dnld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfcmrvl_private = type { i32, %struct.nfcmrvl_platform_data, ptr, %struct.nfcmrvl_fw_dnld, i8, ptr, ptr, i32, ptr }
%struct.nfcmrvl_platform_data = type { i32, i32, i32, i32, i32, i32 }
%struct.nfcmrvl_fw_dnld = type { [33 x i8], ptr, ptr, ptr, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.timer_list }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nci_core_set_config_cmd = type { i8, %struct.set_config_param }
%struct.set_config_param = type { i8, i8, [251 x i8] }
%struct.sk_buff = type { %union.anon.73, %union.anon.76, %union.anon.77, [48 x i8], %union.anon.78, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.80, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, %union.anon.75 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, ptr }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.82, i32, i32, i32, i16, i16, %union.anon.84, i32, %union.anon.85, %union.anon.86, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.82 = type { i32 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i16 }
%struct.nfcmrvl_fw = type { i32, i32, i32, %struct.nfcmrvl_fw_binary_config, %struct.nfcmrvl_fw_binary_config, %struct.nfcmrvl_fw_binary_config, [64 x i8] }
%struct.nfcmrvl_fw_binary_config = type { i32, %union.anon.95 }
%union.anon.95 = type { ptr, [60 x i8] }
%struct.nfcmrvl_fw_uart_config = type <{ i8, i32 }>
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nci_data_hdr = type { i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.nfcmrvl_if_ops = type { ptr, ptr, ptr, ptr }

@nfcmrvl_fw_dnld_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&priv->fw_dnld.rx_work)\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s_nfcmrvl_fw_dnld_rx_wq\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@nfcmrvl_fw_dnld_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 505, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFC: failed to retrieve FW %s\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfcmrvl_fw_dnld_start\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/nfc/nfcmrvl/fw_dnld.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfcmrvl_fw_dnld_start._entry_ptr = internal global ptr @nfcmrvl_fw_dnld_start._entry, section ".printk_index", align 4
@nfcmrvl_fw_dnld_start._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 515, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NFC: bad firmware binary %s magic=0x%x phy=%d\00", [50 x i8] zeroinitializer }, align 32
@nfcmrvl_fw_dnld_start._entry_ptr.10 = internal global ptr @nfcmrvl_fw_dnld_start._entry.8, section ".printk_index", align 4
@nfcmrvl_fw_dnld_start._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 522, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFC: loading helper\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfcmrvl_fw_dnld_start._entry_ptr.14 = internal global ptr @nfcmrvl_fw_dnld_start._entry.11, section ".printk_index", align 4
@nfcmrvl_fw_dnld_start._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 525, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFC: loading firmware\00", [42 x i8] zeroinitializer }, align 32
@nfcmrvl_fw_dnld_start._entry_ptr.17 = internal global ptr @nfcmrvl_fw_dnld_start._entry.15, section ".printk_index", align 4
@nfcmrvl_fw_dnld_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&priv->fw_dnld.timer)\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fw_dnld_rx_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 436, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFC: FW loading error\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fw_dnld_rx_work\00", [16 x i8] zeroinitializer }, align 32
@fw_dnld_rx_work._entry_ptr = internal global ptr @fw_dnld_rx_work._entry, section ".printk_index", align 4
@nci_pattern_core_reset_ntf = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"`\00\02\A0\01", [27 x i8] zeroinitializer }, align 32
@process_state_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 137, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NFC: BootROM reset, start fw download\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"process_state_reset\00", [44 x i8] zeroinitializer }, align 32
@process_state_reset._entry_ptr = internal global ptr @process_state_reset._entry, section ".printk_index", align 4
@nci_pattern_core_init_rsp = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"@\01\11", [29 x i8] zeroinitializer }, align 32
@nci_pattern_core_set_config_rsp = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"@\02\02\00\00", [27 x i8] zeroinitializer }, align 32
@nci_pattern_core_conn_create_rsp = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"@\04\04\00", [28 x i8] zeroinitializer }, align 32
@process_state_fw_dnld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 268, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NFC: bad command\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"process_state_fw_dnld\00", [42 x i8] zeroinitializer }, align 32
@process_state_fw_dnld._entry_ptr = internal global ptr @process_state_fw_dnld._entry, section ".printk_index", align 4
@process_state_fw_dnld._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 279, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFC: bad len complement: %x %x %x\00", [62 x i8] zeroinitializer }, align 32
@process_state_fw_dnld._entry_ptr.27 = internal global ptr @process_state_fw_dnld._entry.25, section ".printk_index", align 4
@nci_pattern_core_conn_credits_ntf = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"`\06\03\01\02\01", [26 x i8] zeroinitializer }, align 32
@process_state_fw_dnld._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.5, i32 301, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFC: bad packet: waiting for credit\00", [60 x i8] zeroinitializer }, align 32
@process_state_fw_dnld._entry_ptr.30 = internal global ptr @process_state_fw_dnld._entry.28, section ".printk_index", align 4
@process_state_fw_dnld._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.5, i32 327, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@process_state_fw_dnld._entry_ptr.32 = internal global ptr @process_state_fw_dnld._entry.31, section ".printk_index", align 4
@process_state_fw_dnld._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.5, i32 339, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@process_state_fw_dnld._entry_ptr.34 = internal global ptr @process_state_fw_dnld._entry.33, section ".printk_index", align 4
@nci_pattern_core_conn_close_rsp = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"@\05\01\00", [28 x i8] zeroinitializer }, align 32
@nci_pattern_proprietary_boot_rsp = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O:\01\00", [28 x i8] zeroinitializer }, align 32
@process_state_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 382, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFC: FW loading: helper loaded\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"process_state_boot\00", [45 x i8] zeroinitializer }, align 32
@process_state_boot._entry_ptr = internal global ptr @process_state_boot._entry, section ".printk_index", align 4
@process_state_boot._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 384, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NFC: FW loading: firmware loaded\00", [63 x i8] zeroinitializer }, align 32
@process_state_boot._entry_ptr.39 = internal global ptr @process_state_boot._entry.37, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@fw_dnld_over._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 110, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFC: FW loading over (%d)]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_dnld_over\00", [19 x i8] zeroinitializer }, align 32
@fw_dnld_over._entry_ptr = internal global ptr @fw_dnld_over._entry, section ".printk_index", align 4
@fw_dnld_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 124, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: FW loading timeout\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fw_dnld_timeout\00", [16 x i8] zeroinitializer }, align 32
@fw_dnld_timeout._entry_ptr = internal global ptr @fw_dnld_timeout._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 447, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 448, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 450, i32 24 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 505, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 513, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 522, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 525, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 530, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 436, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"nci_pattern_core_reset_ntf\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 45, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 137, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [26 x i8] c"nci_pattern_core_init_rsp\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 49, i32 22 }
@___asan_gen_.128 = private unnamed_addr constant [32 x i8] c"nci_pattern_core_set_config_rsp\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 53, i32 22 }
@___asan_gen_.131 = private unnamed_addr constant [33 x i8] c"nci_pattern_core_conn_create_rsp\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 57, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 268, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 278, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant [34 x i8] c"nci_pattern_core_conn_credits_ntf\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 65, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 301, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 327, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 339, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [32 x i8] c"nci_pattern_core_conn_close_rsp\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 61, i32 22 }
@___asan_gen_.167 = private unnamed_addr constant [33 x i8] c"nci_pattern_proprietary_boot_rsp\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 69, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 382, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 384, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1984, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 110, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [33 x i8] c"../drivers/nfc/nfcmrvl/fw_dnld.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 124, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @fw_dnld_over._entry, ptr @fw_dnld_over._entry_ptr, ptr @fw_dnld_rx_work._entry, ptr @fw_dnld_rx_work._entry_ptr, ptr @fw_dnld_timeout._entry, ptr @fw_dnld_timeout._entry_ptr, ptr @nfcmrvl_fw_dnld_start._entry, ptr @nfcmrvl_fw_dnld_start._entry.11, ptr @nfcmrvl_fw_dnld_start._entry.15, ptr @nfcmrvl_fw_dnld_start._entry.8, ptr @nfcmrvl_fw_dnld_start._entry_ptr, ptr @nfcmrvl_fw_dnld_start._entry_ptr.10, ptr @nfcmrvl_fw_dnld_start._entry_ptr.14, ptr @nfcmrvl_fw_dnld_start._entry_ptr.17, ptr @process_state_boot._entry, ptr @process_state_boot._entry.37, ptr @process_state_boot._entry_ptr, ptr @process_state_boot._entry_ptr.39, ptr @process_state_fw_dnld._entry, ptr @process_state_fw_dnld._entry.25, ptr @process_state_fw_dnld._entry.28, ptr @process_state_fw_dnld._entry.31, ptr @process_state_fw_dnld._entry.33, ptr @process_state_fw_dnld._entry_ptr, ptr @process_state_fw_dnld._entry_ptr.27, ptr @process_state_fw_dnld._entry_ptr.30, ptr @process_state_fw_dnld._entry_ptr.32, ptr @process_state_fw_dnld._entry_ptr.34, ptr @process_state_reset._entry, ptr @process_state_reset._entry_ptr, ptr @nfcmrvl_fw_dnld_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @nfcmrvl_fw_dnld_start.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @nci_pattern_core_reset_ntf, ptr @.str.21, ptr @.str.22, ptr @nci_pattern_core_init_rsp, ptr @nci_pattern_core_set_config_rsp, ptr @nci_pattern_core_conn_create_rsp, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @nci_pattern_core_conn_credits_ntf, ptr @.str.29, ptr @nci_pattern_core_conn_close_rsp, ptr @nci_pattern_proprietary_boot_rsp, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @skb_queue_head_init.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_fw_dnld_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_fw_dnld_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_fw_dnld_start._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_fw_dnld_start._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_fw_dnld_start._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_fw_dnld_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_dnld_rx_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_pattern_core_reset_ntf to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_state_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_pattern_core_init_rsp to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_pattern_core_set_config_rsp to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_pattern_core_conn_create_rsp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_state_fw_dnld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_state_fw_dnld._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_pattern_core_conn_credits_ntf to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_state_fw_dnld._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_state_fw_dnld._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_state_fw_dnld._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_pattern_core_conn_close_rsp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_pattern_proprietary_boot_rsp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_state_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_state_boot._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_dnld_over._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_dnld_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfcmrvl_fw_dnld_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #8
  %rx_work = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 9
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  tail call void @__init_work(ptr noundef %rx_work, i32 noundef 0) #8
  %1 = ptrtoint ptr %rx_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %rx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @nfcmrvl_fw_dnld_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry7 = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 9, i32 1
  %2 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 9, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 9, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @fw_dnld_rx_work, ptr %func, align 4
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %init_name.i = getelementptr inbounds %struct.nfc_dev, ptr %8, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %entry.dev_name.exit_crit_edge ]
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i)
  %call12 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %name) #8
  %rx_wq = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %rx_wq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %rx_wq, align 4
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rx_q = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 10
  %lock.i = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 10, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %14 = ptrtoint ptr %rx_q to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rx_q, ptr %rx_q, align 4
  %prev.i.i = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 10, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rx_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 10, i32 1
  %16 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %qlen.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_dnld_rx_work(ptr noundef %work) #0 align 64 {
entry:
  %conn_id.i = alloca i8, align 1
  %param.i.i62 = alloca [2 x i8], align 2
  %param.i.i = alloca [2 x i8], align 2
  %cmd.i49 = alloca %struct.nci_core_set_config_cmd, align 1
  %cmd.i = alloca %struct.nci_core_set_config_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -100
  %rx_q = getelementptr i8, ptr %work, i32 44
  %ndev = getelementptr i8, ptr %work, i32 -72
  %state = getelementptr i8, ptr %work, i32 -20
  %if_ops.i = getelementptr i8, ptr %work, i32 164
  %binary_config.i117 = getelementptr i8, ptr %work, i32 -24
  %header.i118 = getelementptr i8, ptr %work, i32 -28
  %dev14.i = getelementptr i8, ptr %work, i32 156
  %substate.i84 = getelementptr i8, ptr %work, i32 -16
  %chunk_len101.i = getelementptr i8, ptr %work, i32 -8
  %offset103.i = getelementptr i8, ptr %work, i32 -12
  %fw.i = getelementptr i8, ptr %work, i32 -32
  %0 = getelementptr inbounds i8, ptr %cmd.i49, i32 2
  %param.i56 = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %cmd.i49, i32 0, i32 1
  %phy.i = getelementptr i8, ptr %work, i32 160
  %val24.i = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %cmd.i49, i32 0, i32 1, i32 2
  %arrayidx31.i = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %cmd.i49, i32 0, i32 1, i32 2, i32 4
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 7
  %param.i = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %cmd.i, i32 0, i32 1
  %len2.i = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %cmd.i, i32 0, i32 1, i32 1
  %val.i = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %cmd.i, i32 0, i32 1, i32 2
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.while.cond_crit_edge, %entry
  %call = call ptr @skb_dequeue(ptr noundef %rx_q) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @nfc_send_to_raw_sock(ptr noundef %5, ptr noundef nonnull %call, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %while.body.sw.epilog.thread_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
    i32 5, label %sw.bb13
    i32 6, label %sw.bb15
    i32 7, label %sw.bb17
  ]

while.body.sw.epilog.thread_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %while.body
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 5
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.sw.epilog.thread_crit_edge

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

lor.lhs.false.i:                                  ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(5) %12, ptr noundef nonnull dereferenceable(5) @nci_pattern_core_reset_ntf, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %lor.lhs.false.i.sw.epilog.thread_crit_edge

lor.lhs.false.i.sw.epilog.thread_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.21) #12
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state, align 4
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  %call1.i = call i32 @nci_send_cmd(ptr noundef %17, i16 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 254, ptr nonnull %cmd.i) #8
  %18 = call ptr @memset(ptr %1, i32 255, i32 247)
  %len.i41 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %19 = ptrtoint ptr %len.i41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp.i = icmp ult i32 %20, 4
  br i1 %cmp.i, label %sw.bb5.process_state_init.exit_crit_edge, label %lor.lhs.false.i45

sw.bb5.process_state_init.exit_crit_edge:         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %process_state_init.exit

lor.lhs.false.i45:                                ; preds = %sw.bb5
  %data.i42 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %21 = ptrtoint ptr %data.i42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i42, align 4
  %bcmp.i43 = call i32 @bcmp(ptr noundef dereferenceable(3) %22, ptr noundef nonnull dereferenceable(3) @nci_pattern_core_init_rsp, i32 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i43)
  %tobool.not.i44 = icmp eq i32 %bcmp.i43, 0
  br i1 %tobool.not.i44, label %if.end.i, label %lor.lhs.false.i45.process_state_init.exit_crit_edge

lor.lhs.false.i45.process_state_init.exit_crit_edge: ; preds = %lor.lhs.false.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %process_state_init.exit

if.end.i:                                         ; preds = %lor.lhs.false.i45
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %cmd.i, align 1
  %24 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -16, ptr %param.i, align 1
  %25 = ptrtoint ptr %len2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %len2.i, align 1
  %26 = ptrtoint ptr %header.i118 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %header.i118, align 4
  %ref_clock.i = getelementptr inbounds %struct.nfcmrvl_fw, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ref_clock.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %ref_clock.i, align 1
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %val.i, align 1
  %31 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev, align 4
  %call7.i = call i32 @nci_send_cmd(ptr noundef %32, i16 noundef zeroext 2, i8 noundef zeroext 7, ptr noundef nonnull %cmd.i) #8
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %state, align 4
  br label %process_state_init.exit

process_state_init.exit:                          ; preds = %if.end.i, %lor.lhs.false.i45.process_state_init.exit_crit_edge, %sw.bb5.process_state_init.exit_crit_edge
  %retval.0.i48 = phi i32 [ 0, %if.end.i ], [ -22, %lor.lhs.false.i45.process_state_init.exit_crit_edge ], [ -22, %sw.bb5.process_state_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 254, ptr nonnull %cmd.i) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 254, ptr nonnull %cmd.i49) #8
  %34 = call ptr @memset(ptr %0, i32 255, i32 252)
  %len.i50 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %35 = ptrtoint ptr %len.i50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %36)
  %cmp.not.i51 = icmp eq i32 %36, 5
  br i1 %cmp.not.i51, label %lor.lhs.false.i55, label %sw.bb7.process_state_set_ref_clock.exit_crit_edge

sw.bb7.process_state_set_ref_clock.exit_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %process_state_set_ref_clock.exit

lor.lhs.false.i55:                                ; preds = %sw.bb7
  %data.i52 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %37 = ptrtoint ptr %data.i52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i52, align 4
  %bcmp.i53 = call i32 @bcmp(ptr noundef dereferenceable(5) %38, ptr noundef nonnull dereferenceable(5) @nci_pattern_core_set_config_rsp, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i53)
  %tobool.not.i54 = icmp eq i32 %bcmp.i53, 0
  br i1 %tobool.not.i54, label %if.end.i57, label %lor.lhs.false.i55.process_state_set_ref_clock.exit_crit_edge

lor.lhs.false.i55.process_state_set_ref_clock.exit_crit_edge: ; preds = %lor.lhs.false.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %process_state_set_ref_clock.exit

if.end.i57:                                       ; preds = %lor.lhs.false.i55
  %39 = ptrtoint ptr %cmd.i49 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %cmd.i49, align 1
  %40 = ptrtoint ptr %param.i56 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -15, ptr %param.i56, align 1
  %41 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %phy.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %42, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb20.i
  ]

sw.bb.i:                                          ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %0, align 1
  %45 = ptrtoint ptr %binary_config.i117 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %binary_config.i117, align 4
  %47 = getelementptr inbounds %struct.nfcmrvl_fw_binary_config, ptr %46, i32 0, i32 1
  %baudrate.i = getelementptr inbounds %struct.nfcmrvl_fw_uart_config, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %baudrate.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %baudrate.i, align 1
  %50 = ptrtoint ptr %val24.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %val24.i, align 1
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %47, align 1
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 5, ptr %0, align 1
  %54 = ptrtoint ptr %binary_config.i117 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %binary_config.i117, align 4
  %56 = getelementptr inbounds %struct.nfcmrvl_fw_binary_config, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %56, align 1
  %59 = ptrtoint ptr %val24.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %val24.i, align 1
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 5, ptr %0, align 1
  %61 = ptrtoint ptr %binary_config.i117 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %binary_config.i117, align 4
  %63 = getelementptr inbounds %struct.nfcmrvl_fw_binary_config, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %63, align 1
  %66 = ptrtoint ptr %val24.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %val24.i, align 1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i.i) #8
  %67 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -768, ptr %param.i.i, align 2
  %68 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %state, align 4
  %69 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ndev, align 4
  %call.i.i = call i32 @nci_send_cmd(ptr noundef %70, i16 noundef zeroext 4, i8 noundef zeroext 2, ptr noundef nonnull %param.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i.i) #8
  br label %process_state_set_ref_clock.exit

sw.epilog.i:                                      ; preds = %sw.bb20.i, %sw.bb9.i, %sw.bb.i
  %.sink.i = phi i8 [ 0, %sw.bb20.i ], [ 0, %sw.bb9.i ], [ %52, %sw.bb.i ]
  %71 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %.sink.i, ptr %arrayidx31.i, align 1
  %72 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %state, align 4
  %73 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ndev, align 4
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %0, align 1
  %add.i = add i8 %76, 3
  %call36.i = call i32 @nci_send_cmd(ptr noundef %74, i16 noundef zeroext 2, i8 noundef zeroext %add.i, ptr noundef nonnull %cmd.i49) #8
  br label %process_state_set_ref_clock.exit

process_state_set_ref_clock.exit:                 ; preds = %sw.epilog.i, %sw.default.i, %lor.lhs.false.i55.process_state_set_ref_clock.exit_crit_edge, %sw.bb7.process_state_set_ref_clock.exit_crit_edge
  %retval.0.i61 = phi i32 [ 0, %sw.default.i ], [ 0, %sw.epilog.i ], [ -22, %lor.lhs.false.i55.process_state_set_ref_clock.exit_crit_edge ], [ -22, %sw.bb7.process_state_set_ref_clock.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 254, ptr nonnull %cmd.i49) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  %len.i63 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %77 = ptrtoint ptr %len.i63 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %78)
  %cmp.not.i64 = icmp eq i32 %78, 5
  br i1 %cmp.not.i64, label %lor.lhs.false.i68, label %sw.bb9.sw.epilog.thread_crit_edge

sw.bb9.sw.epilog.thread_crit_edge:                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

lor.lhs.false.i68:                                ; preds = %sw.bb9
  %data.i65 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %79 = ptrtoint ptr %data.i65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i65, align 4
  %bcmp.i66 = call i32 @bcmp(ptr noundef dereferenceable(5) %80, ptr noundef nonnull dereferenceable(5) @nci_pattern_core_set_config_rsp, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i66)
  %tobool.not.i67 = icmp eq i32 %bcmp.i66, 0
  br i1 %tobool.not.i67, label %if.end.i72, label %lor.lhs.false.i68.sw.epilog.thread_crit_edge

lor.lhs.false.i68.sw.epilog.thread_crit_edge:     ; preds = %lor.lhs.false.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end.i72:                                       ; preds = %lor.lhs.false.i68
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i.i62) #8
  %81 = ptrtoint ptr %param.i.i62 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -768, ptr %param.i.i62, align 2
  %82 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 4, ptr %state, align 4
  %83 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ndev, align 4
  %call.i.i71 = call i32 @nci_send_cmd(ptr noundef %84, i16 noundef zeroext 4, i8 noundef zeroext 2, ptr noundef nonnull %param.i.i62) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i.i62) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  %len.i74 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %85 = ptrtoint ptr %len.i74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %86)
  %cmp.i75 = icmp ult i32 %86, 5
  br i1 %cmp.i75, label %sw.bb11.sw.epilog.thread_crit_edge, label %lor.lhs.false.i79

sw.bb11.sw.epilog.thread_crit_edge:               ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

lor.lhs.false.i79:                                ; preds = %sw.bb11
  %data.i76 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %87 = ptrtoint ptr %data.i76 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i76, align 4
  %bcmp.i77 = call i32 @bcmp(ptr noundef dereferenceable(4) %88, ptr noundef nonnull dereferenceable(4) @nci_pattern_core_conn_create_rsp, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i77)
  %tobool.not.i78 = icmp eq i32 %bcmp.i77, 0
  br i1 %tobool.not.i78, label %if.end.i82, label %lor.lhs.false.i79.sw.epilog.thread_crit_edge

lor.lhs.false.i79.sw.epilog.thread_crit_edge:     ; preds = %lor.lhs.false.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end.i82:                                       ; preds = %lor.lhs.false.i79
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 5, ptr %state, align 4
  %90 = ptrtoint ptr %substate.i84 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %substate.i84, align 4
  %91 = ptrtoint ptr %binary_config.i117 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %binary_config.i117, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %92, align 1
  %95 = ptrtoint ptr %offset103.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %offset103.i, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %while.body
  %96 = ptrtoint ptr %substate.i84 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %substate.i84, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %97, label %sw.bb13.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i87
    i32 1, label %sw.bb44.i
    i32 3, label %sw.bb85.i
    i32 2, label %sw.bb108.i
  ]

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i87:                                        ; preds = %sw.bb13
  %call.i = call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 3) #8
  %data.i85 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %99 = ptrtoint ptr %data.i85 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i85, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %102)
  %cmp.not.i86 = icmp eq i8 %102, -91
  br i1 %cmp.not.i86, label %lor.lhs.false.i89, label %sw.bb.i87.sw.epilog.thread.sink.split_crit_edge

sw.bb.i87.sw.epilog.thread.sink.split_crit_edge:  ; preds = %sw.bb.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split

lor.lhs.false.i89:                                ; preds = %sw.bb.i87
  %len2.i88 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %103 = ptrtoint ptr %len2.i88 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len2.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %104)
  %cmp3.not.i = icmp eq i32 %104, 5
  br i1 %cmp3.not.i, label %if.end.i92, label %lor.lhs.false.i89.sw.epilog.thread.sink.split_crit_edge

lor.lhs.false.i89.sw.epilog.thread.sink.split_crit_edge: ; preds = %lor.lhs.false.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split

if.end.i92:                                       ; preds = %lor.lhs.false.i89
  %call5.i = call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 1) #8
  %105 = ptrtoint ptr %data.i85 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data.i85, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %106, align 1
  %109 = call i16 @llvm.bswap.i16(i16 %108) #8
  %call8.i = call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 2) #8
  %110 = ptrtoint ptr %data.i85 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i85, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %111, align 1
  %call12.i = call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 2) #8
  %conv13.i = zext i16 %109 to i32
  %and.i = xor i32 %conv13.i, 65535
  %conv14.i = zext i16 %113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv14.i)
  %cmp15.not.i = icmp eq i32 %and.i, %conv14.i
  br i1 %cmp15.not.i, label %if.end33.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end.i92
  %114 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.26, i32 noundef %conv13.i, i32 noundef %conv14.i, i32 noundef %and.i) #12
  %116 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ndev, align 4
  %tx_headroom.i.i = getelementptr inbounds %struct.nci_dev, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %tx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_headroom.i.i, align 4
  %add.i.i124 = add i32 %119, 4
  %tx_tailroom.i.i = getelementptr inbounds %struct.nci_dev, ptr %117, i32 0, i32 4
  %120 = ptrtoint ptr %tx_tailroom.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_tailroom.i.i, align 4
  %add1.i.i = add i32 %add.i.i124, %121
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %add1.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end20.i.sw.epilog.thread_crit_edge, label %if.end29.i

do.end20.i.sw.epilog.thread_crit_edge:            ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end29.i:                                       ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %tx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tx_headroom.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %124 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %125, i32 %123
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %126 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %127, i32 %123
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i125 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #8
  %128 = ptrtoint ptr %call1.i125 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 2, ptr %call1.i125, align 1
  %rfu.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call1.i125, i32 0, i32 1
  %129 = ptrtoint ptr %rfu.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %rfu.i, align 1
  %plen2.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call1.i125, i32 0, i32 2
  %130 = ptrtoint ptr %plen2.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %plen2.i, align 1
  %call.i.i94 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #8
  %131 = ptrtoint ptr %call.i.i94 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -65, ptr %call.i.i94, align 1
  %132 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ndev, align 4
  %call30.i = call i32 @nci_send_frame(ptr noundef %133, ptr noundef nonnull %call.i.i.i) #8
  %134 = ptrtoint ptr %substate.i84 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2, ptr %substate.i84, align 4
  br label %sw.epilog

if.end33.i:                                       ; preds = %if.end.i92
  %135 = ptrtoint ptr %chunk_len101.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv13.i, ptr %chunk_len101.i, align 4
  %136 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ndev, align 4
  %tx_headroom.i.i.i = getelementptr inbounds %struct.nci_dev, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %tx_headroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_headroom.i.i.i, align 4
  %add.i.i.i = add i32 %139, 4
  %tx_tailroom.i.i.i = getelementptr inbounds %struct.nci_dev, ptr %137, i32 0, i32 4
  %140 = ptrtoint ptr %tx_tailroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_tailroom.i.i.i, align 4
  %add1.i.i.i = add i32 %add.i.i.i, %141
  %call.i.i.i.i = call ptr @__alloc_skb(i32 noundef %add1.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end33.i.sw.epilog.thread_crit_edge, label %if.end39.i

if.end33.i.sw.epilog.thread_crit_edge:            ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %tx_headroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_headroom.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %144 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %145, i32 %143
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %146 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %147, i32 %143
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call1.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 3) #8
  %148 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 2, ptr %call1.i.i, align 1
  %rfu.i.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call1.i.i, i32 0, i32 1
  %149 = ptrtoint ptr %rfu.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %rfu.i.i, align 1
  %plen2.i.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call1.i.i, i32 0, i32 2
  %150 = ptrtoint ptr %plen2.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %plen2.i.i, align 1
  %call.i188.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #8
  %151 = ptrtoint ptr %call.i188.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 90, ptr %call.i188.i, align 1
  %152 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ndev, align 4
  %call41.i = call i32 @nci_send_frame(ptr noundef %153, ptr noundef nonnull %call.i.i.i.i) #8
  %154 = ptrtoint ptr %substate.i84 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %substate.i84, align 4
  br label %sw.epilog

sw.bb44.i:                                        ; preds = %sw.bb13
  %len45.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %155 = ptrtoint ptr %len45.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %len45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %156)
  %cmp46.not.i = icmp eq i32 %156, 6
  br i1 %cmp46.not.i, label %lor.lhs.false48.i, label %sw.bb44.i.sw.epilog.thread.sink.split_crit_edge

sw.bb44.i.sw.epilog.thread.sink.split_crit_edge:  ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split

lor.lhs.false48.i:                                ; preds = %sw.bb44.i
  %data49.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %157 = ptrtoint ptr %data49.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %data49.i, align 4
  %bcmp187.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @nci_pattern_core_conn_credits_ntf, ptr noundef dereferenceable(6) %158, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp187.i)
  %tobool52.not.i = icmp eq i32 %bcmp187.i, 0
  br i1 %tobool52.not.i, label %if.end58.i, label %lor.lhs.false48.i.sw.epilog.thread.sink.split_crit_edge

lor.lhs.false48.i.sw.epilog.thread.sink.split_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split

if.end58.i:                                       ; preds = %lor.lhs.false48.i
  %159 = ptrtoint ptr %chunk_len101.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %chunk_len101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp61.i = icmp eq i32 %160, 0
  br i1 %cmp61.i, label %if.then63.i, label %if.else.i

if.then63.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %conn_id.i) #8
  %161 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 2, ptr %conn_id.i, align 1
  %162 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 6, ptr %state, align 4
  %163 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ndev, align 4
  %call66.i = call i32 @nci_send_cmd(ptr noundef %164, i16 noundef zeroext 5, i8 noundef zeroext 1, ptr noundef nonnull %conn_id.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %conn_id.i) #8
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end58.i
  %165 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ndev, align 4
  %conv.i.i = and i32 %160, 255
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %tx_headroom.i.i190.i = getelementptr inbounds %struct.nci_dev, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %tx_headroom.i.i190.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tx_headroom.i.i190.i, align 4
  %add.i.i191.i = add i32 %add.i.i, %168
  %tx_tailroom.i.i192.i = getelementptr inbounds %struct.nci_dev, ptr %166, i32 0, i32 4
  %169 = ptrtoint ptr %tx_tailroom.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %tx_tailroom.i.i192.i, align 4
  %add1.i.i193.i = add i32 %add.i.i191.i, %170
  %call.i.i.i194.i = call ptr @__alloc_skb(i32 noundef %add1.i.i193.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i195.i = icmp eq ptr %call.i.i.i194.i, null
  br i1 %tobool.not.i.i195.i, label %if.else.i.sw.epilog.thread_crit_edge, label %if.end73.i

if.else.i.sw.epilog.thread_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end73.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv69.i = trunc i32 %160 to i8
  %171 = ptrtoint ptr %tx_headroom.i.i190.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %tx_headroom.i.i190.i, align 4
  %data.i.i.i196.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i194.i, i32 0, i32 19
  %173 = ptrtoint ptr %data.i.i.i196.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %data.i.i.i196.i, align 4
  %add.ptr.i.i.i197.i = getelementptr i8, ptr %174, i32 %172
  store ptr %add.ptr.i.i.i197.i, ptr %data.i.i.i196.i, align 4
  %tail.i.i.i198.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i194.i, i32 0, i32 16
  %175 = ptrtoint ptr %tail.i.i.i198.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tail.i.i.i198.i, align 8
  %add.ptr1.i.i.i199.i = getelementptr i8, ptr %176, i32 %172
  store ptr %add.ptr1.i.i.i199.i, ptr %tail.i.i.i198.i, align 8
  %call1.i200.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i194.i, i32 noundef 3) #8
  %177 = ptrtoint ptr %call1.i200.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 2, ptr %call1.i200.i, align 1
  %rfu.i201.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call1.i200.i, i32 0, i32 1
  %178 = ptrtoint ptr %rfu.i201.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %rfu.i201.i, align 1
  %plen2.i202.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call1.i200.i, i32 0, i32 2
  %179 = ptrtoint ptr %plen2.i202.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv69.i, ptr %plen2.i202.i, align 1
  %180 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %fw.i, align 4
  %data75.i = getelementptr inbounds %struct.firmware, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %data75.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %data75.i, align 4
  %184 = ptrtoint ptr %offset103.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %offset103.i, align 4
  %add.ptr.i = getelementptr i8, ptr %183, i32 %185
  %186 = ptrtoint ptr %chunk_len101.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %chunk_len101.i, align 4
  %call.i205.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i194.i, i32 noundef %187) #8
  %188 = call ptr @memcpy(ptr %call.i205.i, ptr %add.ptr.i, i32 %187)
  %189 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ndev, align 4
  %call81.i = call i32 @nci_send_frame(ptr noundef %190, ptr noundef nonnull %call.i.i.i194.i) #8
  %191 = ptrtoint ptr %substate.i84 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 3, ptr %substate.i84, align 4
  br label %sw.epilog

sw.bb85.i:                                        ; preds = %sw.bb13
  %len86.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %192 = ptrtoint ptr %len86.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %len86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %193)
  %cmp87.not.i = icmp eq i32 %193, 6
  br i1 %cmp87.not.i, label %lor.lhs.false89.i, label %sw.bb85.i.sw.epilog.thread.sink.split_crit_edge

sw.bb85.i.sw.epilog.thread.sink.split_crit_edge:  ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split

lor.lhs.false89.i:                                ; preds = %sw.bb85.i
  %data90.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %194 = ptrtoint ptr %data90.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %data90.i, align 4
  %bcmp186.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @nci_pattern_core_conn_credits_ntf, ptr noundef dereferenceable(6) %195, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp186.i)
  %tobool93.not.i = icmp eq i32 %bcmp186.i, 0
  br i1 %tobool93.not.i, label %if.end99.i, label %lor.lhs.false89.i.sw.epilog.thread.sink.split_crit_edge

lor.lhs.false89.i.sw.epilog.thread.sink.split_crit_edge: ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split

if.end99.i:                                       ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %chunk_len101.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %chunk_len101.i, align 4
  %198 = ptrtoint ptr %offset103.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %offset103.i, align 4
  %add.i98 = add i32 %199, %197
  store i32 %add.i98, ptr %offset103.i, align 4
  store i32 0, ptr %chunk_len101.i, align 4
  %200 = ptrtoint ptr %substate.i84 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %substate.i84, align 4
  br label %sw.epilog

sw.bb108.i:                                       ; preds = %sw.bb13
  %len109.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %201 = ptrtoint ptr %len109.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %len109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %202)
  %cmp110.not.i = icmp eq i32 %202, 6
  br i1 %cmp110.not.i, label %lor.lhs.false112.i, label %sw.bb108.i.sw.epilog.thread.sink.split_crit_edge

sw.bb108.i.sw.epilog.thread.sink.split_crit_edge: ; preds = %sw.bb108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split

lor.lhs.false112.i:                               ; preds = %sw.bb108.i
  %data113.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %203 = ptrtoint ptr %data113.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %data113.i, align 4
  %bcmp.i99 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @nci_pattern_core_conn_credits_ntf, ptr noundef dereferenceable(6) %204, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i99)
  %tobool116.not.i = icmp eq i32 %bcmp.i99, 0
  br i1 %tobool116.not.i, label %if.end122.i, label %lor.lhs.false112.i.sw.epilog.thread.sink.split_crit_edge

lor.lhs.false112.i.sw.epilog.thread.sink.split_crit_edge: ; preds = %lor.lhs.false112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split

if.end122.i:                                      ; preds = %lor.lhs.false112.i
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %substate.i84 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %substate.i84, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %while.body
  %len.i101 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %206 = ptrtoint ptr %len.i101 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %len.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %207)
  %cmp.not.i102 = icmp eq i32 %207, 4
  br i1 %cmp.not.i102, label %lor.lhs.false.i106, label %sw.bb15.sw.epilog.thread_crit_edge

sw.bb15.sw.epilog.thread_crit_edge:               ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

lor.lhs.false.i106:                               ; preds = %sw.bb15
  %data.i103 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %208 = ptrtoint ptr %data.i103 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i103, align 4
  %bcmp.i104 = call i32 @bcmp(ptr noundef dereferenceable(4) %209, ptr noundef nonnull dereferenceable(4) @nci_pattern_core_conn_close_rsp, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i104)
  %tobool.not.i105 = icmp eq i32 %bcmp.i104, 0
  br i1 %tobool.not.i105, label %if.end.i109, label %lor.lhs.false.i106.sw.epilog.thread_crit_edge

lor.lhs.false.i106.sw.epilog.thread_crit_edge:    ; preds = %lor.lhs.false.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end.i109:                                      ; preds = %lor.lhs.false.i106
  call void @__sanitizer_cov_trace_pc() #10
  %210 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 7, ptr %state, align 4
  %211 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ndev, align 4
  %call2.i = call i32 @nci_send_cmd(ptr noundef %212, i16 noundef zeroext 3898, i8 noundef zeroext 0, ptr noundef null) #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %while.body
  %len.i111 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %213 = ptrtoint ptr %len.i111 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %len.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %214)
  %cmp.not.i112 = icmp eq i32 %214, 4
  br i1 %cmp.not.i112, label %lor.lhs.false.i116, label %sw.bb17.sw.epilog.thread_crit_edge

sw.bb17.sw.epilog.thread_crit_edge:               ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

lor.lhs.false.i116:                               ; preds = %sw.bb17
  %data.i113 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %215 = ptrtoint ptr %data.i113 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %data.i113, align 4
  %bcmp.i114 = call i32 @bcmp(ptr noundef dereferenceable(4) %216, ptr noundef nonnull dereferenceable(4) @nci_pattern_proprietary_boot_rsp, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i114)
  %tobool.not.i115 = icmp eq i32 %bcmp.i114, 0
  br i1 %tobool.not.i115, label %if.end.i119, label %lor.lhs.false.i116.sw.epilog.thread_crit_edge

lor.lhs.false.i116.sw.epilog.thread_crit_edge:    ; preds = %lor.lhs.false.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end.i119:                                      ; preds = %lor.lhs.false.i116
  %217 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %if_ops.i, align 4
  %nci_update_config.i = getelementptr inbounds %struct.nfcmrvl_if_ops, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %nci_update_config.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %nci_update_config.i, align 4
  %221 = ptrtoint ptr %binary_config.i117 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %binary_config.i117, align 4
  %223 = getelementptr inbounds %struct.nfcmrvl_fw_binary_config, ptr %222, i32 0, i32 1
  call void %220(ptr noundef %add.ptr3, ptr noundef %223) #8
  %224 = ptrtoint ptr %binary_config.i117 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %binary_config.i117, align 4
  %226 = ptrtoint ptr %header.i118 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %header.i118, align 4
  %helper.i = getelementptr inbounds %struct.nfcmrvl_fw, ptr %227, i32 0, i32 4
  %cmp5.i = icmp eq ptr %225, %helper.i
  br i1 %cmp5.i, label %if.then6.i, label %do.end13.i

if.then6.i:                                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  %228 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %state, align 4
  %firmware.i = getelementptr inbounds %struct.nfcmrvl_fw, ptr %227, i32 0, i32 5
  %229 = ptrtoint ptr %binary_config.i117 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %firmware.i, ptr %binary_config.i117, align 4
  %230 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %231, ptr noundef nonnull @.str.35) #12
  br label %sw.epilog

do.end13.i:                                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  %232 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %233, ptr noundef nonnull @.str.38) #12
  call fastcc void @fw_dnld_over(ptr noundef %add.ptr3, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog.thread.sink.split:                      ; preds = %lor.lhs.false112.i.sw.epilog.thread.sink.split_crit_edge, %sw.bb108.i.sw.epilog.thread.sink.split_crit_edge, %lor.lhs.false89.i.sw.epilog.thread.sink.split_crit_edge, %sw.bb85.i.sw.epilog.thread.sink.split_crit_edge, %lor.lhs.false48.i.sw.epilog.thread.sink.split_crit_edge, %sw.bb44.i.sw.epilog.thread.sink.split_crit_edge, %lor.lhs.false.i89.sw.epilog.thread.sink.split_crit_edge, %sw.bb.i87.sw.epilog.thread.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.23, %lor.lhs.false.i89.sw.epilog.thread.sink.split_crit_edge ], [ @.str.23, %sw.bb.i87.sw.epilog.thread.sink.split_crit_edge ], [ @.str.29, %lor.lhs.false48.i.sw.epilog.thread.sink.split_crit_edge ], [ @.str.29, %sw.bb44.i.sw.epilog.thread.sink.split_crit_edge ], [ @.str.29, %lor.lhs.false89.i.sw.epilog.thread.sink.split_crit_edge ], [ @.str.29, %sw.bb85.i.sw.epilog.thread.sink.split_crit_edge ], [ @.str.29, %lor.lhs.false112.i.sw.epilog.thread.sink.split_crit_edge ], [ @.str.29, %sw.bb108.i.sw.epilog.thread.sink.split_crit_edge ]
  %234 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %235, ptr noundef nonnull %.str.29.sink) #12
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.thread.sink.split, %lor.lhs.false.i116.sw.epilog.thread_crit_edge, %sw.bb17.sw.epilog.thread_crit_edge, %lor.lhs.false.i106.sw.epilog.thread_crit_edge, %sw.bb15.sw.epilog.thread_crit_edge, %if.else.i.sw.epilog.thread_crit_edge, %if.end33.i.sw.epilog.thread_crit_edge, %do.end20.i.sw.epilog.thread_crit_edge, %lor.lhs.false.i79.sw.epilog.thread_crit_edge, %sw.bb11.sw.epilog.thread_crit_edge, %lor.lhs.false.i68.sw.epilog.thread_crit_edge, %sw.bb9.sw.epilog.thread_crit_edge, %lor.lhs.false.i.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %while.body.sw.epilog.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %sw.epilog.thread.sink.split ], [ -12, %do.end20.i.sw.epilog.thread_crit_edge ], [ -14, %while.body.sw.epilog.thread_crit_edge ], [ -22, %lor.lhs.false.i.sw.epilog.thread_crit_edge ], [ -22, %sw.bb.sw.epilog.thread_crit_edge ], [ -22, %lor.lhs.false.i68.sw.epilog.thread_crit_edge ], [ -22, %sw.bb9.sw.epilog.thread_crit_edge ], [ -22, %lor.lhs.false.i79.sw.epilog.thread_crit_edge ], [ -22, %sw.bb11.sw.epilog.thread_crit_edge ], [ -12, %if.end33.i.sw.epilog.thread_crit_edge ], [ -12, %if.else.i.sw.epilog.thread_crit_edge ], [ -22, %lor.lhs.false.i106.sw.epilog.thread_crit_edge ], [ -22, %sw.bb15.sw.epilog.thread_crit_edge ], [ -22, %lor.lhs.false.i116.sw.epilog.thread_crit_edge ], [ -22, %sw.bb17.sw.epilog.thread_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #8
  br label %do.end

sw.epilog:                                        ; preds = %do.end13.i, %if.then6.i, %if.end.i109, %if.end122.i, %if.end99.i, %if.end73.i, %if.then63.i, %if.end39.i, %if.end29.i, %sw.bb13.sw.epilog_crit_edge, %if.end.i82, %if.end.i72, %process_state_set_ref_clock.exit, %process_state_init.exit, %do.end.i
  %ret.0 = phi i32 [ %retval.0.i61, %process_state_set_ref_clock.exit ], [ %retval.0.i48, %process_state_init.exit ], [ 0, %do.end.i ], [ 0, %if.end.i72 ], [ 0, %if.end.i82 ], [ 0, %if.end29.i ], [ 0, %if.then63.i ], [ 0, %if.end73.i ], [ 0, %sw.bb13.sw.epilog_crit_edge ], [ 0, %if.end122.i ], [ 0, %if.end99.i ], [ 0, %if.end39.i ], [ 0, %if.end.i109 ], [ 0, %do.end13.i ], [ 0, %if.then6.i ]
  call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #8
  %cmp.not = icmp eq i32 %ret.0, 0
  br i1 %cmp.not, label %sw.epilog.while.cond_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.epilog.while.cond_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %sw.epilog.thread
  %ret.0129 = phi i32 [ %ret.0.ph, %sw.epilog.thread ], [ %ret.0, %sw.epilog.do.end_crit_edge ]
  %236 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.19) #12
  call fastcc void @fw_dnld_over(ptr noundef %add.ptr3, i32 noundef %ret.0129)
  br label %while.end

while.end:                                        ; preds = %do.end, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfcmrvl_fw_dnld_deinit(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_wq = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %rx_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfcmrvl_fw_dnld_recv_frame(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %pprev.i.i = getelementptr inbounds %struct.nci_dev, ptr %1, i32 0, i32 11, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_timer = getelementptr inbounds %struct.nci_dev, ptr %1, i32 0, i32 11
  %call3 = tail call i32 @del_timer_sync(ptr noundef %cmd_timer) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %cmd_cnt = getelementptr inbounds %struct.nci_dev, ptr %5, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_cnt, i32 noundef 4) #8
  %6 = ptrtoint ptr %cmd_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %cmd_cnt, align 4
  %rx_q = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 10
  tail call void @skb_queue_tail(ptr noundef %rx_q, ptr noundef %skb) #8
  %rx_wq = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %rx_wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_wq, align 4
  %rx_work = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %rx_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfcmrvl_fw_dnld_abort(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fw_dnld_over(ptr noundef %priv, i32 noundef -112)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fw_dnld_over(ptr noundef %priv, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  %header = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %header, align 4
  %binary_config = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %binary_config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %binary_config, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  %cmd_cnt = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_cnt, i32 noundef 4) #8
  %7 = ptrtoint ptr %cmd_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %cmd_cnt, align 4
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %pprev.i.i = getelementptr inbounds %struct.nci_dev, ptr %9, i32 0, i32 11, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_timer = getelementptr inbounds %struct.nci_dev, ptr %9, i32 0, i32 11
  %call12 = tail call i32 @del_timer_sync(ptr noundef %cmd_timer) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %pprev.i.i42 = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 11, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pprev.i.i42, align 4
  %tobool.not.i.i43.not = icmp eq ptr %13, null
  br i1 %tobool.not.i.i43.not, label %if.end13.do.end_crit_edge, label %if.then17

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3, i32 11
  %call20 = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.end13.do.end_crit_edge
  %dev = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.41, i32 noundef %error) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %cmp.not = icmp eq i32 %error, 0
  br i1 %cmp.not, label %do.end.if.end23_crit_edge, label %if.then22

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nfcmrvl_chip_halt(ptr noundef %priv) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.end.if.end23_crit_edge
  %fw_dnld = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 3
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call26 = tail call i32 @nfc_fw_download_done(ptr noundef %19, ptr noundef %fw_dnld, i32 noundef %error) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfcmrvl_fw_dnld_start(ptr nocapture noundef readonly %ndev, ptr noundef %firmware_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_dnld1 = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 3
  %support_fw_dnld = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %support_fw_dnld to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %support_fw_dnld, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %firmware_name, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %firmware_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call ptr @strcpy(ptr noundef %fw_dnld1, ptr noundef nonnull %firmware_name) #13
  %fw = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %7, i32 0, i32 5
  %call7 = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull %firmware_name, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull %firmware_name) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %header = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %header, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2004318072, i32 %16)
  %cmp14.not = icmp eq i32 %16, -2004318072
  br i1 %cmp14.not, label %lor.lhs.false15, label %if.end10.do.end22_crit_edge

if.end10.do.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

lor.lhs.false15:                                  ; preds = %if.end10
  %phy = getelementptr inbounds %struct.nfcmrvl_fw, ptr %13, i32 0, i32 2
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %phy, align 1
  %phy17 = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %phy17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp18.not = icmp eq i32 %18, %20
  br i1 %cmp18.not, label %if.end30, label %lor.lhs.false15.do.end22_crit_edge

lor.lhs.false15.do.end22_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end22:                                         ; preds = %lor.lhs.false15.do.end22_crit_edge, %if.end10.do.end22_crit_edge
  %dev23 = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev23, align 4
  %phy27 = getelementptr inbounds %struct.nfcmrvl_fw, ptr %13, i32 0, i32 2
  %23 = ptrtoint ptr %phy27 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %phy27, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef nonnull %firmware_name, i32 noundef %16, i32 noundef %24) #12
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %26) #8
  %27 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %header, align 4
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false15
  %helper = getelementptr inbounds %struct.nfcmrvl_fw, ptr %13, i32 0, i32 4
  %28 = ptrtoint ptr %helper to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %helper, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp32.not = icmp eq i32 %29, 0
  %dev43 = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev43, align 4
  br i1 %cmp32.not, label %do.end42, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.12) #12
  %32 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %header, align 4
  %helper39 = getelementptr inbounds %struct.nfcmrvl_fw, ptr %33, i32 0, i32 4
  br label %do.body47

do.end42:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.16) #12
  %34 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %header, align 4
  %firmware = getelementptr inbounds %struct.nfcmrvl_fw, ptr %35, i32 0, i32 5
  br label %do.body47

do.body47:                                        ; preds = %do.end42, %do.end36
  %helper39.sink = phi ptr [ %firmware, %do.end42 ], [ %helper39, %do.end36 ]
  %36 = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %helper39.sink, ptr %36, align 4
  %timer = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 3, i32 11
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @fw_dnld_timeout, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @nfcmrvl_fw_dnld_start.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %38, 1500
  %call54 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #8
  %if_ops = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %if_ops, align 4
  %nci_update_config = getelementptr inbounds %struct.nfcmrvl_if_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %nci_update_config to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nci_update_config, align 4
  %43 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %header, align 4
  %45 = getelementptr inbounds %struct.nfcmrvl_fw, ptr %44, i32 0, i32 3, i32 1
  tail call void %42(ptr noundef %1, ptr noundef %45) #8
  %ndev56 = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %ndev56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev56, align 4
  %cmd_cnt = getelementptr inbounds %struct.nci_dev, ptr %47, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_cnt, i32 noundef 4) #8
  %48 = ptrtoint ptr %cmd_cnt to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %cmd_cnt, align 4
  %state = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 3, i32 4
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %state, align 4
  tail call void @nfcmrvl_chip_reset(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body47, %do.end22, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ -22, %do.end22 ], [ 0, %do.body47 ], [ -524, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_dnld_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -200
  %dev = getelementptr i8, ptr %t, i32 56
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.43) #12
  %state = getelementptr i8, ptr %t, i32 -120
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call fastcc void @fw_dnld_over(ptr noundef %add.ptr, i32 noundef -110)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfcmrvl_chip_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_send_to_raw_sock(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_send_cmd(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_send_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfcmrvl_chip_halt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_fw_download_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !88, !89, !90, !91, !93, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @nfcmrvl_fw_dnld_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 447, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 448, i32 31}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 450, i32 24}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 505, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nfcmrvl_fw_dnld_start._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @nfcmrvl_fw_dnld_start._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 513, i32 3}
!17 = !{ptr @nfcmrvl_fw_dnld_start._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @nfcmrvl_fw_dnld_start._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 522, i32 3}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nfcmrvl_fw_dnld_start._entry.11, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfcmrvl_fw_dnld_start._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 525, i32 3}
!26 = !{ptr @nfcmrvl_fw_dnld_start._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfcmrvl_fw_dnld_start._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @nfcmrvl_fw_dnld_start.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 530, i32 2}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 436, i32 4}
!33 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fw_dnld_rx_work._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @fw_dnld_rx_work._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 137, i32 2}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @process_state_reset._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @process_state_reset._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @nci_pattern_core_reset_ntf, !42, !"nci_pattern_core_reset_ntf", i1 false, i1 false}
!42 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 45, i32 22}
!43 = !{ptr @nci_pattern_core_init_rsp, !44, !"nci_pattern_core_init_rsp", i1 false, i1 false}
!44 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 49, i32 22}
!45 = !{ptr @nci_pattern_core_set_config_rsp, !46, !"nci_pattern_core_set_config_rsp", i1 false, i1 false}
!46 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 53, i32 22}
!47 = !{ptr @nci_pattern_core_conn_create_rsp, !48, !"nci_pattern_core_conn_create_rsp", i1 false, i1 false}
!48 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 57, i32 22}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 268, i32 4}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @process_state_fw_dnld._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @process_state_fw_dnld._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 278, i32 4}
!56 = !{ptr @process_state_fw_dnld._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @process_state_fw_dnld._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 301, i32 4}
!60 = !{ptr @process_state_fw_dnld._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @process_state_fw_dnld._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @process_state_fw_dnld._entry.31, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 327, i32 4}
!64 = !{ptr @process_state_fw_dnld._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @process_state_fw_dnld._entry.33, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 339, i32 4}
!67 = !{ptr @process_state_fw_dnld._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @nci_pattern_core_conn_credits_ntf, !69, !"nci_pattern_core_conn_credits_ntf", i1 false, i1 false}
!69 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 65, i32 22}
!70 = !{ptr @nci_pattern_core_conn_close_rsp, !71, !"nci_pattern_core_conn_close_rsp", i1 false, i1 false}
!71 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 61, i32 22}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 382, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @process_state_boot._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @process_state_boot._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 384, i32 3}
!79 = !{ptr @process_state_boot._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @process_state_boot._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @nci_pattern_proprietary_boot_rsp, !82, !"nci_pattern_proprietary_boot_rsp", i1 false, i1 false}
!82 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 69, i32 22}
!83 = !{ptr @skb_queue_head_init.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 110, i32 2}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @fw_dnld_over._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @fw_dnld_over._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/nfc/nfcmrvl/fw_dnld.c", i32 124, i32 2}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @fw_dnld_timeout._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @fw_dnld_timeout._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i8 0, i8 2}
