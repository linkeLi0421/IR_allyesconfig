; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc2/params.c_pt.bc'
source_filename = "../drivers/usb/dwc2/params.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }

@dwc2_of_match_table = dso_local constant { [19 x %struct.of_device_id], [948 x i8] } { [19 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_bcm_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_his_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_rk_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,arx100-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_ltq_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx200-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_ltq_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dwc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6400-hsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_s3c6400_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amlogic_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amlogic_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amlogic_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amlogic_g12a_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amcc,dwc-otg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amcc_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,apm82181-dwc-otg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amcc_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4x9-fsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_stm32f4x9_fsotg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4x9-hsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f7-hsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_stm32f7_hsotg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp15-fsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_stm32mp15_fsotg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp15-hsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_stm32mp15_hsotg_params }, %struct.of_device_id zeroinitializer], [948 x i8] zeroinitializer }, align 32
@dwc2_acpi_match = dso_local constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"BCM2848\00\00", i32 ptrtoint (ptr @dwc2_set_bcm_params to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"g-rx-fifo-size\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"g-np-tx-fifo-size\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"g-tx-fifo-size\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disable-over-current\00", [43 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 685, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Invalid parameter %s=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc2_check_params\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/dwc2/params.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr = internal global ptr @dwc2_check_params._entry, section ".printk_index", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enable_dynamic_fifo\00", [44 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 686, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.12 = internal global ptr @dwc2_check_params._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"en_multiple_tx_fifo\00", [44 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 687, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.15 = internal global ptr @dwc2_check_params._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_enable\00", [21 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 688, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.18 = internal global ptr @dwc2_check_params._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipg_isoc_en\00", [20 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 689, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.21 = internal global ptr @dwc2_check_params._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"acg_enable\00", [21 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 690, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.24 = internal global ptr @dwc2_check_params._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reload_ctl\00", [21 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 691, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.27 = internal global ptr @dwc2_check_params._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lpm\00", [28 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 692, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.30 = internal global ptr @dwc2_check_params._entry.29, section ".printk_index", align 4
@dwc2_check_params._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 693, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.32 = internal global ptr @dwc2_check_params._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpm_clock_gating\00", [47 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 694, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.35 = internal global ptr @dwc2_check_params._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"besl\00", [27 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 695, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.38 = internal global ptr @dwc2_check_params._entry.37, section ".printk_index", align 4
@dwc2_check_params._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 696, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.40 = internal global ptr @dwc2_check_params._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hird_threshold_en\00", [46 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 697, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.43 = internal global ptr @dwc2_check_params._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hird_threshold\00", [17 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 698, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.46 = internal global ptr @dwc2_check_params._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"service_interval\00", [47 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 701, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.49 = internal global ptr @dwc2_check_params._entry.48, section ".printk_index", align 4
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_packet_count\00", [47 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 704, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.52 = internal global ptr @dwc2_check_params._entry.51, section ".printk_index", align 4
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_transfer_size\00", [46 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 708, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.55 = internal global ptr @dwc2_check_params._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"host_dma\00", [23 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 709, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.58 = internal global ptr @dwc2_check_params._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_desc_enable\00", [16 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 710, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.61 = internal global ptr @dwc2_check_params._entry.60, section ".printk_index", align 4
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_desc_fs_enable\00", [45 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 712, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.64 = internal global ptr @dwc2_check_params._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"host_ls_low_power_phy_clk\00", [38 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 715, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.67 = internal global ptr @dwc2_check_params._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host_channels\00", [18 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 718, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.70 = internal global ptr @dwc2_check_params._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"host_rx_fifo_size\00", [46 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 721, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.73 = internal global ptr @dwc2_check_params._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"host_nperio_tx_fifo_size\00", [39 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 724, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.76 = internal global ptr @dwc2_check_params._entry.75, section ".printk_index", align 4
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"host_perio_tx_fifo_size\00", [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 729, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.79 = internal global ptr @dwc2_check_params._entry.78, section ".printk_index", align 4
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"g_dma\00", [26 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 730, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.82 = internal global ptr @dwc2_check_params._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"g_dma_desc\00", [21 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 733, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.85 = internal global ptr @dwc2_check_params._entry.84, section ".printk_index", align 4
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"g_rx_fifo_size\00", [17 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 736, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@dwc2_check_params._entry_ptr.88 = internal global ptr @dwc2_check_params._entry.87, section ".printk_index", align 4
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"g_np_tx_fifo_size\00", [46 x i8] zeroinitializer }, align 32
@dwc2_check_param_power_down.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.91, ptr @.str.7, ptr @.str.92, i8 0, i8 -106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc2\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dwc2_check_param_power_down\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Partial power down isn't supported by HW\0A\00", [54 x i8] zeroinitializer }, align 32
@dwc2_check_param_power_down.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.91, ptr @.str.7, ptr @.str.93, i8 0, i8 -104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Hibernation isn't supported by HW\0A\00", [61 x i8] zeroinitializer }, align 32
@dwc2_check_param_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.91, ptr @.str.7, i32 616, ptr @.str.95, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Invalid parameter power_down=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dwc2_check_param_power_down._entry_ptr = internal global ptr @dwc2_check_param_power_down._entry, section ".printk_index", align 4
@dwc2_check_param_tx_fifo_sizes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.7, i32 640, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: Invalid parameter g-tx-fifo-size, setting to default average\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dwc2_check_param_tx_fifo_sizes\00", [33 x i8] zeroinitializer }, align 32
@dwc2_check_param_tx_fifo_sizes._entry_ptr = internal global ptr @dwc2_check_param_tx_fifo_sizes._entry, section ".printk_index", align 4
@dwc2_check_param_tx_fifo_sizes._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.7, i32 651, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Invalid parameter g_tx_fifo_size[%d]=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@dwc2_check_param_tx_fifo_sizes._entry_ptr.100 = internal global ptr @dwc2_check_param_tx_fifo_sizes._entry.98, section ".printk_index", align 4
@switch.table.dwc2_init_params = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@switch.table.dwc2_init_params.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\01\00\01\00\01", [26 x i8] zeroinitializer }, align 32
@switch.table.dwc2_init_params.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@switch.table.dwc2_init_params.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\01\00\01\00\01", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"dwc2_of_match_table\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 214, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"dwc2_acpi_match\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 246, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 202, i32 75 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 459, i32 40 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 462, i32 40 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 465, i32 47 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 479, i32 44 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 685, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 686, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 687, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 688, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 689, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 690, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 691, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 692, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 693, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 694, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 695, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 696, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 697, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 698, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 699, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 702, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 708, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 709, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 710, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 711, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 713, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 716, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 719, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 722, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 729, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 730, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 731, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 734, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 602, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 609, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 614, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 639, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.345 = private constant [29 x i8] c"../drivers/usb/dwc2/params.c\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 649, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant [30 x i8] c"switch.table.dwc2_init_params\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [34 x i8] c"switch.table.dwc2_init_params.101\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [34 x i8] c"switch.table.dwc2_init_params.102\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [34 x i8] c"switch.table.dwc2_init_params.103\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @dwc2_check_param_power_down._entry, ptr @dwc2_check_param_power_down._entry_ptr, ptr @dwc2_check_param_tx_fifo_sizes._entry, ptr @dwc2_check_param_tx_fifo_sizes._entry.98, ptr @dwc2_check_param_tx_fifo_sizes._entry_ptr, ptr @dwc2_check_param_tx_fifo_sizes._entry_ptr.100, ptr @dwc2_check_params._entry, ptr @dwc2_check_params._entry.11, ptr @dwc2_check_params._entry.14, ptr @dwc2_check_params._entry.17, ptr @dwc2_check_params._entry.20, ptr @dwc2_check_params._entry.23, ptr @dwc2_check_params._entry.26, ptr @dwc2_check_params._entry.29, ptr @dwc2_check_params._entry.31, ptr @dwc2_check_params._entry.34, ptr @dwc2_check_params._entry.37, ptr @dwc2_check_params._entry.39, ptr @dwc2_check_params._entry.42, ptr @dwc2_check_params._entry.45, ptr @dwc2_check_params._entry.48, ptr @dwc2_check_params._entry.51, ptr @dwc2_check_params._entry.54, ptr @dwc2_check_params._entry.57, ptr @dwc2_check_params._entry.60, ptr @dwc2_check_params._entry.63, ptr @dwc2_check_params._entry.66, ptr @dwc2_check_params._entry.69, ptr @dwc2_check_params._entry.72, ptr @dwc2_check_params._entry.75, ptr @dwc2_check_params._entry.78, ptr @dwc2_check_params._entry.81, ptr @dwc2_check_params._entry.84, ptr @dwc2_check_params._entry.87, ptr @dwc2_check_params._entry_ptr, ptr @dwc2_check_params._entry_ptr.12, ptr @dwc2_check_params._entry_ptr.15, ptr @dwc2_check_params._entry_ptr.18, ptr @dwc2_check_params._entry_ptr.21, ptr @dwc2_check_params._entry_ptr.24, ptr @dwc2_check_params._entry_ptr.27, ptr @dwc2_check_params._entry_ptr.30, ptr @dwc2_check_params._entry_ptr.32, ptr @dwc2_check_params._entry_ptr.35, ptr @dwc2_check_params._entry_ptr.38, ptr @dwc2_check_params._entry_ptr.40, ptr @dwc2_check_params._entry_ptr.43, ptr @dwc2_check_params._entry_ptr.46, ptr @dwc2_check_params._entry_ptr.49, ptr @dwc2_check_params._entry_ptr.52, ptr @dwc2_check_params._entry_ptr.55, ptr @dwc2_check_params._entry_ptr.58, ptr @dwc2_check_params._entry_ptr.61, ptr @dwc2_check_params._entry_ptr.64, ptr @dwc2_check_params._entry_ptr.67, ptr @dwc2_check_params._entry_ptr.70, ptr @dwc2_check_params._entry_ptr.73, ptr @dwc2_check_params._entry_ptr.76, ptr @dwc2_check_params._entry_ptr.79, ptr @dwc2_check_params._entry_ptr.82, ptr @dwc2_check_params._entry_ptr.85, ptr @dwc2_check_params._entry_ptr.88, ptr @dwc2_of_match_table, ptr @dwc2_acpi_match, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.33, ptr @.str.36, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @switch.table.dwc2_init_params, ptr @switch.table.dwc2_init_params.101, ptr @switch.table.dwc2_init_params.102, ptr @switch.table.dwc2_init_params.103], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_of_match_table to i32), i32 3724, i32 4672, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_params._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_param_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_param_tx_fifo_sizes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_param_tx_fifo_sizes._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc2_init_params to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc2_init_params.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc2_init_params.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc2_init_params.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_bcm_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_rx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %0 = ptrtoint ptr %host_rx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 774, ptr %host_rx_fifo_size, align 2
  %max_transfer_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65535, ptr %max_transfer_size, align 4
  %max_packet_count = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 26
  %2 = ptrtoint ptr %max_packet_count to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 511, ptr %max_packet_count, align 2
  %ahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 28
  %3 = ptrtoint ptr %ahbcfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %ahbcfg, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_his_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hnp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %hnp_support to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hnp_support, align 2
  %srp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 2
  %1 = ptrtoint ptr %srp_support to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %srp_support, align 1
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %speed, align 1
  %host_rx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %3 = ptrtoint ptr %host_rx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 512, ptr %host_rx_fifo_size, align 2
  %host_nperio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %4 = ptrtoint ptr %host_nperio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 512, ptr %host_nperio_tx_fifo_size, align 4
  %host_perio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %5 = ptrtoint ptr %host_perio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 512, ptr %host_perio_tx_fifo_size, align 2
  %max_transfer_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65535, ptr %max_transfer_size, align 4
  %max_packet_count = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 26
  %7 = ptrtoint ptr %max_packet_count to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 511, ptr %max_packet_count, align 2
  %host_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 37
  %8 = ptrtoint ptr %host_channels to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %host_channels, align 4
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %phy_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %phy_type, align 2
  %phy_utmi_width = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %phy_utmi_width to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %phy_utmi_width, align 4
  %i2c_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %i2c_enable to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %i2c_enable, align 1
  %reload_ctl = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %reload_ctl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %reload_ctl, align 1
  %ahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 28
  %13 = ptrtoint ptr %ahbcfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 14, ptr %ahbcfg, align 4
  %change_speed_quirk = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 46
  %14 = ptrtoint ptr %change_speed_quirk to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %change_speed_quirk, align 4
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %15 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %power_down, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_rk_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hnp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %hnp_support to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hnp_support, align 2
  %srp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 2
  %1 = ptrtoint ptr %srp_support to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %srp_support, align 1
  %host_rx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %2 = ptrtoint ptr %host_rx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 525, ptr %host_rx_fifo_size, align 2
  %host_nperio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %3 = ptrtoint ptr %host_nperio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 128, ptr %host_nperio_tx_fifo_size, align 4
  %host_perio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %4 = ptrtoint ptr %host_perio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %host_perio_tx_fifo_size, align 2
  %ahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 28
  %5 = ptrtoint ptr %ahbcfg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 14, ptr %ahbcfg, align 4
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %6 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %power_down, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_ltq_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hnp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %hnp_support to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hnp_support, align 2
  %srp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 2
  %1 = ptrtoint ptr %srp_support to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %srp_support, align 1
  %host_rx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %2 = ptrtoint ptr %host_rx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 288, ptr %host_rx_fifo_size, align 2
  %host_nperio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %3 = ptrtoint ptr %host_nperio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 128, ptr %host_nperio_tx_fifo_size, align 4
  %host_perio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %4 = ptrtoint ptr %host_perio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 96, ptr %host_perio_tx_fifo_size, align 2
  %max_transfer_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65535, ptr %max_transfer_size, align 4
  %max_packet_count = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 26
  %6 = ptrtoint ptr %max_packet_count to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 511, ptr %max_packet_count, align 2
  %ahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 28
  %7 = ptrtoint ptr %ahbcfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 14, ptr %ahbcfg, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_s3c6400_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %0 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %power_down, align 4
  %no_clock_gating = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 16
  %1 = ptrtoint ptr %no_clock_gating to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %no_clock_gating, align 4
  %phy_utmi_width = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %phy_utmi_width to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %phy_utmi_width, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_amlogic_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hnp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %hnp_support to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hnp_support, align 2
  %srp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 2
  %1 = ptrtoint ptr %srp_support to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %srp_support, align 1
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %speed, align 1
  %host_rx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %3 = ptrtoint ptr %host_rx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 512, ptr %host_rx_fifo_size, align 2
  %host_nperio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %4 = ptrtoint ptr %host_nperio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 500, ptr %host_nperio_tx_fifo_size, align 4
  %host_perio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %5 = ptrtoint ptr %host_perio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 500, ptr %host_perio_tx_fifo_size, align 2
  %host_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 37
  %6 = ptrtoint ptr %host_channels to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %host_channels, align 4
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %phy_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %phy_type, align 2
  %ahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 28
  %8 = ptrtoint ptr %ahbcfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %ahbcfg, align 4
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %9 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %power_down, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_amlogic_g12a_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lpm = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 17
  %0 = ptrtoint ptr %lpm to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 0, ptr %lpm, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_amcc_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 28
  %0 = ptrtoint ptr %ahbcfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 14, ptr %ahbcfg, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_stm32f4x9_fsotg_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hnp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %hnp_support to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hnp_support, align 2
  %srp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 2
  %1 = ptrtoint ptr %srp_support to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %srp_support, align 1
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %speed, align 1
  %host_rx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %3 = ptrtoint ptr %host_rx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 128, ptr %host_rx_fifo_size, align 2
  %host_nperio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %4 = ptrtoint ptr %host_nperio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 96, ptr %host_nperio_tx_fifo_size, align 4
  %host_perio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %5 = ptrtoint ptr %host_perio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 96, ptr %host_perio_tx_fifo_size, align 2
  %max_packet_count = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 26
  %6 = ptrtoint ptr %max_packet_count to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 256, ptr %max_packet_count, align 2
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %phy_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %phy_type, align 2
  %i2c_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %i2c_enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %i2c_enable, align 1
  %activate_stm_fs_transceiver = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 23
  %9 = ptrtoint ptr %activate_stm_fs_transceiver to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %activate_stm_fs_transceiver, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_stm32f7_hsotg_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_rx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %0 = ptrtoint ptr %host_rx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 622, ptr %host_rx_fifo_size, align 2
  %host_nperio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %1 = ptrtoint ptr %host_nperio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 128, ptr %host_nperio_tx_fifo_size, align 4
  %host_perio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %2 = ptrtoint ptr %host_perio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 256, ptr %host_perio_tx_fifo_size, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_stm32mp15_fsotg_params(ptr nocapture noundef writeonly %hsotg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3
  %hnp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %hnp_support to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hnp_support, align 2
  %srp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 2
  %1 = ptrtoint ptr %srp_support to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %srp_support, align 1
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 512, ptr %params, align 4
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %speed, align 1
  %host_rx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %4 = ptrtoint ptr %host_rx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 128, ptr %host_rx_fifo_size, align 2
  %host_nperio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %5 = ptrtoint ptr %host_nperio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 96, ptr %host_nperio_tx_fifo_size, align 4
  %host_perio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %6 = ptrtoint ptr %host_perio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 96, ptr %host_perio_tx_fifo_size, align 2
  %max_packet_count = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 26
  %7 = ptrtoint ptr %max_packet_count to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %max_packet_count, align 2
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %phy_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %phy_type, align 2
  %i2c_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %i2c_enable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %i2c_enable, align 1
  %activate_stm_fs_transceiver = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 23
  %10 = ptrtoint ptr %activate_stm_fs_transceiver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %activate_stm_fs_transceiver, align 1
  %activate_stm_id_vb_detection = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 24
  %11 = ptrtoint ptr %activate_stm_id_vb_detection to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %activate_stm_id_vb_detection, align 4
  %ahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 28
  %12 = ptrtoint ptr %ahbcfg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 14, ptr %ahbcfg, align 4
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %13 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %power_down, align 4
  %host_support_fs_ls_low_power = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 34
  %14 = ptrtoint ptr %host_support_fs_ls_low_power to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %host_support_fs_ls_low_power, align 1
  %host_ls_low_power_phy_clk = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 35
  %15 = ptrtoint ptr %host_ls_low_power_phy_clk to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %host_ls_low_power_phy_clk, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc2_set_stm32mp15_hsotg_params(ptr nocapture noundef %hsotg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3
  %hnp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %hnp_support to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hnp_support, align 2
  %srp_support = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 2
  %1 = ptrtoint ptr %srp_support to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %srp_support, align 1
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 512, ptr %params, align 4
  %3 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hsotg, align 8
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str) #5
  %lnot = xor i1 %call.i, true
  %activate_stm_id_vb_detection = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 24
  %frombool = zext i1 %lnot to i8
  %5 = ptrtoint ptr %activate_stm_id_vb_detection to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %activate_stm_id_vb_detection, align 4
  %host_rx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %6 = ptrtoint ptr %host_rx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 440, ptr %host_rx_fifo_size, align 2
  %host_nperio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %7 = ptrtoint ptr %host_nperio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %host_nperio_tx_fifo_size, align 4
  %host_perio_tx_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %8 = ptrtoint ptr %host_perio_tx_fifo_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %host_perio_tx_fifo_size, align 2
  %ahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 28
  %9 = ptrtoint ptr %ahbcfg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 14, ptr %ahbcfg, align 4
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %10 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %power_down, align 4
  %lpm = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 17
  %11 = ptrtoint ptr %lpm to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %lpm, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_get_hwparams(ptr noundef %hsotg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_params = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %retval.0.i = select i1 %tobool.not.i, i32 %5, i32 %2
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %7, i32 72
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %9 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %needs_byte_swap.i, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i283 = icmp eq i8 %10, 0
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %retval.0.i284 = select i1 %tobool.not.i283, i32 %11, i32 %8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i286 = getelementptr i8, ptr %13, i32 76
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i286) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %15 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_byte_swap.i, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i288 = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %retval.0.i289 = select i1 %tobool.not.i288, i32 %17, i32 %14
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i291 = getelementptr i8, ptr %19, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i291) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %21 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %needs_byte_swap.i, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i293 = icmp eq i8 %22, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %retval.0.i294 = select i1 %tobool.not.i293, i32 %23, i32 %20
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i296 = getelementptr i8, ptr %25, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i296) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %27 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %needs_byte_swap.i, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i298 = icmp eq i8 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %retval.0.i299 = select i1 %tobool.not.i298, i32 %29, i32 %26
  %dev_ep_dirs = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %dev_ep_dirs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i, ptr %dev_ep_dirs, align 4
  %31 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %hw_params, align 4
  %bf.shl = shl i32 %retval.0.i284, 29
  %bf.clear = and i32 %bf.load, 255
  %bf.set = or i32 %bf.clear, %bf.shl
  %32 = shl i32 %retval.0.i284, 24
  %bf.shl9 = and i32 %32, 402653184
  %bf.set11 = or i32 %bf.set, %bf.shl9
  %33 = shl i32 %retval.0.i284, 6
  %bf.shl16 = and i32 %33, 33554432
  %bf.set18 = or i32 %bf.set11, %bf.shl16
  %host_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %host_channels to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load21 = load i32, ptr %host_channels, align 4
  %35 = shl i32 %retval.0.i284, 2
  %add = and i32 %35, 983040
  %bf.shl23 = add nuw nsw i32 %add, 65536
  %bf.clear24 = and i32 %bf.load21, 3
  %bf.set25 = or i32 %bf.clear24, %bf.shl23
  %36 = shl i32 %retval.0.i284, 8
  %bf.shl30 = and i32 %36, 49152
  %bf.set32 = or i32 %bf.set25, %bf.shl30
  %37 = shl i32 %retval.0.i284, 4
  %bf.shl37 = and i32 %37, 12288
  %bf.set39 = or i32 %bf.set32, %bf.shl37
  %38 = lshr i32 %retval.0.i284, 4
  %bf.shl44 = and i32 %38, 960
  %nperio_tx_q_depth = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %nperio_tx_q_depth to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %bf.load49 = load i64, ptr %nperio_tx_q_depth, align 4
  %40 = lshr i32 %retval.0.i284, 8
  %41 = and i32 %40, 49152
  %bf.clear52 = and i64 %bf.load49, -65505
  %42 = lshr i32 %retval.0.i284, 13
  %43 = and i32 %42, 6144
  %44 = lshr i32 %retval.0.i284, 21
  %45 = and i32 %44, 992
  %bf.set53314 = or i32 %43, %41
  %bf.set61315 = or i32 %bf.set53314, %45
  %bf.set61 = zext i32 %bf.set61315 to i64
  %bf.set69 = or i64 %bf.clear52, %bf.set61
  store i64 %bf.set69, ptr %nperio_tx_q_depth, align 4
  %and71 = and i32 %retval.0.i289, 15
  %max_transfer_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load75 = load i32, ptr %max_transfer_size, align 4
  %sub = shl i32 131072, %and71
  %bf.shl77 = add i32 %sub, -64
  %bf.clear78 = and i32 %bf.load75, 63
  %bf.set79 = or i32 %bf.clear78, %bf.shl77
  store i32 %bf.set79, ptr %max_transfer_size, align 4
  %and80 = lshr i32 %retval.0.i289, 4
  %shr81 = and i32 %and80, 7
  %sub84 = shl i32 33554432, %shr81
  %bf.shl87 = add i32 %sub84, -2097152
  %47 = shl i32 %retval.0.i289, 3
  %bf.shl98 = and i32 %47, 2048
  %total_fifo_size = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 4
  %48 = ptrtoint ptr %total_fifo_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load103 = load i32, ptr %total_fifo_size, align 4
  %bf.shl105 = and i32 %and80, 268431360
  %bf.clear106 = and i32 %bf.load103, 31
  %49 = lshr i32 %retval.0.i289, 8
  %bf.shl116 = and i32 %49, 128
  %bf.set107 = or i32 %bf.shl116, %bf.shl105
  %bf.set118 = or i32 %bf.set107, %bf.clear106
  %50 = lshr i32 %retval.0.i294, 1
  %bf.shl127 = and i32 %50, 16777216
  %bf.set129 = or i32 %bf.set18, %bf.shl127
  %bf.shl134 = shl i32 %retval.0.i294, 28
  %bf.set136 = or i32 %bf.set118, %bf.shl134
  %51 = lshr i32 %retval.0.i294, 24
  %bf.shl141 = and i32 %51, 60
  %52 = lshr i32 %retval.0.i294, 4
  %bf.shl152 = and i32 %52, 67108864
  %53 = shl i32 %retval.0.i294, 7
  %bf.shl163 = and i32 %53, 2048
  %54 = shl i32 %retval.0.i294, 4
  %bf.shl174 = and i32 %54, 1024
  %55 = lshr i32 %retval.0.i294, 6
  %bf.shl181 = and i32 %55, 768
  %bf.set165 = or i32 %bf.shl174, %bf.shl163
  %bf.set176 = or i32 %bf.set165, %bf.shl181
  %bf.set183 = or i32 %bf.set176, %bf.set136
  %56 = lshr i32 %retval.0.i294, 2
  %bf.shl192 = and i32 %56, 1024
  %bf.clear88.masked.masked = or i32 %bf.set39, %bf.shl44
  %bf.set89.masked.masked = or i32 %bf.clear88.masked.masked, %bf.shl87
  %bf.clear142.masked = or i32 %bf.set89.masked.masked, %bf.shl98
  %bf.clear193 = or i32 %bf.clear142.masked, %bf.shl141
  %bf.set194 = or i32 %bf.clear193, %bf.shl192
  store i32 %bf.set194, ptr %host_channels, align 4
  %57 = lshr i32 %retval.0.i294, 5
  %bf.set205 = and i32 %57, 96
  %bf.set216 = or i32 %bf.set205, %bf.set183
  store i32 %bf.set216, ptr %total_fifo_size, align 4
  %and217 = shl i32 %retval.0.i299, 8
  %bf.shl221 = and i32 %and217, 16776960
  %bf.clear222 = or i32 %bf.set129, %bf.shl152
  %bf.set223 = or i32 %bf.clear222, %bf.shl221
  store i32 %bf.set223, ptr %hw_params, align 4
  %dr_mode.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 5
  %58 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp.i = icmp eq i32 %59, 2
  br i1 %cmp.i, label %entry.if.end.i307_crit_edge, label %dwc2_get_host_hwparams.exit

entry.if.end.i307_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i307

dwc2_get_host_hwparams.exit:                      ; preds = %entry
  tail call void @dwc2_force_mode(ptr noundef %hsotg, i1 noundef zeroext true) #5
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 40
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %63 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %needs_byte_swap.i, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i = icmp eq i8 %64, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %65, i32 %62
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %67, i32 256
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %69 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %needs_byte_swap.i, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i20.i = icmp eq i8 %70, 0
  %71 = tail call i32 @llvm.bswap.i32(i32 %68) #5
  %retval.0.i21.i = select i1 %tobool.not.i20.i, i32 %71, i32 %68
  %shr.i = lshr i32 %retval.0.i.i, 16
  %72 = zext i32 %shr.i to i64
  %73 = ptrtoint ptr %nperio_tx_q_depth to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %bf.load.i = load i64, ptr %nperio_tx_q_depth, align 4
  %bf.shl.i = shl nuw i64 %72, 48
  %bf.clear.i = and i64 %bf.load.i, 281470681808895
  %bf.set.i = or i64 %bf.clear.i, %bf.shl.i
  %shr3.i = and i32 %retval.0.i21.i, -65536
  %bf.shl6.i = zext i32 %shr3.i to i64
  %bf.set8.i = or i64 %bf.set.i, %bf.shl6.i
  store i64 %bf.set8.i, ptr %nperio_tx_q_depth, align 4
  %74 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i301 = icmp eq i32 %.pr, 1
  br i1 %cmp.i301, label %dwc2_get_host_hwparams.exit.dwc2_get_dev_hwparams.exit_crit_edge, label %dwc2_get_host_hwparams.exit.if.end.i307_crit_edge

dwc2_get_host_hwparams.exit.if.end.i307_crit_edge: ; preds = %dwc2_get_host_hwparams.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i307

dwc2_get_host_hwparams.exit.dwc2_get_dev_hwparams.exit_crit_edge: ; preds = %dwc2_get_host_hwparams.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_get_dev_hwparams.exit

if.end.i307:                                      ; preds = %dwc2_get_host_hwparams.exit.if.end.i307_crit_edge, %entry.if.end.i307_crit_edge
  tail call void @dwc2_force_mode(ptr noundef %hsotg, i1 noundef zeroext false) #5
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i303 = getelementptr i8, ptr %76, i32 40
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i303) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %78 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %needs_byte_swap.i, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i.i305 = icmp eq i8 %79, 0
  %80 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  %retval.0.i.i306 = select i1 %tobool.not.i.i305, i32 %80, i32 %77
  %call1.i = tail call i32 @dwc2_hsotg_tx_fifo_count(ptr noundef %hsotg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp2.not23.i = icmp slt i32 %call1.i, 1
  br i1 %cmp2.not23.i, label %if.end.i307.for.end.i_crit_edge, label %if.end.i307.for.body.i_crit_edge

if.end.i307.for.body.i_crit_edge:                 ; preds = %if.end.i307
  br label %for.body.i

if.end.i307.for.end.i_crit_edge:                  ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i307.for.body.i_crit_edge
  %fifo.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end.i307.for.body.i_crit_edge ]
  %sub.i = shl i32 %fifo.024.i, 2
  %add.i = add i32 %sub.i, 256
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %82, i32 %add.i
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %84 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %needs_byte_swap.i, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i21.i = icmp eq i8 %85, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #5
  %retval.0.i22.i = select i1 %tobool.not.i21.i, i32 %86, i32 %83
  %shr.i308 = lshr i32 %retval.0.i22.i, 16
  %arrayidx.i = getelementptr %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 7, i32 %fifo.024.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shr.i308, ptr %arrayidx.i, align 4
  %inc.i = add i32 %fifo.024.i, 1
  %cmp2.not.i = icmp sgt i32 %inc.i, %call1.i
  br i1 %cmp2.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i307.for.end.i_crit_edge
  %shr5.i = lshr i32 %retval.0.i.i306, 16
  %88 = zext i32 %shr5.i to i64
  %89 = ptrtoint ptr %nperio_tx_q_depth to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %bf.load.i309 = load i64, ptr %nperio_tx_q_depth, align 4
  %bf.shl.i310 = shl nuw nsw i64 %88, 32
  %bf.clear.i311 = and i64 %bf.load.i309, -281470681743361
  %bf.set.i312 = or i64 %bf.clear.i311, %bf.shl.i310
  store i64 %bf.set.i312, ptr %nperio_tx_q_depth, align 4
  br label %dwc2_get_dev_hwparams.exit

dwc2_get_dev_hwparams.exit:                       ; preds = %for.end.i, %dwc2_get_host_hwparams.exit.dwc2_get_dev_hwparams.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_init_params(ptr noundef %hsotg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_params.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2
  %0 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %hw_params.i, align 4
  %1 = and i32 %bf.load.i, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp ne i32 %1, 0
  %frombool.i = zext i1 %cmp.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %bf.load.i)
  %2 = icmp ult i32 %bf.load.i, -1073741824
  br i1 %2, label %switch.lookup, label %entry.dwc2_set_param_otg_cap.exit.i_crit_edge

entry.dwc2_set_param_otg_cap.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_param_otg_cap.exit.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bf.lshr.i.i = lshr i32 %bf.load.i, 29
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.dwc2_init_params, i32 0, i32 %bf.lshr.i.i
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %3)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep64 = getelementptr inbounds [6 x i8], ptr @switch.table.dwc2_init_params.101, i32 0, i32 %bf.lshr.i.i
  %4 = ptrtoint ptr %switch.gep64 to i32
  call void @__asan_load1_noabort(i32 %4)
  %switch.load65 = load i8, ptr %switch.gep64, align 1
  br label %dwc2_set_param_otg_cap.exit.i

dwc2_set_param_otg_cap.exit.i:                    ; preds = %switch.lookup, %entry.dwc2_set_param_otg_cap.exit.i_crit_edge
  %.sink22.i.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %entry.dwc2_set_param_otg_cap.exit.i_crit_edge ]
  %.sink.i.i = phi i8 [ %switch.load65, %switch.lookup ], [ 0, %entry.dwc2_set_param_otg_cap.exit.i_crit_edge ]
  %hnp_support12.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %hnp_support12.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink22.i.i, ptr %hnp_support12.i.i, align 2
  %srp_support15.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %srp_support15.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink.i.i, ptr %srp_support15.i.i, align 1
  %hs_phy_type1.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %hs_phy_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i128.i = load i32, ptr %hs_phy_type1.i.i, align 8
  %bf.lshr.i129.i = lshr i32 %bf.load.i128.i, 14
  %bf.clear.i.i = and i32 %bf.lshr.i129.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i)
  %switch.masked = icmp eq i32 %bf.clear.i.i, 0
  %switch.shiftamt67 = shl nuw nsw i32 %bf.clear.i.i, 3
  %switch.downshift68 = lshr i32 16908544, %switch.shiftamt67
  %switch.masked69 = trunc i32 %switch.downshift68 to i8
  %phy_type9.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %phy_type9.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %switch.masked69, ptr %phy_type9.i.i, align 2
  %snpsid.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %snpsid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %snpsid.i.i.i, align 8
  %and.i.i.i = and i32 %10, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429274624, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 1429274624
  %narrow.i.i = or i1 %switch.masked, %cmp.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429340160, i32 %and.i.i.i)
  %cmp.i12.i.i = icmp ne i32 %and.i.i.i, 1429340160
  %narrow13.i.i = and i1 %cmp.i12.i.i, %narrow.i.i
  %val.1.i.i = zext i1 %narrow13.i.i to i8
  %speed.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %val.1.i.i, ptr %speed.i.i, align 1
  %utmi_phy_data_width.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %utmi_phy_data_width.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i130.i = load i32, ptr %utmi_phy_data_width.i.i, align 4
  %13 = and i32 %bf.load.i130.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i131.i = icmp eq i32 %13, 0
  %cond.i.i = select i1 %cmp.i131.i, i32 8, i32 16
  %phy.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 12
  %14 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %dwc2_set_param_otg_cap.exit.i.dwc2_set_param_phy_utmi_width.exit.i_crit_edge, label %if.then.i.i

dwc2_set_param_otg_cap.exit.i.dwc2_set_param_phy_utmi_width.exit.i_crit_edge: ; preds = %dwc2_set_param_otg_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_param_phy_utmi_width.exit.i

if.then.i.i:                                      ; preds = %dwc2_set_param_otg_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %attrs.i.i.i = getelementptr inbounds %struct.phy, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attrs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp2.i.i = icmp eq i32 %17, 8
  %spec.select.i.i = select i1 %cmp2.i.i, i32 8, i32 %cond.i.i
  br label %dwc2_set_param_phy_utmi_width.exit.i

dwc2_set_param_phy_utmi_width.exit.i:             ; preds = %if.then.i.i, %dwc2_set_param_otg_cap.exit.i.dwc2_set_param_phy_utmi_width.exit.i_crit_edge
  %val.0.i132.i = phi i32 [ %cond.i.i, %dwc2_set_param_otg_cap.exit.i.dwc2_set_param_phy_utmi_width.exit.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %conv.i.i = trunc i32 %val.0.i132.i to i8
  %phy_utmi_width.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %phy_utmi_width.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i.i, ptr %phy_utmi_width.i.i, align 8
  %19 = and i32 %bf.load.i130.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i134.i = icmp eq i32 %19, 0
  %20 = lshr i32 %bf.load.i130.i, 11
  %.lobit.i.i = and i32 %20, 1
  %val.0.i135.i = select i1 %tobool.not.i134.i, i32 %.lobit.i.i, i32 2
  %power_down.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %21 = ptrtoint ptr %power_down.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %val.0.i135.i, ptr %power_down.i.i, align 4
  %22 = and i32 %bf.load.i130.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i137.i = icmp eq i32 %22, 0
  %lpm.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 17
  %.lobit.i138.i = lshr exact i32 %22, 7
  %23 = trunc i32 %.lobit.i138.i to i8
  %24 = ptrtoint ptr %lpm.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %lpm.i.i, align 1
  br i1 %tobool.not.i137.i, label %dwc2_set_param_phy_utmi_width.exit.i.dwc2_set_param_lpm.exit.i_crit_edge, label %if.then.i139.i

dwc2_set_param_phy_utmi_width.exit.i.dwc2_set_param_lpm.exit.i_crit_edge: ; preds = %dwc2_set_param_phy_utmi_width.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_param_lpm.exit.i

if.then.i139.i:                                   ; preds = %dwc2_set_param_phy_utmi_width.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %hird_threshold.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 22
  %25 = ptrtoint ptr %hird_threshold.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %hird_threshold.i.i, align 2
  br label %dwc2_set_param_lpm.exit.i

dwc2_set_param_lpm.exit.i:                        ; preds = %if.then.i139.i, %dwc2_set_param_phy_utmi_width.exit.i.dwc2_set_param_lpm.exit.i_crit_edge
  %.sink16.i.i = phi i8 [ 1, %if.then.i139.i ], [ 0, %dwc2_set_param_phy_utmi_width.exit.i.dwc2_set_param_lpm.exit.i_crit_edge ]
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 18
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink16.i.i, ptr %26, align 2
  %28 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 19
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink16.i.i, ptr %28, align 1
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 20
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink16.i.i, ptr %30, align 4
  %phy_ulpi_ddr.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 4
  %32 = ptrtoint ptr %phy_ulpi_ddr.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %phy_ulpi_ddr.i, align 1
  %phy_ulpi_ext_vbus.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 5
  %33 = ptrtoint ptr %phy_ulpi_ext_vbus.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %phy_ulpi_ext_vbus.i, align 2
  %enable_dynamic_fifo.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 6
  %34 = lshr i32 %bf.load.i, 25
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = ptrtoint ptr %enable_dynamic_fifo.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %enable_dynamic_fifo.i, align 1
  %en_multiple_tx_fifo.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 7
  %38 = lshr i32 %bf.load.i, 24
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = ptrtoint ptr %en_multiple_tx_fifo.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %en_multiple_tx_fifo.i, align 4
  %i2c_enable14.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 8
  %42 = lshr i32 %bf.load.i128.i, 11
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = ptrtoint ptr %i2c_enable14.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %i2c_enable14.i, align 1
  %acg_enable20.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 9
  %46 = lshr i32 %bf.load.i128.i, 10
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = ptrtoint ptr %acg_enable20.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %acg_enable20.i, align 2
  %ulpi_fs_ls.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 10
  %50 = ptrtoint ptr %ulpi_fs_ls.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %ulpi_fs_ls.i, align 1
  %ts_dline.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 11
  %51 = ptrtoint ptr %ts_dline.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %ts_dline.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330915625, i32 %10)
  %cmp22.i = icmp ugt i32 %10, 1330915625
  %reload_ctl.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 12
  %frombool23.i = zext i1 %cmp22.i to i8
  %52 = ptrtoint ptr %reload_ctl.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool23.i, ptr %reload_ctl.i, align 1
  %uframe_sched.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 13
  %53 = ptrtoint ptr %uframe_sched.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %uframe_sched.i, align 2
  %external_id_pin_ctl.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 14
  %54 = ptrtoint ptr %external_id_pin_ctl.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %external_id_pin_ctl.i, align 1
  %ipg_isoc_en.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 25
  %55 = ptrtoint ptr %ipg_isoc_en.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %ipg_isoc_en.i, align 1
  %service_interval.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 21
  %56 = ptrtoint ptr %service_interval.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %service_interval.i, align 1
  %bf.lshr25.i = lshr i32 %bf.load.i128.i, 21
  %conv.i = trunc i32 %bf.lshr25.i to i16
  %max_packet_count26.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 26
  %57 = ptrtoint ptr %max_packet_count26.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i, ptr %max_packet_count26.i, align 2
  %max_transfer_size.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %max_transfer_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load27.i = load i32, ptr %max_transfer_size.i, align 4
  %bf.lshr28.i = lshr i32 %bf.load27.i, 6
  %max_transfer_size29.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 27
  %59 = ptrtoint ptr %max_transfer_size29.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %bf.lshr28.i, ptr %max_transfer_size29.i, align 4
  %ahbcfg.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 28
  %60 = ptrtoint ptr %ahbcfg.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %ahbcfg.i, align 4
  %ref_clk_per.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 29
  %61 = ptrtoint ptr %ref_clk_per.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 33333, ptr %ref_clk_per.i, align 4
  %sof_cnt_wkup_alert.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 30
  %62 = ptrtoint ptr %sof_cnt_wkup_alert.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 100, ptr %sof_cnt_wkup_alert.i, align 4
  %dr_mode.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 5
  %63 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dr_mode.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %64, label %dwc2_set_param_lpm.exit.i.if.end.i_crit_edge [
    i32 1, label %dwc2_set_param_lpm.exit.i.if.then.i_crit_edge
    i32 3, label %dwc2_set_param_lpm.exit.i.if.then.i_crit_edge79
  ]

dwc2_set_param_lpm.exit.i.if.then.i_crit_edge79:  ; preds = %dwc2_set_param_lpm.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

dwc2_set_param_lpm.exit.i.if.then.i_crit_edge:    ; preds = %dwc2_set_param_lpm.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

dwc2_set_param_lpm.exit.i.if.end.i_crit_edge:     ; preds = %dwc2_set_param_lpm.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %dwc2_set_param_lpm.exit.i.if.then.i_crit_edge, %dwc2_set_param_lpm.exit.i.if.then.i_crit_edge79
  %host_dma.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 31
  %66 = ptrtoint ptr %host_dma.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool.i, ptr %host_dma.i, align 2
  %dma_desc_enable.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %bf.lshr38.i = lshr i32 %bf.load.i128.i, 16
  %67 = trunc i32 %bf.lshr38.i to i8
  %conv40.i = and i8 %67, 31
  %host_channels41.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 37
  %68 = ptrtoint ptr %dma_desc_enable.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 0, ptr %dma_desc_enable.i, align 1
  %69 = ptrtoint ptr %host_channels41.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv40.i, ptr %host_channels41.i, align 4
  %bf.lshr43.i = lshr i32 %bf.load.i, 8
  %conv45.i = trunc i32 %bf.lshr43.i to i16
  %host_rx_fifo_size.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %70 = ptrtoint ptr %host_rx_fifo_size.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv45.i, ptr %host_rx_fifo_size.i, align 2
  %host_nperio_tx_fifo_size.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %host_nperio_tx_fifo_size.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %bf.load46.i = load i64, ptr %host_nperio_tx_fifo_size.i, align 4
  %bf.lshr47.i = lshr i64 %bf.load46.i, 48
  %conv48.i = trunc i64 %bf.lshr47.i to i16
  %host_nperio_tx_fifo_size49.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %72 = ptrtoint ptr %host_nperio_tx_fifo_size49.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv48.i, ptr %host_nperio_tx_fifo_size49.i, align 4
  %73 = lshr i64 %bf.load46.i, 16
  %conv54.i = trunc i64 %73 to i16
  %host_perio_tx_fifo_size55.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %74 = ptrtoint ptr %host_perio_tx_fifo_size55.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv54.i, ptr %host_perio_tx_fifo_size55.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %dwc2_set_param_lpm.exit.i.if.end.i_crit_edge
  %75 = and i32 %64, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %switch.i = icmp eq i32 %75, 2
  br i1 %switch.i, label %if.then63.i, label %if.end.i.dwc2_set_default_params.exit_crit_edge

if.end.i.dwc2_set_default_params.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_default_params.exit

if.then63.i:                                      ; preds = %if.end.i
  %g_dma.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 41
  %76 = ptrtoint ptr %g_dma.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %frombool.i, ptr %g_dma.i, align 4
  %g_dma_desc.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 42
  %77 = lshr i32 %bf.load.i, 26
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = ptrtoint ptr %g_dma_desc.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %g_dma_desc.i, align 1
  %g_rx_fifo_size.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 43
  %81 = ptrtoint ptr %g_rx_fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2048, ptr %g_rx_fifo_size.i, align 4
  %g_np_tx_fifo_size.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 44
  %82 = ptrtoint ptr %g_np_tx_fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1024, ptr %g_np_tx_fifo_size.i, align 4
  %call.i.i = tail call i32 @dwc2_hsotg_tx_fifo_count(ptr noundef %hsotg) #5
  %g_tx_fifo_size.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 45
  %83 = call ptr @memset(ptr %g_tx_fifo_size.i.i, i32 0, i32 64)
  %call1.i.i = tail call i32 @dwc2_hsotg_tx_fifo_average_depth(ptr noundef %hsotg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not8.i.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.not8.i.i, label %if.then63.i.dwc2_set_default_params.exit_crit_edge, label %if.then63.i.for.body.i.i_crit_edge

if.then63.i.for.body.i.i_crit_edge:               ; preds = %if.then63.i
  br label %for.body.i.i

if.then63.i.dwc2_set_default_params.exit_crit_edge: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_default_params.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then63.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %if.then63.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 45, i32 %i.09.i.i
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call1.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %i.09.i.i, 1
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %call.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.dwc2_set_default_params.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.dwc2_set_default_params.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_default_params.exit

dwc2_set_default_params.exit:                     ; preds = %for.body.i.i.dwc2_set_default_params.exit_crit_edge, %if.then63.i.dwc2_set_default_params.exit_crit_edge, %if.end.i.dwc2_set_default_params.exit_crit_edge
  %params.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3
  %85 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dr_mode.i, align 4
  %87 = and i32 %86, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %switch.i24 = icmp eq i32 %87, 2
  br i1 %switch.i24, label %if.then.i28, label %dwc2_set_default_params.exit.if.end15.i_crit_edge

dwc2_set_default_params.exit.if.end15.i_crit_edge: ; preds = %dwc2_set_default_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then.i28:                                      ; preds = %dwc2_set_default_params.exit
  %88 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hsotg, align 8
  %g_rx_fifo_size.i25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 43
  %call.i.i26 = tail call i32 @device_property_read_u32_array(ptr noundef %89, ptr noundef nonnull @.str.1, ptr noundef %g_rx_fifo_size.i25, i32 noundef 1) #5
  %90 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hsotg, align 8
  %g_np_tx_fifo_size.i27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 44
  %call.i38.i = tail call i32 @device_property_read_u32_array(ptr noundef %91, ptr noundef nonnull @.str.2, ptr noundef %g_np_tx_fifo_size.i27, i32 noundef 1) #5
  %92 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hsotg, align 8
  %call.i39.i = tail call i32 @device_property_read_u32_array(ptr noundef %93, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %cmp7.i = icmp sgt i32 %call.i39.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.then.i28.if.end.i29_crit_edge

if.then.i28.if.end.i29_crit_edge:                 ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i29

if.then8.i:                                       ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #7
  %94 = tail call i32 @llvm.umin.i32(i32 %call.i39.i, i32 15) #5
  %g_tx_fifo_size.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 45
  %95 = call ptr @memset(ptr %g_tx_fifo_size.i, i32 0, i32 64)
  %96 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hsotg, align 8
  %arrayidx.i = getelementptr %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 45, i32 1
  %call12.i = tail call i32 @device_property_read_u32_array(ptr noundef %97, ptr noundef nonnull @.str.3, ptr noundef %arrayidx.i, i32 noundef %94) #5
  br label %if.end.i29

if.end.i29:                                       ; preds = %if.then8.i, %if.then.i28.if.end.i29_crit_edge
  %98 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hsotg, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %99, i32 0, i32 27
  %100 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %of_node.i, align 8
  %call14.i = tail call i32 @of_usb_update_otg_caps(ptr noundef %101, ptr noundef %params.i) #5
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i29, %dwc2_set_default_params.exit.if.end15.i_crit_edge
  %102 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hsotg, align 8
  %of_node17.i = getelementptr inbounds %struct.device, ptr %103, i32 0, i32 27
  %104 = ptrtoint ptr %of_node17.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %of_node17.i, align 8
  %call18.i = tail call ptr @of_find_property(ptr noundef %105, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %tobool.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i, label %if.end15.i.dwc2_get_device_properties.exit_crit_edge, label %if.then19.i

if.end15.i.dwc2_get_device_properties.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_get_device_properties.exit

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %oc_disable.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 36
  %106 = ptrtoint ptr %oc_disable.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %oc_disable.i, align 1
  br label %dwc2_get_device_properties.exit

dwc2_get_device_properties.exit:                  ; preds = %if.then19.i, %if.end15.i.dwc2_get_device_properties.exit_crit_edge
  %107 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hsotg, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @dwc2_of_match_table, ptr noundef %108) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %dwc2_get_device_properties.exit.if.end10_crit_edge, label %land.lhs.true

dwc2_get_device_properties.exit.if.end10_crit_edge: ; preds = %dwc2_get_device_properties.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %dwc2_get_device_properties.exit
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %109 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %110, null
  br i1 %tobool1.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %110(ptr noundef %hsotg) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then, %land.lhs.true.if.end10_crit_edge, %dwc2_get_device_properties.exit.if.end10_crit_edge
  %111 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load.i31 = load i32, ptr %hw_params.i, align 4
  %112 = and i32 %bf.load.i31, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.not.i = icmp eq i32 %112, 0
  %113 = ptrtoint ptr %hnp_support12.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %hnp_support12.i.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i.i32 = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %srp_support15.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %srp_support15.i.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool13.not.i.i = icmp eq i8 %116, 0
  br i1 %tobool.not.i.i32, label %if.then9.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870911, i32 %bf.load.i31)
  %cmp.not.i.i33 = icmp ugt i32 %bf.load.i31, 536870911
  %or.cond.i = select i1 %tobool13.not.i.i, i1 true, i1 %cmp.not.i.i33
  br i1 %or.cond.i, label %land.lhs.true.i.if.then23.i_crit_edge.i, label %land.lhs.true.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge

land.lhs.true.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_otg_cap.exit.i

land.lhs.true.i.if.then23.i_crit_edge.i:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre906.i = lshr i32 %bf.load.i31, 29
  br label %if.then23.i.i

if.then9.i.i:                                     ; preds = %if.end10
  br i1 %tobool13.not.i.i, label %if.then9.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge, label %if.then14.i.i

if.then9.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_otg_cap.exit.i

if.then14.i.i:                                    ; preds = %if.then9.i.i
  %bf.lshr17.i.i = lshr i32 %bf.load.i31, 29
  %117 = zext i32 %bf.lshr17.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %bf.lshr17.i.i, label %if.then14.i.i.if.then23.i.i_crit_edge [
    i32 0, label %if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge
    i32 1, label %if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge80
    i32 3, label %if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge81
    i32 5, label %if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge82
  ]

if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge82: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_otg_cap.exit.i

if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge81: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_otg_cap.exit.i

if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge80: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_otg_cap.exit.i

if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_otg_cap.exit.i

if.then14.i.i.if.then23.i.i_crit_edge:            ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.then14.i.i.if.then23.i.i_crit_edge, %land.lhs.true.i.if.then23.i_crit_edge.i
  %bf.lshr.i.i.pre-phi.i = phi i32 [ %.pre906.i, %land.lhs.true.i.if.then23.i_crit_edge.i ], [ %bf.lshr17.i.i, %if.then14.i.i.if.then23.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %bf.lshr.i.i.pre-phi.i)
  %118 = icmp ult i32 %bf.lshr.i.i.pre-phi.i, 6
  br i1 %118, label %switch.lookup70, label %if.then23.i.i.dwc2_set_param_otg_cap.exit.i.i_crit_edge

if.then23.i.i.dwc2_set_param_otg_cap.exit.i.i_crit_edge: ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_param_otg_cap.exit.i.i

switch.lookup70:                                  ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep71 = getelementptr inbounds [6 x i8], ptr @switch.table.dwc2_init_params.102, i32 0, i32 %bf.lshr.i.i.pre-phi.i
  %119 = ptrtoint ptr %switch.gep71 to i32
  call void @__asan_load1_noabort(i32 %119)
  %switch.load72 = load i8, ptr %switch.gep71, align 1
  %switch.gep73 = getelementptr inbounds [6 x i8], ptr @switch.table.dwc2_init_params.103, i32 0, i32 %bf.lshr.i.i.pre-phi.i
  %120 = ptrtoint ptr %switch.gep73 to i32
  call void @__asan_load1_noabort(i32 %120)
  %switch.load74 = load i8, ptr %switch.gep73, align 1
  br label %dwc2_set_param_otg_cap.exit.i.i

dwc2_set_param_otg_cap.exit.i.i:                  ; preds = %switch.lookup70, %if.then23.i.i.dwc2_set_param_otg_cap.exit.i.i_crit_edge
  %.sink22.i.i.i = phi i8 [ %switch.load72, %switch.lookup70 ], [ 0, %if.then23.i.i.dwc2_set_param_otg_cap.exit.i.i_crit_edge ]
  %.sink.i.i.i = phi i8 [ %switch.load74, %switch.lookup70 ], [ 0, %if.then23.i.i.dwc2_set_param_otg_cap.exit.i.i_crit_edge ]
  %121 = ptrtoint ptr %hnp_support12.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %.sink22.i.i.i, ptr %hnp_support12.i.i, align 2
  %122 = ptrtoint ptr %srp_support15.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %.sink.i.i.i, ptr %srp_support15.i.i, align 1
  br label %dwc2_check_param_otg_cap.exit.i

dwc2_check_param_otg_cap.exit.i:                  ; preds = %dwc2_set_param_otg_cap.exit.i.i, %if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge, %if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge80, %if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge81, %if.then14.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge82, %if.then9.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge, %land.lhs.true.i.i.dwc2_check_param_otg_cap.exit.i_crit_edge
  %123 = ptrtoint ptr %hs_phy_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %bf.load.i885.i = load i32, ptr %hs_phy_type1.i.i, align 8
  %bf.lshr.i.i35 = lshr i32 %bf.load.i885.i, 14
  %bf.clear.i.i36 = and i32 %bf.lshr.i.i35, 3
  %124 = ptrtoint ptr %phy_type9.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %phy_type9.i.i, align 2
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %125, label %dwc2_check_param_otg_cap.exit.i.switch.lookup75_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb8.i.i
    i8 2, label %sw.bb15.i.i
  ]

dwc2_check_param_otg_cap.exit.i.switch.lookup75_crit_edge: ; preds = %dwc2_check_param_otg_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %switch.lookup75

sw.bb.i.i:                                        ; preds = %dwc2_check_param_otg_cap.exit.i
  %127 = and i32 %bf.load.i885.i, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %127)
  %cmp.not.i886.i = icmp eq i32 %127, 4096
  br i1 %cmp.not.i886.i, label %sw.bb.i.i.dwc2_check_param_phy_type.exit.i_crit_edge, label %sw.bb.i.i.switch.lookup75_crit_edge

sw.bb.i.i.switch.lookup75_crit_edge:              ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %switch.lookup75

sw.bb.i.i.dwc2_check_param_phy_type.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_phy_type.exit.i

sw.bb8.i.i:                                       ; preds = %dwc2_check_param_otg_cap.exit.i
  %128 = zext i32 %bf.clear.i.i36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %bf.clear.i.i36, label %sw.bb8.i.i.if.else.i.i.i_crit_edge [
    i32 1, label %sw.bb8.i.i.dwc2_check_param_phy_type.exit.i_crit_edge
    i32 3, label %sw.bb8.i.i.dwc2_check_param_phy_type.exit.i_crit_edge83
    i32 0, label %sw.bb8.i.i.dwc2_set_param_phy_type.exit.i.i_crit_edge
  ]

sw.bb8.i.i.dwc2_set_param_phy_type.exit.i.i_crit_edge: ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_param_phy_type.exit.i.i

sw.bb8.i.i.dwc2_check_param_phy_type.exit.i_crit_edge83: ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_phy_type.exit.i

sw.bb8.i.i.dwc2_check_param_phy_type.exit.i_crit_edge: ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_phy_type.exit.i

sw.bb8.i.i.if.else.i.i.i_crit_edge:               ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i.i

sw.bb15.i.i:                                      ; preds = %dwc2_check_param_otg_cap.exit.i
  %129 = zext i32 %bf.clear.i.i36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %bf.clear.i.i36, label %sw.bb15.i.i.if.else.i.i.i_crit_edge [
    i32 1, label %sw.bb15.i.i.dwc2_check_param_phy_type.exit.i_crit_edge
    i32 3, label %sw.bb15.i.i.dwc2_check_param_phy_type.exit.i_crit_edge84
    i32 0, label %sw.bb15.i.i.dwc2_set_param_phy_type.exit.i.i_crit_edge
  ]

sw.bb15.i.i.dwc2_set_param_phy_type.exit.i.i_crit_edge: ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_param_phy_type.exit.i.i

sw.bb15.i.i.dwc2_check_param_phy_type.exit.i_crit_edge84: ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_phy_type.exit.i

sw.bb15.i.i.dwc2_check_param_phy_type.exit.i_crit_edge: ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_phy_type.exit.i

sw.bb15.i.i.if.else.i.i.i_crit_edge:              ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %sw.bb15.i.i.if.else.i.i.i_crit_edge, %sw.bb8.i.i.if.else.i.i.i_crit_edge
  br label %dwc2_set_param_phy_type.exit.i.i

switch.lookup75:                                  ; preds = %sw.bb.i.i.switch.lookup75_crit_edge, %dwc2_check_param_otg_cap.exit.i.switch.lookup75_crit_edge
  %switch.shiftamt76 = shl nuw nsw i32 %bf.clear.i.i36, 3
  %switch.downshift77 = lshr i32 16908544, %switch.shiftamt76
  %switch.masked78 = trunc i32 %switch.downshift77 to i8
  br label %dwc2_set_param_phy_type.exit.i.i

dwc2_set_param_phy_type.exit.i.i:                 ; preds = %switch.lookup75, %if.else.i.i.i, %sw.bb15.i.i.dwc2_set_param_phy_type.exit.i.i_crit_edge, %sw.bb8.i.i.dwc2_set_param_phy_type.exit.i.i_crit_edge
  %val.0.i.i.i = phi i8 [ 2, %if.else.i.i.i ], [ 0, %sw.bb8.i.i.dwc2_set_param_phy_type.exit.i.i_crit_edge ], [ 0, %sw.bb15.i.i.dwc2_set_param_phy_type.exit.i.i_crit_edge ], [ %switch.masked78, %switch.lookup75 ]
  %130 = ptrtoint ptr %phy_type9.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %val.0.i.i.i, ptr %phy_type9.i.i, align 2
  br label %dwc2_check_param_phy_type.exit.i

dwc2_check_param_phy_type.exit.i:                 ; preds = %dwc2_set_param_phy_type.exit.i.i, %sw.bb15.i.i.dwc2_check_param_phy_type.exit.i_crit_edge, %sw.bb15.i.i.dwc2_check_param_phy_type.exit.i_crit_edge84, %sw.bb8.i.i.dwc2_check_param_phy_type.exit.i_crit_edge, %sw.bb8.i.i.dwc2_check_param_phy_type.exit.i_crit_edge83, %sw.bb.i.i.dwc2_check_param_phy_type.exit.i_crit_edge
  %131 = phi i8 [ 0, %sw.bb.i.i.dwc2_check_param_phy_type.exit.i_crit_edge ], [ 1, %sw.bb8.i.i.dwc2_check_param_phy_type.exit.i_crit_edge ], [ 1, %sw.bb8.i.i.dwc2_check_param_phy_type.exit.i_crit_edge83 ], [ 2, %sw.bb15.i.i.dwc2_check_param_phy_type.exit.i_crit_edge ], [ 2, %sw.bb15.i.i.dwc2_check_param_phy_type.exit.i_crit_edge84 ], [ %val.0.i.i.i, %dwc2_set_param_phy_type.exit.i.i ]
  %132 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %speed.i.i, align 1
  %134 = zext i8 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %133, label %dwc2_check_param_phy_type.exit.i.if.then12.i.i_crit_edge [
    i8 0, label %land.lhs.true.i888.i
    i8 1, label %dwc2_check_param_phy_type.exit.i.dwc2_check_param_speed.exit.i_crit_edge
    i8 2, label %dwc2_check_param_phy_type.exit.i.dwc2_check_param_speed.exit.i_crit_edge85
  ]

dwc2_check_param_phy_type.exit.i.dwc2_check_param_speed.exit.i_crit_edge85: ; preds = %dwc2_check_param_phy_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_speed.exit.i

dwc2_check_param_phy_type.exit.i.dwc2_check_param_speed.exit.i_crit_edge: ; preds = %dwc2_check_param_phy_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_speed.exit.i

dwc2_check_param_phy_type.exit.i.if.then12.i.i_crit_edge: ; preds = %dwc2_check_param_phy_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i.i

land.lhs.true.i888.i:                             ; preds = %dwc2_check_param_phy_type.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp9.i.i = icmp eq i8 %131, 0
  br i1 %cmp9.i.i, label %land.lhs.true.i888.i.if.then12.i.i_crit_edge, label %land.lhs.true.i888.i.dwc2_check_param_speed.exit.i_crit_edge

land.lhs.true.i888.i.dwc2_check_param_speed.exit.i_crit_edge: ; preds = %land.lhs.true.i888.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_speed.exit.i

land.lhs.true.i888.i.if.then12.i.i_crit_edge:     ; preds = %land.lhs.true.i888.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true.i888.i.if.then12.i.i_crit_edge, %dwc2_check_param_phy_type.exit.i.if.then12.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp.i.i.i37 = icmp eq i8 %131, 0
  %135 = ptrtoint ptr %snpsid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %snpsid.i.i.i, align 8
  %and.i.i.i.i = and i32 %136, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429274624, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 1429274624
  %narrow.i.i.i = or i1 %cmp.i.i.i37, %cmp.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429340160, i32 %and.i.i.i.i)
  %cmp.i12.i.i.i = icmp ne i32 %and.i.i.i.i, 1429340160
  %narrow13.i.i.i = and i1 %cmp.i12.i.i.i, %narrow.i.i.i
  %val.1.i.i.i = zext i1 %narrow13.i.i.i to i8
  %137 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %val.1.i.i.i, ptr %speed.i.i, align 1
  br label %dwc2_check_param_speed.exit.i

dwc2_check_param_speed.exit.i:                    ; preds = %if.then12.i.i, %land.lhs.true.i888.i.dwc2_check_param_speed.exit.i_crit_edge, %dwc2_check_param_phy_type.exit.i.dwc2_check_param_speed.exit.i_crit_edge, %dwc2_check_param_phy_type.exit.i.dwc2_check_param_speed.exit.i_crit_edge85
  %138 = ptrtoint ptr %phy_utmi_width.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %phy_utmi_width.i.i, align 8
  %140 = ptrtoint ptr %utmi_phy_data_width.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %bf.load.i889.i = load i32, ptr %utmi_phy_data_width.i.i, align 4
  %bf.lshr.i890.i = lshr i32 %bf.load.i889.i, 8
  %bf.clear.i891.i = and i32 %bf.lshr.i890.i, 3
  %141 = zext i32 %bf.clear.i891.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %bf.clear.i891.i, label %dwc2_check_param_speed.exit.i.if.then.i894.i_crit_edge [
    i32 0, label %sw.bb.i892.i
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb5.i.i
  ]

dwc2_check_param_speed.exit.i.if.then.i894.i_crit_edge: ; preds = %dwc2_check_param_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i894.i

sw.bb.i892.i:                                     ; preds = %dwc2_check_param_speed.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %139)
  %cmp.i.i40 = icmp eq i8 %139, 8
  br i1 %cmp.i.i40, label %sw.bb.i892.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge, label %sw.bb.i892.i.if.then.i894.i_crit_edge

sw.bb.i892.i.if.then.i894.i_crit_edge:            ; preds = %sw.bb.i892.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i894.i

sw.bb.i892.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge: ; preds = %sw.bb.i892.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_phy_utmi_width.exit.i

sw.bb2.i.i:                                       ; preds = %dwc2_check_param_speed.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %139)
  %cmp3.i.i = icmp eq i8 %139, 16
  br i1 %cmp3.i.i, label %sw.bb2.i.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge, label %sw.bb2.i.i.if.then.i894.i_crit_edge

sw.bb2.i.i.if.then.i894.i_crit_edge:              ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i894.i

sw.bb2.i.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge: ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_phy_utmi_width.exit.i

sw.bb5.i.i:                                       ; preds = %dwc2_check_param_speed.exit.i
  %142 = zext i8 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %139, label %sw.bb5.i.i.if.then.i894.i_crit_edge [
    i8 8, label %sw.bb5.i.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge
    i8 16, label %sw.bb5.i.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge86
  ]

sw.bb5.i.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge86: ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_phy_utmi_width.exit.i

sw.bb5.i.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge: ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_param_phy_utmi_width.exit.i

sw.bb5.i.i.if.then.i894.i_crit_edge:              ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i894.i

if.then.i894.i:                                   ; preds = %sw.bb5.i.i.if.then.i894.i_crit_edge, %sw.bb2.i.i.if.then.i894.i_crit_edge, %sw.bb.i892.i.if.then.i894.i_crit_edge, %dwc2_check_param_speed.exit.i.if.then.i894.i_crit_edge
  %143 = and i32 %bf.load.i889.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i.i893.i = icmp eq i32 %143, 0
  %cond.i.i.i = select i1 %cmp.i.i893.i, i32 8, i32 16
  %144 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %phy.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %145, null
  br i1 %tobool.not.i.i.i, label %if.then.i894.i.dwc2_set_param_phy_utmi_width.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i894.i.dwc2_set_param_phy_utmi_width.exit.i.i_crit_edge: ; preds = %if.then.i894.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_set_param_phy_utmi_width.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i894.i
  call void @__sanitizer_cov_trace_pc() #7
  %attrs.i.i.i.i = getelementptr inbounds %struct.phy, ptr %145, i32 0, i32 6
  %146 = ptrtoint ptr %attrs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %attrs.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %147)
  %cmp2.i.i.i = icmp eq i32 %147, 8
  %spec.select.i.i.i = select i1 %cmp2.i.i.i, i32 8, i32 %cond.i.i.i
  br label %dwc2_set_param_phy_utmi_width.exit.i.i

dwc2_set_param_phy_utmi_width.exit.i.i:           ; preds = %if.then.i.i.i, %if.then.i894.i.dwc2_set_param_phy_utmi_width.exit.i.i_crit_edge
  %val.0.i.i895.i = phi i32 [ %cond.i.i.i, %if.then.i894.i.dwc2_set_param_phy_utmi_width.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then.i.i.i ]
  %conv.i.i.i = trunc i32 %val.0.i.i895.i to i8
  %148 = ptrtoint ptr %phy_utmi_width.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv.i.i.i, ptr %phy_utmi_width.i.i, align 8
  br label %dwc2_check_param_phy_utmi_width.exit.i

dwc2_check_param_phy_utmi_width.exit.i:           ; preds = %dwc2_set_param_phy_utmi_width.exit.i.i, %sw.bb5.i.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge, %sw.bb5.i.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge86, %sw.bb2.i.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge, %sw.bb.i892.i.dwc2_check_param_phy_utmi_width.exit.i_crit_edge
  tail call fastcc void @dwc2_check_param_power_down(ptr noundef %hsotg) #5
  %149 = ptrtoint ptr %enable_dynamic_fifo.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %enable_dynamic_fifo.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i42 = icmp eq i8 %150, 0
  br i1 %tobool.not.i42, label %dwc2_check_param_phy_utmi_width.exit.i.do.body14.i_crit_edge, label %land.lhs.true.i

dwc2_check_param_phy_utmi_width.exit.i.do.body14.i_crit_edge: ; preds = %dwc2_check_param_phy_utmi_width.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

land.lhs.true.i:                                  ; preds = %dwc2_check_param_phy_utmi_width.exit.i
  %151 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %bf.load2.i = load i32, ptr %hw_params.i, align 4
  %152 = and i32 %bf.load2.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool5.not.i = icmp eq i32 %152, 0
  br i1 %tobool5.not.i, label %do.end.i, label %land.lhs.true.i.do.body14.i_crit_edge

land.lhs.true.i.do.body14.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %154, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  %155 = ptrtoint ptr %enable_dynamic_fifo.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %enable_dynamic_fifo.i, align 1
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.end.i, %land.lhs.true.i.do.body14.i_crit_edge, %dwc2_check_param_phy_utmi_width.exit.i.do.body14.i_crit_edge
  %156 = ptrtoint ptr %en_multiple_tx_fifo.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %en_multiple_tx_fifo.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool16.not.i = icmp eq i8 %157, 0
  br i1 %tobool16.not.i, label %do.body14.i.do.body37.i_crit_edge, label %land.lhs.true18.i

do.body14.i.do.body37.i_crit_edge:                ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37.i

land.lhs.true18.i:                                ; preds = %do.body14.i
  %158 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %bf.load19.i = load i32, ptr %hw_params.i, align 4
  %159 = and i32 %bf.load19.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool22.not.i = icmp eq i32 %159, 0
  br i1 %tobool22.not.i, label %do.end26.i, label %land.lhs.true18.i.do.body37.i_crit_edge

land.lhs.true18.i.do.body37.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37.i

do.end26.i:                                       ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.13, i32 noundef 1) #8
  %162 = ptrtoint ptr %en_multiple_tx_fifo.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %en_multiple_tx_fifo.i, align 4
  br label %do.body37.i

do.body37.i:                                      ; preds = %do.end26.i, %land.lhs.true18.i.do.body37.i_crit_edge, %do.body14.i.do.body37.i_crit_edge
  %163 = ptrtoint ptr %i2c_enable14.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %i2c_enable14.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool39.not.i = icmp eq i8 %164, 0
  br i1 %tobool39.not.i, label %do.body37.i.do.body61.i_crit_edge, label %land.lhs.true41.i

do.body37.i.do.body61.i_crit_edge:                ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61.i

land.lhs.true41.i:                                ; preds = %do.body37.i
  %165 = ptrtoint ptr %hs_phy_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %bf.load43.i = load i32, ptr %hs_phy_type1.i.i, align 4
  %166 = and i32 %bf.load43.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool46.not.i = icmp eq i32 %166, 0
  br i1 %tobool46.not.i, label %do.end50.i, label %land.lhs.true41.i.do.body61.i_crit_edge

land.lhs.true41.i.do.body61.i_crit_edge:          ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61.i

do.end50.i:                                       ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %168, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.16, i32 noundef 1) #8
  %169 = ptrtoint ptr %i2c_enable14.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %i2c_enable14.i, align 1
  br label %do.body61.i

do.body61.i:                                      ; preds = %do.end50.i, %land.lhs.true41.i.do.body61.i_crit_edge, %do.body37.i.do.body61.i_crit_edge
  %170 = ptrtoint ptr %ipg_isoc_en.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %ipg_isoc_en.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool63.not.i = icmp eq i8 %171, 0
  br i1 %tobool63.not.i, label %do.body61.i.do.body85.i_crit_edge, label %land.lhs.true65.i

do.body61.i.do.body85.i_crit_edge:                ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body85.i

land.lhs.true65.i:                                ; preds = %do.body61.i
  %172 = ptrtoint ptr %utmi_phy_data_width.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %bf.load67.i = load i32, ptr %utmi_phy_data_width.i.i, align 4
  %173 = and i32 %bf.load67.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool70.not.i = icmp eq i32 %173, 0
  br i1 %tobool70.not.i, label %do.end74.i, label %land.lhs.true65.i.do.body85.i_crit_edge

land.lhs.true65.i.do.body85.i_crit_edge:          ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body85.i

do.end74.i:                                       ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #7
  %174 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %175, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19, i32 noundef 1) #8
  %176 = ptrtoint ptr %ipg_isoc_en.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %ipg_isoc_en.i, align 1
  br label %do.body85.i

do.body85.i:                                      ; preds = %do.end74.i, %land.lhs.true65.i.do.body85.i_crit_edge, %do.body61.i.do.body85.i_crit_edge
  %177 = ptrtoint ptr %acg_enable20.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %acg_enable20.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool87.not.i = icmp eq i8 %178, 0
  br i1 %tobool87.not.i, label %do.body85.i.do.body109.i_crit_edge, label %land.lhs.true89.i

do.body85.i.do.body109.i_crit_edge:               ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body109.i

land.lhs.true89.i:                                ; preds = %do.body85.i
  %179 = ptrtoint ptr %hs_phy_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %bf.load91.i = load i32, ptr %hs_phy_type1.i.i, align 4
  %180 = and i32 %bf.load91.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool94.not.i = icmp eq i32 %180, 0
  br i1 %tobool94.not.i, label %do.end98.i, label %land.lhs.true89.i.do.body109.i_crit_edge

land.lhs.true89.i.do.body109.i_crit_edge:         ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body109.i

do.end98.i:                                       ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #7
  %181 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %182, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22, i32 noundef 1) #8
  %183 = ptrtoint ptr %acg_enable20.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %acg_enable20.i, align 2
  br label %do.body109.i

do.body109.i:                                     ; preds = %do.end98.i, %land.lhs.true89.i.do.body109.i_crit_edge, %do.body85.i.do.body109.i_crit_edge
  %184 = ptrtoint ptr %reload_ctl.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %reload_ctl.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool111.not.i = icmp eq i8 %185, 0
  br i1 %tobool111.not.i, label %do.body109.i.do.body131.i_crit_edge, label %land.lhs.true113.i

do.body109.i.do.body131.i_crit_edge:              ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body131.i

land.lhs.true113.i:                               ; preds = %do.body109.i
  %186 = ptrtoint ptr %snpsid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %snpsid.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330915626, i32 %187)
  %cmp115.i = icmp ugt i32 %187, 1330915626
  br i1 %cmp115.i, label %land.lhs.true113.i.do.body131.i_crit_edge, label %do.end120.i

land.lhs.true113.i.do.body131.i_crit_edge:        ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body131.i

do.end120.i:                                      ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #7
  %188 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %189, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.25, i32 noundef 1) #8
  %190 = ptrtoint ptr %reload_ctl.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %reload_ctl.i, align 1
  br label %do.body131.i

do.body131.i:                                     ; preds = %do.end120.i, %land.lhs.true113.i.do.body131.i_crit_edge, %do.body109.i.do.body131.i_crit_edge
  %191 = ptrtoint ptr %lpm.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %lpm.i.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool133.not.i = icmp eq i8 %192, 0
  br i1 %tobool133.not.i, label %do.body131.i.do.body178.i_crit_edge, label %land.lhs.true135.i

do.body131.i.do.body178.i_crit_edge:              ; preds = %do.body131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body178.i

land.lhs.true135.i:                               ; preds = %do.body131.i
  %193 = ptrtoint ptr %snpsid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %snpsid.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330915337, i32 %194)
  %cmp138.i = icmp ugt i32 %194, 1330915337
  br i1 %cmp138.i, label %land.lhs.true159.i, label %land.lhs.true135.i.do.body178.sink.split.i_crit_edge

land.lhs.true135.i.do.body178.sink.split.i_crit_edge: ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body178.sink.split.i

land.lhs.true159.i:                               ; preds = %land.lhs.true135.i
  %195 = ptrtoint ptr %utmi_phy_data_width.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %bf.load160.i = load i32, ptr %utmi_phy_data_width.i.i, align 4
  %196 = and i32 %bf.load160.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool163.not.i = icmp eq i32 %196, 0
  br i1 %tobool163.not.i, label %land.lhs.true159.i.do.body178.sink.split.i_crit_edge, label %land.lhs.true159.i.do.body178.i_crit_edge

land.lhs.true159.i.do.body178.i_crit_edge:        ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body178.i

land.lhs.true159.i.do.body178.sink.split.i_crit_edge: ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body178.sink.split.i

do.body178.sink.split.i:                          ; preds = %land.lhs.true159.i.do.body178.sink.split.i_crit_edge, %land.lhs.true135.i.do.body178.sink.split.i_crit_edge
  %197 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %198, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28, i32 noundef 1) #8
  %199 = ptrtoint ptr %lpm.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %lpm.i.i, align 1
  br label %do.body178.i

do.body178.i:                                     ; preds = %do.body178.sink.split.i, %land.lhs.true159.i.do.body178.i_crit_edge, %do.body131.i.do.body178.i_crit_edge
  %200 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %26, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool180.not.i = icmp eq i8 %201, 0
  br i1 %tobool180.not.i, label %do.body178.i.do.body200.i_crit_edge, label %land.lhs.true182.i

do.body178.i.do.body200.i_crit_edge:              ; preds = %do.body178.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body200.i

land.lhs.true182.i:                               ; preds = %do.body178.i
  %202 = ptrtoint ptr %lpm.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %lpm.i.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool185.not.i = icmp eq i8 %203, 0
  br i1 %tobool185.not.i, label %do.end189.i, label %land.lhs.true182.i.do.body200.i_crit_edge

land.lhs.true182.i.do.body200.i_crit_edge:        ; preds = %land.lhs.true182.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body200.i

do.end189.i:                                      ; preds = %land.lhs.true182.i
  call void @__sanitizer_cov_trace_pc() #7
  %204 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %205, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.33, i32 noundef 1) #8
  %206 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %26, align 2
  br label %do.body200.i

do.body200.i:                                     ; preds = %do.end189.i, %land.lhs.true182.i.do.body200.i_crit_edge, %do.body178.i.do.body200.i_crit_edge
  %207 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %28, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool202.not.i = icmp eq i8 %208, 0
  br i1 %tobool202.not.i, label %do.body200.i.do.body246.i_crit_edge, label %land.lhs.true204.i

do.body200.i.do.body246.i_crit_edge:              ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body246.i

land.lhs.true204.i:                               ; preds = %do.body200.i
  %209 = ptrtoint ptr %lpm.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %lpm.i.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool207.not.i = icmp eq i8 %210, 0
  br i1 %tobool207.not.i, label %land.lhs.true204.i.do.body246.sink.split.i_crit_edge, label %land.lhs.true227.i

land.lhs.true204.i.do.body246.sink.split.i_crit_edge: ; preds = %land.lhs.true204.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body246.sink.split.i

land.lhs.true227.i:                               ; preds = %land.lhs.true204.i
  %211 = ptrtoint ptr %snpsid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %snpsid.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330917385, i32 %212)
  %cmp230.i = icmp ugt i32 %212, 1330917385
  br i1 %cmp230.i, label %land.lhs.true227.i.do.body246.i_crit_edge, label %land.lhs.true227.i.do.body246.sink.split.i_crit_edge

land.lhs.true227.i.do.body246.sink.split.i_crit_edge: ; preds = %land.lhs.true227.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body246.sink.split.i

land.lhs.true227.i.do.body246.i_crit_edge:        ; preds = %land.lhs.true227.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body246.i

do.body246.sink.split.i:                          ; preds = %land.lhs.true227.i.do.body246.sink.split.i_crit_edge, %land.lhs.true204.i.do.body246.sink.split.i_crit_edge
  %213 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %214, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.36, i32 noundef 1) #8
  %215 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %28, align 1
  br label %do.body246.i

do.body246.i:                                     ; preds = %do.body246.sink.split.i, %land.lhs.true227.i.do.body246.i_crit_edge, %do.body200.i.do.body246.i_crit_edge
  %216 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %30, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool248.not.i = icmp eq i8 %217, 0
  br i1 %tobool248.not.i, label %do.body246.i.do.body268.i_crit_edge, label %land.lhs.true250.i

do.body246.i.do.body268.i_crit_edge:              ; preds = %do.body246.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268.i

land.lhs.true250.i:                               ; preds = %do.body246.i
  %218 = ptrtoint ptr %lpm.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %lpm.i.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool253.not.i = icmp eq i8 %219, 0
  br i1 %tobool253.not.i, label %do.end257.i, label %land.lhs.true250.i.do.body268.i_crit_edge

land.lhs.true250.i.do.body268.i_crit_edge:        ; preds = %land.lhs.true250.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268.i

do.end257.i:                                      ; preds = %land.lhs.true250.i
  call void @__sanitizer_cov_trace_pc() #7
  %220 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %221, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.41, i32 noundef 1) #8
  %222 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %30, align 4
  br label %do.body268.i

do.body268.i:                                     ; preds = %do.end257.i, %land.lhs.true250.i.do.body268.i_crit_edge, %do.body246.i.do.body268.i_crit_edge
  %hird_threshold.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 22
  %223 = ptrtoint ptr %hird_threshold.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %hird_threshold.i, align 2
  %conv270.i = zext i8 %224 to i32
  %225 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %28, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool278.not.i = icmp eq i8 %226, 0
  %cond.i = select i1 %tobool278.not.i, i32 7, i32 12
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv270.i)
  %cmp280.i = icmp ult i32 %cond.i, %conv270.i
  br i1 %cmp280.i, label %do.end285.i, label %do.body268.i.do.body295.i_crit_edge

do.body268.i.do.body295.i_crit_edge:              ; preds = %do.body268.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body295.i

do.end285.i:                                      ; preds = %do.body268.i
  call void @__sanitizer_cov_trace_pc() #7
  %227 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %228, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.44, i32 noundef %conv270.i) #8
  %229 = ptrtoint ptr %hird_threshold.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %hird_threshold.i, align 2
  br label %do.body295.i

do.body295.i:                                     ; preds = %do.end285.i, %do.body268.i.do.body295.i_crit_edge
  %230 = ptrtoint ptr %service_interval.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %service_interval.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool297.not.i = icmp eq i8 %231, 0
  br i1 %tobool297.not.i, label %do.body295.i.do.body318.i_crit_edge, label %land.lhs.true299.i

do.body295.i.do.body318.i_crit_edge:              ; preds = %do.body295.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body318.i

land.lhs.true299.i:                               ; preds = %do.body295.i
  %232 = ptrtoint ptr %utmi_phy_data_width.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %bf.load300.i = load i32, ptr %utmi_phy_data_width.i.i, align 4
  %233 = and i32 %bf.load300.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool303.not.i = icmp eq i32 %233, 0
  br i1 %tobool303.not.i, label %do.end307.i, label %land.lhs.true299.i.do.body318.i_crit_edge

land.lhs.true299.i.do.body318.i_crit_edge:        ; preds = %land.lhs.true299.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body318.i

do.end307.i:                                      ; preds = %land.lhs.true299.i
  call void @__sanitizer_cov_trace_pc() #7
  %234 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %235, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.47, i32 noundef 1) #8
  %236 = ptrtoint ptr %service_interval.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %service_interval.i, align 1
  br label %do.body318.i

do.body318.i:                                     ; preds = %do.end307.i, %land.lhs.true299.i.do.body318.i_crit_edge, %do.body295.i.do.body318.i_crit_edge
  %237 = ptrtoint ptr %max_packet_count26.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %max_packet_count26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %238)
  %cmp321.i = icmp ult i16 %238, 15
  %.pre.i = zext i16 %238 to i32
  br i1 %cmp321.i, label %do.body318.i.do.end335.i_crit_edge, label %lor.lhs.false323.i

do.body318.i.do.end335.i_crit_edge:               ; preds = %do.body318.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end335.i

lor.lhs.false323.i:                               ; preds = %do.body318.i
  %239 = ptrtoint ptr %hs_phy_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %bf.load328.i = load i32, ptr %hs_phy_type1.i.i, align 4
  %bf.lshr329.i = lshr i32 %bf.load328.i, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr329.i, i32 %.pre.i)
  %cmp330.i = icmp ult i32 %bf.lshr329.i, %.pre.i
  br i1 %cmp330.i, label %lor.lhs.false323.i.do.end335.i_crit_edge, label %lor.lhs.false323.i.do.body349.i_crit_edge

lor.lhs.false323.i.do.body349.i_crit_edge:        ; preds = %lor.lhs.false323.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body349.i

lor.lhs.false323.i.do.end335.i_crit_edge:         ; preds = %lor.lhs.false323.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end335.i

do.end335.i:                                      ; preds = %lor.lhs.false323.i.do.end335.i_crit_edge, %do.body318.i.do.end335.i_crit_edge
  %240 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %241, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.50, i32 noundef %.pre.i) #8
  %242 = ptrtoint ptr %hs_phy_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %bf.load341.i = load i32, ptr %hs_phy_type1.i.i, align 4
  %bf.lshr342.i = lshr i32 %bf.load341.i, 21
  %conv343.i = trunc i32 %bf.lshr342.i to i16
  %243 = ptrtoint ptr %max_packet_count26.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %conv343.i, ptr %max_packet_count26.i, align 2
  br label %do.body349.i

do.body349.i:                                     ; preds = %do.end335.i, %lor.lhs.false323.i.do.body349.i_crit_edge
  %244 = ptrtoint ptr %max_transfer_size29.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %max_transfer_size29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %245)
  %cmp351.i = icmp slt i32 %245, 2047
  br i1 %cmp351.i, label %do.body349.i.do.end364.i_crit_edge, label %lor.lhs.false353.i

do.body349.i.do.end364.i_crit_edge:               ; preds = %do.body349.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end364.i

lor.lhs.false353.i:                               ; preds = %do.body349.i
  %246 = ptrtoint ptr %max_transfer_size.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %bf.load357.i = load i32, ptr %max_transfer_size.i, align 4
  %bf.lshr358.i = lshr i32 %bf.load357.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %245, i32 %bf.lshr358.i)
  %cmp359.i = icmp ugt i32 %245, %bf.lshr358.i
  br i1 %cmp359.i, label %lor.lhs.false353.i.do.end364.i_crit_edge, label %lor.lhs.false353.i.do.end375.i_crit_edge

lor.lhs.false353.i.do.end375.i_crit_edge:         ; preds = %lor.lhs.false353.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end375.i

lor.lhs.false353.i.do.end364.i_crit_edge:         ; preds = %lor.lhs.false353.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end364.i

do.end364.i:                                      ; preds = %lor.lhs.false353.i.do.end364.i_crit_edge, %do.body349.i.do.end364.i_crit_edge
  %247 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %248, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.53, i32 noundef %245) #8
  %249 = ptrtoint ptr %max_transfer_size.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %bf.load369.i = load i32, ptr %max_transfer_size.i, align 4
  %bf.lshr370.i = lshr i32 %bf.load369.i, 6
  %250 = ptrtoint ptr %max_transfer_size29.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %bf.lshr370.i, ptr %max_transfer_size29.i, align 4
  br label %do.end375.i

do.end375.i:                                      ; preds = %do.end364.i, %lor.lhs.false353.i.do.end375.i_crit_edge
  %251 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %dr_mode.i, align 4
  %253 = zext i32 %252 to i64
  call void @__sanitizer_cov_trace_switch(i64 %253, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %252, label %do.end375.i.if.end598.i_crit_edge [
    i32 1, label %do.end375.i.do.body383.i_crit_edge
    i32 3, label %do.end375.i.do.body383.i_crit_edge87
  ]

do.end375.i.do.body383.i_crit_edge87:             ; preds = %do.end375.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body383.i

do.end375.i.do.body383.i_crit_edge:               ; preds = %do.end375.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body383.i

do.end375.i.if.end598.i_crit_edge:                ; preds = %do.end375.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end598.i

do.body383.i:                                     ; preds = %do.end375.i.do.body383.i_crit_edge, %do.end375.i.do.body383.i_crit_edge87
  %host_dma.i49 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 31
  %254 = ptrtoint ptr %host_dma.i49 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %host_dma.i49, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool385.not.i = icmp eq i8 %255, 0
  %cmp.not.not.i = xor i1 %cmp.not.i, true
  %brmerge.i = select i1 %tobool385.not.i, i1 true, i1 %cmp.not.not.i
  br i1 %brmerge.i, label %do.body383.i.do.body403.i_crit_edge, label %do.end392.i

do.body383.i.do.body403.i_crit_edge:              ; preds = %do.body383.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body403.i

do.end392.i:                                      ; preds = %do.body383.i
  call void @__sanitizer_cov_trace_pc() #7
  %256 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %257, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  %258 = ptrtoint ptr %host_dma.i49 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %host_dma.i49, align 2
  br label %do.body403.i

do.body403.i:                                     ; preds = %do.end392.i, %do.body383.i.do.body403.i_crit_edge
  %dma_desc_enable.i50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %259 = ptrtoint ptr %dma_desc_enable.i50 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %dma_desc_enable.i50, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool405.not.i = icmp eq i8 %260, 0
  br i1 %tobool405.not.i, label %do.body403.i.do.body424.i_crit_edge, label %land.lhs.true407.i

do.body403.i.do.body424.i_crit_edge:              ; preds = %do.body403.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body424.i

land.lhs.true407.i:                               ; preds = %do.body403.i
  %261 = ptrtoint ptr %host_dma.i49 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %host_dma.i49, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool409.not.i = icmp eq i8 %262, 0
  br i1 %tobool409.not.i, label %do.end413.i, label %land.lhs.true407.i.do.body424.i_crit_edge

land.lhs.true407.i.do.body424.i_crit_edge:        ; preds = %land.lhs.true407.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body424.i

do.end413.i:                                      ; preds = %land.lhs.true407.i
  call void @__sanitizer_cov_trace_pc() #7
  %263 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %264, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.59, i32 noundef 1) #8
  %265 = ptrtoint ptr %dma_desc_enable.i50 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %dma_desc_enable.i50, align 1
  br label %do.body424.i

do.body424.i:                                     ; preds = %do.end413.i, %land.lhs.true407.i.do.body424.i_crit_edge, %do.body403.i.do.body424.i_crit_edge
  %dma_desc_fs_enable.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 33
  %266 = ptrtoint ptr %dma_desc_fs_enable.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %dma_desc_fs_enable.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool426.not.i = icmp eq i8 %267, 0
  br i1 %tobool426.not.i, label %do.body424.i.do.body445.i_crit_edge, label %land.lhs.true428.i

do.body424.i.do.body445.i_crit_edge:              ; preds = %do.body424.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body445.i

land.lhs.true428.i:                               ; preds = %do.body424.i
  %268 = ptrtoint ptr %dma_desc_enable.i50 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %dma_desc_enable.i50, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool430.not.i = icmp eq i8 %269, 0
  br i1 %tobool430.not.i, label %do.end434.i, label %land.lhs.true428.i.do.body445.i_crit_edge

land.lhs.true428.i.do.body445.i_crit_edge:        ; preds = %land.lhs.true428.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body445.i

do.end434.i:                                      ; preds = %land.lhs.true428.i
  call void @__sanitizer_cov_trace_pc() #7
  %270 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %271, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.62, i32 noundef 1) #8
  %272 = ptrtoint ptr %dma_desc_fs_enable.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 0, ptr %dma_desc_fs_enable.i, align 4
  br label %do.body445.i

do.body445.i:                                     ; preds = %do.end434.i, %land.lhs.true428.i.do.body445.i_crit_edge, %do.body424.i.do.body445.i_crit_edge
  %host_ls_low_power_phy_clk.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 35
  %273 = ptrtoint ptr %host_ls_low_power_phy_clk.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %host_ls_low_power_phy_clk.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool447.not.i = icmp eq i8 %274, 0
  br i1 %tobool447.not.i, label %do.body445.i.do.body467.i_crit_edge, label %land.lhs.true449.i

do.body445.i.do.body467.i_crit_edge:              ; preds = %do.body445.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body467.i

land.lhs.true449.i:                               ; preds = %do.body445.i
  %275 = ptrtoint ptr %phy_type9.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %phy_type9.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %cmp451.i = icmp eq i8 %276, 0
  br i1 %cmp451.i, label %land.lhs.true449.i.do.body467.i_crit_edge, label %do.end456.i

land.lhs.true449.i.do.body467.i_crit_edge:        ; preds = %land.lhs.true449.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body467.i

do.end456.i:                                      ; preds = %land.lhs.true449.i
  call void @__sanitizer_cov_trace_pc() #7
  %277 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %278, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.65, i32 noundef 1) #8
  %279 = ptrtoint ptr %host_ls_low_power_phy_clk.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 0, ptr %host_ls_low_power_phy_clk.i, align 2
  br label %do.body467.i

do.body467.i:                                     ; preds = %do.end456.i, %land.lhs.true449.i.do.body467.i_crit_edge, %do.body445.i.do.body467.i_crit_edge
  %host_channels.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 37
  %280 = ptrtoint ptr %host_channels.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %host_channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %cmp470.i = icmp eq i8 %281, 0
  br i1 %cmp470.i, label %do.body467.i.do.end485.i_crit_edge, label %lor.lhs.false472.i

do.body467.i.do.end485.i_crit_edge:               ; preds = %do.body467.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end485.i

lor.lhs.false472.i:                               ; preds = %do.body467.i
  %conv469.i = zext i8 %281 to i32
  %282 = ptrtoint ptr %hs_phy_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %bf.load477.i = load i32, ptr %hs_phy_type1.i.i, align 4
  %bf.lshr478.i = lshr i32 %bf.load477.i, 16
  %bf.clear479.i = and i32 %bf.lshr478.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear479.i, i32 %conv469.i)
  %cmp480.i = icmp ult i32 %bf.clear479.i, %conv469.i
  br i1 %cmp480.i, label %lor.lhs.false472.i.do.end485.i_crit_edge, label %lor.lhs.false472.i.do.body500.i_crit_edge

lor.lhs.false472.i.do.body500.i_crit_edge:        ; preds = %lor.lhs.false472.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body500.i

lor.lhs.false472.i.do.end485.i_crit_edge:         ; preds = %lor.lhs.false472.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end485.i

do.end485.i:                                      ; preds = %lor.lhs.false472.i.do.end485.i_crit_edge, %do.body467.i.do.end485.i_crit_edge
  %conv489.pre-phi.i = phi i32 [ %conv469.i, %lor.lhs.false472.i.do.end485.i_crit_edge ], [ 0, %do.body467.i.do.end485.i_crit_edge ]
  %283 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %284, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.68, i32 noundef %conv489.pre-phi.i) #8
  %285 = ptrtoint ptr %hs_phy_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %bf.load491.i = load i32, ptr %hs_phy_type1.i.i, align 4
  %bf.lshr492.i = lshr i32 %bf.load491.i, 16
  %286 = trunc i32 %bf.lshr492.i to i8
  %conv494.i = and i8 %286, 31
  %287 = ptrtoint ptr %host_channels.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %conv494.i, ptr %host_channels.i, align 8
  br label %do.body500.i

do.body500.i:                                     ; preds = %do.end485.i, %lor.lhs.false472.i.do.body500.i_crit_edge
  %host_rx_fifo_size.i51 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 38
  %288 = ptrtoint ptr %host_rx_fifo_size.i51 to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %host_rx_fifo_size.i51, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %289)
  %cmp503.i = icmp ult i16 %289, 16
  %.pre903.i = zext i16 %289 to i32
  br i1 %cmp503.i, label %do.body500.i.do.end517.i_crit_edge, label %lor.lhs.false505.i

do.body500.i.do.end517.i_crit_edge:               ; preds = %do.body500.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end517.i

lor.lhs.false505.i:                               ; preds = %do.body500.i
  %290 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %bf.load509.i = load i32, ptr %hw_params.i, align 4
  %bf.lshr510.i = lshr i32 %bf.load509.i, 8
  %bf.clear511.i = and i32 %bf.lshr510.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear511.i, i32 %.pre903.i)
  %cmp512.i = icmp ult i32 %bf.clear511.i, %.pre903.i
  br i1 %cmp512.i, label %lor.lhs.false505.i.do.end517.i_crit_edge, label %lor.lhs.false505.i.do.body531.i_crit_edge

lor.lhs.false505.i.do.body531.i_crit_edge:        ; preds = %lor.lhs.false505.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body531.i

lor.lhs.false505.i.do.end517.i_crit_edge:         ; preds = %lor.lhs.false505.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end517.i

do.end517.i:                                      ; preds = %lor.lhs.false505.i.do.end517.i_crit_edge, %do.body500.i.do.end517.i_crit_edge
  %291 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %292, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.71, i32 noundef %.pre903.i) #8
  %293 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %bf.load522.i = load i32, ptr %hw_params.i, align 4
  %bf.lshr523.i = lshr i32 %bf.load522.i, 8
  %conv525.i = trunc i32 %bf.lshr523.i to i16
  %294 = ptrtoint ptr %host_rx_fifo_size.i51 to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 %conv525.i, ptr %host_rx_fifo_size.i51, align 2
  br label %do.body531.i

do.body531.i:                                     ; preds = %do.end517.i, %lor.lhs.false505.i.do.body531.i_crit_edge
  %host_nperio_tx_fifo_size.i52 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 39
  %295 = ptrtoint ptr %host_nperio_tx_fifo_size.i52 to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %host_nperio_tx_fifo_size.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %296)
  %cmp534.i = icmp ult i16 %296, 16
  %.pre904.i = zext i16 %296 to i32
  br i1 %cmp534.i, label %do.body531.i.do.end548.i_crit_edge, label %lor.lhs.false536.i

do.body531.i.do.end548.i_crit_edge:               ; preds = %do.body531.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end548.i

lor.lhs.false536.i:                               ; preds = %do.body531.i
  %host_nperio_tx_fifo_size540.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 1
  %297 = ptrtoint ptr %host_nperio_tx_fifo_size540.i to i32
  call void @__asan_loadN_noabort(i32 %297, i32 8)
  %bf.load541.i = load i64, ptr %host_nperio_tx_fifo_size540.i, align 4
  %bf.lshr542.i = lshr i64 %bf.load541.i, 48
  %bf.cast.i = trunc i64 %bf.lshr542.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre904.i, i32 %bf.cast.i)
  %cmp543.i = icmp ugt i32 %.pre904.i, %bf.cast.i
  br i1 %cmp543.i, label %lor.lhs.false536.i.do.end548.i_crit_edge, label %lor.lhs.false536.i.do.body563.i_crit_edge

lor.lhs.false536.i.do.body563.i_crit_edge:        ; preds = %lor.lhs.false536.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body563.i

lor.lhs.false536.i.do.end548.i_crit_edge:         ; preds = %lor.lhs.false536.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end548.i

do.end548.i:                                      ; preds = %lor.lhs.false536.i.do.end548.i_crit_edge, %do.body531.i.do.end548.i_crit_edge
  %298 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %299, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.74, i32 noundef %.pre904.i) #8
  %host_nperio_tx_fifo_size553.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 1
  %300 = ptrtoint ptr %host_nperio_tx_fifo_size553.i to i32
  call void @__asan_loadN_noabort(i32 %300, i32 8)
  %bf.load554.i = load i64, ptr %host_nperio_tx_fifo_size553.i, align 4
  %bf.lshr555.i = lshr i64 %bf.load554.i, 48
  %conv557.i = trunc i64 %bf.lshr555.i to i16
  %301 = ptrtoint ptr %host_nperio_tx_fifo_size.i52 to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 %conv557.i, ptr %host_nperio_tx_fifo_size.i52, align 4
  br label %do.body563.i

do.body563.i:                                     ; preds = %do.end548.i, %lor.lhs.false536.i.do.body563.i_crit_edge
  %host_perio_tx_fifo_size.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 40
  %302 = ptrtoint ptr %host_perio_tx_fifo_size.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %host_perio_tx_fifo_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %303)
  %cmp566.i = icmp ult i16 %303, 16
  %.pre905.i = zext i16 %303 to i32
  br i1 %cmp566.i, label %do.body563.i.do.end582.i_crit_edge, label %lor.lhs.false568.i

do.body563.i.do.end582.i_crit_edge:               ; preds = %do.body563.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end582.i

lor.lhs.false568.i:                               ; preds = %do.body563.i
  %host_perio_tx_fifo_size572.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 1
  %304 = ptrtoint ptr %host_perio_tx_fifo_size572.i to i32
  call void @__asan_loadN_noabort(i32 %304, i32 8)
  %bf.load573.i = load i64, ptr %host_perio_tx_fifo_size572.i, align 4
  %305 = trunc i64 %bf.load573.i to i32
  %306 = lshr i32 %305, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %306, i32 %.pre905.i)
  %cmp577.i = icmp ult i32 %306, %.pre905.i
  br i1 %cmp577.i, label %lor.lhs.false568.i.do.end582.i_crit_edge, label %lor.lhs.false568.i.if.end598.i_crit_edge

lor.lhs.false568.i.if.end598.i_crit_edge:         ; preds = %lor.lhs.false568.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end598.i

lor.lhs.false568.i.do.end582.i_crit_edge:         ; preds = %lor.lhs.false568.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end582.i

do.end582.i:                                      ; preds = %lor.lhs.false568.i.do.end582.i_crit_edge, %do.body563.i.do.end582.i_crit_edge
  %307 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %308, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.77, i32 noundef %.pre905.i) #8
  %host_perio_tx_fifo_size587.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 1
  %309 = ptrtoint ptr %host_perio_tx_fifo_size587.i to i32
  call void @__asan_loadN_noabort(i32 %309, i32 8)
  %bf.load588.i = load i64, ptr %host_perio_tx_fifo_size587.i, align 4
  %310 = lshr i64 %bf.load588.i, 16
  %conv592.i = trunc i64 %310 to i16
  %311 = ptrtoint ptr %host_perio_tx_fifo_size.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %conv592.i, ptr %host_perio_tx_fifo_size.i, align 2
  br label %if.end598.i

if.end598.i:                                      ; preds = %do.end582.i, %lor.lhs.false568.i.if.end598.i_crit_edge, %do.end375.i.if.end598.i_crit_edge
  %312 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %dr_mode.i, align 4
  %314 = and i32 %313, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %314)
  %switch.i53 = icmp eq i32 %314, 2
  br i1 %switch.i53, label %do.body607.i, label %if.end598.i.dwc2_check_params.exit_crit_edge

if.end598.i.dwc2_check_params.exit_crit_edge:     ; preds = %if.end598.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_params.exit

do.body607.i:                                     ; preds = %if.end598.i
  %g_dma.i54 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 41
  %315 = ptrtoint ptr %g_dma.i54 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %g_dma.i54, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool609.not.i = icmp eq i8 %316, 0
  %cmp.not.not883.i = xor i1 %cmp.not.i, true
  %brmerge884.i = select i1 %tobool609.not.i, i1 true, i1 %cmp.not.not883.i
  br i1 %brmerge884.i, label %do.body607.i.do.body627.i_crit_edge, label %do.end616.i

do.body607.i.do.body627.i_crit_edge:              ; preds = %do.body607.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body627.i

do.end616.i:                                      ; preds = %do.body607.i
  call void @__sanitizer_cov_trace_pc() #7
  %317 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %318, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.80, i32 noundef 1) #8
  %319 = ptrtoint ptr %g_dma.i54 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 0, ptr %g_dma.i54, align 8
  br label %do.body627.i

do.body627.i:                                     ; preds = %do.end616.i, %do.body607.i.do.body627.i_crit_edge
  %g_dma_desc.i55 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 42
  %320 = ptrtoint ptr %g_dma_desc.i55 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %g_dma_desc.i55, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool629.not.i = icmp eq i8 %321, 0
  br i1 %tobool629.not.i, label %do.body627.i.do.body654.i_crit_edge, label %land.lhs.true631.i

do.body627.i.do.body654.i_crit_edge:              ; preds = %do.body627.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body654.i

land.lhs.true631.i:                               ; preds = %do.body627.i
  %322 = ptrtoint ptr %g_dma.i54 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %g_dma.i54, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool633.not.i = icmp eq i8 %323, 0
  br i1 %tobool633.not.i, label %land.lhs.true631.i.do.end643.i_crit_edge, label %land.lhs.true635.i

land.lhs.true631.i.do.end643.i_crit_edge:         ; preds = %land.lhs.true631.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end643.i

land.lhs.true635.i:                               ; preds = %land.lhs.true631.i
  %324 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %bf.load636.i = load i32, ptr %hw_params.i, align 4
  %325 = and i32 %bf.load636.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %tobool639.not.i = icmp eq i32 %325, 0
  br i1 %tobool639.not.i, label %land.lhs.true635.i.do.end643.i_crit_edge, label %land.lhs.true635.i.do.body654.i_crit_edge

land.lhs.true635.i.do.body654.i_crit_edge:        ; preds = %land.lhs.true635.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body654.i

land.lhs.true635.i.do.end643.i_crit_edge:         ; preds = %land.lhs.true635.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end643.i

do.end643.i:                                      ; preds = %land.lhs.true635.i.do.end643.i_crit_edge, %land.lhs.true631.i.do.end643.i_crit_edge
  %326 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %hsotg, align 8
  %328 = zext i8 %321 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %327, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.83, i32 noundef %328) #8
  %329 = ptrtoint ptr %g_dma_desc.i55 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 0, ptr %g_dma_desc.i55, align 1
  br label %do.body654.i

do.body654.i:                                     ; preds = %do.end643.i, %land.lhs.true635.i.do.body654.i_crit_edge, %do.body627.i.do.body654.i_crit_edge
  %g_rx_fifo_size.i56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 43
  %330 = ptrtoint ptr %g_rx_fifo_size.i56 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %g_rx_fifo_size.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %331)
  %cmp656.i = icmp slt i32 %331, 16
  br i1 %cmp656.i, label %do.body654.i.do.end669.i_crit_edge, label %lor.lhs.false658.i

do.body654.i.do.end669.i_crit_edge:               ; preds = %do.body654.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end669.i

lor.lhs.false658.i:                               ; preds = %do.body654.i
  %332 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %bf.load661.i = load i32, ptr %hw_params.i, align 4
  %bf.lshr662.i = lshr i32 %bf.load661.i, 8
  %bf.clear663.i = and i32 %bf.lshr662.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %331, i32 %bf.clear663.i)
  %cmp664.i = icmp ugt i32 %331, %bf.clear663.i
  br i1 %cmp664.i, label %lor.lhs.false658.i.do.end669.i_crit_edge, label %lor.lhs.false658.i.do.body681.i_crit_edge

lor.lhs.false658.i.do.body681.i_crit_edge:        ; preds = %lor.lhs.false658.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body681.i

lor.lhs.false658.i.do.end669.i_crit_edge:         ; preds = %lor.lhs.false658.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end669.i

do.end669.i:                                      ; preds = %lor.lhs.false658.i.do.end669.i_crit_edge, %do.body654.i.do.end669.i_crit_edge
  %333 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %334, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.86, i32 noundef %331) #8
  %335 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %bf.load673.i = load i32, ptr %hw_params.i, align 4
  %bf.lshr674.i = lshr i32 %bf.load673.i, 8
  %bf.clear675.i = and i32 %bf.lshr674.i, 65535
  %336 = ptrtoint ptr %g_rx_fifo_size.i56 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %bf.clear675.i, ptr %g_rx_fifo_size.i56, align 4
  br label %do.body681.i

do.body681.i:                                     ; preds = %do.end669.i, %lor.lhs.false658.i.do.body681.i_crit_edge
  %g_np_tx_fifo_size.i57 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 44
  %337 = ptrtoint ptr %g_np_tx_fifo_size.i57 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %g_np_tx_fifo_size.i57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %338)
  %cmp683.i = icmp slt i32 %338, 16
  br i1 %cmp683.i, label %do.body681.i.do.end697.i_crit_edge, label %lor.lhs.false685.i

do.body681.i.do.end697.i_crit_edge:               ; preds = %do.body681.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end697.i

lor.lhs.false685.i:                               ; preds = %do.body681.i
  %dev_nperio_tx_fifo_size.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 1
  %339 = ptrtoint ptr %dev_nperio_tx_fifo_size.i to i32
  call void @__asan_loadN_noabort(i32 %339, i32 8)
  %bf.load688.i = load i64, ptr %dev_nperio_tx_fifo_size.i, align 4
  %bf.lshr689.i = lshr i64 %bf.load688.i, 32
  %340 = trunc i64 %bf.lshr689.i to i32
  %bf.cast691.i = and i32 %340, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %338, i32 %bf.cast691.i)
  %cmp692.i = icmp ugt i32 %338, %bf.cast691.i
  br i1 %cmp692.i, label %lor.lhs.false685.i.do.end697.i_crit_edge, label %lor.lhs.false685.i.do.end710.i_crit_edge

lor.lhs.false685.i.do.end710.i_crit_edge:         ; preds = %lor.lhs.false685.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end710.i

lor.lhs.false685.i.do.end697.i_crit_edge:         ; preds = %lor.lhs.false685.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end697.i

do.end697.i:                                      ; preds = %lor.lhs.false685.i.do.end697.i_crit_edge, %do.body681.i.do.end697.i_crit_edge
  %341 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %342, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.89, i32 noundef %338) #8
  %dev_nperio_tx_fifo_size701.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 1
  %343 = ptrtoint ptr %dev_nperio_tx_fifo_size701.i to i32
  call void @__asan_loadN_noabort(i32 %343, i32 8)
  %bf.load702.i = load i64, ptr %dev_nperio_tx_fifo_size701.i, align 4
  %bf.lshr703.i = lshr i64 %bf.load702.i, 32
  %344 = trunc i64 %bf.lshr703.i to i32
  %bf.cast705.i = and i32 %344, 65535
  %345 = ptrtoint ptr %g_np_tx_fifo_size.i57 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %bf.cast705.i, ptr %g_np_tx_fifo_size.i57, align 8
  br label %do.end710.i

do.end710.i:                                      ; preds = %do.end697.i, %lor.lhs.false685.i.do.end710.i_crit_edge
  %call.i.i58 = tail call i32 @dwc2_hsotg_tx_fifo_count(ptr noundef %hsotg) #5
  %346 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %bf.load.i897.i = load i32, ptr %hw_params.i, align 8
  %347 = and i32 %bf.load.i897.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %tobool.not.i898.i = icmp eq i32 %347, 0
  %cond.i.i59 = select i1 %tobool.not.i898.i, i32 4, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i58)
  %cmp.not60.i.i = icmp slt i32 %call.i.i58, 1
  br i1 %cmp.not60.i.i, label %for.end.thread.i.i, label %do.end710.i.for.body.i.i62_crit_edge

do.end710.i.for.body.i.i62_crit_edge:             ; preds = %do.end710.i
  br label %for.body.i.i62

for.end.thread.i.i:                               ; preds = %do.end710.i
  call void @__sanitizer_cov_trace_pc() #7
  %call167.i.i = tail call i32 @dwc2_hsotg_tx_fifo_total_depth(ptr noundef %hsotg) #5
  br label %do.end.i.i

for.body.i.i62:                                   ; preds = %for.body.i.i62.for.body.i.i62_crit_edge, %do.end710.i.for.body.i.i62_crit_edge
  %total.062.i.i = phi i32 [ %add.i.i, %for.body.i.i62.for.body.i.i62_crit_edge ], [ 0, %do.end710.i.for.body.i.i62_crit_edge ]
  %fifo.061.i.i = phi i32 [ %inc.i.i61, %for.body.i.i62.for.body.i.i62_crit_edge ], [ 1, %do.end710.i.for.body.i.i62_crit_edge ]
  %arrayidx.i.i60 = getelementptr %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 45, i32 %fifo.061.i.i
  %348 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx.i.i60, align 4
  %add.i.i = add i32 %349, %total.062.i.i
  %inc.i.i61 = add i32 %fifo.061.i.i, 1
  %cmp.not.i899.i = icmp sgt i32 %inc.i.i61, %call.i.i58
  br i1 %cmp.not.i899.i, label %for.end.i.i, label %for.body.i.i62.for.body.i.i62_crit_edge

for.body.i.i62.for.body.i.i62_crit_edge:          ; preds = %for.body.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i62

for.end.i.i:                                      ; preds = %for.body.i.i62
  %phi.bo.i.i = add i32 %add.i.i, -1
  %call1.i.i63 = tail call i32 @dwc2_hsotg_tx_fifo_total_depth(ptr noundef %hsotg) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %phi.bo.i.i, i32 %call1.i.i63)
  %.not.i.i = icmp ult i32 %phi.bo.i.i, %call1.i.i63
  br i1 %.not.i.i, label %for.end.i.i.if.end.i.i_crit_edge, label %for.end.i.i.do.end.i.i_crit_edge

for.end.i.i.do.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

for.end.i.i.if.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %for.end.i.i.do.end.i.i_crit_edge, %for.end.thread.i.i
  %350 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %351, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #8
  %call.i.i.i = tail call i32 @dwc2_hsotg_tx_fifo_count(ptr noundef %hsotg) #5
  %g_tx_fifo_size.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 45
  %352 = call ptr @memset(ptr %g_tx_fifo_size.i.i.i, i32 0, i32 64)
  %call1.i.i.i = tail call i32 @dwc2_hsotg_tx_fifo_average_depth(ptr noundef %hsotg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not8.i.i.i = icmp slt i32 %call.i.i.i, 1
  br i1 %cmp.not8.i.i.i, label %do.end.i.i.if.end.i.i_crit_edge, label %do.end.i.i.for.body.i.i.i_crit_edge

do.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %for.body.i.i.i

do.end.i.i.if.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.for.body.i.i.i_crit_edge
  %i.09.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %do.end.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 45, i32 %i.09.i.i.i
  %353 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %call1.i.i.i, ptr %arrayidx.i.i.i, align 4
  %inc.i.i.i = add i32 %i.09.i.i.i, 1
  %cmp.not.i.i.i = icmp sgt i32 %inc.i.i.i, %call.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.if.end.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.body.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.i.if.end.i.i_crit_edge, %do.end.i.i.if.end.i.i_crit_edge, %for.end.i.i.if.end.i.i_crit_edge
  br i1 %cmp.not60.i.i, label %if.end.i.i.dwc2_check_params.exit_crit_edge, label %if.end.i.i.for.body6.i.i_crit_edge

if.end.i.i.for.body6.i.i_crit_edge:               ; preds = %if.end.i.i
  br label %for.body6.i.i

if.end.i.i.dwc2_check_params.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_params.exit

for.body6.i.i:                                    ; preds = %for.inc31.i.i.for.body6.i.i_crit_edge, %if.end.i.i.for.body6.i.i_crit_edge
  %fifo.164.i.i = phi i32 [ %inc32.i.i, %for.inc31.i.i.for.body6.i.i_crit_edge ], [ 1, %if.end.i.i.for.body6.i.i_crit_edge ]
  %arrayidx9.i.i = getelementptr %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 7, i32 %fifo.164.i.i
  %354 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx12.i.i = getelementptr %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 45, i32 %fifo.164.i.i
  %356 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %357, i32 %cond.i.i59)
  %cmp13.i.i = icmp ult i32 %357, %cond.i.i59
  call void @__sanitizer_cov_trace_cmp4(i32 %357, i32 %355)
  %cmp18.i.i = icmp ugt i32 %357, %355
  %or.cond59.i.i = select i1 %cmp13.i.i, i1 true, i1 %cmp18.i.i
  br i1 %or.cond59.i.i, label %do.end22.i.i, label %for.body6.i.i.for.inc31.i.i_crit_edge

for.body6.i.i.for.inc31.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc31.i.i

do.end22.i.i:                                     ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %358 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %359, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, i32 noundef %fifo.164.i.i, i32 noundef %357) #8
  %360 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %355, ptr %arrayidx12.i.i, align 4
  br label %for.inc31.i.i

for.inc31.i.i:                                    ; preds = %do.end22.i.i, %for.body6.i.i.for.inc31.i.i_crit_edge
  %inc32.i.i = add i32 %fifo.164.i.i, 1
  %cmp5.not.i.i = icmp sgt i32 %inc32.i.i, %call.i.i58
  br i1 %cmp5.not.i.i, label %for.inc31.i.i.dwc2_check_params.exit_crit_edge, label %for.inc31.i.i.for.body6.i.i_crit_edge

for.inc31.i.i.for.body6.i.i_crit_edge:            ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.i.i

for.inc31.i.i.dwc2_check_params.exit_crit_edge:   ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_check_params.exit

dwc2_check_params.exit:                           ; preds = %for.inc31.i.i.dwc2_check_params.exit_crit_edge, %if.end.i.i.dwc2_check_params.exit_crit_edge, %if.end598.i.dwc2_check_params.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_force_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_tx_fifo_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_tx_fifo_average_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_update_otg_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_check_param_power_down(ptr nocapture noundef %hsotg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %0 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_down, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %1, label %do.end36 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %power_optimized = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %power_optimized to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %power_optimized, align 4
  %4 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_check_param_power_down.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_check_param_power_down, %sw.epilog)) #5
          to label %if.then5 [label %sw.epilog], !srcloc !163

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_check_param_power_down.__UNIQUE_ID_ddebug295, ptr noundef %6, ptr noundef nonnull @.str.92) #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %hibernation = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %hibernation to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load9 = load i32, ptr %hibernation, align 4
  %8 = and i32 %bf.load9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %do.body15, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body15:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_check_param_power_down.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_check_param_power_down, %sw.epilog)) #5
          to label %if.then29 [label %sw.epilog], !srcloc !163

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_check_param_power_down.__UNIQUE_ID_ddebug296, ptr noundef %10, ptr noundef nonnull @.str.93) #5
  br label %sw.epilog

do.end36:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.91, i32 noundef %1) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end36, %if.then29, %do.body15, %sw.bb7.sw.epilog_crit_edge, %if.then5, %do.body, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %param.0 = phi i32 [ 0, %do.end36 ], [ 2, %sw.bb7.sw.epilog_crit_edge ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ %1, %entry.sw.epilog_crit_edge ], [ 0, %if.then5 ], [ 0, %if.then29 ], [ 0, %do.body ], [ 0, %do.body15 ]
  %13 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %param.0, ptr %power_down, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_tx_fifo_total_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @dwc2_of_match_table, !1, !"dwc2_of_match_table", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc2/params.c", i32 214, i32 27}
!2 = !{ptr @dwc2_acpi_match, !3, !"dwc2_acpi_match", i1 false, i1 false}
!3 = !{!"../drivers/usb/dwc2/params.c", i32 246, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/dwc2/params.c", i32 202, i32 75}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/dwc2/params.c", i32 459, i32 40}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc2/params.c", i32 462, i32 40}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc2/params.c", i32 465, i32 47}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc2/params.c", i32 479, i32 44}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/dwc2/params.c", i32 685, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dwc2_check_params._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dwc2_check_params._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dwc2_check_params._entry.11, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/usb/dwc2/params.c", i32 686, i32 2}
!25 = !{ptr @dwc2_check_params._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dwc2_check_params._entry.14, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/usb/dwc2/params.c", i32 687, i32 2}
!29 = !{ptr @dwc2_check_params._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dwc2_check_params._entry.17, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/usb/dwc2/params.c", i32 688, i32 2}
!33 = !{ptr @dwc2_check_params._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dwc2_check_params._entry.20, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/usb/dwc2/params.c", i32 689, i32 2}
!37 = !{ptr @dwc2_check_params._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dwc2_check_params._entry.23, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/usb/dwc2/params.c", i32 690, i32 2}
!41 = !{ptr @dwc2_check_params._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @dwc2_check_params._entry.26, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/usb/dwc2/params.c", i32 691, i32 2}
!45 = !{ptr @dwc2_check_params._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dwc2_check_params._entry.29, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/usb/dwc2/params.c", i32 692, i32 2}
!49 = !{ptr @dwc2_check_params._entry_ptr.30, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @dwc2_check_params._entry.31, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc2/params.c", i32 693, i32 2}
!52 = !{ptr @dwc2_check_params._entry_ptr.32, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dwc2_check_params._entry.34, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc2/params.c", i32 694, i32 2}
!56 = !{ptr @dwc2_check_params._entry_ptr.35, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dwc2_check_params._entry.37, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/usb/dwc2/params.c", i32 695, i32 2}
!60 = !{ptr @dwc2_check_params._entry_ptr.38, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @dwc2_check_params._entry.39, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/usb/dwc2/params.c", i32 696, i32 2}
!63 = !{ptr @dwc2_check_params._entry_ptr.40, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dwc2_check_params._entry.42, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/usb/dwc2/params.c", i32 697, i32 2}
!67 = !{ptr @dwc2_check_params._entry_ptr.43, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.44, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @dwc2_check_params._entry.45, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/usb/dwc2/params.c", i32 698, i32 2}
!71 = !{ptr @dwc2_check_params._entry_ptr.46, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.47, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @dwc2_check_params._entry.48, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/usb/dwc2/params.c", i32 699, i32 2}
!75 = !{ptr @dwc2_check_params._entry_ptr.49, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.50, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @dwc2_check_params._entry.51, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/usb/dwc2/params.c", i32 702, i32 2}
!79 = !{ptr @dwc2_check_params._entry_ptr.52, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.53, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @dwc2_check_params._entry.54, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/usb/dwc2/params.c", i32 708, i32 3}
!83 = !{ptr @dwc2_check_params._entry_ptr.55, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.56, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dwc2_check_params._entry.57, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/usb/dwc2/params.c", i32 709, i32 3}
!87 = !{ptr @dwc2_check_params._entry_ptr.58, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.59, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @dwc2_check_params._entry.60, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/usb/dwc2/params.c", i32 710, i32 3}
!91 = !{ptr @dwc2_check_params._entry_ptr.61, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.62, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @dwc2_check_params._entry.63, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/usb/dwc2/params.c", i32 711, i32 3}
!95 = !{ptr @dwc2_check_params._entry_ptr.64, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.65, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @dwc2_check_params._entry.66, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/usb/dwc2/params.c", i32 713, i32 3}
!99 = !{ptr @dwc2_check_params._entry_ptr.67, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.68, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @dwc2_check_params._entry.69, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/usb/dwc2/params.c", i32 716, i32 3}
!103 = !{ptr @dwc2_check_params._entry_ptr.70, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.71, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dwc2_check_params._entry.72, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/usb/dwc2/params.c", i32 719, i32 3}
!107 = !{ptr @dwc2_check_params._entry_ptr.73, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.74, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @dwc2_check_params._entry.75, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/usb/dwc2/params.c", i32 722, i32 3}
!111 = !{ptr @dwc2_check_params._entry_ptr.76, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.77, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @dwc2_check_params._entry.78, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/usb/dwc2/params.c", i32 729, i32 3}
!115 = !{ptr @dwc2_check_params._entry_ptr.79, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.80, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @dwc2_check_params._entry.81, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/usb/dwc2/params.c", i32 730, i32 3}
!119 = !{ptr @dwc2_check_params._entry_ptr.82, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.83, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @dwc2_check_params._entry.84, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/usb/dwc2/params.c", i32 731, i32 3}
!123 = !{ptr @dwc2_check_params._entry_ptr.85, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.86, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @dwc2_check_params._entry.87, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/usb/dwc2/params.c", i32 734, i32 3}
!127 = !{ptr @dwc2_check_params._entry_ptr.88, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.89, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.90, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/dwc2/params.c", i32 602, i32 3}
!131 = !{ptr @.str.91, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.92, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @dwc2_check_param_power_down.__UNIQUE_ID_ddebug295, !130, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!134 = !{ptr @.str.93, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/dwc2/params.c", i32 609, i32 3}
!136 = !{ptr @dwc2_check_param_power_down.__UNIQUE_ID_ddebug296, !135, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!137 = !{ptr @.str.94, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/dwc2/params.c", i32 614, i32 3}
!139 = !{ptr @.str.95, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @dwc2_check_param_power_down._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @dwc2_check_param_power_down._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.96, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/dwc2/params.c", i32 639, i32 3}
!144 = !{ptr @.str.97, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @dwc2_check_param_tx_fifo_sizes._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @dwc2_check_param_tx_fifo_sizes._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.99, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/dwc2/params.c", i32 649, i32 4}
!149 = !{ptr @dwc2_check_param_tx_fifo_sizes._entry.98, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @dwc2_check_param_tx_fifo_sizes._entry_ptr.100, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 6063891}
!161 = !{i64 2155931972}
!162 = !{i8 0, i8 2}
!163 = !{i64 2148716843, i64 2148716848, i64 2148716861, i64 2148716905, i64 2148716939, i64 2148716960}
