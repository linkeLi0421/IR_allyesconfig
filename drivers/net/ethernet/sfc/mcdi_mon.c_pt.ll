; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/mcdi_mon.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/mcdi_mon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.153 = type { ptr, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%union.efx_dword = type { [1 x i32] }
%struct.efx_mcdi_data = type { %struct.efx_mcdi_iface, %struct.efx_mcdi_mon, i32 }
%struct.efx_mcdi_iface = type { ptr, i32, i32, %struct.wait_queue_head, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.timer_list, ptr, i8, i32, i32, %struct.wait_queue_head }
%struct.efx_mcdi_mon = type { %struct.efx_buffer, %struct.mutex, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.efx_mcdi_mon_attribute = type { %struct.device_attribute, i32, i32, i32, i32, [12 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }

@efx_mcdi_sensor_type = internal constant { [46 x %struct.anon.153], [152 x i8] } { [46 x %struct.anon.153] [%struct.anon.153 { ptr @.str.16, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.17, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.18, i32 2, i32 -1 }, %struct.anon.153 { ptr @.str.17, i32 1, i32 0 }, %struct.anon.153 { ptr @.str.19, i32 2, i32 0 }, %struct.anon.153 { ptr @.str.17, i32 1, i32 1 }, %struct.anon.153 { ptr @.str.19, i32 2, i32 1 }, %struct.anon.153 { ptr @.str.20, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.21, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.22, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.23, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.24, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.25, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.26, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.27, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.28, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.29, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.30, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.31, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.32, i32 2, i32 -1 }, %struct.anon.153 { ptr @.str.33, i32 2, i32 -1 }, %struct.anon.153 { ptr @.str.34, i32 2, i32 -1 }, %struct.anon.153 { ptr @.str.35, i32 2, i32 -1 }, %struct.anon.153 { ptr @.str.36, i32 2, i32 -1 }, %struct.anon.153 { ptr @.str.37, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.38, i32 4, i32 -1 }, %struct.anon.153 { ptr @.str.39, i32 4, i32 -1 }, %struct.anon.153 { ptr @.str.40, i32 5, i32 -1 }, %struct.anon.153 { ptr @.str.41, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.42, i32 4, i32 -1 }, %struct.anon.153 { ptr @.str.43, i32 4, i32 -1 }, %struct.anon.153 zeroinitializer, %struct.anon.153 { ptr @.str.44, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.45, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.46, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.47, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.48, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.49, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.50, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.51, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.52, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.53, i32 1, i32 -1 }, %struct.anon.153 { ptr @.str.54, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.55, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.56, i32 3, i32 -1 }, %struct.anon.153 { ptr @.str.57, i32 1, i32 -1 }], [152 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No sensor name available\00", [39 x i8] zeroinitializer }, align 32
@sensor_status_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [44 x i8] zeroinitializer }, align 32
@efx_hwmon_unit = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr null, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Sensor %d (%s) reports condition '%s' for value %d%s\0A\00", [42 x i8] zeroinitializer }, align 32
@efx_mcdi_mon_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&hwmon->update_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"temp\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fan\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"curr\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s%u_input\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s%u_min\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s%u_max\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s%u_crit\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s%u_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s%u_label\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Controller board temp.\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PHY temp.\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Controller heat sink\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PHY heat sink\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1.0V supply\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1.2V supply\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1.8V supply\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"2.5V supply\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"3.3V supply\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"12.0V supply\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"1.2V analogue supply\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Ref. voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AOE FPGA supply\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AOE FPGA temp.\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AOE regulator temp.\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Controller regulator temp.\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Fan 0\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Fan 1\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Fan 2\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Fan 3\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Fan 4\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AOE input supply\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AOE output current\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AOE input current\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Board power use\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0.9V supply\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.9V supply current\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"1.2V supply current\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0.9V supply (ext. ADC)\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Controller board temp. 2\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Regulator die temp.\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0.9V regulator temp.\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"1.2V regulator temp.\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Controller PTAT voltage (int. ADC)\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Controller die temp. (int. ADC)\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Controller PTAT voltage (ext. ADC)\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Controller die temp. (ext. ADC)\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Ambient temp.\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Air flow raw\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.9V die (int. ADC)\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.9V die (ext. ADC)\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Controller board temp. (hotpoint)\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Warning\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Fatal\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Device failure\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"No reading\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" degC\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" rpm\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" mV\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" mA\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" W\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@efx_mcdi_mon_add_attr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"efx_mcdi_sensor_type\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 39, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 120, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"sensor_status_names\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 95, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"efx_hwmon_unit\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 27, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 126, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 128, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 345, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 423, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 431, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 435, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 439, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 443, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 458, i32 33 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 464, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 471, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 481, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 489, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 496, i32 33 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 506, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 42, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 43, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 44, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 46, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 49, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 50, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 51, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 52, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 53, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 54, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 55, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 56, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 57, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 58, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 59, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 60, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 62, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 63, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 64, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 65, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 66, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 67, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 68, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 69, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 70, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 71, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 72, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 73, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 74, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 75, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 76, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 77, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 78, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 79, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 81, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 83, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 85, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 87, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 88, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 89, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 90, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 91, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 96, i32 29 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 97, i32 34 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 98, i32 32 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 99, i32 33 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 100, i32 37 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 28, i32 22 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 29, i32 22 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 30, i32 22 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 31, i32 22 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 32, i32 22 }
@___asan_gen_.289 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 296, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 220, i32 22 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 265, i32 22 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [39 x i8] c"../drivers/net/ethernet/sfc/mcdi_mon.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 274, i32 22 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @efx_mcdi_sensor_type, ptr @.str, ptr @sensor_status_names, ptr @efx_hwmon_unit, ptr @.str.1, ptr @.str.2, ptr @efx_mcdi_mon_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @efx_mcdi_mon_add_attr.__key, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_sensor_type to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_status_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_hwmon_unit to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_mon_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_mon_add_attr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_sensor_event(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ev, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, 255
  %shr = lshr i32 %2, 8
  %and3 = and i32 %shr, 255
  %shr5 = lshr i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %and)
  %cmp = icmp ult i32 %and, 46
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8 = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %and
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx8, align 4
  %hwmon_type10 = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %and, i32 1
  %5 = ptrtoint ptr %hwmon_type10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwmon_type10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hwmon_type.0 = phi i32 [ %6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %name.0 = phi ptr [ %4, %if.then ], [ null, %entry.if.end_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and22 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end.do.end27_crit_edge, label %if.then24

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = and i32 %hwmon_type.0, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  %arrayidx17 = getelementptr [6 x ptr], ptr @efx_hwmon_unit, i32 0, i32 %hwmon_type.0
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx17, align 4
  %spec.store.select28 = select i1 %tobool18.not, ptr @.str.1, ptr %11
  %arrayidx13 = getelementptr [5 x ptr], ptr @sensor_status_names, i32 0, i32 %and3
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx13, align 4
  %tobool.not = icmp eq ptr %name.0, null
  %spec.store.select = select i1 %tobool.not, ptr @.str, ptr %name.0
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.2, i32 noundef %and, ptr noundef %spec.store.select, ptr noundef %13, i32 noundef %shr5, ptr noundef %spec.store.select28) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %if.end.do.end27_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_mon_probe(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [3 x %union.efx_dword], align 4
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [63 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  %name = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  %hwmon.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #9
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf) #9
  %2 = call ptr @memset(ptr %outbuf, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #9
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !160
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #9
  %4 = call ptr @memset(ptr %name, i32 255, i32 12)
  br label %do.body

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %entry
  %n_sensors.0 = phi i32 [ 0, %entry ], [ %add330, %if.end8.do.body_crit_edge ]
  %page.0 = phi i32 [ 0, %entry ], [ %inc, %if.end8.do.body_crit_edge ]
  %5 = call i32 @llvm.bswap.i32(i32 %page.0)
  %6 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %inbuf, align 4
  %call5 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 65, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 252, ptr noundef nonnull %outlen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup829_crit_edge

do.body.cleanup829_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup829

if.end:                                           ; preds = %do.body
  %7 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp ult i32 %8, 4
  br i1 %cmp, label %if.end.cleanup829_crit_edge, label %if.end8

if.end.cleanup829_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup829

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outbuf, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %and12 = and i32 %11, 2147483647
  %call.i = call i32 @__sw_hweight32(i32 noundef %and12) #9
  %add330 = add i32 %call.i, %n_sensors.0
  %inc = add i32 %page.0, 1
  %tobool333.not = icmp sgt i32 %11, -1
  br i1 %tobool333.not, label %do.end334, label %if.end8.do.body_crit_edge

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end334:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add330)
  %cmp335 = icmp eq i32 %add330, 0
  br i1 %cmp335, label %do.end334.cleanup829_crit_edge, label %if.end338

do.end334.cleanup829_crit_edge:                   ; preds = %do.end334
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup829

if.end338:                                        ; preds = %do.end334
  %mul = shl i32 %add330, 2
  %call339 = call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef %hwmon.i, i32 noundef %mul, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call339)
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %do.body343, label %if.end338.cleanup829_crit_edge

if.end338.cleanup829_crit_edge:                   ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup829

do.body343:                                       ; preds = %if.end338
  %update_lock = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 1
  call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @efx_mcdi_mon_probe.__key) #9
  %12 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcdi.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i) #9
  %dma_addr.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %13, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %inbuf.i, align 4
  %arrayidx16.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %18 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx16.i, align 4
  %len.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %13, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #9
  %add.ptr29.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %22 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr29.i, align 4
  %call34.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 66, ptr noundef nonnull %inbuf.i, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp.i = icmp eq i32 %call34.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body343.efx_mcdi_mon_update.exit_crit_edge

do.body343.efx_mcdi_mon_update.exit_crit_edge:    ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_update.exit

if.then.i:                                        ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %last_update.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %13, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_update.i, align 4
  br label %efx_mcdi_mon_update.exit

efx_mcdi_mon_update.exit:                         ; preds = %if.then.i, %do.body343.efx_mcdi_mon_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i) #9
  %mul347 = mul i32 %add330, 6
  %25 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul347, i32 56) #9
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !161

kcalloc.exit.thread:                              ; preds = %efx_mcdi_mon_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %attrs1142 = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %attrs1142 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %attrs1142, align 4
  br label %fail

if.end7.i.i:                                      ; preds = %efx_mcdi_mon_update.exit
  %28 = extractvalue { i32, i1 } %25, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #13
  %attrs = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i.i, ptr %attrs, align 4
  %tobool350.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool350.not, label %if.end7.i.i.fail_crit_edge, label %if.end352

if.end7.i.i.fail_crit_edge:                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end352:                                        ; preds = %if.end7.i.i
  %add353 = or i32 %mul347, 1
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add353, i32 4) #9
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %kcalloc.exit1032.thread, label %if.end7.i.i1030, !prof !161

kcalloc.exit1032.thread:                          ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #11
  %attrs3551150 = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 5, i32 3
  %32 = ptrtoint ptr %attrs3551150 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %attrs3551150, align 4
  br label %fail

if.end7.i.i1030:                                  ; preds = %if.end352
  %33 = extractvalue { i32, i1 } %30, 0
  %call8.i.i1029 = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #13
  %group = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 5
  %attrs355 = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 5, i32 3
  %34 = ptrtoint ptr %attrs355 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i1029, ptr %attrs355, align 4
  %tobool358.not = icmp eq ptr %call8.i.i1029, null
  br i1 %tobool358.not, label %if.end7.i.i1030.fail_crit_edge, label %for.cond.preheader

if.end7.i.i1030.fail_crit_edge:                   ; preds = %if.end7.i.i1030
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

for.cond.preheader:                               ; preds = %if.end7.i.i1030
  %port_num.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %add.ptr732 = getelementptr inbounds i8, ptr %outbuf, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %n_temp.0 = phi i32 [ %n_temp.2.ph, %for.inc ], [ 0, %for.cond.preheader ]
  %n_cool.0 = phi i32 [ %n_cool.2.ph, %for.inc ], [ 0, %for.cond.preheader ]
  %n_in.0 = phi i32 [ %n_in.2.ph, %for.inc ], [ 0, %for.cond.preheader ]
  %n_curr.0 = phi i32 [ %n_curr.2.ph, %for.inc ], [ 0, %for.cond.preheader ]
  %n_power.0 = phi i32 [ %n_power.2.ph, %for.inc ], [ 0, %for.cond.preheader ]
  %mask.0 = phi i32 [ %mask.2, %for.inc ], [ %11, %for.cond.preheader ]
  %i.0 = phi i32 [ %inc817, %for.inc ], [ 0, %for.cond.preheader ]
  %j.0 = phi i32 [ %inc703, %for.inc ], [ -1, %for.cond.preheader ]
  %type.0 = phi i32 [ %inc362, %for.inc ], [ -1, %for.cond.preheader ]
  br label %do.body361

do.body361:                                       ; preds = %do.cond695.do.body361_crit_edge, %for.cond
  %mask.1 = phi i32 [ %mask.0, %for.cond ], [ %mask.2, %do.cond695.do.body361_crit_edge ]
  %j.1 = phi i32 [ %j.0, %for.cond ], [ %j.2, %do.cond695.do.body361_crit_edge ]
  %type.1 = phi i32 [ %type.0, %for.cond ], [ %inc362, %do.cond695.do.body361_crit_edge ]
  %inc362 = add i32 %type.1, 1
  %inc362.frozen = freeze i32 %inc362
  %div = sdiv i32 %inc362.frozen, 32
  %35 = mul i32 %div, 32
  %rem.decomposed = sub i32 %inc362.frozen, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp363 = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp363, label %if.then365, label %do.body361.do.cond695_crit_edge

do.body361.do.cond695_crit_edge:                  ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond695

if.then365:                                       ; preds = %do.body361
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %inc)
  %cmp366 = icmp eq i32 %div, %inc
  br i1 %cmp366, label %hwmon_register, label %do.body370

do.body370:                                       ; preds = %if.then365
  %36 = call i32 @llvm.bswap.i32(i32 %div)
  %37 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %inbuf, align 4
  %call382 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 65, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 252, ptr noundef nonnull %outlen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.end385, label %do.body370.fail_crit_edge

do.body370.fail_crit_edge:                        ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end385:                                        ; preds = %do.body370
  %38 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp386 = icmp ult i32 %39, 4
  br i1 %cmp386, label %if.end385.fail_crit_edge, label %if.end389

if.end385.fail_crit_edge:                         ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end389:                                        ; preds = %if.end385
  %40 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %outbuf, align 4
  %42 = and i32 %41, -129
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %call.i1033 = call i32 @__sw_hweight32(i32 noundef %43) #9
  %mul688 = shl i32 %call.i1033, 3
  %add689 = or i32 %mul688, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add689)
  %cmp690 = icmp ult i32 %39, %add689
  br i1 %cmp690, label %if.end389.fail_crit_edge, label %if.end389.do.cond695_crit_edge

if.end389.do.cond695_crit_edge:                   ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond695

if.end389.fail_crit_edge:                         ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

do.cond695:                                       ; preds = %if.end389.do.cond695_crit_edge, %do.body361.do.cond695_crit_edge
  %mask.2 = phi i32 [ %43, %if.end389.do.cond695_crit_edge ], [ %mask.1, %do.body361.do.cond695_crit_edge ]
  %j.2 = phi i32 [ -1, %if.end389.do.cond695_crit_edge ], [ %j.1, %do.body361.do.cond695_crit_edge ]
  %shl697 = shl nuw i32 1, %rem.decomposed
  %and698 = and i32 %mask.2, %shl697
  %tobool699.not = icmp eq i32 %and698, 0
  br i1 %tobool699.not, label %do.cond695.do.body361_crit_edge, label %do.end702

do.cond695.do.body361_crit_edge:                  ; preds = %do.cond695
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body361

do.end702:                                        ; preds = %do.cond695
  %inc703 = add i32 %j.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %inc362)
  %cmp704 = icmp ult i32 %inc362, 46
  br i1 %cmp704, label %if.then706, label %do.end702.sw.default_crit_edge

do.end702.sw.default_crit_edge:                   ; preds = %do.end702
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

if.then706:                                       ; preds = %do.end702
  %hwmon_type708 = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %inc362, i32 1
  %44 = ptrtoint ptr %hwmon_type708 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hwmon_type708, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc362)
  %cmp709.not = icmp eq i32 %inc362, 31
  br i1 %cmp709.not, label %if.then706.sw.default_crit_edge, label %land.lhs.true

if.then706.sw.default_crit_edge:                  ; preds = %if.then706
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

land.lhs.true:                                    ; preds = %if.then706
  %port = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %inc362, i32 2
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp712 = icmp sgt i32 %47, -1
  br i1 %cmp712, label %land.lhs.true714, label %land.lhs.true.if.end722_crit_edge

land.lhs.true.if.end722_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end722

land.lhs.true714:                                 ; preds = %land.lhs.true
  %48 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port_num.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp718.not = icmp eq i32 %47, %49
  br i1 %cmp718.not, label %land.lhs.true714.if.end722_crit_edge, label %land.lhs.true714.for.inc_crit_edge

land.lhs.true714.for.inc_crit_edge:               ; preds = %land.lhs.true714
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true714.if.end722_crit_edge:             ; preds = %land.lhs.true714
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end722

if.end722:                                        ; preds = %land.lhs.true714.if.end722_crit_edge, %land.lhs.true.if.end722_crit_edge
  %50 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %45, label %if.end722.sw.default_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb724
    i32 4, label %sw.bb727
    i32 5, label %sw.bb729
  ]

if.end722.sw.default_crit_edge:                   ; preds = %if.end722
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb:                                            ; preds = %if.end722
  call void @__sanitizer_cov_trace_pc() #11
  %inc723 = add i32 %n_temp.0, 1
  br label %sw.epilog

sw.bb724:                                         ; preds = %if.end722
  call void @__sanitizer_cov_trace_pc() #11
  %inc725 = add i32 %n_cool.0, 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end722.sw.default_crit_edge, %if.then706.sw.default_crit_edge, %do.end702.sw.default_crit_edge
  %hwmon_type.01154 = phi i32 [ %45, %if.end722.sw.default_crit_edge ], [ 0, %if.then706.sw.default_crit_edge ], [ 0, %do.end702.sw.default_crit_edge ]
  %inc726 = add i32 %n_in.0, 1
  br label %sw.epilog

sw.bb727:                                         ; preds = %if.end722
  call void @__sanitizer_cov_trace_pc() #11
  %inc728 = add i32 %n_curr.0, 1
  br label %sw.epilog

sw.bb729:                                         ; preds = %if.end722
  call void @__sanitizer_cov_trace_pc() #11
  %inc730 = add i32 %n_power.0, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb729, %sw.bb727, %sw.default, %sw.bb724, %sw.bb
  %hwmon_type.01153 = phi i32 [ %hwmon_type.01154, %sw.default ], [ 5, %sw.bb729 ], [ 4, %sw.bb727 ], [ 2, %sw.bb724 ], [ 1, %sw.bb ]
  %n_temp.1 = phi i32 [ %n_temp.0, %sw.default ], [ %n_temp.0, %sw.bb729 ], [ %n_temp.0, %sw.bb727 ], [ %n_temp.0, %sw.bb724 ], [ %inc723, %sw.bb ]
  %n_cool.1 = phi i32 [ %n_cool.0, %sw.default ], [ %n_cool.0, %sw.bb729 ], [ %n_cool.0, %sw.bb727 ], [ %inc725, %sw.bb724 ], [ %n_cool.0, %sw.bb ]
  %n_in.1 = phi i32 [ %inc726, %sw.default ], [ %n_in.0, %sw.bb729 ], [ %n_in.0, %sw.bb727 ], [ %n_in.0, %sw.bb724 ], [ %n_in.0, %sw.bb ]
  %n_curr.1 = phi i32 [ %n_curr.0, %sw.default ], [ %n_curr.0, %sw.bb729 ], [ %inc728, %sw.bb727 ], [ %n_curr.0, %sw.bb724 ], [ %n_curr.0, %sw.bb ]
  %n_power.1 = phi i32 [ %n_power.0, %sw.default ], [ %inc730, %sw.bb729 ], [ %n_power.0, %sw.bb727 ], [ %n_power.0, %sw.bb724 ], [ %n_power.0, %sw.bb ]
  %hwmon_prefix.0 = phi ptr [ @.str.6, %sw.default ], [ @.str.8, %sw.bb729 ], [ @.str.7, %sw.bb727 ], [ @.str.5, %sw.bb724 ], [ @.str.4, %sw.bb ]
  %hwmon_index.0 = phi i32 [ %n_in.0, %sw.default ], [ %inc730, %sw.bb729 ], [ %inc728, %sw.bb727 ], [ %inc725, %sw.bb724 ], [ %inc723, %sw.bb ]
  %mul733 = shl i32 %inc703, 3
  %add.ptr734 = getelementptr i8, ptr %add.ptr732, i32 %mul733
  %51 = ptrtoint ptr %add.ptr734 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr734, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %shr746 = lshr i32 %53, 16
  %add.ptr753 = getelementptr i8, ptr %add.ptr734, i32 4
  %54 = ptrtoint ptr %add.ptr753 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr753, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %shr764 = lshr i32 %56, 16
  %conv767 = and i32 %53, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv767, i32 %shr746)
  %cmp769.not = icmp eq i32 %conv767, %shr746
  br i1 %cmp769.not, label %sw.epilog.if.end797_crit_edge, label %if.then771

sw.epilog.if.end797_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end797

if.then771:                                       ; preds = %sw.epilog
  %call773 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.9, ptr noundef nonnull %hwmon_prefix.0, i32 noundef %hwmon_index.0)
  %57 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mcdi.i, align 4
  %attrs.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %58, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %attrs.i, align 4
  %n_attrs.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %58, i32 0, i32 1, i32 7
  %61 = ptrtoint ptr %n_attrs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_attrs.i, align 4
  %name1.i = getelementptr %struct.efx_mcdi_mon_attribute, ptr %60, i32 %62, i32 5
  %call2.i = call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull %name, i32 noundef 12) #9
  %index3.i = getelementptr %struct.efx_mcdi_mon_attribute, ptr %60, i32 %62, i32 1
  %63 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %i.0, ptr %index3.i, align 4
  %type4.i = getelementptr %struct.efx_mcdi_mon_attribute, ptr %60, i32 %62, i32 2
  %64 = ptrtoint ptr %type4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %inc362, ptr %type4.i, align 4
  br i1 %cmp704, label %if.then.i1036, label %if.then771.efx_mcdi_mon_add_attr.exit_crit_edge

if.then771.efx_mcdi_mon_add_attr.exit_crit_edge:  ; preds = %if.then771
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_add_attr.exit

if.then.i1036:                                    ; preds = %if.then771
  call void @__sanitizer_cov_trace_pc() #11
  %hwmon_type.i = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %inc362, i32 1
  %65 = ptrtoint ptr %hwmon_type.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hwmon_type.i, align 4
  br label %efx_mcdi_mon_add_attr.exit

efx_mcdi_mon_add_attr.exit:                       ; preds = %if.then.i1036, %if.then771.efx_mcdi_mon_add_attr.exit_crit_edge
  %.sink.i = phi i32 [ %66, %if.then.i1036 ], [ 0, %if.then771.efx_mcdi_mon_add_attr.exit_crit_edge ]
  %67 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %60, i32 %62, i32 3
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.sink.i, ptr %67, align 4
  %arrayidx.i = getelementptr %struct.efx_mcdi_mon_attribute, ptr %60, i32 %62
  %limit_value8.i = getelementptr %struct.efx_mcdi_mon_attribute, ptr %60, i32 %62, i32 4
  %69 = ptrtoint ptr %limit_value8.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %limit_value8.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 3
  %70 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @efx_mcdi_mon_add_attr.__key, ptr %key.i, align 4
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %name1.i, ptr %arrayidx.i, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 1
  %72 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 292, ptr %mode.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i, i32 0, i32 1
  %73 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @efx_mcdi_mon_show_value, ptr %show.i, align 4
  %attrs20.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %58, i32 0, i32 1, i32 5, i32 3
  %74 = ptrtoint ptr %attrs20.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %attrs20.i, align 4
  %76 = ptrtoint ptr %n_attrs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_attrs.i, align 4
  %inc.i = add i32 %77, 1
  store i32 %inc.i, ptr %n_attrs.i, align 4
  %arrayidx22.i = getelementptr ptr, ptr %75, i32 %77
  %78 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx.i, ptr %arrayidx22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %hwmon_type.01153)
  %cmp775.not = icmp eq i32 %hwmon_type.01153, 5
  br i1 %cmp775.not, label %efx_mcdi_mon_add_attr.exit.if.end782_crit_edge, label %if.then777

efx_mcdi_mon_add_attr.exit.if.end782_crit_edge:   ; preds = %efx_mcdi_mon_add_attr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end782

if.then777:                                       ; preds = %efx_mcdi_mon_add_attr.exit
  %call779 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.10, ptr noundef nonnull %hwmon_prefix.0, i32 noundef %hwmon_index.0)
  %79 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mcdi.i, align 4
  %attrs.i1038 = getelementptr inbounds %struct.efx_mcdi_data, ptr %80, i32 0, i32 1, i32 4
  %81 = ptrtoint ptr %attrs.i1038 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %attrs.i1038, align 4
  %n_attrs.i1039 = getelementptr inbounds %struct.efx_mcdi_data, ptr %80, i32 0, i32 1, i32 7
  %83 = ptrtoint ptr %n_attrs.i1039 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %n_attrs.i1039, align 4
  %name1.i1040 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %82, i32 %84, i32 5
  %call2.i1041 = call i32 @strlcpy(ptr noundef %name1.i1040, ptr noundef nonnull %name, i32 noundef 12) #9
  %index3.i1042 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %82, i32 %84, i32 1
  %85 = ptrtoint ptr %index3.i1042 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %i.0, ptr %index3.i1042, align 4
  %type4.i1043 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %82, i32 %84, i32 2
  %86 = ptrtoint ptr %type4.i1043 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %inc362, ptr %type4.i1043, align 4
  br i1 %cmp704, label %if.then.i1046, label %if.then777.efx_mcdi_mon_add_attr.exit1056_crit_edge

if.then777.efx_mcdi_mon_add_attr.exit1056_crit_edge: ; preds = %if.then777
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_add_attr.exit1056

if.then.i1046:                                    ; preds = %if.then777
  call void @__sanitizer_cov_trace_pc() #11
  %hwmon_type.i1045 = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %inc362, i32 1
  %87 = ptrtoint ptr %hwmon_type.i1045 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hwmon_type.i1045, align 4
  br label %efx_mcdi_mon_add_attr.exit1056

efx_mcdi_mon_add_attr.exit1056:                   ; preds = %if.then.i1046, %if.then777.efx_mcdi_mon_add_attr.exit1056_crit_edge
  %.sink.i1047 = phi i32 [ %88, %if.then.i1046 ], [ 0, %if.then777.efx_mcdi_mon_add_attr.exit1056_crit_edge ]
  %89 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %82, i32 %84, i32 3
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.sink.i1047, ptr %89, align 4
  %arrayidx.i1048 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %82, i32 %84
  %limit_value8.i1049 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %82, i32 %84, i32 4
  %91 = ptrtoint ptr %limit_value8.i1049 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv767, ptr %limit_value8.i1049, align 4
  %key.i1050 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1048, i32 0, i32 3
  %92 = ptrtoint ptr %key.i1050 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @efx_mcdi_mon_add_attr.__key, ptr %key.i1050, align 4
  %93 = ptrtoint ptr %arrayidx.i1048 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %name1.i1040, ptr %arrayidx.i1048, align 4
  %mode.i1051 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1048, i32 0, i32 1
  %94 = ptrtoint ptr %mode.i1051 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 292, ptr %mode.i1051, align 4
  %show.i1052 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i1048, i32 0, i32 1
  %95 = ptrtoint ptr %show.i1052 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @efx_mcdi_mon_show_limit, ptr %show.i1052, align 4
  %attrs20.i1053 = getelementptr inbounds %struct.efx_mcdi_data, ptr %80, i32 0, i32 1, i32 5, i32 3
  %96 = ptrtoint ptr %attrs20.i1053 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %attrs20.i1053, align 4
  %98 = ptrtoint ptr %n_attrs.i1039 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %n_attrs.i1039, align 4
  %inc.i1054 = add i32 %99, 1
  store i32 %inc.i1054, ptr %n_attrs.i1039, align 4
  %arrayidx22.i1055 = getelementptr ptr, ptr %97, i32 %99
  %100 = ptrtoint ptr %arrayidx22.i1055 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %arrayidx.i1048, ptr %arrayidx22.i1055, align 4
  br label %if.end782

if.end782:                                        ; preds = %efx_mcdi_mon_add_attr.exit1056, %efx_mcdi_mon_add_attr.exit.if.end782_crit_edge
  %call784 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.11, ptr noundef nonnull %hwmon_prefix.0, i32 noundef %hwmon_index.0)
  %101 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mcdi.i, align 4
  %attrs.i1058 = getelementptr inbounds %struct.efx_mcdi_data, ptr %102, i32 0, i32 1, i32 4
  %103 = ptrtoint ptr %attrs.i1058 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %attrs.i1058, align 4
  %n_attrs.i1059 = getelementptr inbounds %struct.efx_mcdi_data, ptr %102, i32 0, i32 1, i32 7
  %105 = ptrtoint ptr %n_attrs.i1059 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %n_attrs.i1059, align 4
  %name1.i1060 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %104, i32 %106, i32 5
  %call2.i1061 = call i32 @strlcpy(ptr noundef %name1.i1060, ptr noundef nonnull %name, i32 noundef 12) #9
  %index3.i1062 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %104, i32 %106, i32 1
  %107 = ptrtoint ptr %index3.i1062 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %i.0, ptr %index3.i1062, align 4
  %type4.i1063 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %104, i32 %106, i32 2
  %108 = ptrtoint ptr %type4.i1063 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %inc362, ptr %type4.i1063, align 4
  br i1 %cmp704, label %if.then.i1066, label %if.end782.efx_mcdi_mon_add_attr.exit1076_crit_edge

if.end782.efx_mcdi_mon_add_attr.exit1076_crit_edge: ; preds = %if.end782
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_add_attr.exit1076

if.then.i1066:                                    ; preds = %if.end782
  call void @__sanitizer_cov_trace_pc() #11
  %hwmon_type.i1065 = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %inc362, i32 1
  %109 = ptrtoint ptr %hwmon_type.i1065 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %hwmon_type.i1065, align 4
  br label %efx_mcdi_mon_add_attr.exit1076

efx_mcdi_mon_add_attr.exit1076:                   ; preds = %if.then.i1066, %if.end782.efx_mcdi_mon_add_attr.exit1076_crit_edge
  %.sink.i1067 = phi i32 [ %110, %if.then.i1066 ], [ 0, %if.end782.efx_mcdi_mon_add_attr.exit1076_crit_edge ]
  %111 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %104, i32 %106, i32 3
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.sink.i1067, ptr %111, align 4
  %arrayidx.i1068 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %104, i32 %106
  %limit_value8.i1069 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %104, i32 %106, i32 4
  %113 = ptrtoint ptr %limit_value8.i1069 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %shr746, ptr %limit_value8.i1069, align 4
  %key.i1070 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1068, i32 0, i32 3
  %114 = ptrtoint ptr %key.i1070 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @efx_mcdi_mon_add_attr.__key, ptr %key.i1070, align 4
  %115 = ptrtoint ptr %arrayidx.i1068 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %name1.i1060, ptr %arrayidx.i1068, align 4
  %mode.i1071 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1068, i32 0, i32 1
  %116 = ptrtoint ptr %mode.i1071 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 292, ptr %mode.i1071, align 4
  %show.i1072 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i1068, i32 0, i32 1
  %117 = ptrtoint ptr %show.i1072 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @efx_mcdi_mon_show_limit, ptr %show.i1072, align 4
  %attrs20.i1073 = getelementptr inbounds %struct.efx_mcdi_data, ptr %102, i32 0, i32 1, i32 5, i32 3
  %118 = ptrtoint ptr %attrs20.i1073 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %attrs20.i1073, align 4
  %120 = ptrtoint ptr %n_attrs.i1059 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %n_attrs.i1059, align 4
  %inc.i1074 = add i32 %121, 1
  store i32 %inc.i1074, ptr %n_attrs.i1059, align 4
  %arrayidx22.i1075 = getelementptr ptr, ptr %119, i32 %121
  %122 = ptrtoint ptr %arrayidx22.i1075 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %arrayidx.i1068, ptr %arrayidx22.i1075, align 4
  %conv787 = and i32 %56, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv787, i32 %shr764)
  %cmp789.not = icmp eq i32 %conv787, %shr764
  br i1 %cmp789.not, label %efx_mcdi_mon_add_attr.exit1076.if.end797_crit_edge, label %if.then791

efx_mcdi_mon_add_attr.exit1076.if.end797_crit_edge: ; preds = %efx_mcdi_mon_add_attr.exit1076
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end797

if.then791:                                       ; preds = %efx_mcdi_mon_add_attr.exit1076
  %call793 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.12, ptr noundef nonnull %hwmon_prefix.0, i32 noundef %hwmon_index.0)
  %123 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mcdi.i, align 4
  %attrs.i1078 = getelementptr inbounds %struct.efx_mcdi_data, ptr %124, i32 0, i32 1, i32 4
  %125 = ptrtoint ptr %attrs.i1078 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %attrs.i1078, align 4
  %n_attrs.i1079 = getelementptr inbounds %struct.efx_mcdi_data, ptr %124, i32 0, i32 1, i32 7
  %127 = ptrtoint ptr %n_attrs.i1079 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %n_attrs.i1079, align 4
  %name1.i1080 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %126, i32 %128, i32 5
  %call2.i1081 = call i32 @strlcpy(ptr noundef %name1.i1080, ptr noundef nonnull %name, i32 noundef 12) #9
  %index3.i1082 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %126, i32 %128, i32 1
  %129 = ptrtoint ptr %index3.i1082 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %i.0, ptr %index3.i1082, align 4
  %type4.i1083 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %126, i32 %128, i32 2
  %130 = ptrtoint ptr %type4.i1083 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %inc362, ptr %type4.i1083, align 4
  br i1 %cmp704, label %if.then.i1086, label %if.then791.efx_mcdi_mon_add_attr.exit1096_crit_edge

if.then791.efx_mcdi_mon_add_attr.exit1096_crit_edge: ; preds = %if.then791
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_add_attr.exit1096

if.then.i1086:                                    ; preds = %if.then791
  call void @__sanitizer_cov_trace_pc() #11
  %hwmon_type.i1085 = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %inc362, i32 1
  %131 = ptrtoint ptr %hwmon_type.i1085 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %hwmon_type.i1085, align 4
  br label %efx_mcdi_mon_add_attr.exit1096

efx_mcdi_mon_add_attr.exit1096:                   ; preds = %if.then.i1086, %if.then791.efx_mcdi_mon_add_attr.exit1096_crit_edge
  %.sink.i1087 = phi i32 [ %132, %if.then.i1086 ], [ 0, %if.then791.efx_mcdi_mon_add_attr.exit1096_crit_edge ]
  %133 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %126, i32 %128, i32 3
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %.sink.i1087, ptr %133, align 4
  %arrayidx.i1088 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %126, i32 %128
  %limit_value8.i1089 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %126, i32 %128, i32 4
  %135 = ptrtoint ptr %limit_value8.i1089 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %shr764, ptr %limit_value8.i1089, align 4
  %key.i1090 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1088, i32 0, i32 3
  %136 = ptrtoint ptr %key.i1090 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @efx_mcdi_mon_add_attr.__key, ptr %key.i1090, align 4
  %137 = ptrtoint ptr %arrayidx.i1088 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %name1.i1080, ptr %arrayidx.i1088, align 4
  %mode.i1091 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1088, i32 0, i32 1
  %138 = ptrtoint ptr %mode.i1091 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 292, ptr %mode.i1091, align 4
  %show.i1092 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i1088, i32 0, i32 1
  %139 = ptrtoint ptr %show.i1092 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @efx_mcdi_mon_show_limit, ptr %show.i1092, align 4
  %attrs20.i1093 = getelementptr inbounds %struct.efx_mcdi_data, ptr %124, i32 0, i32 1, i32 5, i32 3
  %140 = ptrtoint ptr %attrs20.i1093 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %attrs20.i1093, align 4
  %142 = ptrtoint ptr %n_attrs.i1079 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %n_attrs.i1079, align 4
  %inc.i1094 = add i32 %143, 1
  store i32 %inc.i1094, ptr %n_attrs.i1079, align 4
  %arrayidx22.i1095 = getelementptr ptr, ptr %141, i32 %143
  %144 = ptrtoint ptr %arrayidx22.i1095 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %arrayidx.i1088, ptr %arrayidx22.i1095, align 4
  br label %if.end797

if.end797:                                        ; preds = %efx_mcdi_mon_add_attr.exit1096, %efx_mcdi_mon_add_attr.exit1076.if.end797_crit_edge, %sw.epilog.if.end797_crit_edge
  %call799 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.13, ptr noundef nonnull %hwmon_prefix.0, i32 noundef %hwmon_index.0)
  %145 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mcdi.i, align 4
  %attrs.i1098 = getelementptr inbounds %struct.efx_mcdi_data, ptr %146, i32 0, i32 1, i32 4
  %147 = ptrtoint ptr %attrs.i1098 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %attrs.i1098, align 4
  %n_attrs.i1099 = getelementptr inbounds %struct.efx_mcdi_data, ptr %146, i32 0, i32 1, i32 7
  %149 = ptrtoint ptr %n_attrs.i1099 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %n_attrs.i1099, align 4
  %name1.i1100 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %148, i32 %150, i32 5
  %call2.i1101 = call i32 @strlcpy(ptr noundef %name1.i1100, ptr noundef nonnull %name, i32 noundef 12) #9
  %index3.i1102 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %148, i32 %150, i32 1
  %151 = ptrtoint ptr %index3.i1102 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %i.0, ptr %index3.i1102, align 4
  %type4.i1103 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %148, i32 %150, i32 2
  %152 = ptrtoint ptr %type4.i1103 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %inc362, ptr %type4.i1103, align 4
  br i1 %cmp704, label %if.then.i1106, label %if.end797.efx_mcdi_mon_add_attr.exit1116_crit_edge

if.end797.efx_mcdi_mon_add_attr.exit1116_crit_edge: ; preds = %if.end797
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_add_attr.exit1116

if.then.i1106:                                    ; preds = %if.end797
  call void @__sanitizer_cov_trace_pc() #11
  %hwmon_type.i1105 = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %inc362, i32 1
  %153 = ptrtoint ptr %hwmon_type.i1105 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %hwmon_type.i1105, align 4
  br label %efx_mcdi_mon_add_attr.exit1116

efx_mcdi_mon_add_attr.exit1116:                   ; preds = %if.then.i1106, %if.end797.efx_mcdi_mon_add_attr.exit1116_crit_edge
  %.sink.i1107 = phi i32 [ %154, %if.then.i1106 ], [ 0, %if.end797.efx_mcdi_mon_add_attr.exit1116_crit_edge ]
  %155 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %148, i32 %150, i32 3
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %.sink.i1107, ptr %155, align 4
  %arrayidx.i1108 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %148, i32 %150
  %limit_value8.i1109 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %148, i32 %150, i32 4
  %157 = ptrtoint ptr %limit_value8.i1109 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %limit_value8.i1109, align 4
  %key.i1110 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1108, i32 0, i32 3
  %158 = ptrtoint ptr %key.i1110 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @efx_mcdi_mon_add_attr.__key, ptr %key.i1110, align 4
  %159 = ptrtoint ptr %arrayidx.i1108 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %name1.i1100, ptr %arrayidx.i1108, align 4
  %mode.i1111 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1108, i32 0, i32 1
  %160 = ptrtoint ptr %mode.i1111 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 292, ptr %mode.i1111, align 4
  %show.i1112 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i1108, i32 0, i32 1
  %161 = ptrtoint ptr %show.i1112 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @efx_mcdi_mon_show_alarm, ptr %show.i1112, align 4
  %attrs20.i1113 = getelementptr inbounds %struct.efx_mcdi_data, ptr %146, i32 0, i32 1, i32 5, i32 3
  %162 = ptrtoint ptr %attrs20.i1113 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %attrs20.i1113, align 4
  %164 = ptrtoint ptr %n_attrs.i1099 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %n_attrs.i1099, align 4
  %inc.i1114 = add i32 %165, 1
  store i32 %inc.i1114, ptr %n_attrs.i1099, align 4
  %arrayidx22.i1115 = getelementptr ptr, ptr %163, i32 %165
  %166 = ptrtoint ptr %arrayidx22.i1115 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %arrayidx.i1108, ptr %arrayidx22.i1115, align 4
  br i1 %cmp704, label %land.lhs.true803, label %efx_mcdi_mon_add_attr.exit1116.for.inc_crit_edge

efx_mcdi_mon_add_attr.exit1116.for.inc_crit_edge: ; preds = %efx_mcdi_mon_add_attr.exit1116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true803:                                 ; preds = %efx_mcdi_mon_add_attr.exit1116
  %arrayidx804 = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %inc362
  %167 = ptrtoint ptr %arrayidx804 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx804, align 4
  %tobool805.not = icmp eq ptr %168, null
  br i1 %tobool805.not, label %land.lhs.true803.for.inc_crit_edge, label %efx_mcdi_mon_add_attr.exit1136

land.lhs.true803.for.inc_crit_edge:               ; preds = %land.lhs.true803
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

efx_mcdi_mon_add_attr.exit1136:                   ; preds = %land.lhs.true803
  call void @__sanitizer_cov_trace_pc() #11
  %call808 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull %hwmon_prefix.0, i32 noundef %hwmon_index.0)
  %169 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mcdi.i, align 4
  %attrs.i1118 = getelementptr inbounds %struct.efx_mcdi_data, ptr %170, i32 0, i32 1, i32 4
  %171 = ptrtoint ptr %attrs.i1118 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %attrs.i1118, align 4
  %n_attrs.i1119 = getelementptr inbounds %struct.efx_mcdi_data, ptr %170, i32 0, i32 1, i32 7
  %173 = ptrtoint ptr %n_attrs.i1119 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %n_attrs.i1119, align 4
  %name1.i1120 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %172, i32 %174, i32 5
  %call2.i1121 = call i32 @strlcpy(ptr noundef %name1.i1120, ptr noundef nonnull %name, i32 noundef 12) #9
  %index3.i1122 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %172, i32 %174, i32 1
  %175 = ptrtoint ptr %index3.i1122 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %i.0, ptr %index3.i1122, align 4
  %type4.i1123 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %172, i32 %174, i32 2
  %176 = ptrtoint ptr %type4.i1123 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %inc362, ptr %type4.i1123, align 4
  %hwmon_type.i1125 = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %inc362, i32 1
  %177 = ptrtoint ptr %hwmon_type.i1125 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %hwmon_type.i1125, align 4
  %179 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %172, i32 %174, i32 3
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %178, ptr %179, align 4
  %arrayidx.i1128 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %172, i32 %174
  %limit_value8.i1129 = getelementptr %struct.efx_mcdi_mon_attribute, ptr %172, i32 %174, i32 4
  %181 = ptrtoint ptr %limit_value8.i1129 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %limit_value8.i1129, align 4
  %key.i1130 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1128, i32 0, i32 3
  %182 = ptrtoint ptr %key.i1130 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @efx_mcdi_mon_add_attr.__key, ptr %key.i1130, align 4
  %183 = ptrtoint ptr %arrayidx.i1128 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %name1.i1120, ptr %arrayidx.i1128, align 4
  %mode.i1131 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i1128, i32 0, i32 1
  %184 = ptrtoint ptr %mode.i1131 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 292, ptr %mode.i1131, align 4
  %show.i1132 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i1128, i32 0, i32 1
  %185 = ptrtoint ptr %show.i1132 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @efx_mcdi_mon_show_label, ptr %show.i1132, align 4
  %attrs20.i1133 = getelementptr inbounds %struct.efx_mcdi_data, ptr %170, i32 0, i32 1, i32 5, i32 3
  %186 = ptrtoint ptr %attrs20.i1133 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %attrs20.i1133, align 4
  %188 = ptrtoint ptr %n_attrs.i1119 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %n_attrs.i1119, align 4
  %inc.i1134 = add i32 %189, 1
  store i32 %inc.i1134, ptr %n_attrs.i1119, align 4
  %arrayidx22.i1135 = getelementptr ptr, ptr %187, i32 %189
  %190 = ptrtoint ptr %arrayidx22.i1135 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %arrayidx.i1128, ptr %arrayidx22.i1135, align 4
  br label %for.inc

for.inc:                                          ; preds = %efx_mcdi_mon_add_attr.exit1136, %land.lhs.true803.for.inc_crit_edge, %efx_mcdi_mon_add_attr.exit1116.for.inc_crit_edge, %land.lhs.true714.for.inc_crit_edge
  %n_temp.2.ph = phi i32 [ %n_temp.1, %efx_mcdi_mon_add_attr.exit1116.for.inc_crit_edge ], [ %n_temp.1, %land.lhs.true803.for.inc_crit_edge ], [ %n_temp.1, %efx_mcdi_mon_add_attr.exit1136 ], [ %n_temp.0, %land.lhs.true714.for.inc_crit_edge ]
  %n_cool.2.ph = phi i32 [ %n_cool.1, %efx_mcdi_mon_add_attr.exit1116.for.inc_crit_edge ], [ %n_cool.1, %land.lhs.true803.for.inc_crit_edge ], [ %n_cool.1, %efx_mcdi_mon_add_attr.exit1136 ], [ %n_cool.0, %land.lhs.true714.for.inc_crit_edge ]
  %n_in.2.ph = phi i32 [ %n_in.1, %efx_mcdi_mon_add_attr.exit1116.for.inc_crit_edge ], [ %n_in.1, %land.lhs.true803.for.inc_crit_edge ], [ %n_in.1, %efx_mcdi_mon_add_attr.exit1136 ], [ %n_in.0, %land.lhs.true714.for.inc_crit_edge ]
  %n_curr.2.ph = phi i32 [ %n_curr.1, %efx_mcdi_mon_add_attr.exit1116.for.inc_crit_edge ], [ %n_curr.1, %land.lhs.true803.for.inc_crit_edge ], [ %n_curr.1, %efx_mcdi_mon_add_attr.exit1136 ], [ %n_curr.0, %land.lhs.true714.for.inc_crit_edge ]
  %n_power.2.ph = phi i32 [ %n_power.1, %efx_mcdi_mon_add_attr.exit1116.for.inc_crit_edge ], [ %n_power.1, %land.lhs.true803.for.inc_crit_edge ], [ %n_power.1, %efx_mcdi_mon_add_attr.exit1136 ], [ %n_power.0, %land.lhs.true714.for.inc_crit_edge ]
  %inc817 = add i32 %i.0, 1
  br label %for.cond

hwmon_register:                                   ; preds = %if.then365
  %groups = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 6
  %191 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %group, ptr %groups, align 4
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %192 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %193, i32 0, i32 44
  %call822 = call ptr @hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef %groups) #9
  %device = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 3
  %194 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call822, ptr %device, align 4
  %cmp.i1137 = icmp ugt ptr %call822, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1137, label %if.then825, label %hwmon_register.cleanup829_crit_edge

hwmon_register.cleanup829_crit_edge:              ; preds = %hwmon_register
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup829

if.then825:                                       ; preds = %hwmon_register
  call void @__sanitizer_cov_trace_pc() #11
  %195 = ptrtoint ptr %call822 to i32
  br label %fail

fail:                                             ; preds = %if.then825, %if.end389.fail_crit_edge, %if.end385.fail_crit_edge, %do.body370.fail_crit_edge, %if.end7.i.i1030.fail_crit_edge, %kcalloc.exit1032.thread, %if.end7.i.i.fail_crit_edge, %kcalloc.exit.thread
  %rc.4 = phi i32 [ %195, %if.then825 ], [ -12, %if.end7.i.i.fail_crit_edge ], [ -12, %if.end7.i.i1030.fail_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -12, %kcalloc.exit1032.thread ], [ %call382, %do.body370.fail_crit_edge ], [ -5, %if.end385.fail_crit_edge ], [ -5, %if.end389.fail_crit_edge ]
  %196 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mcdi.i, align 4
  %device.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %197, i32 0, i32 1, i32 3
  %198 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %device.i, align 4
  %tobool.not.i = icmp eq ptr %199, null
  br i1 %tobool.not.i, label %fail.efx_mcdi_mon_remove.exit_crit_edge, label %if.then.i1139

fail.efx_mcdi_mon_remove.exit_crit_edge:          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_remove.exit

if.then.i1139:                                    ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  call void @hwmon_device_unregister(ptr noundef nonnull %199) #9
  br label %efx_mcdi_mon_remove.exit

efx_mcdi_mon_remove.exit:                         ; preds = %if.then.i1139, %fail.efx_mcdi_mon_remove.exit_crit_edge
  %hwmon.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %197, i32 0, i32 1
  %attrs.i1140 = getelementptr inbounds %struct.efx_mcdi_data, ptr %197, i32 0, i32 1, i32 4
  %200 = ptrtoint ptr %attrs.i1140 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %attrs.i1140, align 4
  call void @kfree(ptr noundef %201) #9
  %attrs2.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %197, i32 0, i32 1, i32 5, i32 3
  %202 = ptrtoint ptr %attrs2.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %attrs2.i, align 4
  call void @kfree(ptr noundef %203) #9
  call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %hwmon.i.i) #9
  br label %cleanup829

cleanup829:                                       ; preds = %efx_mcdi_mon_remove.exit, %hwmon_register.cleanup829_crit_edge, %if.end338.cleanup829_crit_edge, %do.end334.cleanup829_crit_edge, %if.end.cleanup829_crit_edge, %do.body.cleanup829_crit_edge
  %retval.0 = phi i32 [ %rc.4, %efx_mcdi_mon_remove.exit ], [ 0, %do.end334.cleanup829_crit_edge ], [ %call339, %if.end338.cleanup829_crit_edge ], [ 0, %hwmon_register.cleanup829_crit_edge ], [ -5, %if.end.cleanup829_crit_edge ], [ %call5, %do.body.cleanup829_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #9
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_mcdi_mon_show_value(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %inbuf.i.i = alloca [3 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.efx_mcdi_mon_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mcdi.i.i = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 77
  %6 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcdi.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %7, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_update.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %7, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_update.i, align 4
  %add.neg.i = add i32 %8, -100
  %sub.i = sub i32 %add.neg.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.efx_mcdi_mon_get_entry.exit_crit_edge, label %if.else.i

entry.efx_mcdi_mon_get_entry.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_get_entry.exit

if.else.i:                                        ; preds = %entry
  %11 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mcdi.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i.i) #9
  %dma_addr.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %12, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_addr.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %inbuf.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i.i, i32 1
  %17 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx16.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %12, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %add.ptr29.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i.i, i32 2
  %21 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr29.i.i, align 4
  %call34.i.i = call i32 @efx_mcdi_rpc(ptr noundef %5, i32 noundef 66, ptr noundef nonnull %inbuf.i.i, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.efx_mcdi_mon_update.exit.i_crit_edge

if.else.i.efx_mcdi_mon_update.exit.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_update.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %last_update.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %12, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %last_update.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_update.i.i, align 4
  br label %efx_mcdi_mon_update.exit.i

efx_mcdi_mon_update.exit.i:                       ; preds = %if.then.i.i, %if.else.i.efx_mcdi_mon_update.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i.i) #9
  br label %efx_mcdi_mon_get_entry.exit

efx_mcdi_mon_get_entry.exit:                      ; preds = %efx_mcdi_mon_update.exit.i, %entry.efx_mcdi_mon_get_entry.exit_crit_edge
  %rc.0.i = phi i32 [ %call34.i.i, %efx_mcdi_mon_update.exit.i ], [ 0, %entry.efx_mcdi_mon_get_entry.exit_crit_edge ]
  %hwmon.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %hwmon.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwmon.i.i, align 4
  %arrayidx.i = getelementptr %union.efx_dword, ptr %25, i32 %1
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @mutex_unlock(ptr noundef %update_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool.not, label %if.end, label %efx_mcdi_mon_get_entry.exit.cleanup_crit_edge

efx_mcdi_mon_get_entry.exit.cleanup_crit_edge:    ; preds = %efx_mcdi_mon_get_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %efx_mcdi_mon_get_entry.exit
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = and i32 %28, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %29)
  %cmp = icmp eq i32 %29, 262144
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and5 = and i32 %28, 65535
  %hwmon_type = getelementptr inbounds %struct.efx_mcdi_mon_attribute, ptr %attr, i32 0, i32 3
  %30 = ptrtoint ptr %hwmon_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwmon_type, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %31, label %if.end3.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb6
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul nuw nsw i32 %and5, 1000
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %mul7 = mul i32 %and5, 1000000
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %if.end3.sw.epilog_crit_edge
  %value.0 = phi i32 [ %and5, %if.end3.sw.epilog_crit_edge ], [ %mul7, %sw.bb6 ], [ %mul, %sw.bb ]
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %value.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %efx_mcdi_mon_get_entry.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.epilog ], [ %rc.0.i, %efx_mcdi_mon_get_entry.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_mcdi_mon_show_limit(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %limit_value = getelementptr inbounds %struct.efx_mcdi_mon_attribute, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %limit_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limit_value, align 4
  %hwmon_type = getelementptr inbounds %struct.efx_mcdi_mon_attribute, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %hwmon_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwmon_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %1, 1000
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul2 = mul i32 %1, 1000000
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %value.0 = phi i32 [ %1, %entry.sw.epilog_crit_edge ], [ %mul2, %sw.bb1 ], [ %mul, %sw.bb ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %value.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_mcdi_mon_show_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %inbuf.i.i = alloca [3 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.efx_mcdi_mon_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mcdi.i.i = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 77
  %6 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcdi.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %7, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_update.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %7, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_update.i, align 4
  %add.neg.i = add i32 %8, -100
  %sub.i = sub i32 %add.neg.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.efx_mcdi_mon_get_entry.exit_crit_edge, label %if.else.i

entry.efx_mcdi_mon_get_entry.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_get_entry.exit

if.else.i:                                        ; preds = %entry
  %11 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mcdi.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i.i) #9
  %dma_addr.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %12, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_addr.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %inbuf.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i.i, i32 1
  %17 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx16.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %12, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %add.ptr29.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i.i, i32 2
  %21 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr29.i.i, align 4
  %call34.i.i = call i32 @efx_mcdi_rpc(ptr noundef %5, i32 noundef 66, ptr noundef nonnull %inbuf.i.i, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.efx_mcdi_mon_update.exit.i_crit_edge

if.else.i.efx_mcdi_mon_update.exit.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_mcdi_mon_update.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %last_update.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %12, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %last_update.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_update.i.i, align 4
  br label %efx_mcdi_mon_update.exit.i

efx_mcdi_mon_update.exit.i:                       ; preds = %if.then.i.i, %if.else.i.efx_mcdi_mon_update.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i.i) #9
  br label %efx_mcdi_mon_get_entry.exit

efx_mcdi_mon_get_entry.exit:                      ; preds = %efx_mcdi_mon_update.exit.i, %entry.efx_mcdi_mon_get_entry.exit_crit_edge
  %rc.0.i = phi i32 [ %call34.i.i, %efx_mcdi_mon_update.exit.i ], [ 0, %entry.efx_mcdi_mon_get_entry.exit_crit_edge ]
  %hwmon.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %hwmon.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwmon.i.i, align 4
  %arrayidx.i = getelementptr %union.efx_dword, ptr %25, i32 %1
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @mutex_unlock(ptr noundef %update_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool.not, label %if.end, label %efx_mcdi_mon_get_entry.exit.cleanup_crit_edge

efx_mcdi_mon_get_entry.exit.cleanup_crit_edge:    ; preds = %efx_mcdi_mon_get_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %efx_mcdi_mon_get_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = and i32 %27, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp = icmp ne i32 %28, 0
  %conv = zext i1 %cmp to i32
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.69, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %efx_mcdi_mon_get_entry.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %rc.0.i, %efx_mcdi_mon_get_entry.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_mcdi_mon_show_label(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.efx_mcdi_mon_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [46 x %struct.anon.153], ptr @efx_mcdi_sensor_type, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.70, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_mon_remove(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  %device = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hwmon_device_unregister(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hwmon.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1
  %attrs = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs, align 4
  tail call void @kfree(ptr noundef %5) #9
  %attrs2 = getelementptr inbounds %struct.efx_mcdi_data, ptr %1, i32 0, i32 1, i32 5, i32 3
  %6 = ptrtoint ptr %attrs2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs2, align 4
  tail call void @kfree(ptr noundef %7) #9
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %hwmon.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 120, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 126, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 128, i32 2}
!6 = !{ptr @efx_mcdi_mon_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 345, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 423, i32 19}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 431, i32 19}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 435, i32 19}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 439, i32 19}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 443, i32 19}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 458, i32 33}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 464, i32 34}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 471, i32 33}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 481, i32 34}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 489, i32 32}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 496, i32 33}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 506, i32 10}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 42, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 43, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 44, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 46, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 49, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 50, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 51, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 52, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 53, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 54, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 55, i32 2}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 56, i32 2}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 57, i32 2}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 58, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 59, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 60, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 62, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 63, i32 2}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 64, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 65, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 66, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 67, i32 2}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 68, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 69, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 70, i32 2}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 71, i32 2}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 72, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 73, i32 2}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 74, i32 2}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 75, i32 2}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 76, i32 2}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 77, i32 2}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 78, i32 2}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 79, i32 2}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 81, i32 2}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 83, i32 2}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 85, i32 2}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 87, i32 2}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 88, i32 2}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 89, i32 2}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 90, i32 2}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 91, i32 2}
!117 = !{ptr @efx_mcdi_sensor_type, !118, !"efx_mcdi_sensor_type", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 39, i32 3}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 96, i32 29}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 97, i32 34}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 98, i32 32}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 99, i32 33}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 100, i32 37}
!129 = !{ptr @sensor_status_names, !130, !"sensor_status_names", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 95, i32 26}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 28, i32 22}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 29, i32 22}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 30, i32 22}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 31, i32 22}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 32, i32 22}
!141 = !{ptr @efx_hwmon_unit, !142, !"efx_hwmon_unit", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 27, i32 26}
!143 = !{ptr @efx_mcdi_mon_add_attr.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 296, i32 2}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 220, i32 22}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 265, i32 22}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/sfc/mcdi_mon.c", i32 274, i32 22}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{!"auto-init"}
!161 = !{!"branch_weights", i32 1, i32 2000}
