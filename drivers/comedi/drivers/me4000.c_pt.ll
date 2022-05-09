; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/me4000.c_pt.bc'
source_filename = "../drivers/comedi/drivers/me4000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
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
%struct.me4000_board = type { ptr, i32, i8 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.me4000_private = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_me4000__239_1272_me4000_driver_init6 = internal global ptr @me4000_driver_init, section ".initcall6.init", align 4
@me4000_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @me4000_detach, ptr @me4000_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@me4000_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @me4000_pci_table, ptr @me4000_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_me4000_driver_exit = internal global ptr @me4000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [44 x i8] c"me4000.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [68 x i8] c"me4000.description=Comedi driver for Meilhaus ME-4000 series boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [42 x i8] c"me4000.file=drivers/comedi/drivers/me4000\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [19 x i8] c"me4000.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [36 x i8] c"me4000.firmware=me4000_firmware.bin\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"me4000\00", [25 x i8] zeroinitializer }, align 32
@me4000_boards = internal constant { [13 x %struct.me4000_board], [36 x i8] } { [13 x %struct.me4000_board] [%struct.me4000_board { ptr @.str.2, i32 16, i8 0 }, %struct.me4000_board { ptr @.str.3, i32 32, i8 -124 }, %struct.me4000_board { ptr @.str.4, i32 32, i8 -124 }, %struct.me4000_board { ptr @.str.5, i32 32, i8 -60 }, %struct.me4000_board { ptr @.str.6, i32 32, i8 -60 }, %struct.me4000_board { ptr @.str.7, i32 32, i8 -76 }, %struct.me4000_board { ptr @.str.8, i32 32, i8 -76 }, %struct.me4000_board { ptr @.str.9, i32 32, i8 -12 }, %struct.me4000_board { ptr @.str.10, i32 32, i8 -12 }, %struct.me4000_board { ptr @.str.11, i32 32, i8 -68 }, %struct.me4000_board { ptr @.str.12, i32 32, i8 -68 }, %struct.me4000_board { ptr @.str.13, i32 32, i8 -4 }, %struct.me4000_board { ptr @.str.14, i32 32, i8 -4 }], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"me4000_firmware.bin\00", [44 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ME-4650\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ME-4660\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ME-4660i\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ME-4660s\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ME-4660is\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ME-4670\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ME-4670i\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ME-4670s\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ME-4670is\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ME-4680\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ME-4680i\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ME-4680s\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ME-4680is\00", [22 x i8] zeroinitializer }, align 32
@me4000_xilinx_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 339, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't init Xilinx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"me4000_xilinx_download\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/me4000.c\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@me4000_xilinx_download._entry_ptr = internal global ptr @me4000_xilinx_download._entry, section ".printk_index", align 4
@me4000_xilinx_download._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.17, i32 363, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Xilinx is still busy (i = %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@me4000_xilinx_download._entry_ptr.22 = internal global ptr @me4000_xilinx_download._entry.20, section ".printk_index", align 4
@me4000_xilinx_download._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.17, i32 371, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DONE flag is not set\0A\00", [42 x i8] zeroinitializer }, align 32
@me4000_xilinx_download._entry_ptr.25 = internal global ptr @me4000_xilinx_download._entry.23, section ".printk_index", align 4
@me4000_xilinx_download._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.17, i32 372, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Download not successful\0A\00", [39 x i8] zeroinitializer }, align 32
@me4000_xilinx_download._entry_ptr.28 = internal global ptr @me4000_xilinx_download._entry.26, section ".printk_index", align 4
@me4000_ai_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.17, i32 939, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIFO overflow\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"me4000_ai_isr\00", [18 x i8] zeroinitializer }, align 32
@me4000_ai_isr._entry_ptr = internal global ptr @me4000_ai_isr._entry, section ".printk_index", align 4
@me4000_ai_isr._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.17, i32 947, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Undefined FIFO state\0A\00", [42 x i8] zeroinitializer }, align 32
@me4000_ai_isr._entry_ptr.33 = internal global ptr @me4000_ai_isr._entry.31, section ".printk_index", align 4
@me4000_ai_range = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@me4000_ai_insn_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.17, i32 475, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Differential inputs are not available\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"me4000_ai_insn_read\00", [44 x i8] zeroinitializer }, align 32
@me4000_ai_insn_read._entry_ptr = internal global ptr @me4000_ai_insn_read._entry, section ".printk_index", align 4
@me4000_ai_insn_read._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.17, i32 481, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Range must be bipolar when aref = diff\0A\00", [56 x i8] zeroinitializer }, align 32
@me4000_ai_insn_read._entry_ptr.39 = internal global ptr @me4000_ai_insn_read._entry.37, section ".printk_index", align 4
@me4000_ai_insn_read._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.17, i32 487, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Analog input is not available\0A\00", [33 x i8] zeroinitializer }, align 32
@me4000_ai_insn_read._entry_ptr.42 = internal global ptr @me4000_ai_insn_read._entry.40, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.17, i32 807, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid start arg\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"me4000_ai_do_cmd_test\00", [42 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr = internal global ptr @me4000_ai_do_cmd_test._entry, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.17, i32 812, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid convert arg\0A\00", [43 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.47 = internal global ptr @me4000_ai_do_cmd_test._entry.45, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.17, i32 818, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid scan end arg\0A\00", [42 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.50 = internal global ptr @me4000_ai_do_cmd_test._entry.48, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.17, i32 829, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.52 = internal global ptr @me4000_ai_do_cmd_test._entry.51, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.17, i32 834, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.54 = internal global ptr @me4000_ai_do_cmd_test._entry.53, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.17, i32 843, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.56 = internal global ptr @me4000_ai_do_cmd_test._entry.55, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.17, i32 848, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.58 = internal global ptr @me4000_ai_do_cmd_test._entry.57, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.17, i32 854, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.60 = internal global ptr @me4000_ai_do_cmd_test._entry.59, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.17, i32 865, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.62 = internal global ptr @me4000_ai_do_cmd_test._entry.61, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.17, i32 870, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.64 = internal global ptr @me4000_ai_do_cmd_test._entry.63, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.17, i32 879, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.66 = internal global ptr @me4000_ai_do_cmd_test._entry.65, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.17, i32 884, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.68 = internal global ptr @me4000_ai_do_cmd_test._entry.67, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.17, i32 893, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.70 = internal global ptr @me4000_ai_do_cmd_test._entry.69, section ".printk_index", align 4
@me4000_ai_do_cmd_test._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.17, i32 900, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_do_cmd_test._entry_ptr.72 = internal global ptr @me4000_ai_do_cmd_test._entry.71, section ".printk_index", align 4
@me4000_ai_check_chanlist.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.17, ptr @.str.74, i8 0, i8 -120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"me4000_ai_check_chanlist\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Mode is not equal for all entries\0A\00", [61 x i8] zeroinitializer }, align 32
@me4000_ai_check_chanlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.73, ptr @.str.17, i32 554, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@me4000_ai_check_chanlist._entry_ptr = internal global ptr @me4000_ai_check_chanlist._entry, section ".printk_index", align 4
@me4000_ai_check_chanlist.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.17, ptr @.str.75, i8 0, i8 -116, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Channel number to high\0A\00", [40 x i8] zeroinitializer }, align 32
@me4000_ai_check_chanlist.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.17, ptr @.str.76, i8 0, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Bipolar is not selected in differential mode\0A\00", [50 x i8] zeroinitializer }, align 32
@me4000_pci_table = internal constant { [14 x %struct.pci_device_id], [96 x i8] } { [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 5122, i32 18000, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5122, i32 18016, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5122, i32 18017, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5122, i32 18018, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5122, i32 18019, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5122, i32 18032, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5122, i32 18033, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5122, i32 18034, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 5122, i32 18035, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5122, i32 18048, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5122, i32 18049, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5122, i32 18050, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 5122, i32 18051, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 33554432, i64 167772160]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 64]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 16, i64 64]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 64]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 131072]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 131072]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 131072]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 64]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 32]
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"me4000_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1235, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"me4000_pci_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1266, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1236, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"me4000_boards\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 187, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1123, i32 51 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 189, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 193, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 199, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 205, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 212, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 219, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 227, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 235, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 244, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 253, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 262, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 271, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 281, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 339, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 362, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 371, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 372, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 939, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 947, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"me4000_ai_range\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 298, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 474, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 480, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 486, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 807, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 812, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 818, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 829, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 834, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 843, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 848, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 854, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 865, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 870, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 879, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 884, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 893, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 900, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 546, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 553, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 559, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 565, i32 5 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"me4000_pci_table\00", align 1
@___asan_gen_.287 = private constant [35 x i8] c"../drivers/comedi/drivers/me4000.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1248, i32 35 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_firmware244, ptr @__UNIQUE_ID_license243, ptr @__exitcall_me4000_driver_exit, ptr @__initcall__kmod_me4000__239_1272_me4000_driver_init6, ptr @me4000_ai_check_chanlist._entry, ptr @me4000_ai_check_chanlist._entry_ptr, ptr @me4000_ai_do_cmd_test._entry, ptr @me4000_ai_do_cmd_test._entry.45, ptr @me4000_ai_do_cmd_test._entry.48, ptr @me4000_ai_do_cmd_test._entry.51, ptr @me4000_ai_do_cmd_test._entry.53, ptr @me4000_ai_do_cmd_test._entry.55, ptr @me4000_ai_do_cmd_test._entry.57, ptr @me4000_ai_do_cmd_test._entry.59, ptr @me4000_ai_do_cmd_test._entry.61, ptr @me4000_ai_do_cmd_test._entry.63, ptr @me4000_ai_do_cmd_test._entry.65, ptr @me4000_ai_do_cmd_test._entry.67, ptr @me4000_ai_do_cmd_test._entry.69, ptr @me4000_ai_do_cmd_test._entry.71, ptr @me4000_ai_do_cmd_test._entry_ptr, ptr @me4000_ai_do_cmd_test._entry_ptr.47, ptr @me4000_ai_do_cmd_test._entry_ptr.50, ptr @me4000_ai_do_cmd_test._entry_ptr.52, ptr @me4000_ai_do_cmd_test._entry_ptr.54, ptr @me4000_ai_do_cmd_test._entry_ptr.56, ptr @me4000_ai_do_cmd_test._entry_ptr.58, ptr @me4000_ai_do_cmd_test._entry_ptr.60, ptr @me4000_ai_do_cmd_test._entry_ptr.62, ptr @me4000_ai_do_cmd_test._entry_ptr.64, ptr @me4000_ai_do_cmd_test._entry_ptr.66, ptr @me4000_ai_do_cmd_test._entry_ptr.68, ptr @me4000_ai_do_cmd_test._entry_ptr.70, ptr @me4000_ai_do_cmd_test._entry_ptr.72, ptr @me4000_ai_insn_read._entry, ptr @me4000_ai_insn_read._entry.37, ptr @me4000_ai_insn_read._entry.40, ptr @me4000_ai_insn_read._entry_ptr, ptr @me4000_ai_insn_read._entry_ptr.39, ptr @me4000_ai_insn_read._entry_ptr.42, ptr @me4000_ai_isr._entry, ptr @me4000_ai_isr._entry.31, ptr @me4000_ai_isr._entry_ptr, ptr @me4000_ai_isr._entry_ptr.33, ptr @me4000_driver_exit, ptr @me4000_xilinx_download._entry, ptr @me4000_xilinx_download._entry.20, ptr @me4000_xilinx_download._entry.23, ptr @me4000_xilinx_download._entry.26, ptr @me4000_xilinx_download._entry_ptr, ptr @me4000_xilinx_download._entry_ptr.22, ptr @me4000_xilinx_download._entry_ptr.25, ptr @me4000_xilinx_download._entry_ptr.28, ptr @me4000_driver, ptr @me4000_pci_driver, ptr @.str, ptr @me4000_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @me4000_ai_range, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @me4000_pci_table], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_boards to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_xilinx_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_xilinx_download._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_xilinx_download._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_xilinx_download._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_isr._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_range to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_insn_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_insn_read._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_insn_read._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_do_cmd_test._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_ai_check_chanlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me4000_pci_table to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @me4000_driver, ptr noundef nonnull @me4000_pci_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @me4000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @me4000_driver, ptr noundef nonnull @me4000_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @me4000_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, 76
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 0) #6, !srcloc !163
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %context)
  %cmp = icmp ugt i32 %context, 12
  %arrayidx = getelementptr [13 x %struct.me4000_board], ptr @me4000_boards, i32 0, i32 %context
  %tobool.not207 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not207
  br i1 %tobool.not, label %entry.cleanup121_crit_edge, label %if.end2

entry.cleanup121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121

if.end2:                                          ; preds = %entry
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %board_ptr, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %board_name, align 4
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 20) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup121_crit_edge, label %if.end6

if.end2.cleanup121_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup121_crit_edge

if.end6.cleanup121_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121

if.end10:                                         ; preds = %if.end6
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11, align 8
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call3, align 4
  %arrayidx13 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx13, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %iobase, align 4
  %10 = load i32, ptr %call3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool18.not = icmp eq i32 %8, 0
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.end10.cleanup121_crit_edge, label %if.end20

if.end10.cleanup121_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121

if.end20:                                         ; preds = %if.end10
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %call22 = tail call i32 @comedi_load_firmware(ptr noundef %dev, ptr noundef %dev21, ptr noundef nonnull @.str.1, ptr noundef nonnull @me4000_xilinx_download, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.cleanup121_crit_edge, label %if.end25

if.end20.cleanup121_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121

if.end25:                                         ; preds = %if.end20
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add.i = add i32 %14, 76
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 0) #6, !srcloc !163
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %12, align 4
  %add3.i = add i32 %17, 80
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %18 = inttoptr i32 %add5.i to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  %20 = or i32 %19, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %12, align 4
  %add12.i = add i32 %22, 80
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %23 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %20) #6, !srcloc !163
  %24 = and i32 %19, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %12, align 4
  %add21.i = add i32 %26, 80
  %and22.i = and i32 %add21.i, 1048575
  %add23.i = or i32 %and22.i, -18874368
  %27 = inttoptr i32 %add23.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase, align 4
  %add29.i = add i32 %29, 12
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %30 = inttoptr i32 %add31.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 8388608) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add29.1.i = add i32 %32, 36
  %and30.1.i = and i32 %add29.1.i, 1048575
  %add31.1.i = or i32 %and30.1.i, -18874368
  %33 = inttoptr i32 %add31.1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 8388608) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase, align 4
  %add29.2.i = add i32 %35, 60
  %and30.2.i = and i32 %add29.2.i, 1048575
  %add31.2.i = or i32 %and30.2.i, -18874368
  %36 = inttoptr i32 %add31.2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 8388608) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase, align 4
  %add29.3.i = add i32 %38, 84
  %and30.3.i = and i32 %add29.3.i, 1048575
  %add31.3.i = or i32 %and30.3.i, -18874368
  %39 = inttoptr i32 %add31.3.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 8388608) #6, !srcloc !163
  %40 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase, align 4
  %add.i.i = add i32 %41, 116
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %42 = inttoptr i32 %add1.i.i to ptr
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %42) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  %44 = or i32 %43, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase, align 4
  %add4.i.i = add i32 %46, 116
  %and5.i.i = and i32 %add4.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %47 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 %44) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase, align 4
  %add12.i.i = add i32 %49, 116
  %and13.i.i = and i32 %add12.i.i, 1048575
  %add14.i.i = or i32 %and13.i.i, -18874368
  %50 = inttoptr i32 %add14.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 0) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iobase, align 4
  %and43.i = and i32 %52, 1048575
  %add44.i = or i32 %and43.i, -18874368
  %53 = inttoptr i32 %add44.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 -2080374784) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase, align 4
  %add42.1.i = add i32 %55, 24
  %and43.1.i = and i32 %add42.1.i, 1048575
  %add44.1.i = or i32 %and43.1.i, -18874368
  %56 = inttoptr i32 %add44.1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 -2080374784) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase, align 4
  %add42.2.i = add i32 %58, 48
  %and43.2.i = and i32 %add42.2.i, 1048575
  %add44.2.i = or i32 %and43.2.i, -18874368
  %59 = inttoptr i32 %add44.2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %59, i32 -2080374784) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase, align 4
  %add42.3.i = add i32 %61, 72
  %and43.3.i = and i32 %add42.3.i, 1048575
  %add44.3.i = or i32 %and43.3.i, -18874368
  %62 = inttoptr i32 %add44.3.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %62, i32 -2080374784) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iobase, align 4
  %add53.i = add i32 %64, 188
  %and54.i = and i32 %add53.i, 1048575
  %add55.i = or i32 %and54.i, -18874368
  %65 = inttoptr i32 %add55.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %65, i32 1275068416) #6, !srcloc !163
  %66 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %iobase, align 4
  %add59.i = add i32 %67, 176
  %and60.i = and i32 %add59.i, 1048575
  %add61.i = or i32 %and60.i, -18874368
  %68 = inttoptr i32 %add61.i to ptr
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %68) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  %70 = and i32 %69, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %do.body66.i, label %if.end25.me4000_reset.exit_crit_edge

if.end25.me4000_reset.exit_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %me4000_reset.exit

do.body66.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase, align 4
  %add70.i = add i32 %72, 184
  %and71.i = and i32 %add70.i, 1048575
  %add72.i = or i32 %and71.i, -18874368
  %73 = inttoptr i32 %add72.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %73, i32 16777216) #6, !srcloc !163
  br label %me4000_reset.exit

me4000_reset.exit:                                ; preds = %do.body66.i, %if.end25.me4000_reset.exit_crit_edge
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp26.not = icmp eq i32 %75, 0
  br i1 %cmp26.not, label %me4000_reset.exit.if.end39_crit_edge, label %if.then27

me4000_reset.exit.if.end39_crit_edge:             ; preds = %me4000_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then27:                                        ; preds = %me4000_reset.exit
  %76 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %75, ptr noundef nonnull @me4000_ai_isr, ptr noundef null, i32 noundef 128, ptr noundef %77, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp eq i32 %call.i, 0
  br i1 %cmp31, label %if.then32, label %if.then27.if.end39_crit_edge

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq, align 4
  %irq34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %80 = ptrtoint ptr %irq34 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %irq34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call3, align 4
  %add = add i32 %82, 76
  %and = and i32 %add, 1048575
  %add36 = or i32 %and, -18874368
  %83 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %83, i32 1124073472) #6, !srcloc !163
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.then27.if.end39_crit_edge, %me4000_reset.exit.if.end39_crit_edge
  %call40 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup121_crit_edge

if.end39.cleanup121_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121

if.end43:                                         ; preds = %if.end39
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %84 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %context)
  %tobool45.not = icmp eq i32 %context, 0
  %spec.store.select = select i1 %tobool45.not, i32 3211264, i32 7405568
  %87 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.store.select, ptr %subdev_flags, align 4
  %ai_nchan = getelementptr [13 x %struct.me4000_board], ptr @me4000_boards, i32 0, i32 %context, i32 1
  %88 = ptrtoint ptr %ai_nchan to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ai_nchan, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 3
  %90 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 13
  %91 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 65535, ptr %maxdata, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 5
  %92 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1024, ptr %len_chanlist, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 15
  %93 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @me4000_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 18
  %94 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @me4000_ai_insn_read, ptr %insn_read, align 4
  %irq49 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %95 = ptrtoint ptr %irq49 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool50.not = icmp eq i32 %96, 0
  br i1 %tobool50.not, label %if.end43.if.end54_crit_edge, label %if.then51

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then51:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %97 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %85, ptr %read_subdev, align 4
  %98 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %subdev_flags, align 4
  %or53 = or i32 %99, 32768
  store i32 %or53, ptr %subdev_flags, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 25
  %100 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @me4000_ai_cancel, ptr %cancel, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 23
  %101 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @me4000_ai_do_cmd_test, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %85, i32 0, i32 22
  %102 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @me4000_ai_do_cmd, ptr %do_cmd, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end43.if.end54_crit_edge
  %103 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %context)
  %tobool60.not = icmp ult i32 %context, 5
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end54
  %arrayidx56 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1
  %type62 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 2
  %105 = ptrtoint ptr %type62 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2, ptr %type62, align 4
  %subdev_flags63 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 4
  %106 = ptrtoint ptr %subdev_flags63 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 3276800, ptr %subdev_flags63, align 4
  %n_chan64 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 3
  %107 = ptrtoint ptr %n_chan64 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 4, ptr %n_chan64, align 4
  %maxdata65 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 13
  %108 = ptrtoint ptr %maxdata65 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 65535, ptr %maxdata65, align 4
  %range_table66 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 15
  %109 = ptrtoint ptr %range_table66 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @range_bipolar10, ptr %range_table66, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 19
  %110 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @me4000_ao_insn_write, ptr %insn_write, align 4
  %call67 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then61.if.end72_crit_edge, label %if.then61.cleanup121_crit_edge

if.then61.cleanup121_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121

if.then61.if.end72_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %type71 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 2
  %111 = ptrtoint ptr %type71 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %type71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then61.if.end72_crit_edge
  %112 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %subdevices, align 4
  %type75 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 2
  %114 = ptrtoint ptr %type75 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 5, ptr %type75, align 4
  %subdev_flags76 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 4
  %115 = ptrtoint ptr %subdev_flags76 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 196608, ptr %subdev_flags76, align 4
  %n_chan77 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 3
  %116 = ptrtoint ptr %n_chan77 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 32, ptr %n_chan77, align 4
  %maxdata78 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 13
  %117 = ptrtoint ptr %maxdata78 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %maxdata78, align 4
  %range_table79 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 15
  %118 = ptrtoint ptr %range_table79 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @range_unipolar5, ptr %range_table79, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 20
  %119 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @me4000_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 21
  %120 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @me4000_dio_insn_config, ptr %insn_config, align 4
  %121 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %iobase, align 4
  %add81 = add i32 %122, 176
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %123 = inttoptr i32 %add83 to ptr
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %123) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool86.not = icmp eq i32 %124, 0
  br i1 %tobool86.not, label %if.then87, label %if.end72.if.end97_crit_edge

if.end72.if.end97_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then87:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %io_bits = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 12
  %125 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %io_bits, align 4
  %or88 = or i32 %126, 255
  store i32 %or88, ptr %io_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %127 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %iobase, align 4
  %add93 = add i32 %128, 176
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %129 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %129, i32 16777216) #6, !srcloc !163
  br label %if.end97

if.end97:                                         ; preds = %if.then87, %if.end72.if.end97_crit_edge
  %130 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %subdevices, align 4
  %arrayidx99 = getelementptr %struct.comedi_subdevice, ptr %131, i32 3
  br i1 %tobool45.not, label %if.else118, label %if.then105

if.then105:                                       ; preds = %if.end97
  %arrayidx107 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 3
  %132 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx107, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool109.not = icmp eq i32 %133, 0
  br i1 %tobool109.not, label %if.then105.cleanup121_crit_edge, label %if.end111

if.then105.cleanup121_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121

if.end111:                                        ; preds = %if.then105
  %call112 = tail call ptr @comedi_8254_init(i32 noundef %133, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %134 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call112, ptr %pacer, align 4
  %tobool114.not = icmp eq ptr %call112, null
  br i1 %tobool114.not, label %if.end111.cleanup121_crit_edge, label %cleanup

if.end111.cleanup121_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121

cleanup:                                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_8254_subdevice_init(ptr noundef %arrayidx99, ptr noundef nonnull %call112) #6
  br label %cleanup121

if.else118:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %type119 = getelementptr %struct.comedi_subdevice, ptr %131, i32 3, i32 2
  %135 = ptrtoint ptr %type119 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %type119, align 4
  br label %cleanup121

cleanup121:                                       ; preds = %if.else118, %cleanup, %if.end111.cleanup121_crit_edge, %if.then105.cleanup121_crit_edge, %if.then61.cleanup121_crit_edge, %if.end39.cleanup121_crit_edge, %if.end20.cleanup121_crit_edge, %if.end10.cleanup121_crit_edge, %if.end6.cleanup121_crit_edge, %if.end2.cleanup121_crit_edge, %entry.cleanup121_crit_edge
  %retval.1 = phi i32 [ -19, %entry.cleanup121_crit_edge ], [ -12, %if.end2.cleanup121_crit_edge ], [ %call7, %if.end6.cleanup121_crit_edge ], [ -19, %if.end10.cleanup121_crit_edge ], [ %call22, %if.end20.cleanup121_crit_edge ], [ %call40, %if.end39.cleanup121_crit_edge ], [ %call67, %if.then61.cleanup121_crit_edge ], [ 0, %cleanup ], [ 0, %if.else118 ], [ -12, %if.end111.cleanup121_crit_edge ], [ -19, %if.then105.cleanup121_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_load_firmware(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_xilinx_download(ptr noundef %dev, ptr nocapture noundef readonly %data, i32 noundef %size, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add = add i32 %5, 76
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 268435456) #6, !srcloc !163
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %add4 = add i32 %8, 80
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %9 = inttoptr i32 %add6 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  %11 = or i32 %10, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %add13 = add i32 %13, 80
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %14 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #6, !srcloc !163
  %add18 = add i32 %3, 200
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %15 = inttoptr i32 %add20 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 1000, i32 noundef 2) #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %add26 = add i32 %18, 76
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %19 = inttoptr i32 %add28 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  %21 = and i32 %20, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %do.end37, label %if.end38

do.end37:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %22 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end38:                                         ; preds = %do.body
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %add41 = add i32 %25, 80
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %26 = inttoptr i32 %add43 to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  %28 = and i32 %27, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %add52 = add i32 %30, 80
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %31 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 %28) #6, !srcloc !163
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data, align 1
  %conv = zext i8 %33 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx58 = getelementptr i8, ptr %data, i32 1
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %35 to i32
  %shl61 = shl nuw nsw i32 %conv59, 16
  %add62 = or i32 %shl61, %shl
  %arrayidx63 = getelementptr i8, ptr %data, i32 2
  %36 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %37 to i32
  %shl66 = shl nuw nsw i32 %conv64, 8
  %add67 = or i32 %add62, %shl66
  %arrayidx68 = getelementptr i8, ptr %data, i32 3
  %38 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %39 to i32
  %add71 = or i32 %add67, %conv69
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add71)
  %cmp171.not = icmp eq i32 %add71, 0
  br i1 %cmp171.not, label %if.end38.for.end_crit_edge, label %do.body73.lr.ph

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body73.lr.ph:                                  ; preds = %if.end38
  %and78 = and i32 %3, 1048575
  %add79 = or i32 %and78, -18874368
  %40 = inttoptr i32 %add79 to ptr
  br label %do.body73

do.body73:                                        ; preds = %for.inc.do.body73_crit_edge, %do.body73.lr.ph
  %i.0172 = phi i32 [ 0, %do.body73.lr.ph ], [ %inc, %for.inc.do.body73_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void @arm_heavy_mb() #6
  %add76 = add i32 %i.0172, 16
  %arrayidx77 = getelementptr i8, ptr %data, i32 %add76
  %41 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx77, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %42) #6, !srcloc !189
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #6
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %add83 = add i32 %44, 80
  %and84 = and i32 %add83, 1048575
  %add85 = or i32 %and84, -18874368
  %45 = inttoptr i32 %add85 to ptr
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %45) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  %47 = and i32 %46, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool90.not = icmp eq i32 %47, 0
  br i1 %tobool90.not, label %for.inc, label %do.end94

do.end94:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev95 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %48 = ptrtoint ptr %class_dev95 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %class_dev95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.21, i32 noundef %i.0172) #9
  br label %cleanup

for.inc:                                          ; preds = %do.body73
  %inc = add nuw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc, %add71
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body73_crit_edge

for.inc.do.body73_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end38.for.end_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  %add99 = add i32 %51, 80
  %and100 = and i32 %add99, 1048575
  %add101 = or i32 %and100, -18874368
  %52 = inttoptr i32 %add101 to ptr
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %52) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  %54 = and i32 %53, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool106.not = icmp eq i32 %54, 0
  br i1 %tobool106.not, label %do.end110, label %if.end116

do.end110:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev111 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %55 = ptrtoint ptr %class_dev111 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %class_dev111, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.24) #9
  %57 = ptrtoint ptr %class_dev111 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %class_dev111, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end116:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %1, align 4
  %add119 = add i32 %60, 80
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %61 = inttoptr i32 %add121 to ptr
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %61) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  %63 = or i32 %62, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %1, align 4
  %add130 = add i32 %65, 80
  %and131 = and i32 %add130, 1048575
  %add132 = or i32 %and131, -18874368
  %66 = inttoptr i32 %add132 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %66, i32 %63) #6, !srcloc !163
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %do.end110, %do.end94, %do.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end94 ], [ 0, %if.end116 ], [ -5, %do.end110 ], [ -5, %do.end37 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_ai_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %lval = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lval) #6
  %2 = ptrtoint ptr %lval to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %lval, align 2, !annotation !194
  %attached = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 10
  %3 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 156
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %8 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end.if.end65_crit_edge, label %if.then6

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then6:                                         ; preds = %if.end
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add9 = add i32 %10, 116
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %11 = inttoptr i32 %add11 to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #6, !srcloc !165
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  %14 = and i32 %13, 234881024
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end41 [
    i32 33554432, label %do.end
    i32 167772160, label %if.then6.for.body.lr.ph_crit_edge
  ]

if.then6.for.body.lr.ph_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.29) #9
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %events, align 4
  %or = or i32 %21, 16
  store i32 %or, ptr %events, align 4
  br label %for.body.lr.ph

if.end41:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev36 = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 4
  %22 = ptrtoint ptr %class_dev36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.32) #9
  %async37 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %async37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %async37, align 4
  %events38 = getelementptr inbounds %struct.comedi_async, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %events38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %events38, align 4
  %or39 = or i32 %27, 16
  store i32 %or39, ptr %events38, align 4
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end, %if.then6.for.body.lr.ph_crit_edge
  %c.0.ph = phi i32 [ 2048, %do.end ], [ 1024, %if.then6.for.body.lr.ph_crit_edge ]
  %maxdata.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase, align 4
  %add.i = add i32 %29, 124
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %30 = inttoptr i32 %add1.i to ptr
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #6, !srcloc !165
  %32 = call i32 @llvm.bswap.i32(i32 %31) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  %33 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maxdata.i.i, align 4
  %xor.i.i = xor i32 %34, %32
  %shr.i.i = lshr i32 %34, 1
  %xor2.i.i = xor i32 %xor.i.i, %shr.i.i
  %conv = trunc i32 %xor2.i.i to i16
  %35 = ptrtoint ptr %lval to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %lval, align 2
  %call43 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %lval, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %inc = add nuw nsw i32 %i.0178, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %c.0.ph)
  %exitcond.not = icmp eq i32 %inc, %c.0.ph
  %or.cond = select i1 %tobool44.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end41
  %or47 = or i32 %13, 262144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  call void @arm_heavy_mb() #6
  %36 = call i32 @llvm.bswap.i32(i32 %or47)
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase, align 4
  %add52 = add i32 %38, 116
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %39 = inttoptr i32 %add54 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %36) #6, !srcloc !163
  %and56 = and i32 %13, -262145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  call void @arm_heavy_mb() #6
  %40 = call i32 @llvm.bswap.i32(i32 %and56)
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase, align 4
  %add61 = add i32 %42, 116
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %43 = inttoptr i32 %add63 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 %40) #6, !srcloc !163
  br label %if.end65

if.end65:                                         ; preds = %for.end, %if.end.if.end65_crit_edge
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase, align 4
  %add68 = add i32 %45, 156
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %46 = inttoptr i32 %add70 to ptr
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %46) #6, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool75.not = icmp sgt i32 %47, -1
  br i1 %tobool75.not, label %if.end65.if.end122_crit_edge, label %if.then76

if.end65.if.end122_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then76:                                        ; preds = %if.end65
  %async77 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %async77 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %async77, align 4
  %events78 = getelementptr inbounds %struct.comedi_async, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %events78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %events78, align 4
  %or79 = or i32 %51, 2
  store i32 %or79, ptr %events78, align 4
  %maxdata.i.i172 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 13
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then76
  %52 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase, align 4
  %add82 = add i32 %53, 116
  %and83 = and i32 %add82, 1048575
  %add84 = or i32 %and83, -18874368
  %54 = inttoptr i32 %add84 to ptr
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %54) #6, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  %56 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool89.not = icmp eq i32 %56, 0
  br i1 %tobool89.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %57 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase, align 4
  %add.i169 = add i32 %58, 124
  %and.i170 = and i32 %add.i169, 1048575
  %add1.i171 = or i32 %and.i170, -18874368
  %59 = inttoptr i32 %add1.i171 to ptr
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %59) #6, !srcloc !165
  %61 = call i32 @llvm.bswap.i32(i32 %60) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  %62 = ptrtoint ptr %maxdata.i.i172 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %maxdata.i.i172, align 4
  %xor.i.i173 = xor i32 %63, %61
  %shr.i.i174 = lshr i32 %63, 1
  %xor2.i.i175 = xor i32 %xor.i.i173, %shr.i.i174
  %conv91 = trunc i32 %xor2.i.i175 to i16
  %64 = ptrtoint ptr %lval to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv91, ptr %lval, align 2
  %call92 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %lval, i32 noundef 1) #6
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %65 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %iobase, align 4
  %add98 = add i32 %66, 116
  %and99 = and i32 %add98, 1048575
  %add100 = or i32 %and99, -18874368
  %67 = inttoptr i32 %add100 to ptr
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %67) #6, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %69 = or i32 %68, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iobase, align 4
  %add109 = add i32 %71, 116
  %and110 = and i32 %add109, 1048575
  %add111 = or i32 %and110, -18874368
  %72 = inttoptr i32 %add111 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %72, i32 %69) #6, !srcloc !163
  %73 = and i32 %68, -4097
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %iobase, align 4
  %add118 = add i32 %75, 116
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %76 = inttoptr i32 %add120 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %76, i32 %73) #6, !srcloc !163
  br label %if.end122

if.end122:                                        ; preds = %while.end, %if.end65.if.end122_crit_edge
  %call123 = call i32 @comedi_handle_events(ptr noundef %dev_id, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end122 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lval) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  %and7 = shl nuw nsw i32 %shr, 6
  %sub = and i32 %and7, 192
  %shl = xor i32 %sub, 192
  %or = or i32 %shl, %and
  %2 = and i32 %1, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %2)
  %cmp = icmp eq i32 %2, 33554432
  br i1 %cmp, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then:                                          ; preds = %entry
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %3 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %subdev_flags, align 4
  %and8 = and i32 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.35) #9
  br label %cleanup71

if.end:                                           ; preds = %if.then
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %7 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %8, i32 0, i32 1, i32 %and2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp slt i32 %10, 0
  br i1 %cmp.i, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev14 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.38) #9
  br label %cleanup71

if.end15:                                         ; preds = %if.end
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %13 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_chan, align 4
  %div = sdiv i32 %14, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %div)
  %cmp16.not = icmp ult i32 %and, %div
  br i1 %cmp16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev21 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %class_dev21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.41) #9
  br label %cleanup71

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %or23 = or i32 %or, 32
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %entry.if.end24_crit_edge
  %entry6.0 = phi i32 [ %or23, %if.end22 ], [ %or, %entry.if.end24_crit_edge ]
  %or25 = or i32 %entry6.0, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add = add i32 %18, 116
  %and29 = and i32 %add, 1048575
  %add30 = or i32 %and29, -18874368
  %19 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 -1073741824) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add36 = add i32 %22, 120
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %23 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %20) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase, align 4
  %add44 = add i32 %25, 128
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %26 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 1107296256) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase, align 4
  %add52 = add i32 %28, 132
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %29 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 1107296256) #6, !srcloc !163
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %30 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp56111.not = icmp eq i32 %31, 0
  br i1 %cmp56111.not, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end24.for.body_crit_edge
  %i.0112 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end24.for.body_crit_edge ]
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %add58 = add i32 %33, 152
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %34 = inttoptr i32 %add60 to ptr
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %34) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  %call63 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @me4000_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %add.i = add i32 %37, 124
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %38 = inttoptr i32 %add1.i to ptr
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %38) #6, !srcloc !165
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0112
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0112, 1
  %42 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n, align 4
  %cmp56 = icmp ult i32 %inc, %43
  br i1 %cmp56, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end24.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %if.end24.for.end_crit_edge ], [ %call63, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase, align 4
  %add.i106 = add i32 %45, 116
  %and.i107 = and i32 %add.i106, 1048575
  %add1.i108 = or i32 %and.i107, -18874368
  %46 = inttoptr i32 %add1.i108 to ptr
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %46) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  %48 = or i32 %47, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %add4.i = add i32 %50, 116
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %51 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %51, i32 %48) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase, align 4
  %add12.i = add i32 %53, 116
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %54 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %54, i32 0) #6, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool69.not = icmp eq i32 %ret.1, 0
  br i1 %tobool69.not, label %cond.false, label %for.end.cleanup71_crit_edge

for.end.cleanup71_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n, align 4
  br label %cleanup71

cleanup71:                                        ; preds = %cond.false, %for.end.cleanup71_crit_edge, %do.end20, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end20 ], [ -22, %do.end13 ], [ -22, %do.end ], [ %56, %cond.false ], [ %ret.1, %for.end.cleanup71_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %1, 116
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  %4 = or i32 %3, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %6, 116
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %7 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add12.i = add i32 %9, 116
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %10 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 0) #6, !srcloc !163
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_ai_do_cmd_test(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 66
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %3)
  %cmp1.not.i = icmp eq i32 %and.i, %3
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_src, align 4
  %and.i516 = and i32 %5, 84
  store i32 %and.i516, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i516)
  %cmp.i517 = icmp ne i32 %and.i516, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i516, i32 %5)
  %cmp1.not.i518 = icmp eq i32 %and.i516, %5
  %or.cond.i519 = and i1 %cmp.i517, %cmp1.not.i518
  %6 = select i1 %or.cond.i, i1 %or.cond.i519, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i521 = and i32 %8, 80
  store i32 %and.i521, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i521)
  %cmp.i522 = icmp ne i32 %and.i521, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i521, i32 %8)
  %cmp1.not.i523 = icmp eq i32 %and.i521, %8
  %or.cond.i524 = and i1 %cmp.i522, %cmp1.not.i523
  %9 = select i1 %6, i1 %or.cond.i524, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i526 = and i32 %11, 33
  store i32 %and.i526, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i526)
  %cmp.i527 = icmp ne i32 %and.i526, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i526, i32 %11)
  %cmp1.not.i528 = icmp eq i32 %and.i526, %11
  %or.cond.i529 = and i1 %cmp.i527, %cmp1.not.i528
  %12 = select i1 %9, i1 %or.cond.i529, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i531 = and i32 %14, 33
  store i32 %and.i531, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i531)
  %cmp.i532 = icmp ne i32 %and.i531, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i531, i32 %14)
  %cmp1.not.i533 = icmp eq i32 %and.i531, %14
  %or.cond.i534 = and i1 %cmp.i532, %cmp1.not.i533
  %15 = select i1 %12, i1 %or.cond.i534, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %3) #6, !range !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  %17 = tail call i32 @llvm.ctpop.i32(i32 %5) #6, !range !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i536 = icmp ult i32 %17, 2
  %18 = select i1 %cmp.not.i, i1 %cmp.not.i536, i1 false
  %19 = tail call i32 @llvm.ctpop.i32(i32 %8) #6, !range !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i538 = icmp ult i32 %19, 2
  %20 = select i1 %18, i1 %cmp.not.i538, i1 false
  %21 = tail call i32 @llvm.ctpop.i32(i32 %11) #6, !range !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not.i540 = icmp ult i32 %21, 2
  %22 = select i1 %20, i1 %cmp.not.i540, i1 false
  %23 = tail call i32 @llvm.ctpop.i32(i32 %14) #6, !range !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.not.i542 = icmp ult i32 %23, 2
  %24 = select i1 %22, i1 %cmp.not.i542, i1 false
  %25 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 2, label %land.lhs.true
    i32 64, label %land.lhs.true44
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %26 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %5, label %land.lhs.true.cleanup_crit_edge [
    i32 16, label %land.lhs.true27
    i32 4, label %land.lhs.true36
  ]

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true27:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp29 = icmp eq i32 %8, 16
  br i1 %cmp29, label %land.lhs.true27.if.end92_crit_edge, label %land.lhs.true27.cleanup_crit_edge

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true27.if.end92_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

land.lhs.true36:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp38 = icmp eq i32 %8, 16
  br i1 %cmp38, label %land.lhs.true36.if.end92_crit_edge, label %land.lhs.true36.cleanup_crit_edge

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true36.if.end92_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

land.lhs.true44:                                  ; preds = %if.end
  %27 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %5, label %land.lhs.true44.cleanup_crit_edge [
    i32 16, label %land.lhs.true47
    i32 4, label %land.lhs.true58
    i32 64, label %land.lhs.true69
  ]

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true47:                                  ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp49 = icmp eq i32 %8, 16
  br i1 %cmp49, label %land.lhs.true47.if.end92_crit_edge, label %land.lhs.true47.cleanup_crit_edge

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true47.if.end92_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

land.lhs.true58:                                  ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp60 = icmp eq i32 %8, 16
  br i1 %cmp60, label %land.lhs.true58.if.end92_crit_edge, label %land.lhs.true58.cleanup_crit_edge

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true58.if.end92_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

land.lhs.true69:                                  ; preds = %land.lhs.true44
  %28 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %8, label %land.lhs.true69.cleanup_crit_edge [
    i32 16, label %land.lhs.true69.if.end92_crit_edge
    i32 64, label %if.then83
  ]

land.lhs.true69.if.end92_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then83:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.end92:                                         ; preds = %if.then83, %land.lhs.true69.if.end92_crit_edge, %land.lhs.true58.if.end92_crit_edge, %land.lhs.true47.if.end92_crit_edge, %land.lhs.true36.if.end92_crit_edge, %land.lhs.true27.if.end92_crit_edge
  %.sink = phi i32 [ 3, %if.then83 ], [ 1, %land.lhs.true27.if.end92_crit_edge ], [ 1, %land.lhs.true36.if.end92_crit_edge ], [ 2, %land.lhs.true47.if.end92_crit_edge ], [ 2, %land.lhs.true58.if.end92_crit_edge ], [ 4, %land.lhs.true69.if.end92_crit_edge ]
  %ai_ctrl_mode40 = getelementptr inbounds %struct.me4000_private, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %ai_ctrl_mode40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %ai_ctrl_mode40, align 4
  br i1 %24, label %if.end95, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end95:                                         ; preds = %if.end92
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %30 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not.i544 = icmp eq i32 %31, 0
  br i1 %cmp.not.i544, label %if.end95.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end95.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end95.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i545 = phi i32 [ -22, %if.then.i ], [ 0, %if.end95.comedi_check_trigger_arg_is.exit_crit_edge ]
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %33 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp98 = icmp eq i32 %34, 0
  br i1 %cmp98, label %if.then99, label %comedi_check_trigger_arg_is.exit.if.end102_crit_edge

comedi_check_trigger_arg_is.exit.if.end102_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then99:                                        ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %chanlist_len, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %comedi_check_trigger_arg_is.exit.if.end102_crit_edge
  %err.1 = phi i32 [ -22, %if.then99 ], [ %retval.0.i545, %comedi_check_trigger_arg_is.exit.if.end102_crit_edge ]
  %36 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private, align 4
  %ai_init_ticks.i = getelementptr inbounds %struct.me4000_private, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ai_init_ticks.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ai_init_ticks.i, align 4
  %ai_scan_ticks.i = getelementptr inbounds %struct.me4000_private, ptr %37, i32 0, i32 3
  %39 = ptrtoint ptr %ai_scan_ticks.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ai_scan_ticks.i, align 4
  %ai_chan_ticks.i = getelementptr inbounds %struct.me4000_private, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %ai_chan_ticks.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ai_chan_ticks.i, align 4
  %41 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.end102.if.end20.i_crit_edge, label %if.then.i547

if.end102.if.end20.i_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then.i547:                                     ; preds = %if.end102
  %mul.i = mul i32 %42, 33
  %div.i = udiv i32 %mul.i, 1000
  %43 = ptrtoint ptr %ai_init_ticks.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div.i, ptr %ai_init_ticks.i, align 4
  %44 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %start_arg, align 4
  %mul4.i = mul i32 %45, 33
  %rem.i = urem i32 %mul4.i, 1000
  %flags.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %and.i546 = and i32 %47, 196608
  %48 = zext i32 %and.i546 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and.i546, label %if.then.i547.if.end20.i_crit_edge [
    i32 0, label %if.then5.i
    i32 131072, label %if.then12.i
  ]

if.then.i547.if.end20.i_crit_edge:                ; preds = %if.then.i547
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then5.i:                                       ; preds = %if.then.i547
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %rem.i)
  %cmp6.i = icmp ugt i32 %rem.i, 33
  br i1 %cmp6.i, label %if.then5.i.if.end20.sink.split.i_crit_edge, label %if.then5.i.if.end20.i_crit_edge

if.then5.i.if.end20.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then5.i.if.end20.sink.split.i_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.sink.split.i

if.then12.i:                                      ; preds = %if.then.i547
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool13.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool13.not.i, label %if.then12.i.if.end20.i_crit_edge, label %if.then12.i.if.end20.sink.split.i_crit_edge

if.then12.i.if.end20.sink.split.i_crit_edge:      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.sink.split.i

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.sink.split.i:                            ; preds = %if.then12.i.if.end20.sink.split.i_crit_edge, %if.then5.i.if.end20.sink.split.i_crit_edge
  %inc.i = add nuw nsw i32 %div.i, 1
  %49 = ptrtoint ptr %ai_init_ticks.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc.i, ptr %ai_init_ticks.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.sink.split.i, %if.then12.i.if.end20.i_crit_edge, %if.then5.i.if.end20.i_crit_edge, %if.then.i547.if.end20.i_crit_edge, %if.end102.if.end20.i_crit_edge
  %scan_begin_arg.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %50 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_begin_arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool21.not.i = icmp eq i32 %51, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end51.i_crit_edge, label %if.then22.i

if.end20.i.if.end51.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then22.i:                                      ; preds = %if.end20.i
  %mul24.i = mul i32 %51, 33
  %div25.i = udiv i32 %mul24.i, 1000
  %52 = ptrtoint ptr %ai_scan_ticks.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div25.i, ptr %ai_scan_ticks.i, align 4
  %53 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %scan_begin_arg.i, align 4
  %mul28.i = mul i32 %54, 33
  %rem29.i = urem i32 %mul28.i, 1000
  %flags30.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %55 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags30.i, align 4
  %and31.i = and i32 %56, 196608
  %57 = zext i32 %and31.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and31.i, label %if.then22.i.if.end51.i_crit_edge [
    i32 0, label %if.then33.i
    i32 131072, label %if.then43.i
  ]

if.then22.i.if.end51.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then33.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %rem29.i)
  %cmp34.i = icmp ugt i32 %rem29.i, 33
  br i1 %cmp34.i, label %if.then33.i.if.end51.sink.split.i_crit_edge, label %if.then33.i.if.end51.i_crit_edge

if.then33.i.if.end51.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then33.i.if.end51.sink.split.i_crit_edge:      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.sink.split.i

if.then43.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem29.i)
  %tobool44.not.i = icmp eq i32 %rem29.i, 0
  br i1 %tobool44.not.i, label %if.then43.i.if.end51.i_crit_edge, label %if.then43.i.if.end51.sink.split.i_crit_edge

if.then43.i.if.end51.sink.split.i_crit_edge:      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.sink.split.i

if.then43.i.if.end51.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.end51.sink.split.i:                            ; preds = %if.then43.i.if.end51.sink.split.i_crit_edge, %if.then33.i.if.end51.sink.split.i_crit_edge
  %inc37.i = add nuw nsw i32 %div25.i, 1
  %58 = ptrtoint ptr %ai_scan_ticks.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %inc37.i, ptr %ai_scan_ticks.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end51.sink.split.i, %if.then43.i.if.end51.i_crit_edge, %if.then33.i.if.end51.i_crit_edge, %if.then22.i.if.end51.i_crit_edge, %if.end20.i.if.end51.i_crit_edge
  %convert_arg.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %59 = ptrtoint ptr %convert_arg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %convert_arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool52.not.i = icmp eq i32 %60, 0
  br i1 %tobool52.not.i, label %if.end51.i.me4000_ai_round_cmd_args.exit_crit_edge, label %if.then53.i

if.end51.i.me4000_ai_round_cmd_args.exit_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %me4000_ai_round_cmd_args.exit

if.then53.i:                                      ; preds = %if.end51.i
  %mul55.i = mul i32 %60, 33
  %div56.i = udiv i32 %mul55.i, 1000
  %61 = ptrtoint ptr %ai_chan_ticks.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div56.i, ptr %ai_chan_ticks.i, align 4
  %62 = ptrtoint ptr %convert_arg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %convert_arg.i, align 4
  %mul59.i = mul i32 %63, 33
  %rem60.i = urem i32 %mul59.i, 1000
  %flags61.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %64 = ptrtoint ptr %flags61.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags61.i, align 4
  %and62.i = and i32 %65, 196608
  %66 = zext i32 %and62.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and62.i, label %if.then53.i.me4000_ai_round_cmd_args.exit_crit_edge [
    i32 0, label %if.then64.i
    i32 131072, label %if.then74.i
  ]

if.then53.i.me4000_ai_round_cmd_args.exit_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %me4000_ai_round_cmd_args.exit

if.then64.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %rem60.i)
  %cmp65.i = icmp ugt i32 %rem60.i, 33
  br i1 %cmp65.i, label %if.then64.i.if.end82.sink.split.i_crit_edge, label %if.then64.i.me4000_ai_round_cmd_args.exit_crit_edge

if.then64.i.me4000_ai_round_cmd_args.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %me4000_ai_round_cmd_args.exit

if.then64.i.if.end82.sink.split.i_crit_edge:      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.sink.split.i

if.then74.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem60.i)
  %tobool75.not.i = icmp eq i32 %rem60.i, 0
  br i1 %tobool75.not.i, label %if.then74.i.me4000_ai_round_cmd_args.exit_crit_edge, label %if.then74.i.if.end82.sink.split.i_crit_edge

if.then74.i.if.end82.sink.split.i_crit_edge:      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.sink.split.i

if.then74.i.me4000_ai_round_cmd_args.exit_crit_edge: ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %me4000_ai_round_cmd_args.exit

if.end82.sink.split.i:                            ; preds = %if.then74.i.if.end82.sink.split.i_crit_edge, %if.then64.i.if.end82.sink.split.i_crit_edge
  %inc68.i = add nuw nsw i32 %div56.i, 1
  %67 = ptrtoint ptr %ai_chan_ticks.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %inc68.i, ptr %ai_chan_ticks.i, align 4
  br label %me4000_ai_round_cmd_args.exit

me4000_ai_round_cmd_args.exit:                    ; preds = %if.end82.sink.split.i, %if.then74.i.me4000_ai_round_cmd_args.exit_crit_edge, %if.then64.i.me4000_ai_round_cmd_args.exit_crit_edge, %if.then53.i.me4000_ai_round_cmd_args.exit_crit_edge, %if.end51.i.me4000_ai_round_cmd_args.exit_crit_edge
  %ai_init_ticks = getelementptr inbounds %struct.me4000_private, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %ai_init_ticks to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ai_init_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %69)
  %cmp103 = icmp ult i32 %69, 66
  br i1 %cmp103, label %if.then104, label %me4000_ai_round_cmd_args.exit.if.end107_crit_edge

me4000_ai_round_cmd_args.exit.if.end107_crit_edge: ; preds = %me4000_ai_round_cmd_args.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then104:                                       ; preds = %me4000_ai_round_cmd_args.exit
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2000, ptr %start_arg, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %me4000_ai_round_cmd_args.exit.if.end107_crit_edge
  %err.2 = phi i32 [ -22, %if.then104 ], [ %err.1, %me4000_ai_round_cmd_args.exit.if.end107_crit_edge ]
  %ai_scan_ticks = getelementptr inbounds %struct.me4000_private, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %ai_scan_ticks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ai_scan_ticks, align 4
  %73 = add i32 %72, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %73)
  %74 = icmp ult i32 %73, 66
  br i1 %74, label %if.then112, label %if.end107.if.end114_crit_edge

if.end107.if.end114_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2031, ptr %scan_begin_arg.i, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end107.if.end114_crit_edge
  %err.3 = phi i32 [ -22, %if.then112 ], [ %err.2, %if.end107.if.end114_crit_edge ]
  %ai_chan_ticks = getelementptr inbounds %struct.me4000_private, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ai_chan_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %77)
  %cmp115 = icmp ult i32 %77, 66
  br i1 %cmp115, label %if.then116, label %if.end114.if.end118_crit_edge

if.end114.if.end118_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %convert_arg.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2000, ptr %convert_arg.i, align 4
  %or117 = or i32 %err.3, -22
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end114.if.end118_crit_edge
  %err.4 = phi i32 [ %or117, %if.then116 ], [ %err.3, %if.end114.if.end118_crit_edge ]
  %79 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %80)
  %cmp120 = icmp eq i32 %80, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %81 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i548 = icmp eq i32 %82, 0
  br i1 %cmp120, label %if.then121, label %if.else124

if.then121:                                       ; preds = %if.end118
  br i1 %cmp.i548, label %if.then121.if.end128.sink.split_crit_edge, label %if.then121.if.end128_crit_edge

if.then121.if.end128_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then121.if.end128.sink.split_crit_edge:        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128.sink.split

if.else124:                                       ; preds = %if.end118
  br i1 %cmp.i548, label %if.else124.if.end128_crit_edge, label %if.else124.if.end128.sink.split_crit_edge

if.else124.if.end128.sink.split_crit_edge:        ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128.sink.split

if.else124.if.end128_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.end128.sink.split:                             ; preds = %if.else124.if.end128.sink.split_crit_edge, %if.then121.if.end128.sink.split_crit_edge
  %.sink588 = phi i32 [ 1, %if.then121.if.end128.sink.split_crit_edge ], [ 0, %if.else124.if.end128.sink.split_crit_edge ]
  %83 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.sink588, ptr %stop_arg, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end128.sink.split, %if.else124.if.end128_crit_edge, %if.then121.if.end128_crit_edge
  %call122.pn = phi i32 [ 0, %if.then121.if.end128_crit_edge ], [ 0, %if.else124.if.end128_crit_edge ], [ -22, %if.end128.sink.split ]
  %err.5 = or i32 %call122.pn, %err.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool129.not = icmp eq i32 %err.5, 0
  br i1 %tobool129.not, label %if.end131, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end131:                                        ; preds = %if.end128
  %84 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %start_src, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %85, label %if.end131.if.end330_crit_edge [
    i32 2, label %land.lhs.true134
    i32 64, label %land.lhs.true202
  ]

if.end131.if.end330_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

land.lhs.true134:                                 ; preds = %if.end131
  %87 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %scan_begin_src, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %88, label %land.lhs.true134.if.end330_crit_edge [
    i32 16, label %land.lhs.true137
    i32 4, label %land.lhs.true175
  ]

land.lhs.true134.if.end330_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

land.lhs.true137:                                 ; preds = %land.lhs.true134
  %90 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %91)
  %cmp139 = icmp eq i32 %91, 16
  br i1 %cmp139, label %if.then140, label %land.lhs.true137.if.end330_crit_edge

land.lhs.true137.if.end330_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

if.then140:                                       ; preds = %land.lhs.true137
  %92 = ptrtoint ptr %ai_init_ticks to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ai_init_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %93)
  %cmp142 = icmp ult i32 %93, 66
  br i1 %cmp142, label %do.end, label %if.then140.if.end145_crit_edge

if.then140.if.end145_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

do.end:                                           ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %94 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.43) #9
  %96 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2000, ptr %start_arg, align 4
  br label %if.end145

if.end145:                                        ; preds = %do.end, %if.then140.if.end145_crit_edge
  %err.6 = phi i32 [ 1, %do.end ], [ 0, %if.then140.if.end145_crit_edge ]
  %97 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ai_chan_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %98)
  %cmp147 = icmp ult i32 %98, 66
  br i1 %cmp147, label %do.end151, label %if.end145.if.end155_crit_edge

if.end145.if.end155_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

do.end151:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev152 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %99 = ptrtoint ptr %class_dev152 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %class_dev152, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.46) #9
  %101 = ptrtoint ptr %convert_arg.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2000, ptr %convert_arg.i, align 4
  %inc154 = add nuw nsw i32 %err.6, 1
  br label %if.end155

if.end155:                                        ; preds = %do.end151, %if.end145.if.end155_crit_edge
  %err.7 = phi i32 [ %inc154, %do.end151 ], [ %err.6, %if.end145.if.end155_crit_edge ]
  %102 = ptrtoint ptr %ai_scan_ticks to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ai_scan_ticks, align 4
  %104 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %chanlist_len, align 4
  %106 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ai_chan_ticks, align 4
  %mul = mul i32 %107, %105
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %mul)
  %cmp159.not = icmp ugt i32 %103, %mul
  br i1 %cmp159.not, label %if.end155.if.end330_crit_edge, label %do.end163

if.end155.if.end330_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

do.end163:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev164 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %108 = ptrtoint ptr %class_dev164 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %class_dev164, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.49) #9
  %110 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %chanlist_len, align 4
  %mul166 = mul i32 %111, 2000
  %add = add i32 %mul166, 31
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %112 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add, ptr %scan_end_arg, align 4
  %inc167 = add nuw nsw i32 %err.7, 1
  br label %if.end330

land.lhs.true175:                                 ; preds = %land.lhs.true134
  %113 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %114)
  %cmp177 = icmp eq i32 %114, 16
  br i1 %cmp177, label %if.then178, label %land.lhs.true175.if.end330_crit_edge

land.lhs.true175.if.end330_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

if.then178:                                       ; preds = %land.lhs.true175
  %115 = ptrtoint ptr %ai_init_ticks to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ai_init_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %116)
  %cmp180 = icmp ult i32 %116, 66
  br i1 %cmp180, label %do.end184, label %if.then178.if.end188_crit_edge

if.then178.if.end188_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

do.end184:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev185 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %117 = ptrtoint ptr %class_dev185 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %class_dev185, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.43) #9
  %119 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 2000, ptr %start_arg, align 4
  br label %if.end188

if.end188:                                        ; preds = %do.end184, %if.then178.if.end188_crit_edge
  %err.8 = phi i32 [ 1, %do.end184 ], [ 0, %if.then178.if.end188_crit_edge ]
  %120 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ai_chan_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %121)
  %cmp190 = icmp ult i32 %121, 66
  br i1 %cmp190, label %do.end194, label %if.end188.if.end330_crit_edge

if.end188.if.end330_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

do.end194:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev195 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %122 = ptrtoint ptr %class_dev195 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %class_dev195, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.46) #9
  %124 = ptrtoint ptr %convert_arg.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2000, ptr %convert_arg.i, align 4
  br label %if.end330

land.lhs.true202:                                 ; preds = %if.end131
  %125 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %scan_begin_src, align 4
  %127 = zext i32 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %126, label %land.lhs.true202.land.lhs.true278_crit_edge [
    i32 16, label %land.lhs.true205
    i32 4, label %land.lhs.true251
  ]

land.lhs.true202.land.lhs.true278_crit_edge:      ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true278

land.lhs.true205:                                 ; preds = %land.lhs.true202
  %128 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %129)
  %cmp207 = icmp eq i32 %129, 16
  br i1 %cmp207, label %if.then208, label %land.lhs.true205.land.lhs.true278thread-pre-split_crit_edge

land.lhs.true205.land.lhs.true278thread-pre-split_crit_edge: ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true278thread-pre-split

if.then208:                                       ; preds = %land.lhs.true205
  %130 = ptrtoint ptr %ai_init_ticks to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ai_init_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %131)
  %cmp210 = icmp ult i32 %131, 66
  br i1 %cmp210, label %do.end214, label %if.then208.if.end218_crit_edge

if.then208.if.end218_crit_edge:                   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end218

do.end214:                                        ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev215 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %132 = ptrtoint ptr %class_dev215 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %class_dev215, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.43) #9
  %134 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2000, ptr %start_arg, align 4
  br label %if.end218

if.end218:                                        ; preds = %do.end214, %if.then208.if.end218_crit_edge
  %err.9 = phi i32 [ 1, %do.end214 ], [ 0, %if.then208.if.end218_crit_edge ]
  %135 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ai_chan_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %136)
  %cmp220 = icmp ult i32 %136, 66
  br i1 %cmp220, label %do.end224, label %if.end218.if.end228_crit_edge

if.end218.if.end228_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end228

do.end224:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev225 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %137 = ptrtoint ptr %class_dev225 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %class_dev225, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.46) #9
  %139 = ptrtoint ptr %convert_arg.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 2000, ptr %convert_arg.i, align 4
  %inc227 = add nuw nsw i32 %err.9, 1
  br label %if.end228

if.end228:                                        ; preds = %do.end224, %if.end218.if.end228_crit_edge
  %err.10 = phi i32 [ %inc227, %do.end224 ], [ %err.9, %if.end218.if.end228_crit_edge ]
  %140 = ptrtoint ptr %ai_scan_ticks to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ai_scan_ticks, align 4
  %142 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %chanlist_len, align 4
  %144 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ai_chan_ticks, align 4
  %mul232 = mul i32 %145, %143
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %mul232)
  %cmp233.not = icmp ugt i32 %141, %mul232
  br i1 %cmp233.not, label %if.end228.if.end330_crit_edge, label %do.end237

if.end228.if.end330_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

do.end237:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev238 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %146 = ptrtoint ptr %class_dev238 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %class_dev238, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.49) #9
  %148 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %chanlist_len, align 4
  %mul240 = mul i32 %149, 2000
  %add241 = add i32 %mul240, 31
  %scan_end_arg242 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %150 = ptrtoint ptr %scan_end_arg242 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add241, ptr %scan_end_arg242, align 4
  %inc243 = add nuw nsw i32 %err.10, 1
  br label %if.end330

land.lhs.true251:                                 ; preds = %land.lhs.true202
  %151 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %152)
  %cmp253 = icmp eq i32 %152, 16
  br i1 %cmp253, label %if.then254, label %land.lhs.true251.land.lhs.true278thread-pre-split_crit_edge

land.lhs.true251.land.lhs.true278thread-pre-split_crit_edge: ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true278thread-pre-split

if.then254:                                       ; preds = %land.lhs.true251
  %153 = ptrtoint ptr %ai_init_ticks to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ai_init_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %154)
  %cmp256 = icmp ult i32 %154, 66
  br i1 %cmp256, label %do.end260, label %if.then254.if.end264_crit_edge

if.then254.if.end264_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end264

do.end260:                                        ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev261 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %155 = ptrtoint ptr %class_dev261 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %class_dev261, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.43) #9
  %157 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 2000, ptr %start_arg, align 4
  br label %if.end264

if.end264:                                        ; preds = %do.end260, %if.then254.if.end264_crit_edge
  %err.11 = phi i32 [ 1, %do.end260 ], [ 0, %if.then254.if.end264_crit_edge ]
  %158 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ai_chan_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %159)
  %cmp266 = icmp ult i32 %159, 66
  br i1 %cmp266, label %do.end270, label %if.end264.if.end330_crit_edge

if.end264.if.end330_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

do.end270:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev271 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %160 = ptrtoint ptr %class_dev271 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %class_dev271, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.46) #9
  %162 = ptrtoint ptr %convert_arg.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 2000, ptr %convert_arg.i, align 4
  br label %if.end330

land.lhs.true278thread-pre-split:                 ; preds = %land.lhs.true251.land.lhs.true278thread-pre-split_crit_edge, %land.lhs.true205.land.lhs.true278thread-pre-split_crit_edge
  %163 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr = load i32, ptr %scan_begin_src, align 4
  br label %land.lhs.true278

land.lhs.true278:                                 ; preds = %land.lhs.true278thread-pre-split, %land.lhs.true202.land.lhs.true278_crit_edge
  %164 = phi i32 [ %.pr, %land.lhs.true278thread-pre-split ], [ %126, %land.lhs.true202.land.lhs.true278_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %164)
  %cmp280 = icmp eq i32 %164, 64
  br i1 %cmp280, label %land.lhs.true281, label %land.lhs.true278.land.lhs.true308_crit_edge

land.lhs.true278.land.lhs.true308_crit_edge:      ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true308

land.lhs.true281:                                 ; preds = %land.lhs.true278
  %165 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %166)
  %cmp283 = icmp eq i32 %166, 16
  br i1 %cmp283, label %if.then284, label %land.lhs.true281.land.lhs.true308_crit_edge

land.lhs.true281.land.lhs.true308_crit_edge:      ; preds = %land.lhs.true281
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true308

if.then284:                                       ; preds = %land.lhs.true281
  %167 = ptrtoint ptr %ai_init_ticks to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ai_init_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %168)
  %cmp286 = icmp ult i32 %168, 66
  br i1 %cmp286, label %do.end290, label %if.then284.if.end294_crit_edge

if.then284.if.end294_crit_edge:                   ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end294

do.end290:                                        ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev291 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %169 = ptrtoint ptr %class_dev291 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %class_dev291, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.43) #9
  %171 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 2000, ptr %start_arg, align 4
  br label %if.end294

if.end294:                                        ; preds = %do.end290, %if.then284.if.end294_crit_edge
  %err.12 = phi i32 [ 1, %do.end290 ], [ 0, %if.then284.if.end294_crit_edge ]
  %172 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %ai_chan_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %173)
  %cmp296 = icmp ult i32 %173, 66
  br i1 %cmp296, label %do.end300, label %if.end294.if.end330_crit_edge

if.end294.if.end330_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

do.end300:                                        ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev301 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %174 = ptrtoint ptr %class_dev301 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %class_dev301, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.46) #9
  %176 = ptrtoint ptr %convert_arg.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 2000, ptr %convert_arg.i, align 4
  br label %if.end330

land.lhs.true308:                                 ; preds = %land.lhs.true281.land.lhs.true308_crit_edge, %land.lhs.true278.land.lhs.true308_crit_edge
  %177 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %178)
  %cmp310 = icmp eq i32 %178, 64
  br i1 %cmp310, label %land.lhs.true311, label %land.lhs.true308.if.end330_crit_edge

land.lhs.true308.if.end330_crit_edge:             ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

land.lhs.true311:                                 ; preds = %land.lhs.true308
  %179 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %180)
  %cmp313 = icmp eq i32 %180, 64
  br i1 %cmp313, label %if.then314, label %land.lhs.true311.if.end330_crit_edge

land.lhs.true311.if.end330_crit_edge:             ; preds = %land.lhs.true311
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

if.then314:                                       ; preds = %land.lhs.true311
  %181 = ptrtoint ptr %ai_init_ticks to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %ai_init_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %182)
  %cmp316 = icmp ult i32 %182, 66
  br i1 %cmp316, label %do.end320, label %if.then314.if.end330_crit_edge

if.then314.if.end330_crit_edge:                   ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

do.end320:                                        ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev321 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %183 = ptrtoint ptr %class_dev321 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %class_dev321, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.43) #9
  %185 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 2000, ptr %start_arg, align 4
  br label %if.end330

if.end330:                                        ; preds = %do.end320, %if.then314.if.end330_crit_edge, %land.lhs.true311.if.end330_crit_edge, %land.lhs.true308.if.end330_crit_edge, %do.end300, %if.end294.if.end330_crit_edge, %do.end270, %if.end264.if.end330_crit_edge, %do.end237, %if.end228.if.end330_crit_edge, %do.end194, %if.end188.if.end330_crit_edge, %land.lhs.true175.if.end330_crit_edge, %do.end163, %if.end155.if.end330_crit_edge, %land.lhs.true137.if.end330_crit_edge, %land.lhs.true134.if.end330_crit_edge, %if.end131.if.end330_crit_edge
  %err.13 = phi i32 [ %inc167, %do.end163 ], [ %err.7, %if.end155.if.end330_crit_edge ], [ 1, %do.end194 ], [ %err.8, %if.end188.if.end330_crit_edge ], [ %inc243, %do.end237 ], [ %err.10, %if.end228.if.end330_crit_edge ], [ 1, %do.end270 ], [ %err.11, %if.end264.if.end330_crit_edge ], [ 1, %do.end300 ], [ %err.12, %if.end294.if.end330_crit_edge ], [ 1, %do.end320 ], [ 0, %if.then314.if.end330_crit_edge ], [ 0, %land.lhs.true311.if.end330_crit_edge ], [ 0, %land.lhs.true308.if.end330_crit_edge ], [ 0, %land.lhs.true175.if.end330_crit_edge ], [ 0, %land.lhs.true137.if.end330_crit_edge ], [ 0, %land.lhs.true134.if.end330_crit_edge ], [ 0, %if.end131.if.end330_crit_edge ]
  %186 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %187)
  %cmp332 = icmp eq i32 %187, 32
  br i1 %cmp332, label %if.then333, label %if.end330.if.end344_crit_edge

if.end330.if.end344_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end344

if.then333:                                       ; preds = %if.end330
  %scan_end_arg334 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %188 = ptrtoint ptr %scan_end_arg334 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %scan_end_arg334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp335 = icmp eq i32 %189, 0
  br i1 %cmp335, label %if.end344.thread, label %if.then333.if.end344_crit_edge

if.then333.if.end344_crit_edge:                   ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end344

if.end344.thread:                                 ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev340 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %190 = ptrtoint ptr %class_dev340 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %class_dev340, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.49) #9
  %192 = ptrtoint ptr %scan_end_arg334 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 1, ptr %scan_end_arg334, align 4
  br label %cleanup

if.end344:                                        ; preds = %if.then333.if.end344_crit_edge, %if.end330.if.end344_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.13)
  %tobool345.not = icmp eq i32 %err.13, 0
  br i1 %tobool345.not, label %if.end347, label %if.end344.cleanup_crit_edge

if.end344.cleanup_crit_edge:                      ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end347:                                        ; preds = %if.end344
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %193 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %chanlist, align 4
  %tobool348.not = icmp eq ptr %194, null
  br i1 %tobool348.not, label %if.end347.if.end355.thread_crit_edge, label %land.lhs.true349

if.end347.if.end355.thread_crit_edge:             ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end355.thread

land.lhs.true349:                                 ; preds = %if.end347
  %195 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp351.not = icmp eq i32 %196, 0
  br i1 %cmp351.not, label %land.lhs.true349.if.end355.thread_crit_edge, label %if.end355

land.lhs.true349.if.end355.thread_crit_edge:      ; preds = %land.lhs.true349
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end355.thread

if.end355:                                        ; preds = %land.lhs.true349
  %call353 = tail call fastcc i32 @me4000_ai_check_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %phi.cmp = icmp eq i32 %call353, 0
  br i1 %phi.cmp, label %if.end355.if.end355.thread_crit_edge, label %if.end355.cleanup_crit_edge

if.end355.cleanup_crit_edge:                      ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end355.if.end355.thread_crit_edge:             ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end355.thread

if.end355.thread:                                 ; preds = %if.end355.if.end355.thread_crit_edge, %land.lhs.true349.if.end355.thread_crit_edge, %if.end347.if.end355.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end355.thread, %if.end355.cleanup_crit_edge, %if.end344.cleanup_crit_edge, %if.end344.thread, %if.end128.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %land.lhs.true69.cleanup_crit_edge, %land.lhs.true58.cleanup_crit_edge, %land.lhs.true47.cleanup_crit_edge, %land.lhs.true44.cleanup_crit_edge, %land.lhs.true36.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end92.cleanup_crit_edge ], [ 3, %if.end128.cleanup_crit_edge ], [ 4, %if.end344.cleanup_crit_edge ], [ 4, %if.end344.thread ], [ 0, %if.end355.thread ], [ 5, %if.end355.cleanup_crit_edge ], [ 2, %land.lhs.true36.cleanup_crit_edge ], [ 2, %land.lhs.true27.cleanup_crit_edge ], [ 2, %land.lhs.true47.cleanup_crit_edge ], [ 2, %land.lhs.true58.cleanup_crit_edge ], [ 2, %land.lhs.true.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 2, %land.lhs.true69.cleanup_crit_edge ], [ 2, %land.lhs.true44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_ai_do_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  tail call void @arm_heavy_mb() #6
  %ai_init_ticks = getelementptr inbounds %struct.me4000_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ai_init_ticks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ai_init_ticks, align 4
  %sub = add i32 %5, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 144
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %9 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add7 = add i32 %11, 148
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %12 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 0) #6, !srcloc !163
  %ai_scan_ticks = getelementptr inbounds %struct.me4000_private, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %ai_scan_ticks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ai_scan_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.do.body29_crit_edge, label %do.body11

entry.do.body29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %ai_scan_ticks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ai_scan_ticks, align 4
  %sub15 = add i32 %16, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %sub15)
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add17 = add i32 %19, 136
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %20 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add25 = add i32 %22, 140
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %23 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 0) #6, !srcloc !163
  br label %do.body29

do.body29:                                        ; preds = %do.body11, %entry.do.body29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  %ai_chan_ticks = getelementptr inbounds %struct.me4000_private, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ai_chan_ticks, align 4
  %sub32 = add i32 %25, -1
  %26 = tail call i32 @llvm.bswap.i32(i32 %sub32)
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase, align 4
  %add34 = add i32 %28, 132
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %29 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %26) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %ai_chan_ticks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ai_chan_ticks, align 4
  %sub42 = add i32 %31, -1
  %32 = tail call i32 @llvm.bswap.i32(i32 %sub42)
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase, align 4
  %add44 = add i32 %34, 128
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %35 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #6, !srcloc !163
  %ai_ctrl_mode = getelementptr inbounds %struct.me4000_private, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %ai_ctrl_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ai_ctrl_mode, align 4
  %or48 = or i32 %37, 192
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %38 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stop_src, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %39, label %do.body29.if.end73_crit_edge [
    i32 32, label %do.body50
    i32 1, label %land.lhs.true
  ]

do.body29.if.end73_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

do.body50:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %41 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chanlist_len, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %43 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stop_arg, align 4
  %mul = mul i32 %44, %42
  %45 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %46 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase, align 4
  %add54 = add i32 %47, 192
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %48 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 %45) #6, !srcloc !163
  %or58 = or i32 %37, 524480
  br label %if.end73

land.lhs.true:                                    ; preds = %do.body29
  %scan_end_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 8
  %49 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %50)
  %cmp61 = icmp eq i32 %50, 32
  br i1 %cmp61, label %do.body63, label %land.lhs.true.if.end73_crit_edge

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

do.body63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 9
  %51 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %scan_end_arg, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase, align 4
  %add67 = add i32 %55, 192
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %56 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #6, !srcloc !163
  %or71 = or i32 %37, 524480
  br label %if.end73

if.end73:                                         ; preds = %do.body63, %land.lhs.true.if.end73_crit_edge, %do.body50, %do.body29.if.end73_crit_edge
  %ctrl.0 = phi i32 [ %or58, %do.body50 ], [ %or71, %do.body63 ], [ %or48, %land.lhs.true.if.end73_crit_edge ], [ %or48, %do.body29.if.end73_crit_edge ]
  %or74 = or i32 %ctrl.0, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %or74)
  %58 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase, align 4
  %add79 = add i32 %59, 116
  %and80 = and i32 %add79, 1048575
  %add81 = or i32 %and80, -18874368
  %60 = inttoptr i32 %add81 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %60, i32 %57) #6, !srcloc !163
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %61 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp1.not.i = icmp eq i32 %62, 0
  br i1 %cmp1.not.i, label %if.end73.me4000_ai_write_chanlist.exit_crit_edge, label %for.body.lr.ph.i

if.end73.me4000_ai_write_chanlist.exit_crit_edge: ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %me4000_ai_write_chanlist.exit

for.body.lr.ph.i:                                 ; preds = %if.end73
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %63 = phi i32 [ %62, %for.body.lr.ph.i ], [ %75, %for.body.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %64 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i = getelementptr i32, ptr %65, i32 %i.02.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %67, 65535
  %68 = lshr i32 %67, 10
  %sub.i = and i32 %68, 192
  %shl.i = xor i32 %sub.i, 192
  %or.i = or i32 %shl.i, %and.i
  %69 = and i32 %67, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %69)
  %cmp10.i = icmp eq i32 %69, 33554432
  %or11.i = or i32 %or.i, 32
  %spec.select.i = select i1 %cmp10.i, i32 %or11.i, i32 %or.i
  %sub13.i = add i32 %63, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i, i32 %sub13.i)
  %cmp14.i = icmp eq i32 %i.02.i, %sub13.i
  %or16.i = or i32 %spec.select.i, 256
  %entry8.1.i = select i1 %cmp14.i, i32 %or16.i, i32 %spec.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %70 = tail call i32 @llvm.bswap.i32(i32 %entry8.1.i) #6
  %71 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase, align 4
  %add.i = add i32 %72, 120
  %and18.i = and i32 %add.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %73 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %73, i32 %70) #6, !srcloc !163
  %inc.i = add nuw i32 %i.02.i, 1
  %74 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %chanlist_len.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %75
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.me4000_ai_write_chanlist.exit_crit_edge

for.body.i.me4000_ai_write_chanlist.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %me4000_ai_write_chanlist.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

me4000_ai_write_chanlist.exit:                    ; preds = %for.body.i.me4000_ai_write_chanlist.exit_crit_edge, %if.end73.me4000_ai_write_chanlist.exit_crit_edge
  %76 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iobase, align 4
  %add84 = add i32 %77, 152
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %78 = inttoptr i32 %add86 to ptr
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %78) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %mul = mul nuw nsw i32 %and, 24
  %add1 = add i32 %mul, %3
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %4 = inttoptr i32 %add3 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %6 = or i32 %5, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add9 = add i32 %8, %mul
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %9 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add19 = add i32 %11, %mul
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %12 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 0) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add28 = add nuw nsw i32 %mul, 12
  %add29 = add i32 %add28, %17
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %18 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #6, !srcloc !163
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data, align 4
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %21 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %readback, align 4
  %arrayidx34 = getelementptr i32, ptr %22, i32 %and
  %23 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %arrayidx34, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = shl i32 %1, 24
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 160
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 %and) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = shl i32 %6, 16
  %and8 = and i32 %7, -16777216
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add10 = add i32 %9, 164
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %10 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %and8) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %13 = shl i32 %12, 8
  %and18 = and i32 %13, -16777216
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add20 = add i32 %15, 168
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %16 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %and18) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %19 = and i32 %18, -16777216
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add30 = add i32 %21, 172
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %22 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #6, !srcloc !163
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %iobase34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %23 = ptrtoint ptr %iobase34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase34, align 4
  %add35 = add i32 %24, 160
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %25 = inttoptr i32 %add37 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #6, !srcloc !165
  %27 = lshr i32 %26, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !230
  %28 = ptrtoint ptr %iobase34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase34, align 4
  %add43 = add i32 %29, 164
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %30 = inttoptr i32 %add45 to ptr
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  %32 = lshr i32 %31, 16
  %shl50 = and i32 %32, 65280
  %or = or i32 %shl50, %27
  %33 = ptrtoint ptr %iobase34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase34, align 4
  %add53 = add i32 %34, 168
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %35 = inttoptr i32 %add55 to ptr
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %35) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  %37 = lshr i32 %36, 8
  %shl60 = and i32 %37, 16711680
  %or61 = or i32 %or, %shl60
  %38 = ptrtoint ptr %iobase34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase34, align 4
  %add64 = add i32 %39, 172
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %40 = inttoptr i32 %add66 to ptr
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %40) #6, !srcloc !165
  %42 = and i32 %41, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  %or72 = or i32 %or61, %42
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or72, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %44 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n, align 4
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp ult i32 %and, 8
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp1 = icmp ult i32 %and, 16
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and)
  %cmp4 = icmp ult i32 %and, 24
  %. = select i1 %cmp4, i32 16711680, i32 -16777216
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mask.0 = phi i32 [ 255, %entry.if.end8_crit_edge ], [ 65280, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %mask.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 184
  %and11 = and i32 %add, 1048575
  %add12 = or i32 %and11, -18874368
  %4 = inttoptr i32 %add12 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  %6 = and i32 %5, 16777215
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %8 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_bits, align 4
  %and17 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp ne i32 %and17, 0
  %or = zext i1 %tobool18.not to i32
  %spec.select = or i32 %7, %or
  %and22 = and i32 %9, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or25 = or i32 %spec.select, 4
  %tmp.1 = select i1 %tobool23.not, i32 %spec.select, i32 %or25
  %and28 = and i32 %9, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or31 = or i32 %tmp.1, 16
  %tmp.2 = select i1 %tobool29.not, i32 %tmp.1, i32 %or31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %9)
  %tobool35.not = icmp ult i32 %9, 16777216
  %or37 = or i32 %tmp.2, 64
  %tmp.3 = select i1 %tobool35.not, i32 %tmp.2, i32 %or37
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add41 = add i32 %11, 176
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %12 = inttoptr i32 %add43 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool47.not = icmp eq i32 %13, 0
  br i1 %tobool47.not, label %if.end10.do.body_crit_edge, label %if.then48

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then48:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_bits, align 4
  %or50 = and i32 %15, -65536
  %and52 = or i32 %or50, 255
  store i32 %and52, ptr %io_bits, align 4
  %or53 = and i32 %tmp.3, -14
  %and54 = or i32 %or53, 1
  br label %do.body

do.body:                                          ; preds = %if.then48, %if.end10.do.body_crit_edge
  %tmp.4 = phi i32 [ %and54, %if.then48 ], [ %tmp.3, %if.end10.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %tmp.4)
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add57 = add i32 %18, 184
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %19 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #6, !srcloc !163
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %do.body ], [ %call, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_subdevice_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 116
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @me4000_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr = lshr i32 %3, 24
  %and = and i32 %shr, 3
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp106.not = icmp eq i32 %5, 0
  br i1 %cmp106.not, label %entry.cleanup75_crit_edge, label %for.body.lr.ph

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

for.body.lr.ph:                                   ; preds = %entry
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp18 = icmp eq i32 %and, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %1, i32 %i.0107
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %and3 = and i32 %7, 65535
  %shr6 = lshr i32 %7, 16
  %and7 = and i32 %shr6, 255
  %shr10 = lshr i32 %7, 24
  %and11 = and i32 %shr10, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %and)
  %cmp12.not = icmp eq i32 %and11, %and
  br i1 %cmp12.not, label %if.end17, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @me4000_ai_check_chanlist.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@me4000_ai_check_chanlist, %cleanup75)) #6
          to label %if.then16 [label %cleanup75], !srcloc !238

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @me4000_ai_check_chanlist.__UNIQUE_ID_ddebug236, ptr noundef %9, ptr noundef nonnull @.str.74) #6
  br label %cleanup75

if.end17:                                         ; preds = %for.body
  br i1 %cmp18, label %if.then19, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then19:                                        ; preds = %if.end17
  %10 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %subdev_flags, align 4
  %and20 = and i32 %11, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev26 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.35) #9
  br label %cleanup75

if.end27:                                         ; preds = %if.then19
  %14 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_chan, align 4
  %div = sdiv i32 %15, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %div)
  %cmp28.not = icmp ult i32 %and3, %div
  br i1 %cmp28.not, label %if.end49, label %do.body30

do.body30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @me4000_ai_check_chanlist.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@me4000_ai_check_chanlist, %cleanup75)) #6
          to label %if.then44 [label %cleanup75], !srcloc !238

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev45 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @me4000_ai_check_chanlist.__UNIQUE_ID_ddebug237, ptr noundef %17, ptr noundef nonnull @.str.75) #6
  br label %cleanup75

if.end49:                                         ; preds = %if.end27
  %18 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %19, i32 0, i32 1, i32 %and7
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp slt i32 %21, 0
  br i1 %cmp.i, label %if.end49.for.inc_crit_edge, label %do.body52

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @me4000_ai_check_chanlist.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@me4000_ai_check_chanlist, %cleanup75)) #6
          to label %if.then66 [label %cleanup75], !srcloc !238

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev67 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %22 = ptrtoint ptr %class_dev67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @me4000_ai_check_chanlist.__UNIQUE_ID_ddebug238, ptr noundef %23, ptr noundef nonnull @.str.76) #6
  br label %cleanup75

for.inc:                                          ; preds = %if.end49.for.inc_crit_edge, %if.end17.for.inc_crit_edge
  %inc = add nuw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup75_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup75_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

cleanup75:                                        ; preds = %for.inc.cleanup75_crit_edge, %if.then66, %do.body52, %if.then44, %do.body30, %do.end25, %if.then16, %do.body, %entry.cleanup75_crit_edge
  %retval.2 = phi i32 [ -22, %do.end25 ], [ -22, %if.then16 ], [ -22, %if.then44 ], [ -22, %if.then66 ], [ -22, %do.body ], [ -22, %do.body30 ], [ -22, %do.body52 ], [ 0, %entry.cleanup75_crit_edge ], [ 0, %for.inc.cleanup75_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me4000_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @me4000_driver, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !140, !142, !143, !145, !146, !148, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_me4000__239_1272_me4000_driver_init6, !1, !"__initcall__kmod_me4000__239_1272_me4000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/me4000.c", i32 1272, i32 1}
!2 = !{ptr @__exitcall_me4000_driver_exit, !1, !"__exitcall_me4000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/me4000.c", i32 1274, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/me4000.c", i32 1275, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/me4000.c", i32 1276, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware244, !11, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/me4000.c", i32 1277, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/me4000.c", i32 1236, i32 17}
!14 = !{ptr @me4000_driver, !15, !"me4000_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/me4000.c", i32 1235, i32 29}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/me4000.c", i32 1123, i32 51}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/me4000.c", i32 189, i32 12}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/me4000.c", i32 193, i32 12}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/me4000.c", i32 199, i32 12}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/me4000.c", i32 205, i32 12}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/me4000.c", i32 212, i32 12}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/me4000.c", i32 219, i32 12}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/me4000.c", i32 227, i32 12}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/me4000.c", i32 235, i32 12}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/me4000.c", i32 244, i32 12}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/me4000.c", i32 253, i32 12}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/me4000.c", i32 262, i32 12}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/me4000.c", i32 271, i32 12}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/me4000.c", i32 281, i32 12}
!44 = !{ptr @me4000_boards, !45, !"me4000_boards", i1 false, i1 false}
!45 = !{!"../drivers/comedi/drivers/me4000.c", i32 187, i32 34}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/me4000.c", i32 339, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @me4000_xilinx_download._entry, !47, !"_entry", i1 false, i1 false}
!53 = !{ptr @me4000_xilinx_download._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/comedi/drivers/me4000.c", i32 362, i32 4}
!56 = !{ptr @me4000_xilinx_download._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @me4000_xilinx_download._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/comedi/drivers/me4000.c", i32 371, i32 3}
!60 = !{ptr @me4000_xilinx_download._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @me4000_xilinx_download._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/comedi/drivers/me4000.c", i32 372, i32 3}
!64 = !{ptr @me4000_xilinx_download._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @me4000_xilinx_download._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/comedi/drivers/me4000.c", i32 939, i32 4}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @me4000_ai_isr._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @me4000_ai_isr._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/comedi/drivers/me4000.c", i32 947, i32 4}
!73 = !{ptr @me4000_ai_isr._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @me4000_ai_isr._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @me4000_ai_range, !76, !"me4000_ai_range", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/me4000.c", i32 298, i32 35}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/me4000.c", i32 474, i32 4}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @me4000_ai_insn_read._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @me4000_ai_insn_read._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/comedi/drivers/me4000.c", i32 480, i32 4}
!84 = !{ptr @me4000_ai_insn_read._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @me4000_ai_insn_read._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/comedi/drivers/me4000.c", i32 486, i32 4}
!88 = !{ptr @me4000_ai_insn_read._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @me4000_ai_insn_read._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/comedi/drivers/me4000.c", i32 807, i32 4}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @me4000_ai_do_cmd_test._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @me4000_ai_do_cmd_test._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/comedi/drivers/me4000.c", i32 812, i32 4}
!97 = !{ptr @me4000_ai_do_cmd_test._entry.45, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.47, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/comedi/drivers/me4000.c", i32 818, i32 4}
!101 = !{ptr @me4000_ai_do_cmd_test._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @me4000_ai_do_cmd_test._entry.51, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/comedi/drivers/me4000.c", i32 829, i32 4}
!105 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @me4000_ai_do_cmd_test._entry.53, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/comedi/drivers/me4000.c", i32 834, i32 4}
!108 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.54, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @me4000_ai_do_cmd_test._entry.55, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/comedi/drivers/me4000.c", i32 843, i32 4}
!111 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.56, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @me4000_ai_do_cmd_test._entry.57, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/comedi/drivers/me4000.c", i32 848, i32 4}
!114 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.58, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @me4000_ai_do_cmd_test._entry.59, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/comedi/drivers/me4000.c", i32 854, i32 4}
!117 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.60, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @me4000_ai_do_cmd_test._entry.61, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/comedi/drivers/me4000.c", i32 865, i32 4}
!120 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.62, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @me4000_ai_do_cmd_test._entry.63, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/comedi/drivers/me4000.c", i32 870, i32 4}
!123 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.64, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @me4000_ai_do_cmd_test._entry.65, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/comedi/drivers/me4000.c", i32 879, i32 4}
!126 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.66, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @me4000_ai_do_cmd_test._entry.67, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/comedi/drivers/me4000.c", i32 884, i32 4}
!129 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.68, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @me4000_ai_do_cmd_test._entry.69, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/comedi/drivers/me4000.c", i32 893, i32 4}
!132 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.70, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @me4000_ai_do_cmd_test._entry.71, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/comedi/drivers/me4000.c", i32 900, i32 4}
!135 = !{ptr @me4000_ai_do_cmd_test._entry_ptr.72, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/comedi/drivers/me4000.c", i32 546, i32 4}
!138 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @me4000_ai_check_chanlist.__UNIQUE_ID_ddebug236, !137, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!140 = !{ptr @me4000_ai_check_chanlist._entry, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/comedi/drivers/me4000.c", i32 553, i32 5}
!142 = !{ptr @me4000_ai_check_chanlist._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/comedi/drivers/me4000.c", i32 559, i32 5}
!145 = !{ptr @me4000_ai_check_chanlist.__UNIQUE_ID_ddebug237, !144, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/comedi/drivers/me4000.c", i32 565, i32 5}
!148 = !{ptr @me4000_ai_check_chanlist.__UNIQUE_ID_ddebug238, !147, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!149 = !{ptr @me4000_pci_driver, !150, !"me4000_pci_driver", i1 false, i1 false}
!150 = !{!"../drivers/comedi/drivers/me4000.c", i32 1266, i32 26}
!151 = !{ptr @me4000_pci_table, !152, !"me4000_pci_table", i1 false, i1 false}
!152 = !{!"../drivers/comedi/drivers/me4000.c", i32 1248, i32 35}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 2154668936}
!163 = !{i64 4657103}
!164 = !{i64 2154587245}
!165 = !{i64 4657521}
!166 = !{i64 2154588195}
!167 = !{i64 2154588548}
!168 = !{i64 2154589132}
!169 = !{i64 2154589694}
!170 = !{i64 2154585847}
!171 = !{i64 2154586272}
!172 = !{i64 2154586756}
!173 = !{i64 2154590437}
!174 = !{i64 2154590948}
!175 = !{i64 2154591859}
!176 = !{i64 2154592119}
!177 = !{i64 2154666772}
!178 = !{i64 2154667985}
!179 = !{i64 2154668351}
!180 = !{i64 2154571458}
!181 = !{i64 2154572460}
!182 = !{i64 2154572811}
!183 = !{i64 4657301}
!184 = !{i64 2154573343}
!185 = !{i64 2154574066}
!186 = !{i64 2154576435}
!187 = !{i64 2154576786}
!188 = !{i64 2154577240}
!189 = !{i64 4656906}
!190 = !{i64 2154578085}
!191 = !{i64 2154580566}
!192 = !{i64 2154584578}
!193 = !{i64 2154584929}
!194 = !{!"auto-init"}
!195 = !{i64 2154646062}
!196 = !{i64 2154646831}
!197 = !{i64 2154593028}
!198 = !{i64 2154650804}
!199 = !{i64 2154651370}
!200 = !{i64 2154652279}
!201 = !{i64 2154653048}
!202 = !{i64 2154653819}
!203 = !{i64 2154654163}
!204 = !{i64 2154654729}
!205 = !{i64 2154599763}
!206 = !{i64 2154600355}
!207 = !{i64 2154600843}
!208 = !{i64 2154601325}
!209 = !{i64 2154602232}
!210 = !{i32 0, i32 33}
!211 = !{i64 2154612512}
!212 = !{i64 2154613040}
!213 = !{i64 2154613545}
!214 = !{i64 2154614073}
!215 = !{i64 2154614578}
!216 = !{i64 2154615129}
!217 = !{i64 2154615862}
!218 = !{i64 2154616524}
!219 = !{i64 2154617203}
!220 = !{i64 2154612003}
!221 = !{i64 2154618114}
!222 = !{i64 2154655805}
!223 = !{i64 2154656215}
!224 = !{i64 2154656788}
!225 = !{i64 2154657365}
!226 = !{i64 2154657897}
!227 = !{i64 2154658436}
!228 = !{i64 2154658976}
!229 = !{i64 2154659518}
!230 = !{i64 2154660467}
!231 = !{i64 2154661154}
!232 = !{i64 2154661841}
!233 = !{i64 2154662528}
!234 = !{i64 2154663245}
!235 = !{i64 2154664916}
!236 = !{i64 2154665422}
!237 = !{i64 2154593715}
!238 = !{i64 2148986850, i64 2148986855, i64 2148986868, i64 2148986912, i64 2148986946, i64 2148986967}
