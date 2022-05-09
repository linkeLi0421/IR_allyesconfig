; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/r819xU_firmware.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/r819xU_firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct._rt_firmware = type { i32, i16, [64000 x i8], i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.ieee80211_device = type { ptr, %struct.ieee80211_security, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, ptr, %struct.spinlock, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, i8, %struct.net_device_stats, %struct.ieee80211_stats, %struct.ieee80211_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [6 x i8], i16, i16, %struct.list_head, [4 x ptr], i32, %struct.timer_list, i32, i32, [17 x [4 x %struct.ieee80211_frag_entry]], [17 x i32], i16, i16, [6 x i8], [6 x i8], %struct.ieee80211_network, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, ptr, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i16, i16, i32, i32, %struct.tasklet_struct, i32, i32, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i8, i32, i8, i8, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, [5 x ptr], i32, i32, i8, i32, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [4 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, %struct.rt_power_save_control, %struct.tx_pending, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, [128 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.ieee80211_security = type { i16, i8, [4 x i8], [4 x [32 x i8]], i8, i16 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %struct.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%struct.tspec_body = type { %struct.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.qos_tsinfo = type { i24 }
%union.qos_tclas = type { %struct.type1_ipv6 }
%struct.type1_ipv6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.ieee80211_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.ieee80211_network = type <{ [6 x i8], i8, i8, [6 x i8], i8, [33 x i8], i8, [3 x i8], %struct.ieee80211_qos_data, i8, i8, i8, i8, [2 x i16], i8, i8, [6 x i8], %struct.ieee80211_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, [3 x i8], i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i8, i32, [64 x i8], i32, %struct.ieee80211_tim_parameters, i8, i8, [2 x i32], i8, [4 x %struct.ieee80211_wmm_ac_param], i8, i8, i8, i16, [255 x i8], %struct._BSS_HT, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head, [4 x i8] }>
%struct.ieee80211_qos_data = type { %struct.ieee80211_qos_parameters, i32, i32, i8, i8 }
%struct.ieee80211_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.ieee80211_rx_stats = type { [2 x i32], i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, ptr, i16, i16, i16, i16, i8, i8, i8, [4 x i8], i16 }
%struct.ieee80211_tim_parameters = type { i8, i8 }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct._BSS_HT = type <{ i8, [32 x i8], i16, [32 x i8], i16, i32, i8, i8 }>
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i8 }
%struct.rt_power_save_control = type { i8, i8, i8, i32, %struct.work_struct, %struct.timer_list, i32, i8, i32, %struct.ieee80211_network, i8, i8, i8, i8, [33 x i8], %struct.octet_string, i8, i8, i8, i16, i8, i16, %struct.octet_string, [264 x i8], i8, %struct.ibss_parms, i8, i8, [6 x i8] }
%struct.octet_string = type { ptr, i16 }
%struct.ibss_parms = type { i16 }
%struct.tx_pending = type { i32, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RTL8192U/boot.img\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RTL8192U/main.img\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RTL8192U/data.img\00", [46 x i8] zeroinitializer }, align 32
@__const.init_firmware.fw_name = private unnamed_addr constant [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 4
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@init_firmware.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_firmware\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/rtl8192u/r819xU_firmware.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RTL8192U:  PlatformInitFirmware()==>\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@init_firmware.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"RTL8192U: PlatformInitFirmware: undefined firmware state\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@init_firmware.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTL8192U: request firmware fail!\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@init_firmware.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"RTL8192U: img file size exceed the container buffer fail!\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@init_firmware.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.10, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RTL8192U: CPUcheck_maincodeok_turnonCPU fail!\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@init_firmware.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.11, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RTL8192U: CPUcheck_firmware_ready fail(%d)!\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@init_firmware.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.12, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RTL8192U: Firmware Download Success\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@init_firmware.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.13, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RTL8192U: ERR in %s()\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware361 = internal constant [27 x i8] c"firmware=RTL8192U/boot.img\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [27 x i8] c"firmware=RTL8192U/main.img\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware363 = internal constant [27 x i8] c"firmware=RTL8192U/data.img\00", section ".modinfo", align 1
@fw_download_code.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.15, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fw_download_code\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"RTL8192U: =====================================================> tx full!\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.17, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CPUcheck_maincodeok_turnonCPU\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RTL8192U: Download Firmware: Put code fail!\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.18, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RTL8192U: Download Firmware: Put code ok!\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.19, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RTL8192U: Download Firmware: Boot ready!\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.13, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@CPUcheck_firmware_ready.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CPUcheck_firmware_ready\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTL8192U: Download Firmware: Firmware ready!\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@CPUcheck_firmware_ready.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.13, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 211, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 212, i32 7 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 213, i32 7 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 216, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 229, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 244, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 249, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 305, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 319, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 329, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 333, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 93, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 137, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 140, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 160, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [46 x i8] c"../drivers/staging/rtl8192u/r819xU_firmware.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 188, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_firmware363, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @init_firmware(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %CPU_status.i = alloca i32, align 4
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  %pFirmware = getelementptr i8, ptr %dev, i32 33956
  %0 = ptrtoint ptr %pFirmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pFirmware, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #4
  %2 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %3 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_firmware.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then6)) #4
          to label %do.end9 [label %if.then6], !srcloc !71

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_firmware.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.6) #4
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body15 [
    i32 0, label %do.end9.if.end39_crit_edge
    i32 5, label %if.then13
  ]

do.end9.if.end39_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

do.body15:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and16 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.if.end39_crit_edge, label %do.body19

do.body15.if.end39_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

do.body19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_firmware.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then31)) #4
          to label %if.end39 [label %if.then31], !srcloc !71

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_firmware.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.7) #4
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %do.body19, %do.body15.if.end39_crit_edge, %if.then13, %do.end9.if.end39_crit_edge
  %starting_state.0 = phi i32 [ 2, %if.then13 ], [ 0, %if.then31 ], [ 0, %do.body15.if.end39_crit_edge ], [ %5, %do.end9.if.end39_crit_edge ], [ 0, %do.body19 ]
  %cmp41 = phi i1 [ false, %if.then13 ], [ true, %if.then31 ], [ true, %do.body15.if.end39_crit_edge ], [ true, %do.end9.if.end39_crit_edge ], [ true, %do.body19 ]
  %firmware_buf118 = getelementptr inbounds %struct._rt_firmware, ptr %1, i32 0, i32 2
  %firmware_buf_size120 = getelementptr inbounds %struct._rt_firmware, ptr %1, i32 0, i32 3
  %arrayidx107 = getelementptr %struct._rt_firmware, ptr %1, i32 0, i32 2, i32 128
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end39
  %cmp40333 = phi i1 [ true, %if.end39 ], [ %cmp40, %for.inc.for.body_crit_edge ]
  %init_step.0331 = phi i32 [ %starting_state.0, %if.end39 ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp41, label %if.then42, label %if.end129

if.then42:                                        ; preds = %for.body
  %arrayidx = getelementptr [3 x ptr], ptr @__const.init_firmware.fw_name, i32 0, i32 %init_step.0331
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %dev43 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %call44 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef %9, ptr noundef %dev43) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.body47, label %if.end70

do.body47:                                        ; preds = %if.then42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %12 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool49.not = icmp sgt i32 %12, -1
  br i1 %tobool49.not, label %do.body47.do.body222_crit_edge, label %do.body51

do.body47.do.body222_crit_edge:                   ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body222

do.body51:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_firmware.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then63)) #4
          to label %do.body222 [label %if.then63], !srcloc !71

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_firmware.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.8) #4
  br label %do.body222

if.end70:                                         ; preds = %if.then42
  %13 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_entry, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %16)
  %cmp71 = icmp ugt i32 %16, 64000
  br i1 %cmp71, label %do.body73, label %if.end96

do.body73:                                        ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %17 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool75.not = icmp sgt i32 %17, -1
  br i1 %tobool75.not, label %do.body73.do.body222_crit_edge, label %do.body77

do.body73.do.body222_crit_edge:                   ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body222

do.body77:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_firmware.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then89)) #4
          to label %do.body222 [label %if.then89], !srcloc !71

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_firmware.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.9) #4
  br label %do.body222

if.end96:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %init_step.0331)
  %cmp97.not = icmp eq i32 %init_step.0331, 1
  br i1 %cmp97.not, label %if.else103, label %if.then98

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = call ptr @memcpy(ptr %firmware_buf118, ptr %19, i32 %16)
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %14, align 4
  br label %if.then128

if.else103:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  %23 = call ptr @memset(ptr %firmware_buf118, i32 0, i32 128)
  %data108 = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %24 = ptrtoint ptr %data108 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data108, align 4
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %14, align 4
  %28 = call ptr @memcpy(ptr %arrayidx107, ptr %25, i32 %27)
  %29 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw_entry, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add = add i32 %32, 128
  br label %if.then128

if.then128:                                       ; preds = %if.else103, %if.then98
  %file_length.1 = phi i32 [ %22, %if.then98 ], [ %add, %if.else103 ]
  %conv = trunc i32 %file_length.1 to i16
  %33 = ptrtoint ptr %firmware_buf_size120 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv, ptr %firmware_buf_size120, align 2
  %call124314 = call fastcc zeroext i1 @fw_download_code(ptr noundef %dev, ptr noundef %firmware_buf118, i32 noundef %file_length.1)
  %34 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %35) #4
  br i1 %call124314, label %if.then128.if.end132_crit_edge, label %if.then128.do.body222_crit_edge

if.then128.do.body222_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body222

if.then128.if.end132_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

if.end129:                                        ; preds = %for.body
  %36 = ptrtoint ptr %firmware_buf_size120 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %firmware_buf_size120, align 2
  %conv121 = zext i16 %37 to i32
  %call124 = call fastcc zeroext i1 @fw_download_code(ptr noundef %dev, ptr noundef %firmware_buf118, i32 noundef %conv121)
  br i1 %call124, label %if.end129.if.end132_crit_edge, label %if.end129.do.body222_crit_edge

if.end129.do.body222_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body222

if.end129.if.end132_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

if.end132:                                        ; preds = %if.end129.if.end132_crit_edge, %if.then128.if.end132_crit_edge
  %38 = zext i32 %init_step.0331 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %init_step.0331, label %if.end132.for.inc_crit_edge [
    i32 0, label %if.end132.for.inc.sink.split_crit_edge
    i32 1, label %sw.bb134
    i32 2, label %sw.bb165
  ]

if.end132.for.inc.sink.split_crit_edge:           ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

if.end132.for.inc_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb134:                                         ; preds = %if.end132
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %1, align 4
  %call136 = call fastcc zeroext i1 @CPUcheck_maincodeok_turnonCPU(ptr noundef %dev)
  br i1 %call136, label %sw.bb134.for.inc.sink.split_crit_edge, label %do.body140

sw.bb134.for.inc.sink.split_crit_edge:            ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

do.body140:                                       ; preds = %sw.bb134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %40 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %tobool142.not = icmp sgt i32 %40, -1
  br i1 %tobool142.not, label %do.body140.do.body222_crit_edge, label %do.body144

do.body140.do.body222_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body222

do.body144:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_firmware.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then156)) #4
          to label %do.body222 [label %if.then156], !srcloc !71

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_firmware.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.10) #4
  br label %do.body222

sw.bb165:                                         ; preds = %if.end132
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %CPU_status.i) #4
  %43 = ptrtoint ptr %CPU_status.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %CPU_status.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %sw.bb165
  %check_time.0.i = phi i32 [ 200000, %sw.bb165 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %call.i = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %CPU_status.i) #4
  %44 = ptrtoint ptr %CPU_status.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %CPU_status.i, align 4
  %and.i = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %dec.i = add nsw i32 %check_time.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_time.0.i)
  %tobool1.not.i = icmp eq i32 %check_time.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %46 = load i32, ptr @rt_global_debug_component, align 4
  br i1 %tobool3.not.i, label %do.body23.i, label %do.body5.i

do.body5.i:                                       ; preds = %do.end.i
  %and6.i = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.body5.i.CPUcheck_firmware_ready.exit.thread_crit_edge, label %do.body9.i

do.body5.i.CPUcheck_firmware_ready.exit.thread_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %CPUcheck_firmware_ready.exit.thread

do.body9.i:                                       ; preds = %do.body5.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CPUcheck_firmware_ready.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then14.i)) #4
          to label %if.end196.critedge [label %if.then14.i], !srcloc !71

if.then14.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CPUcheck_firmware_ready.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.21) #4
  br label %CPUcheck_firmware_ready.exit.thread

do.body23.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool25.not.i = icmp sgt i32 %46, -1
  br i1 %tobool25.not.i, label %do.body23.i.CPUcheck_firmware_ready.exit.thread320_crit_edge, label %do.body27.i

do.body23.i.CPUcheck_firmware_ready.exit.thread320_crit_edge: ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %CPUcheck_firmware_ready.exit.thread320

do.body27.i:                                      ; preds = %do.body23.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CPUcheck_firmware_ready.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then39.i)) #4
          to label %do.body171.critedge [label %if.then39.i], !srcloc !71

if.then39.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CPUcheck_firmware_ready.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.20) #4
  br label %CPUcheck_firmware_ready.exit.thread320

CPUcheck_firmware_ready.exit.thread:              ; preds = %if.then14.i, %do.body5.i.CPUcheck_firmware_ready.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %CPU_status.i) #4
  br label %for.inc.sink.split

CPUcheck_firmware_ready.exit.thread320:           ; preds = %if.then39.i, %do.body23.i.CPUcheck_firmware_ready.exit.thread320_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %CPU_status.i) #4
  br label %do.body171

do.body171.critedge:                              ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %CPU_status.i) #4
  br label %do.body171

do.body171:                                       ; preds = %do.body171.critedge, %CPUcheck_firmware_ready.exit.thread320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %47 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool173.not = icmp sgt i32 %47, -1
  br i1 %tobool173.not, label %do.body171.do.body222_crit_edge, label %do.body175

do.body171.do.body222_crit_edge:                  ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body222

do.body175:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_firmware.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then187)) #4
          to label %do.body222 [label %if.then187], !srcloc !71

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_firmware.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.11, i32 noundef 0) #4
  br label %do.body222

if.end196.critedge:                               ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %CPU_status.i) #4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end196.critedge, %CPUcheck_firmware_ready.exit.thread, %sw.bb134.for.inc.sink.split_crit_edge, %if.end132.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end132.for.inc.sink.split_crit_edge ], [ 3, %sw.bb134.for.inc.sink.split_crit_edge ], [ 5, %if.end196.critedge ], [ 5, %CPUcheck_firmware_ready.exit.thread ]
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end132.for.inc_crit_edge
  %inc = add nuw nsw i32 %init_step.0331, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %init_step.0331)
  %cmp40 = icmp ult i32 %init_step.0331, 2
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.body198, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body198:                                       ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %49 = load i32, ptr @rt_global_debug_component, align 4
  %and199 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %do.body198.cleanup_crit_edge, label %do.body202

do.body198.cleanup_crit_edge:                     ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body202:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_firmware.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then214)) #4
          to label %cleanup [label %if.then214], !srcloc !71

if.then214:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_firmware.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.12) #4
  br label %cleanup

do.body222:                                       ; preds = %if.then187, %do.body175, %do.body171.do.body222_crit_edge, %if.then156, %do.body144, %do.body140.do.body222_crit_edge, %if.end129.do.body222_crit_edge, %if.then128.do.body222_crit_edge, %if.then89, %do.body77, %do.body73.do.body222_crit_edge, %if.then63, %do.body51, %do.body47.do.body222_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %50 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %tobool224.not = icmp sgt i32 %50, -1
  br i1 %tobool224.not, label %do.body222.cleanup_crit_edge, label %do.body226

do.body222.cleanup_crit_edge:                     ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body226:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_firmware.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_firmware, %if.then238)) #4
          to label %cleanup [label %if.then238], !srcloc !71

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_firmware.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then238, %do.body226, %do.body222.cleanup_crit_edge, %if.then214, %do.body202, %do.body198.cleanup_crit_edge
  %cmp40329 = phi i1 [ %cmp40333, %do.body226 ], [ %cmp40, %do.body202 ], [ %cmp40333, %do.body222.cleanup_crit_edge ], [ %cmp40333, %if.then238 ], [ %cmp40, %do.body198.cleanup_crit_edge ], [ %cmp40, %if.then214 ]
  %51 = xor i1 %cmp40329, true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #4
  ret i1 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fw_download_code(ptr noundef %dev, ptr nocapture noundef readonly %code_virtual_address, i32 noundef %buffer_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pFirmware = getelementptr i8, ptr %dev, i32 33956
  %0 = ptrtoint ptr %pFirmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pFirmware, align 4
  %cmdpacket_frag_threshold.i = getelementptr inbounds %struct._rt_firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmdpacket_frag_threshold.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 7968, ptr %cmdpacket_frag_threshold.i, align 4
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  br label %do.body

do.body:                                          ; preds = %if.end102.do.body_crit_edge, %entry
  %frag_offset.0 = phi i32 [ 0, %entry ], [ %add107, %if.end102.do.body_crit_edge ]
  %code_virtual_address.addr.0 = phi ptr [ %code_virtual_address, %entry ], [ %add.ptr104, %if.end102.do.body_crit_edge ]
  %conv = and i32 %frag_offset.0, 65535
  %sub = sub i32 %buffer_len, %conv
  %3 = tail call i32 @llvm.umin.i32(i32 %sub, i32 7968)
  %add7 = add nuw nsw i32 %3, 28
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7, i32 noundef 2592) #4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 7968, i32 %sub)
  %cmp = icmp ugt i32 %sub, 7968
  %bLastIniPkt.0 = select i1 %cmp, i8 0, i8 -128
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %cb, align 8
  %add.ptr = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %queue_index = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 13
  %5 = ptrtoint ptr %queue_index to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %queue_index, align 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.clear14 = and i8 %bf.load, 63
  %bf.set15 = or i8 %bf.clear14, %bLastIniPkt.0
  store i8 %bf.set15, ptr %add.ptr, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 24
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %10, i32 24
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17180.not = icmp eq i32 %3, 0
  br i1 %cmp17180.not, label %if.end10.for.end_crit_edge, label %if.end10.cond.end_crit_edge

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  br label %cond.end

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.end:                                         ; preds = %cond.end61.cond.end_crit_edge, %if.end10.cond.end_crit_edge
  %seg_ptr.0184 = phi ptr [ %incdec.ptr64, %cond.end61.cond.end_crit_edge ], [ %add.ptr.i, %if.end10.cond.end_crit_edge ]
  %i.0181 = phi i32 [ %add65, %cond.end61.cond.end_crit_edge ], [ 0, %if.end10.cond.end_crit_edge ]
  %add23 = or i32 %i.0181, 3
  %arrayidx = getelementptr i8, ptr %code_virtual_address.addr.0, i32 %add23
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %incdec.ptr = getelementptr i8, ptr %seg_ptr.0184, i32 1
  %13 = ptrtoint ptr %seg_ptr.0184 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %seg_ptr.0184, align 1
  %add26 = or i32 %i.0181, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %3)
  %cmp28 = icmp ult i32 %add26, %3
  %add31 = or i32 %i.0181, 2
  br i1 %cmp28, label %cond.true30, label %cond.end.cond.end35_crit_edge

cond.end.cond.end35_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end35

cond.true30:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx32 = getelementptr i8, ptr %code_virtual_address.addr.0, i32 %add31
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx32, align 1
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true30, %cond.end.cond.end35_crit_edge
  %cond36 = phi i8 [ %15, %cond.true30 ], [ 0, %cond.end.cond.end35_crit_edge ]
  %incdec.ptr38 = getelementptr i8, ptr %seg_ptr.0184, i32 2
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %cond36, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %3)
  %cmp41 = icmp ult i32 %add31, %3
  br i1 %cmp41, label %cond.true43, label %cond.end35.cond.end48_crit_edge

cond.end35.cond.end48_crit_edge:                  ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end48

cond.true43:                                      ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx45 = getelementptr i8, ptr %code_virtual_address.addr.0, i32 %add26
  %17 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx45, align 1
  br label %cond.end48

cond.end48:                                       ; preds = %cond.true43, %cond.end35.cond.end48_crit_edge
  %cond49 = phi i8 [ %18, %cond.true43 ], [ 0, %cond.end35.cond.end48_crit_edge ]
  %incdec.ptr51 = getelementptr i8, ptr %seg_ptr.0184, i32 3
  %19 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cond49, ptr %incdec.ptr38, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %3)
  %cmp54 = icmp ult i32 %add23, %3
  br i1 %cmp54, label %cond.true56, label %cond.end48.cond.end61_crit_edge

cond.end48.cond.end61_crit_edge:                  ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end61

cond.true56:                                      ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx58 = getelementptr i8, ptr %code_virtual_address.addr.0, i32 %i.0181
  %20 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx58, align 1
  br label %cond.end61

cond.end61:                                       ; preds = %cond.true56, %cond.end48.cond.end61_crit_edge
  %cond62 = phi i8 [ %21, %cond.true56 ], [ 0, %cond.end48.cond.end61_crit_edge ]
  %incdec.ptr64 = getelementptr i8, ptr %seg_ptr.0184, i32 4
  %22 = ptrtoint ptr %incdec.ptr51 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %cond62, ptr %incdec.ptr51, align 1
  %add65 = add nuw nsw i32 %i.0181, 4
  %cmp17 = icmp ult i32 %add65, %3
  br i1 %cmp17, label %cond.end61.cond.end_crit_edge, label %cond.end61.for.end_crit_edge

cond.end61.for.end_crit_edge:                     ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.end61.cond.end_crit_edge:                    ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

for.end:                                          ; preds = %cond.end61.for.end_crit_edge, %if.end10.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %add65, %cond.end61.for.end_crit_edge ]
  %conv66 = trunc i32 %i.0.lcssa to i16
  %txbuf_size = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 14
  %23 = ptrtoint ptr %txbuf_size to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv66, ptr %txbuf_size, align 2
  %call67 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %i.0.lcssa) #4
  %24 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %queue_index, align 1
  %26 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ieee80211, align 4
  %check_nic_enough_desc = getelementptr inbounds %struct.ieee80211_device, ptr %27, i32 0, i32 192
  %28 = ptrtoint ptr %check_nic_enough_desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %check_nic_enough_desc, align 8
  %conv69 = zext i8 %25 to i32
  %call70 = tail call signext i16 %29(ptr noundef %dev, i32 noundef %conv69) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call70)
  %tobool71.not = icmp eq i16 %call70, 0
  br i1 %tobool71.not, label %for.end.do.body81_crit_edge, label %lor.lhs.false

for.end.do.body81_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body81

lor.lhs.false:                                    ; preds = %for.end
  %30 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ieee80211, align 4
  %arrayidx73 = getelementptr %struct.ieee80211_device, ptr %31, i32 0, i32 135, i32 %conv69
  %32 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx73, align 4
  %cmp.i.not = icmp eq ptr %33, %arrayidx73
  br i1 %cmp.i.not, label %lor.lhs.false76, label %lor.lhs.false.do.body81_crit_edge

lor.lhs.false.do.body81_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body81

lor.lhs.false76:                                  ; preds = %lor.lhs.false
  %queue_stop = getelementptr inbounds %struct.ieee80211_device, ptr %31, i32 0, i32 111
  %34 = ptrtoint ptr %queue_stop to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %queue_stop, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool79.not = icmp eq i16 %35, 0
  br i1 %tobool79.not, label %if.else99, label %lor.lhs.false76.do.body81_crit_edge

lor.lhs.false76.do.body81_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body81

do.body81:                                        ; preds = %lor.lhs.false76.do.body81_crit_edge, %lor.lhs.false.do.body81_crit_edge, %for.end.do.body81_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %36 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool82.not = icmp eq i32 %and, 0
  br i1 %tobool82.not, label %do.body81.do.end93_crit_edge, label %do.body84

do.body81.do.end93_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end93

do.body84:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_download_code.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_download_code, %if.then89)) #4
          to label %do.end93 [label %if.then89], !srcloc !71

if.then89:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fw_download_code.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.15) #4
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %do.body84, %do.body81.do.end93_crit_edge
  %37 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ieee80211, align 4
  %39 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %queue_index, align 1
  %idxprom97 = zext i8 %40 to i32
  %arrayidx98 = getelementptr %struct.ieee80211_device, ptr %38, i32 0, i32 135, i32 %idxprom97
  tail call void @skb_queue_tail(ptr noundef %arrayidx98, ptr noundef nonnull %call.i.i) #4
  br label %if.end102

if.else99:                                        ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #6
  %softmac_hard_start_xmit = getelementptr inbounds %struct.ieee80211_device, ptr %31, i32 0, i32 175
  %41 = ptrtoint ptr %softmac_hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %softmac_hard_start_xmit, align 4
  %call101 = tail call i32 %42(ptr noundef nonnull %call.i.i, ptr noundef %dev) #4
  br label %if.end102

if.end102:                                        ; preds = %if.else99, %do.end93
  %add.ptr104 = getelementptr i8, ptr %code_virtual_address.addr.0, i32 %3
  %add107 = add nuw nsw i32 %3, %conv
  %conv110 = and i32 %add107, 65535
  %cmp111 = icmp ult i32 %conv110, %buffer_len
  br i1 %cmp111, label %if.end102.do.body_crit_edge, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end102.do.body_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

cleanup:                                          ; preds = %if.end102.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %43 = xor i1 %tobool.not, true
  ret i1 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @CPUcheck_maincodeok_turnonCPU(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %CPU_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %CPU_status) #4
  %0 = ptrtoint ptr %CPU_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %CPU_status, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %check_putcodeOK_time.0 = phi i32 [ 200000, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %call = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %CPU_status) #4
  %1 = ptrtoint ptr %CPU_status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %CPU_status, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %dec = add nsw i32 %check_putcodeOK_time.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_putcodeOK_time.0)
  %tobool1.not = icmp eq i32 %check_putcodeOK_time.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %3 = load i32, ptr @rt_global_debug_component, align 4
  br i1 %tobool3.not, label %do.body5, label %do.body21

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool7.not = icmp sgt i32 %3, -1
  br i1 %tobool7.not, label %do.body5.do.body89_crit_edge, label %do.body9

do.body5.do.body89_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body89

do.body9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CPUcheck_maincodeok_turnonCPU, %if.then14)) #4
          to label %do.body89 [label %if.then14], !srcloc !71

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.17) #4
  br label %do.body89

do.body21:                                        ; preds = %do.end
  %and22 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.if.end44_crit_edge, label %do.body25

do.body21.if.end44_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

do.body25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CPUcheck_maincodeok_turnonCPU, %if.then37)) #4
          to label %if.end44 [label %if.then37], !srcloc !71

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.18) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %do.body25, %do.body21.if.end44_crit_edge
  %call45 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %CPU_status) #4
  %4 = ptrtoint ptr %CPU_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %CPU_status, align 4
  %6 = trunc i32 %5 to i8
  %conv = or i8 %6, 4
  %call47 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 256, i8 noundef zeroext %conv) #4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end44
  %__ms.0134 = phi i32 [ 1000, %if.end44 ], [ %dec48, %while.body.while.body_crit_edge ]
  %dec48 = add nsw i32 %__ms.0134, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #4
  %tobool49.not = icmp eq i32 %dec48, 0
  br i1 %tobool49.not, label %while.body.do.body50_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.do.body50_crit_edge:                   ; preds = %while.body
  br label %do.body50

do.body50:                                        ; preds = %do.body50.do.body50_crit_edge, %while.body.do.body50_crit_edge
  %check_bootOk_time.0 = phi i32 [ %dec57, %do.body50.do.body50_crit_edge ], [ 200000, %while.body.do.body50_crit_edge ]
  %call51 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %CPU_status) #4
  %8 = ptrtoint ptr %CPU_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %CPU_status, align 4
  %and52 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp ne i32 %and52, 0
  %dec57 = add nsw i32 %check_bootOk_time.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_bootOk_time.0)
  %tobool58.not = icmp eq i32 %check_bootOk_time.0, 0
  %or.cond120 = select i1 %tobool53.not, i1 true, i1 %tobool58.not
  br i1 %or.cond120, label %do.end59, label %do.body50.do.body50_crit_edge

do.body50.do.body50_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body50

do.end59:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool61.not = icmp eq i32 %and52, 0
  br i1 %tobool61.not, label %do.end59.do.body89_crit_edge, label %do.body64

do.end59.do.body89_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body89

do.body64:                                        ; preds = %do.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and65 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.cleanup_crit_edge, label %do.body68

do.body64.cleanup_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body68:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CPUcheck_maincodeok_turnonCPU, %if.then80)) #4
          to label %cleanup [label %if.then80], !srcloc !71

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.19) #4
  br label %cleanup

do.body89:                                        ; preds = %do.end59.do.body89_crit_edge, %if.then14, %do.body9, %do.body5.do.body89_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %11 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool91.not = icmp sgt i32 %11, -1
  br i1 %tobool91.not, label %do.body89.cleanup_crit_edge, label %do.body93

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body93:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@CPUcheck_maincodeok_turnonCPU, %if.then105)) #4
          to label %cleanup [label %if.then105], !srcloc !71

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %do.body93, %do.body89.cleanup_crit_edge, %if.then80, %do.body68, %do.body64.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.body64.cleanup_crit_edge ], [ true, %if.then80 ], [ false, %if.then105 ], [ false, %do.body89.cleanup_crit_edge ], [ true, %do.body68 ], [ false, %do.body93 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %CPU_status) #4
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_nic_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_nic_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !57, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 211, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 212, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 213, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 216, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @init_firmware.__UNIQUE_ID_ddebug353, !7, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 229, i32 3}
!14 = !{ptr @init_firmware.__UNIQUE_ID_ddebug354, !13, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 244, i32 5}
!17 = !{ptr @init_firmware.__UNIQUE_ID_ddebug355, !16, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 249, i32 5}
!20 = !{ptr @init_firmware.__UNIQUE_ID_ddebug356, !19, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 305, i32 5}
!23 = !{ptr @init_firmware.__UNIQUE_ID_ddebug357, !22, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 319, i32 5}
!26 = !{ptr @init_firmware.__UNIQUE_ID_ddebug358, !25, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 329, i32 2}
!29 = !{ptr @init_firmware.__UNIQUE_ID_ddebug359, !28, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 333, i32 2}
!32 = !{ptr @init_firmware.__UNIQUE_ID_ddebug360, !31, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_firmware361, !34, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 338, i32 1}
!35 = !{ptr @__UNIQUE_ID_firmware362, !36, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 339, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware363, !38, !"__UNIQUE_ID_firmware363", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 340, i32 1}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 93, i32 4}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @fw_download_code.__UNIQUE_ID_ddebug346, !40, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 137, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug347, !44, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 140, i32 3}
!49 = !{ptr @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug348, !48, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 160, i32 3}
!52 = !{ptr @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug349, !51, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!53 = !{ptr @CPUcheck_maincodeok_turnonCPU.__UNIQUE_ID_ddebug350, !54, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!54 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 165, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 188, i32 3}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @CPUcheck_firmware_ready.__UNIQUE_ID_ddebug351, !56, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!59 = !{ptr @CPUcheck_firmware_ready.__UNIQUE_ID_ddebug352, !60, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!60 = !{!"../drivers/staging/rtl8192u/r819xU_firmware.c", i32 193, i32 2}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{i64 2148993197, i64 2148993202, i64 2148993215, i64 2148993259, i64 2148993293, i64 2148993314}
