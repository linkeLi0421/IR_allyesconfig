; ModuleID = '/llk/IR_all_yes/drivers/fpga/altera-cvp.c_pt.bc'
source_filename = "../drivers/fpga/altera-cvp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cvp_priv = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.fpga_manager_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.altera_cvp_conf = type { ptr, ptr, ptr, ptr, [64 x i8], i8, i32, i32, ptr }
%struct.fpga_manager = type { ptr, %struct.device, %struct.mutex, i32, ptr, ptr, ptr }

@altera_cvp_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @altera_cvp_id_tbl, ptr @altera_cvp_probe, ptr @altera_cvp_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@driver_attr_chkcfg = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chkcfg_show, ptr @chkcfg_store }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_altera_cvp__238_713_altera_cvp_init6 = internal global ptr @altera_cvp_init, section ".initcall6.init", align 4
@__exitcall_altera_cvp_exit = internal global ptr @altera_cvp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [40 x i8] c"altera_cvp.file=drivers/fpga/altera-cvp\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [26 x i8] c"altera_cvp.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [53 x i8] c"altera_cvp.author=Anatolij Gustschin <agust@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [59 x i8] c"altera_cvp.description=Module to load Altera FPGA over CvP\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"altera-cvp\00", [21 x i8] zeroinitializer }, align 32
@altera_cvp_id_tbl = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4466, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@altera_cvp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No Vendor Specific Offset.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"altera_cvp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/fpga/altera-cvp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@altera_cvp_probe._entry_ptr = internal global ptr @altera_cvp_probe._entry, section ".printk_index", align 4
@altera_cvp_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 599, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Wrong EXT_CAP_ID value 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@altera_cvp_probe._entry_ptr.8 = internal global ptr @altera_cvp_probe._entry.6, section ".printk_index", align 4
@altera_cvp_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 607, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"CVP is disabled for this device: CVP_STATUS Reg 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@altera_cvp_probe._entry_ptr.11 = internal global ptr @altera_cvp_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CVP\00", [28 x i8] zeroinitializer }, align 32
@altera_cvp_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Requesting CVP BAR region failed\0A\00", [62 x i8] zeroinitializer }, align 32
@altera_cvp_probe._entry_ptr.15 = internal global ptr @altera_cvp_probe._entry.13, section ".printk_index", align 4
@cvp_priv_v1 = internal constant { %struct.cvp_priv, [40 x i8] } { %struct.cvp_priv { ptr @altera_cvp_dummy_write, ptr null, ptr null, i32 4, i32 10, i32 2000 }, [40 x i8] zeroinitializer }, align 32
@cvp_priv_v2 = internal constant { %struct.cvp_priv, [40 x i8] } { %struct.cvp_priv { ptr null, ptr @altera_cvp_v2_clear_state, ptr @altera_cvp_v2_wait_for_credit, i32 4096, i32 1000000, i32 500000 }, [40 x i8] zeroinitializer }, align 32
@altera_cvp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 648, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mapping CVP BAR failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@altera_cvp_probe._entry_ptr.19 = internal global ptr @altera_cvp_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s @%s\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Altera CvP FPGA Manager\00", [40 x i8] zeroinitializer }, align 32
@altera_cvp_ops = internal constant { %struct.fpga_manager_ops, [60 x i8] } { %struct.fpga_manager_ops { i32 0, ptr @altera_cvp_state, ptr null, ptr @altera_cvp_write_init, ptr @altera_cvp_write, ptr null, ptr @altera_cvp_write_complete, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@altera_cvp_v2_clear_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error reading CVP Program Control Register\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"altera_cvp_v2_clear_state\00", [38 x i8] zeroinitializer }, align 32
@altera_cvp_v2_clear_state._entry_ptr = internal global ptr @altera_cvp_v2_clear_state._entry, section ".printk_index", align 4
@altera_cvp_v2_clear_state._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error writing CVP Program Control Register\0A\00", [52 x i8] zeroinitializer }, align 32
@altera_cvp_v2_clear_state._entry_ptr.26 = internal global ptr @altera_cvp_v2_clear_state._entry.24, section ".printk_index", align 4
@altera_cvp_v2_wait_for_credit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error reading CVP Credit Register\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"altera_cvp_v2_wait_for_credit\00", [34 x i8] zeroinitializer }, align 32
@altera_cvp_v2_wait_for_credit._entry_ptr = internal global ptr @altera_cvp_v2_wait_for_credit._entry, section ".printk_index", align 4
@altera_cvp_v2_wait_for_credit._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CE Bit error credit reg[0x%x]:sent[0x%x]\0A\00", [54 x i8] zeroinitializer }, align 32
@altera_cvp_v2_wait_for_credit._entry_ptr.31 = internal global ptr @altera_cvp_v2_wait_for_credit._entry.29, section ".printk_index", align 4
@altera_cvp_v2_wait_for_credit._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Timeout waiting for credit\0A\00", [36 x i8] zeroinitializer }, align 32
@altera_cvp_v2_wait_for_credit._entry_ptr.34 = internal global ptr @altera_cvp_v2_wait_for_credit._entry.32, section ".printk_index", align 4
@altera_cvp_chk_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CVP_CONFIG_ERROR after %zu bytes!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"altera_cvp_chk_error\00", [43 x i8] zeroinitializer }, align 32
@altera_cvp_chk_error._entry_ptr = internal global ptr @altera_cvp_chk_error._entry, section ".printk_index", align 4
@altera_cvp_write_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Partial reconfiguration not supported.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"altera_cvp_write_init\00", [42 x i8] zeroinitializer }, align 32
@altera_cvp_write_init._entry_ptr = internal global ptr @altera_cvp_write_init._entry, section ".printk_index", align 4
@altera_cvp_write_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CVP mode off: 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@altera_cvp_write_init._entry_ptr.41 = internal global ptr @altera_cvp_write_init._entry.39, section ".printk_index", align 4
@altera_cvp_write_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 349, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CvP already started, tear down first\0A\00", [58 x i8] zeroinitializer }, align 32
@altera_cvp_write_init._entry_ptr.44 = internal global ptr @altera_cvp_write_init._entry.42, section ".printk_index", align 4
@altera_cvp_write_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Problem clearing out state\0A\00", [36 x i8] zeroinitializer }, align 32
@altera_cvp_write_init._entry_ptr.47 = internal global ptr @altera_cvp_write_init._entry.45, section ".printk_index", align 4
@altera_cvp_write_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.3, i32 397, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CFG_RDY == 1 timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@altera_cvp_write_init._entry_ptr.50 = internal global ptr @altera_cvp_write_init._entry.48, section ".printk_index", align 4
@altera_cvp_chkcfg = internal global { i8, [31 x i8] } zeroinitializer, align 32
@altera_cvp_write_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.3, i32 411, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@altera_cvp_write_init._entry_ptr.52 = internal global ptr @altera_cvp_write_init._entry.51, section ".printk_index", align 4
@altera_cvp_teardown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CFG_RDY == 0 timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"altera_cvp_teardown\00", [44 x i8] zeroinitializer }, align 32
@altera_cvp_teardown._entry_ptr = internal global ptr @altera_cvp_teardown._entry, section ".printk_index", align 4
@altera_cvp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wait Credit ERR: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"altera_cvp_write\00", [47 x i8] zeroinitializer }, align 32
@altera_cvp_write._entry_ptr = internal global ptr @altera_cvp_write._entry, section ".printk_index", align 4
@altera_cvp_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"detected CVP_CONFIG_ERROR_LATCHED!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"altera_cvp_write_complete\00", [38 x i8] zeroinitializer }, align 32
@altera_cvp_write_complete._entry_ptr = internal global ptr @altera_cvp_write_complete._entry, section ".printk_index", align 4
@altera_cvp_write_complete._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 513, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PLD_CLK_IN_USE|USERMODE timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@altera_cvp_write_complete._entry_ptr.61 = internal global ptr @altera_cvp_write_complete._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chkcfg\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"altera_cvp\00", [21 x i8] zeroinitializer }, align 32
@altera_cvp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014Can't create sysfs chkcfg file\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"altera_cvp_init\00", [16 x i8] zeroinitializer }, align 32
@altera_cvp_init._entry_ptr = internal global ptr @altera_cvp_init._entry, section ".printk_index", align 4
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"altera_cvp_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 569, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"driver_attr_chkcfg\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 570, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"altera_cvp_id_tbl\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 563, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 588, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 599, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 605, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 632, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 634, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"cvp_priv_v1\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 525, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"cvp_priv_v2\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 532, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 648, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 652, i32 51 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 653, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"altera_cvp_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 518, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 212, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 220, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 240, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 251, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 261, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 191, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 329, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 344, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 349, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 379, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 397, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"altera_cvp_chkcfg\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 70, i32 13 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 411, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 313, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 449, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 498, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 513, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 557, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 542, i32 26 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 695, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [29 x i8] c"../drivers/fpga/altera-cvp.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 702, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_altera_cvp_exit, ptr @__initcall__kmod_altera_cvp__238_713_altera_cvp_init6, ptr @altera_cvp_chk_error._entry, ptr @altera_cvp_chk_error._entry_ptr, ptr @altera_cvp_exit, ptr @altera_cvp_init._entry, ptr @altera_cvp_init._entry_ptr, ptr @altera_cvp_probe._entry, ptr @altera_cvp_probe._entry.13, ptr @altera_cvp_probe._entry.16, ptr @altera_cvp_probe._entry.6, ptr @altera_cvp_probe._entry.9, ptr @altera_cvp_probe._entry_ptr, ptr @altera_cvp_probe._entry_ptr.11, ptr @altera_cvp_probe._entry_ptr.15, ptr @altera_cvp_probe._entry_ptr.19, ptr @altera_cvp_probe._entry_ptr.8, ptr @altera_cvp_teardown._entry, ptr @altera_cvp_teardown._entry_ptr, ptr @altera_cvp_v2_clear_state._entry, ptr @altera_cvp_v2_clear_state._entry.24, ptr @altera_cvp_v2_clear_state._entry_ptr, ptr @altera_cvp_v2_clear_state._entry_ptr.26, ptr @altera_cvp_v2_wait_for_credit._entry, ptr @altera_cvp_v2_wait_for_credit._entry.29, ptr @altera_cvp_v2_wait_for_credit._entry.32, ptr @altera_cvp_v2_wait_for_credit._entry_ptr, ptr @altera_cvp_v2_wait_for_credit._entry_ptr.31, ptr @altera_cvp_v2_wait_for_credit._entry_ptr.34, ptr @altera_cvp_write._entry, ptr @altera_cvp_write._entry_ptr, ptr @altera_cvp_write_complete._entry, ptr @altera_cvp_write_complete._entry.59, ptr @altera_cvp_write_complete._entry_ptr, ptr @altera_cvp_write_complete._entry_ptr.61, ptr @altera_cvp_write_init._entry, ptr @altera_cvp_write_init._entry.39, ptr @altera_cvp_write_init._entry.42, ptr @altera_cvp_write_init._entry.45, ptr @altera_cvp_write_init._entry.48, ptr @altera_cvp_write_init._entry.51, ptr @altera_cvp_write_init._entry_ptr, ptr @altera_cvp_write_init._entry_ptr.41, ptr @altera_cvp_write_init._entry_ptr.44, ptr @altera_cvp_write_init._entry_ptr.47, ptr @altera_cvp_write_init._entry_ptr.50, ptr @altera_cvp_write_init._entry_ptr.52, ptr @altera_cvp_driver, ptr @driver_attr_chkcfg, ptr @.str, ptr @altera_cvp_id_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @cvp_priv_v1, ptr @cvp_priv_v2, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @altera_cvp_ops, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @altera_cvp_chkcfg, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_chkcfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_id_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvp_priv_v1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvp_priv_v2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_v2_clear_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_v2_clear_state._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_v2_wait_for_credit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_v2_wait_for_credit._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_v2_wait_for_credit._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_chk_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_write_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_write_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_write_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_write_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_write_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_chkcfg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_write_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_teardown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_write_complete._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_cvp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altera_cvp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_remove_file(ptr noundef getelementptr inbounds (%struct.pci_driver, ptr @altera_cvp_driver, i32 0, i32 14), ptr noundef nonnull @driver_attr_chkcfg) #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @altera_cvp_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_cvp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @altera_cvp_driver, ptr noundef null, ptr noundef nonnull @.str.64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @driver_create_file(ptr noundef getelementptr inbounds (%struct.pci_driver, ptr @altera_cvp_driver, i32 0, i32 14), ptr noundef nonnull @driver_attr_chkcfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_cvp_probe(ptr noundef %pdev, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  %cmd = alloca i16, align 2
  %val = alloca i16, align 2
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #8
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd, align 2, !annotation !147
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %val, align 2, !annotation !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !147
  %call = tail call zeroext i16 @pci_find_next_ext_capability(ptr noundef %pdev, i16 noundef zeroext 0, i32 noundef 11) #8
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %conv, ptr noundef nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %4)
  %cmp.not = icmp eq i16 %4, 11
  br i1 %cmp.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv2 = zext i16 %4 to i32
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.7, i32 noundef %conv2) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add11 = add nuw nsw i32 %conv, 28
  %call12 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add11, ptr noundef nonnull %regval) #8
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %and = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.10, i32 noundef %6) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev18, i32 noundef 96, i32 noundef 3520) #8
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %vsec_offset = getelementptr inbounds %struct.altera_cvp_conf, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %vsec_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %vsec_offset, align 4
  %call25 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %cmd) #8
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmd, align 2
  %10 = and i16 %9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool28.not = icmp eq i16 %10, 0
  br i1 %tobool28.not, label %if.then29, label %if.end24.if.end33_crit_edge

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i16 %9, 2
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %or, ptr %cmd, align 2
  %call32 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 4, i16 noundef zeroext %or) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end24.if.end33_crit_edge
  %call34 = call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull @.str.12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.14) #11
  br label %err_disable

if.end41:                                         ; preds = %if.end33
  %pci_dev = getelementptr inbounds %struct.altera_cvp_conf, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pci_dev, align 4
  %write_data = getelementptr inbounds %struct.altera_cvp_conf, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %write_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @altera_cvp_write_data_iomem, ptr %write_data, align 4
  %14 = ptrtoint ptr %vsec_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsec_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp43 = icmp eq i32 %15, 512
  %spec.select = select i1 %cmp43, ptr @cvp_priv_v1, ptr @cvp_priv_v2
  %16 = getelementptr inbounds %struct.altera_cvp_conf, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select, ptr %16, align 4
  %call48 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #8
  %map = getelementptr inbounds %struct.altera_cvp_conf, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call48, ptr %map, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %do.end54, label %if.end41.if.end57_crit_edge

if.end41.if.end57_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

do.end54:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.17) #11
  %19 = ptrtoint ptr %write_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @altera_cvp_write_data_config, ptr %write_data, align 4
  br label %if.end57

if.end57:                                         ; preds = %do.end54, %if.end41.if.end57_crit_edge
  %mgr_name = getelementptr inbounds %struct.altera_cvp_conf, ptr %call.i, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end57.pci_name.exit_crit_edge

if.end57.pci_name.exit_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev18, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end57.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.end57.pci_name.exit_crit_edge ]
  %call59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %mgr_name, i32 noundef 64, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i)
  %call63 = call ptr @fpga_mgr_register(ptr noundef %dev18, ptr noundef %mgr_name, ptr noundef nonnull @altera_cvp_ops, ptr noundef nonnull %call.i) #8
  %cmp.i = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then65, label %if.end67

if.then65:                                        ; preds = %pci_name.exit
  %24 = ptrtoint ptr %call63 to i32
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 4
  %tobool69.not = icmp eq ptr %26, null
  br i1 %tobool69.not, label %if.then65.if.end72_crit_edge, label %if.then70

if.then65.if.end72_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end67:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call63, ptr %driver_data.i.i, align 4
  br label %cleanup

if.then70:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %26) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then65.if.end72_crit_edge
  call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #8
  br label %err_disable

err_disable:                                      ; preds = %if.end72, %do.end39
  %ret.0 = phi i32 [ %call34, %do.end39 ], [ %24, %if.end72 ]
  %28 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cmd, align 2
  %30 = and i16 %29, -3
  store i16 %30, ptr %cmd, align 2
  %call76 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 4, i16 noundef zeroext %30) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable, %if.end67, %if.end19.cleanup_crit_edge, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end7 ], [ %ret.0, %err_disable ], [ 0, %if.end67 ], [ -19, %do.end17 ], [ -19, %do.end ], [ -12, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_cvp_remove(ptr noundef %pdev) #2 align 64 {
entry:
  %cmd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #8
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %cmd, align 2, !annotation !147
  tail call void @fpga_mgr_unregister(ptr noundef %1) #8
  %map = getelementptr inbounds %struct.altera_cvp_conf, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #8
  %call2 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %cmd) #8
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cmd, align 2
  %9 = and i16 %8, -3
  store i16 %9, ptr %cmd, align 2
  %call4 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 4, i16 noundef zeroext %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_next_ext_capability(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_cvp_write_data_iomem(ptr nocapture noundef readonly %conf, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %map = getelementptr inbounds %struct.altera_cvp_conf, ptr %conf, i32 0, i32 2
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #8, !srcloc !149
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_cvp_write_data_config(ptr nocapture noundef readonly %conf, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.altera_cvp_conf, ptr %conf, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %vsec_offset = getelementptr inbounds %struct.altera_cvp_conf, ptr %conf, i32 0, i32 7
  %2 = ptrtoint ptr %vsec_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsec_offset, align 4
  %add = add i32 %3, 40
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add, i32 noundef %val) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fpga_mgr_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_cvp_dummy_write(ptr noundef %conf) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !147
  %pci_dev.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %conf, i32 0, i32 1
  %1 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev.i, align 4
  %vsec_offset.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %conf, i32 0, i32 7
  %3 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vsec_offset.i, align 4
  %add.i = add i32 %4, 32
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %val) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, -65281
  %or = or i32 %and, 256
  store i32 %or, ptr %val, align 4
  %7 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev.i, align 4
  %9 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vsec_offset.i, align 4
  %add.i8 = add i32 %10, 32
  %call.i9 = call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef %add.i8, i32 noundef %or) #8
  %write_data = getelementptr inbounds %struct.altera_cvp_conf, ptr %conf, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %write_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_data, align 4
  call void %12(ptr noundef %conf, i32 noundef 0) #8
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 244
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_cvp_v2_clear_state(ptr nocapture noundef readonly %conf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !147
  %pci_dev.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %conf, i32 0, i32 1
  %1 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev.i, align 4
  %vsec_offset.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %conf, i32 0, i32 7
  %3 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vsec_offset.i, align 4
  %add.i = add i32 %4, 44
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, -4
  store i32 %and, ptr %val, align 4
  %9 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev.i, align 4
  %11 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsec_offset.i, align 4
  %add.i22 = add i32 %12, 44
  %call.i23 = call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef %add.i22, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool2.not = icmp eq i32 %call.i23, 0
  br i1 %tobool2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev.i, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.25) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.altera_cvp_conf, ptr %conf, i32 0, i32 8
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %poll_time_us = getelementptr inbounds %struct.cvp_priv, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %poll_time_us to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %poll_time_us, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i, align 4, !annotation !147
  %.frozen = freeze i32 %18
  %div.i = sdiv i32 %.frozen, 10
  %20 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %.frozen, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp ne i32 %rem.i.decomposed, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add nsw i32 %div.i, %inc.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end2.i.do.body.i_crit_edge, %if.end9
  %retries.1.i = phi i32 [ %spec.select.i, %if.end9 ], [ %dec.i, %if.end2.i.do.body.i_crit_edge ]
  %21 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev.i, align 4
  %23 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vsec_offset.i, align 4
  %add.i.i = add i32 %24, 28
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %22, i32 noundef %add.i.i, ptr noundef nonnull %val.i) #8
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i, align 4
  %and.i = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body.i.altera_cvp_wait_status.exit_crit_edge, label %if.end2.i

do.body.i.altera_cvp_wait_status.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %altera_cvp_wait_status.exit

if.end2.i:                                        ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #8
  %dec.i = add i32 %retries.1.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %if.end2.i.altera_cvp_wait_status.exit_crit_edge, label %if.end2.i.do.body.i_crit_edge

if.end2.i.do.body.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end2.i.altera_cvp_wait_status.exit_crit_edge:  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %altera_cvp_wait_status.exit

altera_cvp_wait_status.exit:                      ; preds = %if.end2.i.altera_cvp_wait_status.exit_crit_edge, %do.body.i.altera_cvp_wait_status.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i.altera_cvp_wait_status.exit_crit_edge ], [ -110, %if.end2.i.altera_cvp_wait_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

cleanup:                                          ; preds = %altera_cvp_wait_status.exit, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i23, %do.end6 ], [ %retval.0.i, %altera_cvp_wait_status.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_cvp_v2_wait_for_credit(ptr noundef %mgr, i32 noundef %blocks) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !147
  %pci_dev.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 1
  %vsec_offset.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 7
  %sent_packets = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 2000, %entry ], [ %dec, %if.end17.do.body_crit_edge ]
  %3 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev.i, align 4
  %5 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsec_offset.i, align 4
  %add.i = add i32 %6, 73
  %call.i = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %do.body
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %11 = ptrtoint ptr %sent_packets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sent_packets, align 4
  %13 = trunc i32 %12 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %13)
  %tobool4.not = icmp eq i8 %10, %13
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !147
  %pci_dev.i.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev.i.i, align 4
  %vsec_offset.i.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %15, i32 0, i32 7
  %19 = ptrtoint ptr %vsec_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vsec_offset.i.i, align 4
  %add.i.i = add i32 %20, 28
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %18, i32 noundef %add.i.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end6.do.end12_crit_edge

if.end6.do.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

lor.lhs.false.i:                                  ; preds = %if.end6
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %and.i = and i32 %22, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end17, label %lor.lhs.false.i.do.end12_crit_edge

lor.lhs.false.i.do.end12_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false.i.do.end12_crit_edge, %if.end6.do.end12_crit_edge
  %mul.le = shl i32 %blocks, 12
  %dev.i = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35, i32 noundef %mul.le) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %23 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev.i, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val, align 1
  %conv15 = zext i8 %26 to i32
  %27 = ptrtoint ptr %sent_packets to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sent_packets, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.30, i32 noundef %conv15, i32 noundef %28) #11
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #8
  %dec = add nsw i32 %timeout.0, -1
  %tobool19.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool19.not, label %do.end23, label %if.end17.do.body_crit_edge

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev.i, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.33) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -11, %do.end12 ], [ -110, %do.end23 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_cvp_state(ptr nocapture noundef readonly %mgr) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !147
  %pci_dev.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev.i, align 4
  %vsec_offset.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsec_offset.i, align 4
  %add.i = add i32 %6, 28
  %call.i = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %status) #8
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = lshr i32 %8, 19
  %9 = and i32 %and1, 2
  %retval.0 = select i1 %tobool.not, i32 %9, i32 12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_cvp_write_init(ptr noundef %mgr, ptr noundef readonly %info, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i176 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !147
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.if.else9_crit_edge, label %cond.end

entry.if.else9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9

cond.end:                                         ; preds = %entry
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %info, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %and2 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else:                                          ; preds = %if.end
  %and5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.if.else9_crit_edge, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else.if.else9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9

if.else9:                                         ; preds = %if.else.if.else9_crit_edge, %entry.if.else9_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.else.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %.sink = phi i8 [ 1, %if.else9 ], [ 8, %if.end.if.end12_crit_edge ], [ 4, %if.else.if.end12_crit_edge ]
  %numclks8 = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %numclks8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %numclks8, align 4
  %pci_dev.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev.i, align 4
  %vsec_offset.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsec_offset.i, align 4
  %add.i = add i32 %9, 28
  %call.i = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef %add.i, ptr noundef nonnull %val) #8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and13 = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.40, i32 noundef %11) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %and21 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end32_crit_edge, label %do.end26

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.end20
  %dev27 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.43) #11
  %call28 = call fastcc i32 @altera_cvp_teardown(ptr noundef %mgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.end26.if.end32_crit_edge, label %do.end26.cleanup_crit_edge

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end26.if.end32_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %do.end26.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %12 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev.i, align 4
  %14 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsec_offset.i, align 4
  %add.i154 = add i32 %15, 32
  %call.i155 = call i32 @pci_read_config_dword(ptr noundef %13, i32 noundef %add.i154, ptr noundef nonnull %val) #8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %or = or i32 %17, 2
  store i32 %or, ptr %val, align 4
  %18 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev.i, align 4
  %20 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vsec_offset.i, align 4
  %add.i158 = add i32 %21, 32
  %call.i159 = call i32 @pci_write_config_dword(ptr noundef %19, i32 noundef %add.i158, i32 noundef %or) #8
  %22 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev.i, align 4
  %24 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vsec_offset.i, align 4
  %add.i162 = add i32 %25, 32
  %call.i163 = call i32 @pci_read_config_dword(ptr noundef %23, i32 noundef %add.i162, ptr noundef nonnull %val) #8
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %or36 = or i32 %27, 1
  store i32 %or36, ptr %val, align 4
  %28 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev.i, align 4
  %30 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vsec_offset.i, align 4
  %add.i166 = add i32 %31, 32
  %call.i167 = call i32 @pci_write_config_dword(ptr noundef %29, i32 noundef %add.i166, i32 noundef %or36) #8
  %priv38 = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %priv38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv38, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool39.not = icmp eq ptr %35, null
  br i1 %tobool39.not, label %if.end32.if.end43_crit_edge, label %if.then40

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void %35(ptr noundef %1) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end32.if.end43_crit_edge
  %36 = ptrtoint ptr %priv38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv38, align 4
  %clear_state = getelementptr inbounds %struct.cvp_priv, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %clear_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clear_state, align 4
  %tobool45.not = icmp eq ptr %39, null
  br i1 %tobool45.not, label %if.end43.if.end57_crit_edge, label %if.then46

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then46:                                        ; preds = %if.end43
  %call49 = call i32 %39(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then46.if.end57_crit_edge, label %do.end54

if.then46.if.end57_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

do.end54:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %dev55 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.46) #11
  br label %cleanup

if.end57:                                         ; preds = %if.then46.if.end57_crit_edge, %if.end43.if.end57_crit_edge
  %sent_packets = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %sent_packets to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %sent_packets, align 4
  %41 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_dev.i, align 4
  %43 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vsec_offset.i, align 4
  %add.i170 = add i32 %44, 44
  %call.i171 = call i32 @pci_read_config_dword(ptr noundef %42, i32 noundef %add.i170, ptr noundef nonnull %val) #8
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val, align 4
  %or59 = or i32 %46, 1
  store i32 %or59, ptr %val, align 4
  %47 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_dev.i, align 4
  %49 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vsec_offset.i, align 4
  %add.i174 = add i32 %50, 44
  %call.i175 = call i32 @pci_write_config_dword(ptr noundef %48, i32 noundef %add.i174, i32 noundef %or59) #8
  %51 = ptrtoint ptr %priv38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv38, align 4
  %poll_time_us = getelementptr inbounds %struct.cvp_priv, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %poll_time_us to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %poll_time_us, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %55 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %val.i, align 4, !annotation !147
  %.frozen = freeze i32 %54
  %div.i = sdiv i32 %.frozen, 10
  %56 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %.frozen, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp ne i32 %rem.i.decomposed, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add nsw i32 %div.i, %inc.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end2.i.do.body.i_crit_edge, %if.end57
  %retries.1.i = phi i32 [ %spec.select.i, %if.end57 ], [ %dec.i, %if.end2.i.do.body.i_crit_edge ]
  %57 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev.i, align 4
  %59 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vsec_offset.i, align 4
  %add.i.i = add i32 %60, 28
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %58, i32 noundef %add.i.i, ptr noundef nonnull %val.i) #8
  %61 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val.i, align 4
  %and.i = and i32 %62, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end2.i, label %if.end69

if.end2.i:                                        ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #8
  %dec.i = add i32 %retries.1.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.end67, label %if.end2.i.do.body.i_crit_edge

if.end2.i.do.body.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end67:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %dev68 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev68, ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end69:                                         ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %63 = ptrtoint ptr %priv38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv38, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool72.not = icmp eq ptr %66, null
  br i1 %tobool72.not, label %if.end69.if.end76_crit_edge, label %if.then73

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  call void %66(ptr noundef %1) #8
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end69.if.end76_crit_edge
  %67 = load i8, ptr @altera_cvp_chkcfg, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool77.not = icmp eq i8 %67, 0
  br i1 %tobool77.not, label %if.end76.if.end87_crit_edge, label %if.then78

if.end76.if.end87_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then78:                                        ; preds = %if.end76
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i176) #8
  %70 = ptrtoint ptr %val.i176 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %val.i176, align 4, !annotation !147
  %pci_dev.i.i177 = getelementptr inbounds %struct.altera_cvp_conf, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %pci_dev.i.i177 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci_dev.i.i177, align 4
  %vsec_offset.i.i178 = getelementptr inbounds %struct.altera_cvp_conf, ptr %69, i32 0, i32 7
  %73 = ptrtoint ptr %vsec_offset.i.i178 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vsec_offset.i.i178, align 4
  %add.i.i179 = add i32 %74, 28
  %call.i.i180 = call i32 @pci_read_config_dword(ptr noundef %72, i32 noundef %add.i.i179, ptr noundef nonnull %val.i176) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i180)
  %tobool.not.i181 = icmp eq i32 %call.i.i180, 0
  br i1 %tobool.not.i181, label %lor.lhs.false.i, label %if.then78.do.end84_crit_edge

if.then78.do.end84_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84

lor.lhs.false.i:                                  ; preds = %if.then78
  %75 = ptrtoint ptr %val.i176 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val.i176, align 4
  %and.i182 = and i32 %76, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i182)
  %tobool1.not.i = icmp eq i32 %and.i182, 0
  br i1 %tobool1.not.i, label %altera_cvp_chk_error.exit.thread, label %lor.lhs.false.i.do.end84_crit_edge

lor.lhs.false.i.do.end84_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84

altera_cvp_chk_error.exit.thread:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i176) #8
  br label %if.end87

do.end84:                                         ; preds = %lor.lhs.false.i.do.end84_crit_edge, %if.then78.do.end84_crit_edge
  %dev.i = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i176) #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end87:                                         ; preds = %altera_cvp_chk_error.exit.thread, %if.end76.if.end87_crit_edge
  %77 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pci_dev.i, align 4
  %79 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vsec_offset.i, align 4
  %add.i186 = add i32 %80, 44
  %call.i187 = call i32 @pci_read_config_dword(ptr noundef %78, i32 noundef %add.i186, ptr noundef nonnull %val) #8
  %81 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val, align 4
  %or89 = or i32 %82, 2
  store i32 %or89, ptr %val, align 4
  %83 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pci_dev.i, align 4
  %85 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vsec_offset.i, align 4
  %add.i190 = add i32 %86, 44
  %call.i191 = call i32 @pci_write_config_dword(ptr noundef %84, i32 noundef %add.i190, i32 noundef %or89) #8
  %87 = ptrtoint ptr %priv38 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv38, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %tobool93.not = icmp eq ptr %90, null
  br i1 %tobool93.not, label %if.end87.cleanup_crit_edge, label %if.then94

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then94:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pci_dev.i, align 4
  %93 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vsec_offset.i, align 4
  %add.i194 = add i32 %94, 32
  %call.i195 = call i32 @pci_read_config_dword(ptr noundef %92, i32 noundef %add.i194, ptr noundef nonnull %val) #8
  %95 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %val, align 4
  %and96 = and i32 %96, -65281
  %numclks97 = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 5
  %97 = ptrtoint ptr %numclks97 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %numclks97, align 4
  %conv = zext i8 %98 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or98 = or i32 %shl, %and96
  store i32 %or98, ptr %val, align 4
  %99 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci_dev.i, align 4
  %101 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vsec_offset.i, align 4
  %add.i198 = add i32 %102, 32
  %call.i199 = call i32 @pci_write_config_dword(ptr noundef %100, i32 noundef %add.i198, i32 noundef %or98) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %if.end87.cleanup_crit_edge, %do.end84, %do.end67, %do.end54, %do.end26.cleanup_crit_edge, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call49, %do.end54 ], [ -110, %do.end67 ], [ -71, %do.end84 ], [ -19, %do.end18 ], [ %call28, %do.end26.cleanup_crit_edge ], [ 0, %if.then94 ], [ 0, %if.end87.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_cvp_write(ptr noundef %mgr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i56 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not72 = icmp eq i32 %count, 0
  br i1 %tobool.not72, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %priv1 = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 8
  %write_data.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 3
  %sent_packets = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %data.075 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end17.while.body_crit_edge ]
  %remaining.074 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %if.end17.while.body_crit_edge ]
  %done.073 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end17.while.body_crit_edge ]
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %wait_credit = getelementptr inbounds %struct.cvp_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %wait_credit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait_credit, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %while.body.if.end7_crit_edge, label %if.then

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %while.body
  %call = call i32 %5(ptr noundef %mgr, i32 noundef %done.073) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %do.end

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call) #11
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %while.body.if.end7_crit_edge
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 4
  %block_size = getelementptr inbounds %struct.cvp_priv, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_size, align 4
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 %remaining.074)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp2.not.i = icmp ult i32 %12, 4
  br i1 %cmp2.not.i, label %if.end7.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end7.for.end.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end7
  %div1.i = lshr i32 %12, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.03.i = phi ptr [ %data.075, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %write_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_data.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %data.addr.03.i, i32 1
  %15 = ptrtoint ptr %data.addr.03.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data.addr.03.i, align 4
  call void %14(ptr noundef %1, i32 noundef %16) #8
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div1.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end7.for.end.i_crit_edge
  %data.addr.0.lcssa.i = phi ptr [ %data.075, %if.end7.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body.i.for.end.i_crit_edge ]
  %rem.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %for.end.i.altera_cvp_send_block.exit_crit_edge, label %if.then2.i

for.end.i.altera_cvp_send_block.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %altera_cvp_send_block.exit

if.then2.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl nuw nsw i32 %rem.i, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  %17 = ptrtoint ptr %write_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_data.i, align 4
  %19 = ptrtoint ptr %data.addr.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data.addr.0.lcssa.i, align 4
  %and.i = and i32 %20, %sub.i
  call void %18(ptr noundef %1, i32 noundef %and.i) #8
  br label %altera_cvp_send_block.exit

altera_cvp_send_block.exit:                       ; preds = %if.then2.i, %for.end.i.altera_cvp_send_block.exit_crit_edge
  %div53 = lshr i32 %12, 2
  %add.ptr = getelementptr i32, ptr %data.075, i32 %div53
  %add = add i32 %12, %done.073
  %sub = sub i32 %remaining.074, %12
  %21 = ptrtoint ptr %sent_packets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sent_packets, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %sent_packets, align 4
  %23 = load i8, ptr @altera_cvp_chkcfg, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp ne i8 %23, 0
  %rem = and i32 %add, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool11.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %tobool10.not, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %if.then12, label %altera_cvp_send_block.exit.if.end17_crit_edge

altera_cvp_send_block.exit.if.end17_crit_edge:    ; preds = %altera_cvp_send_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %altera_cvp_send_block.exit
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i, align 4, !annotation !147
  %pci_dev.i.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_dev.i.i, align 4
  %vsec_offset.i.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %25, i32 0, i32 7
  %29 = ptrtoint ptr %vsec_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vsec_offset.i.i, align 4
  %add.i.i = add i32 %30, 28
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %28, i32 noundef %add.i.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i54 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i54, label %lor.lhs.false.i, label %if.then12.altera_cvp_chk_error.exit.thread_crit_edge

if.then12.altera_cvp_chk_error.exit.thread_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %altera_cvp_chk_error.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then12
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %and.i55 = and i32 %32, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool1.not.i = icmp eq i32 %and.i55, 0
  br i1 %tobool1.not.i, label %altera_cvp_chk_error.exit, label %lor.lhs.false.i.altera_cvp_chk_error.exit.thread_crit_edge

lor.lhs.false.i.altera_cvp_chk_error.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %altera_cvp_chk_error.exit.thread

altera_cvp_chk_error.exit.thread:                 ; preds = %lor.lhs.false.i.altera_cvp_chk_error.exit.thread_crit_edge, %if.then12.altera_cvp_chk_error.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35, i32 noundef %add) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

altera_cvp_chk_error.exit:                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end17

if.end17:                                         ; preds = %altera_cvp_chk_error.exit, %altera_cvp_send_block.exit.if.end17_crit_edge
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %entry.while.end_crit_edge
  %33 = load i8, ptr @altera_cvp_chkcfg, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool18.not = icmp eq i8 %33, 0
  br i1 %tobool18.not, label %while.end.cleanup_crit_edge, label %if.then19

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %while.end
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i56) #8
  %36 = ptrtoint ptr %val.i56 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i56, align 4, !annotation !147
  %pci_dev.i.i58 = getelementptr inbounds %struct.altera_cvp_conf, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %pci_dev.i.i58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci_dev.i.i58, align 4
  %vsec_offset.i.i59 = getelementptr inbounds %struct.altera_cvp_conf, ptr %35, i32 0, i32 7
  %39 = ptrtoint ptr %vsec_offset.i.i59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vsec_offset.i.i59, align 4
  %add.i.i60 = add i32 %40, 28
  %call.i.i61 = call i32 @pci_read_config_dword(ptr noundef %38, i32 noundef %add.i.i60, ptr noundef nonnull %val.i56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %tobool.not.i62 = icmp eq i32 %call.i.i61, 0
  br i1 %tobool.not.i62, label %lor.lhs.false.i65, label %if.then19.do.end.i67_crit_edge

if.then19.do.end.i67_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i67

lor.lhs.false.i65:                                ; preds = %if.then19
  %41 = ptrtoint ptr %val.i56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i56, align 4
  %and.i63 = and i32 %42, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool1.not.i64 = icmp eq i32 %and.i63, 0
  br i1 %tobool1.not.i64, label %lor.lhs.false.i65.altera_cvp_chk_error.exit69_crit_edge, label %lor.lhs.false.i65.do.end.i67_crit_edge

lor.lhs.false.i65.do.end.i67_crit_edge:           ; preds = %lor.lhs.false.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i67

lor.lhs.false.i65.altera_cvp_chk_error.exit69_crit_edge: ; preds = %lor.lhs.false.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %altera_cvp_chk_error.exit69

do.end.i67:                                       ; preds = %lor.lhs.false.i65.do.end.i67_crit_edge, %if.then19.do.end.i67_crit_edge
  %dev.i66 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i66, ptr noundef nonnull @.str.35, i32 noundef %count) #11
  br label %altera_cvp_chk_error.exit69

altera_cvp_chk_error.exit69:                      ; preds = %do.end.i67, %lor.lhs.false.i65.altera_cvp_chk_error.exit69_crit_edge
  %retval.0.i68 = phi i32 [ -71, %do.end.i67 ], [ 0, %lor.lhs.false.i65.altera_cvp_chk_error.exit69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i56) #8
  br label %cleanup

cleanup:                                          ; preds = %altera_cvp_chk_error.exit69, %while.end.cleanup_crit_edge, %altera_cvp_chk_error.exit.thread, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i68, %altera_cvp_chk_error.exit69 ], [ 0, %while.end.cleanup_crit_edge ], [ -71, %altera_cvp_chk_error.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_cvp_write_complete(ptr noundef %mgr, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call = tail call fastcc i32 @altera_cvp_teardown(ptr noundef %mgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci_dev.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev.i, align 4
  %vsec_offset.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsec_offset.i, align 4
  %add.i = add i32 %6, 52
  %call.i = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %val) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev.i, align 4
  %11 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsec_offset.i, align 4
  %add.i34 = add i32 %12, 32
  %call.i35 = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef %add.i34, ptr noundef nonnull %val) #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and7 = and i32 %14, -4
  store i32 %and7, ptr %val, align 4
  %15 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev.i, align 4
  %17 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vsec_offset.i, align 4
  %add.i38 = add i32 %18, 32
  %call.i39 = call i32 @pci_write_config_dword(ptr noundef %16, i32 noundef %add.i38, i32 noundef %and7) #8
  %priv9 = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %priv9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv9, align 4
  %user_time_us = getelementptr inbounds %struct.cvp_priv, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %user_time_us to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %user_time_us, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i, align 4, !annotation !147
  %.frozen = freeze i32 %22
  %div.i = sdiv i32 %.frozen, 10
  %24 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %.frozen, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp ne i32 %rem.i.decomposed, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add nsw i32 %div.i, %inc.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end2.i.do.body.i_crit_edge, %if.end4
  %retries.1.i = phi i32 [ %spec.select.i, %if.end4 ], [ %dec.i, %if.end2.i.do.body.i_crit_edge ]
  %25 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev.i, align 4
  %27 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vsec_offset.i, align 4
  %add.i.i = add i32 %28, 28
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %26, i32 noundef %add.i.i, ptr noundef nonnull %val.i) #8
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i, align 4
  %and.i = and i32 %30, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 18874368, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 18874368
  br i1 %cmp.i, label %altera_cvp_wait_status.exit.thread, label %if.end2.i

altera_cvp_wait_status.exit.thread:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

if.end2.i:                                        ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #8
  %dec.i = add i32 %retries.1.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.end15, label %if.end2.i.do.body.i_crit_edge

if.end2.i.do.body.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end15:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %dev16 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.60) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %altera_cvp_wait_status.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -110, %do.end15 ], [ 0, %altera_cvp_wait_status.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @altera_cvp_teardown(ptr noundef %mgr) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !147
  %pci_dev.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev.i, align 4
  %vsec_offset.i = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsec_offset.i, align 4
  %add.i = add i32 %6, 44
  %call.i = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %val) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, -3
  store i32 %and, ptr %val, align 4
  %9 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev.i, align 4
  %11 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsec_offset.i, align 4
  %add.i3 = add i32 %12, 44
  %call.i4 = call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef %add.i3, i32 noundef %and) #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and2 = and i32 %14, -2
  store i32 %and2, ptr %val, align 4
  %15 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev.i, align 4
  %17 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vsec_offset.i, align 4
  %add.i7 = add i32 %18, 44
  %call.i8 = call i32 @pci_write_config_dword(ptr noundef %16, i32 noundef %add.i7, i32 noundef %and2) #8
  %priv4 = getelementptr inbounds %struct.altera_cvp_conf, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv4, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void %22(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv4, align 4
  %poll_time_us = getelementptr inbounds %struct.cvp_priv, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %poll_time_us to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %poll_time_us, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i, align 4, !annotation !147
  %.frozen = freeze i32 %26
  %div.i = sdiv i32 %.frozen, 10
  %28 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %.frozen, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp ne i32 %rem.i.decomposed, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add nsw i32 %div.i, %inc.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end2.i.do.body.i_crit_edge, %if.end
  %retries.1.i = phi i32 [ %spec.select.i, %if.end ], [ %dec.i, %if.end2.i.do.body.i_crit_edge ]
  %29 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev.i, align 4
  %31 = ptrtoint ptr %vsec_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vsec_offset.i, align 4
  %add.i.i = add i32 %32, 28
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %30, i32 noundef %add.i.i, ptr noundef nonnull %val.i) #8
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %and.i = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %altera_cvp_wait_status.exit.thread, label %if.end2.i

altera_cvp_wait_status.exit.thread:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end11

if.end2.i:                                        ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #8
  %dec.i = add i32 %retries.1.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.end, label %if.end2.i.do.body.i_crit_edge

if.end2.i.do.body.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end:                                           ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53) #11
  br label %if.end11

if.end11:                                         ; preds = %do.end, %altera_cvp_wait_status.exit.thread
  %retval.0.i11 = phi i32 [ 0, %altera_cvp_wait_status.exit.thread ], [ -110, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0.i11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_mgr_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chkcfg_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @altera_cvp_chkcfg, align 1, !range !150
  %1 = zext i8 %0 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 3, ptr noundef nonnull @.str.63, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chkcfg_store(ptr nocapture noundef readnone %drv, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull @altera_cvp_chkcfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !131, !133, !135, !136, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_altera_cvp__238_713_altera_cvp_init6, !1, !"__initcall__kmod_altera_cvp__238_713_altera_cvp_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/altera-cvp.c", i32 713, i32 1}
!2 = !{ptr @__exitcall_altera_cvp_exit, !3, !"__exitcall_altera_cvp_exit", i1 false, i1 false}
!3 = !{!"../drivers/fpga/altera-cvp.c", i32 714, i32 1}
!4 = !{ptr @__UNIQUE_ID_file239, !5, !"__UNIQUE_ID_file239", i1 false, i1 false}
!5 = !{!"../drivers/fpga/altera-cvp.c", i32 716, i32 1}
!6 = !{ptr @__UNIQUE_ID_license240, !5, !"__UNIQUE_ID_license240", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author241, !8, !"__UNIQUE_ID_author241", i1 false, i1 false}
!8 = !{!"../drivers/fpga/altera-cvp.c", i32 717, i32 1}
!9 = !{ptr @__UNIQUE_ID_description242, !10, !"__UNIQUE_ID_description242", i1 false, i1 false}
!10 = !{!"../drivers/fpga/altera-cvp.c", i32 718, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/fpga/altera-cvp.c", i32 570, i32 12}
!13 = !{ptr @altera_cvp_driver, !14, !"altera_cvp_driver", i1 false, i1 false}
!14 = !{!"../drivers/fpga/altera-cvp.c", i32 569, i32 26}
!15 = !{ptr @altera_cvp_id_tbl, !16, !"altera_cvp_id_tbl", i1 false, i1 false}
!16 = !{!"../drivers/fpga/altera-cvp.c", i32 563, i32 29}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/fpga/altera-cvp.c", i32 588, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @altera_cvp_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @altera_cvp_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/fpga/altera-cvp.c", i32 599, i32 3}
!27 = !{ptr @altera_cvp_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @altera_cvp_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/fpga/altera-cvp.c", i32 605, i32 3}
!31 = !{ptr @altera_cvp_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @altera_cvp_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/fpga/altera-cvp.c", i32 632, i32 42}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/fpga/altera-cvp.c", i32 634, i32 3}
!37 = !{ptr @altera_cvp_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @altera_cvp_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/fpga/altera-cvp.c", i32 648, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @altera_cvp_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @altera_cvp_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/fpga/altera-cvp.c", i32 652, i32 51}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/fpga/altera-cvp.c", i32 653, i32 4}
!48 = !{ptr @cvp_priv_v1, !49, !"cvp_priv_v1", i1 false, i1 false}
!49 = !{!"../drivers/fpga/altera-cvp.c", i32 525, i32 30}
!50 = !{ptr @cvp_priv_v2, !51, !"cvp_priv_v2", i1 false, i1 false}
!51 = !{!"../drivers/fpga/altera-cvp.c", i32 532, i32 30}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/fpga/altera-cvp.c", i32 212, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @altera_cvp_v2_clear_state._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @altera_cvp_v2_clear_state._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/fpga/altera-cvp.c", i32 220, i32 3}
!59 = !{ptr @altera_cvp_v2_clear_state._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @altera_cvp_v2_clear_state._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/fpga/altera-cvp.c", i32 240, i32 4}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @altera_cvp_v2_wait_for_credit._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @altera_cvp_v2_wait_for_credit._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/fpga/altera-cvp.c", i32 251, i32 4}
!68 = !{ptr @altera_cvp_v2_wait_for_credit._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @altera_cvp_v2_wait_for_credit._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/fpga/altera-cvp.c", i32 261, i32 2}
!72 = !{ptr @altera_cvp_v2_wait_for_credit._entry.32, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @altera_cvp_v2_wait_for_credit._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/fpga/altera-cvp.c", i32 191, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @altera_cvp_chk_error._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @altera_cvp_chk_error._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @altera_cvp_ops, !80, !"altera_cvp_ops", i1 false, i1 false}
!80 = !{!"../drivers/fpga/altera-cvp.c", i32 518, i32 38}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/fpga/altera-cvp.c", i32 329, i32 3}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @altera_cvp_write_init._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @altera_cvp_write_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/fpga/altera-cvp.c", i32 344, i32 3}
!88 = !{ptr @altera_cvp_write_init._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @altera_cvp_write_init._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/fpga/altera-cvp.c", i32 349, i32 3}
!92 = !{ptr @altera_cvp_write_init._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @altera_cvp_write_init._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/fpga/altera-cvp.c", i32 379, i32 4}
!96 = !{ptr @altera_cvp_write_init._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @altera_cvp_write_init._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/fpga/altera-cvp.c", i32 397, i32 3}
!100 = !{ptr @altera_cvp_write_init._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @altera_cvp_write_init._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @altera_cvp_write_init._entry.51, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/fpga/altera-cvp.c", i32 411, i32 4}
!104 = !{ptr @altera_cvp_write_init._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/fpga/altera-cvp.c", i32 313, i32 3}
!107 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @altera_cvp_teardown._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @altera_cvp_teardown._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @altera_cvp_chkcfg, !111, !"altera_cvp_chkcfg", i1 false, i1 false}
!111 = !{!"../drivers/fpga/altera-cvp.c", i32 70, i32 13}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/fpga/altera-cvp.c", i32 449, i32 5}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @altera_cvp_write._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @altera_cvp_write._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/fpga/altera-cvp.c", i32 498, i32 3}
!119 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @altera_cvp_write_complete._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @altera_cvp_write_complete._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/fpga/altera-cvp.c", i32 513, i32 3}
!124 = !{ptr @altera_cvp_write_complete._entry.59, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @altera_cvp_write_complete._entry_ptr.61, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/fpga/altera-cvp.c", i32 557, i32 8}
!128 = !{ptr @driver_attr_chkcfg, !127, !"driver_attr_chkcfg", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/fpga/altera-cvp.c", i32 542, i32 26}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/fpga/altera-cvp.c", i32 695, i32 8}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/fpga/altera-cvp.c", i32 702, i32 3}
!135 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @altera_cvp_init._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @altera_cvp_init._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"auto-init"}
!148 = !{i64 2154461533}
!149 = !{i64 5026212}
!150 = !{i8 0, i8 2}
