; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_660x.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_660x.c"
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
%struct.ni_660x_register_data = type { i32, i8 }
%struct.ni_660x_board = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ni_660x_private = type { ptr, ptr, [2 x [4 x ptr]], %struct.spinlock, %struct.spinlock, [2 x i32], [40 x i32], i64, %struct.ni_route_tables }
%struct.ni_route_tables = type { ptr, ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.ni_gpct_device = type { ptr, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.spinlock, ptr }
%struct.ni_gpct = type { ptr, i32, i32, i64, ptr, %struct.spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.mite_channel = type { ptr, i32, i32, i32, ptr }

@__initcall__kmod_ni_660x__240_1250_ni_660x_driver_init6 = internal global ptr @ni_660x_driver_init, section ".initcall6.init", align 4
@ni_660x_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @ni_660x_detach, ptr @ni_660x_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ni_660x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ni_660x_pci_table, ptr @ni_660x_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ni_660x_driver_exit = internal global ptr @ni_660x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [45 x i8] c"ni_660x.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [67 x i8] c"ni_660x.description=Comedi driver for NI 660x counter/timer boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [44 x i8] c"ni_660x.file=drivers/comedi/drivers/ni_660x\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [20 x i8] c"ni_660x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ni_660x\00", [24 x i8] zeroinitializer }, align 32
@ni_660x_reg_data = internal constant { [100 x %struct.ni_660x_register_data], [192 x i8] } { [100 x %struct.ni_660x_register_data] [%struct.ni_660x_register_data { i32 136, i8 2 }, %struct.ni_660x_register_data { i32 138, i8 2 }, %struct.ni_660x_register_data { i32 392, i8 2 }, %struct.ni_660x_register_data { i32 394, i8 2 }, %struct.ni_660x_register_data { i32 12, i8 2 }, %struct.ni_660x_register_data { i32 14, i8 2 }, %struct.ni_660x_register_data { i32 268, i8 2 }, %struct.ni_660x_register_data { i32 270, i8 2 }, %struct.ni_660x_register_data { i32 16, i8 4 }, %struct.ni_660x_register_data { i32 20, i8 4 }, %struct.ni_660x_register_data { i32 272, i8 4 }, %struct.ni_660x_register_data { i32 276, i8 4 }, %struct.ni_660x_register_data { i32 24, i8 4 }, %struct.ni_660x_register_data { i32 28, i8 4 }, %struct.ni_660x_register_data { i32 280, i8 4 }, %struct.ni_660x_register_data { i32 284, i8 4 }, %struct.ni_660x_register_data { i32 52, i8 2 }, %struct.ni_660x_register_data { i32 54, i8 2 }, %struct.ni_660x_register_data { i32 308, i8 2 }, %struct.ni_660x_register_data { i32 310, i8 2 }, %struct.ni_660x_register_data { i32 56, i8 4 }, %struct.ni_660x_register_data { i32 64, i8 4 }, %struct.ni_660x_register_data { i32 312, i8 4 }, %struct.ni_660x_register_data { i32 320, i8 4 }, %struct.ni_660x_register_data { i32 60, i8 4 }, %struct.ni_660x_register_data { i32 68, i8 4 }, %struct.ni_660x_register_data { i32 316, i8 4 }, %struct.ni_660x_register_data { i32 324, i8 4 }, %struct.ni_660x_register_data { i32 72, i8 2 }, %struct.ni_660x_register_data { i32 74, i8 2 }, %struct.ni_660x_register_data { i32 328, i8 2 }, %struct.ni_660x_register_data { i32 330, i8 2 }, %struct.ni_660x_register_data { i32 176, i8 2 }, %struct.ni_660x_register_data { i32 178, i8 2 }, %struct.ni_660x_register_data { i32 432, i8 2 }, %struct.ni_660x_register_data { i32 434, i8 2 }, %struct.ni_660x_register_data { i32 180, i8 2 }, %struct.ni_660x_register_data { i32 182, i8 2 }, %struct.ni_660x_register_data { i32 436, i8 2 }, %struct.ni_660x_register_data { i32 438, i8 2 }, %struct.ni_660x_register_data { i32 8, i8 2 }, %struct.ni_660x_register_data { i32 264, i8 2 }, %struct.ni_660x_register_data { i32 144, i8 2 }, %struct.ni_660x_register_data { i32 400, i8 2 }, %struct.ni_660x_register_data { i32 54, i8 2 }, %struct.ni_660x_register_data { i32 310, i8 2 }, %struct.ni_660x_register_data { i32 58, i8 2 }, %struct.ni_660x_register_data { i32 314, i8 2 }, %struct.ni_660x_register_data { i32 184, i8 2 }, %struct.ni_660x_register_data { i32 186, i8 2 }, %struct.ni_660x_register_data { i32 440, i8 2 }, %struct.ni_660x_register_data { i32 442, i8 2 }, %struct.ni_660x_register_data { i32 184, i8 2 }, %struct.ni_660x_register_data { i32 186, i8 2 }, %struct.ni_660x_register_data { i32 440, i8 2 }, %struct.ni_660x_register_data { i32 442, i8 2 }, %struct.ni_660x_register_data zeroinitializer, %struct.ni_660x_register_data zeroinitializer, %struct.ni_660x_register_data { i32 4, i8 2 }, %struct.ni_660x_register_data { i32 6, i8 2 }, %struct.ni_660x_register_data { i32 260, i8 2 }, %struct.ni_660x_register_data { i32 262, i8 2 }, %struct.ni_660x_register_data { i32 4, i8 2 }, %struct.ni_660x_register_data { i32 6, i8 2 }, %struct.ni_660x_register_data { i32 260, i8 2 }, %struct.ni_660x_register_data { i32 262, i8 2 }, %struct.ni_660x_register_data { i32 146, i8 2 }, %struct.ni_660x_register_data { i32 150, i8 2 }, %struct.ni_660x_register_data { i32 402, i8 2 }, %struct.ni_660x_register_data { i32 406, i8 2 }, %struct.ni_660x_register_data { i32 14, i8 2 }, %struct.ni_660x_register_data { i32 20, i8 2 }, %struct.ni_660x_register_data { i32 22, i8 2 }, %struct.ni_660x_register_data { i32 56, i8 2 }, %struct.ni_660x_register_data { i32 1044, i8 4 }, %struct.ni_660x_register_data { i32 1296, i8 4 }, %struct.ni_660x_register_data { i32 1852, i8 4 }, %struct.ni_660x_register_data { i32 1876, i8 4 }, %struct.ni_660x_register_data { i32 1900, i8 4 }, %struct.ni_660x_register_data { i32 1904, i8 4 }, %struct.ni_660x_register_data { i32 1916, i8 2 }, %struct.ni_660x_register_data { i32 1918, i8 2 }, %struct.ni_660x_register_data { i32 1920, i8 2 }, %struct.ni_660x_register_data { i32 1922, i8 2 }, %struct.ni_660x_register_data { i32 1924, i8 2 }, %struct.ni_660x_register_data { i32 1926, i8 2 }, %struct.ni_660x_register_data { i32 1928, i8 2 }, %struct.ni_660x_register_data { i32 1930, i8 2 }, %struct.ni_660x_register_data { i32 1932, i8 2 }, %struct.ni_660x_register_data { i32 1934, i8 2 }, %struct.ni_660x_register_data { i32 1936, i8 2 }, %struct.ni_660x_register_data { i32 1938, i8 2 }, %struct.ni_660x_register_data { i32 1940, i8 2 }, %struct.ni_660x_register_data { i32 1942, i8 2 }, %struct.ni_660x_register_data { i32 1944, i8 2 }, %struct.ni_660x_register_data { i32 1946, i8 2 }, %struct.ni_660x_register_data { i32 1948, i8 2 }, %struct.ni_660x_register_data { i32 1950, i8 2 }, %struct.ni_660x_register_data { i32 1952, i8 2 }, %struct.ni_660x_register_data { i32 1954, i8 2 }], [192 x i8] zeroinitializer }, align 32
@ni_660x_boards = internal constant { [7 x %struct.ni_660x_board], [40 x i8] } { [7 x %struct.ni_660x_board] [%struct.ni_660x_board { ptr @.str.12, i32 1 }, %struct.ni_660x_board { ptr @.str.13, i32 2 }, %struct.ni_660x_board { ptr @.str.14, i32 2 }, %struct.ni_660x_board { ptr @.str.15, i32 2 }, %struct.ni_660x_board { ptr @.str.16, i32 2 }, %struct.ni_660x_board { ptr @.str.17, i32 2 }, %struct.ni_660x_board { ptr @.str.18, i32 2 }], [40 x i8] zeroinitializer }, align 32
@ni_660x_auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1040, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: %s device has no signal routing table.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ni_660x_auto_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/comedi/drivers/ni_660x.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ni_660x_auto_attach._entry_ptr = internal global ptr @ni_660x_auto_attach._entry, section ".printk_index", align 4
@ni_660x_auto_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1042, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: High level NI signal names will not be available for this %s board.\0A\00", [55 x i8] zeroinitializer }, align 32
@ni_660x_auto_attach._entry_ptr.8 = internal global ptr @ni_660x_auto_attach._entry.6, section ".printk_index", align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@ni_660x_auto_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1188, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" irq not available\0A\00", [44 x i8] zeroinitializer }, align 32
@ni_660x_auto_attach._entry_ptr.11 = internal global ptr @ni_660x_auto_attach._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCI-6601\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCI-6602\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PXI-6602\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCI-6608\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PXI-6608\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCI-6624\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PXI-6624\00", [23 x i8] zeroinitializer }, align 32
@ni_660x_allocate_private.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&devpriv->mite_channel_lock\00", [36 x i8] zeroinitializer }, align 32
@ni_660x_allocate_private.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&devpriv->interrupt_lock\00", [39 x i8] zeroinitializer }, align 32
@get_output_select_source.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 -65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get_output_select_source\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: unhandled rtsi destination (%d) queried\0A\00", [51 x i8] zeroinitializer }, align 32
@get_output_select_source.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 -59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: unhandled destination (%d) queried\0A\00", [56 x i8] zeroinitializer }, align 32
@connect_route.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"connect_route\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unhandled rtsi destination (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@disconnect_route.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.26, i8 0, i8 -29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disconnect_route\00", [47 x i8] zeroinitializer }, align 32
@ni_660x_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 386, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"no dma channel available for use by counter\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ni_660x_cmd\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ni_660x_cmd._entry_ptr = internal global ptr @ni_660x_cmd._entry, section ".printk_index", align 4
@ni_660x_request_mite_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 351, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to reserve mite dma channel for counter\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ni_660x_request_mite_channel\00", [35 x i8] zeroinitializer }, align 32
@ni_660x_request_mite_channel._entry_ptr = internal global ptr @ni_660x_request_mite_channel._entry, section ".printk_index", align 4
@ni_660x_pci_table = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 4243, i32 4880, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4243, i32 4960, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4243, i32 11360, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4243, i32 11696, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4243, i32 11456, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4243, i32 7728, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4243, i32 7744, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 24, i64 28, i64 4099, i64 4109]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"ni_660x_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1219, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"ni_660x_pci_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1244, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1220, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"ni_660x_reg_data\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 97, i32 43 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"ni_660x_boards\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 215, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1039, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1041, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1188, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 217, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 221, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 225, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 229, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 233, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 237, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 241, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 492, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 493, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 762, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 786, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 847, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 910, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 385, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 350, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"ni_660x_pci_table\00", align 1
@___asan_gen_.154 = private constant [36 x i8] c"../drivers/comedi/drivers/ni_660x.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1232, i32 35 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_ni_660x_driver_exit, ptr @__initcall__kmod_ni_660x__240_1250_ni_660x_driver_init6, ptr @ni_660x_auto_attach._entry, ptr @ni_660x_auto_attach._entry.6, ptr @ni_660x_auto_attach._entry.9, ptr @ni_660x_auto_attach._entry_ptr, ptr @ni_660x_auto_attach._entry_ptr.11, ptr @ni_660x_auto_attach._entry_ptr.8, ptr @ni_660x_cmd._entry, ptr @ni_660x_cmd._entry_ptr, ptr @ni_660x_driver_exit, ptr @ni_660x_request_mite_channel._entry, ptr @ni_660x_request_mite_channel._entry_ptr, ptr @ni_660x_driver, ptr @ni_660x_pci_driver, ptr @.str, ptr @ni_660x_reg_data, ptr @ni_660x_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ni_660x_allocate_private.__key, ptr @.str.19, ptr @ni_660x_allocate_private.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ni_660x_pci_table], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_reg_data to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_boards to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_auto_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_auto_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_allocate_private.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_allocate_private.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_request_mite_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_660x_pci_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @ni_660x_driver, ptr noundef nonnull @ni_660x_pci_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ni_660x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @ni_660x_driver, ptr noundef nonnull @ni_660x_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ni_660x_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %mmio7.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 1904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #6, !srcloc !92
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %7, ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %counter_dev = getelementptr inbounds %struct.ni_660x_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %counter_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %counter_dev, align 4
  tail call void @ni_gpct_device_destroy(ptr noundef %9) #6
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_ptr.i, align 4
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 4
  %n_chips.i = getelementptr inbounds %struct.ni_660x_board, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %n_chips.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_chips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14.not.i = icmp eq i32 %15, 0
  br i1 %cmp14.not.i, label %if.then3.ni_660x_free_mite_rings.exit_crit_edge, label %if.then3.for.cond1.preheader.i_crit_edge

if.then3.for.cond1.preheader.i_crit_edge:         ; preds = %if.then3
  br label %for.cond1.preheader.i

if.then3.ni_660x_free_mite_rings.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_free_mite_rings.exit

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, %if.then3.for.cond1.preheader.i_crit_edge
  %i.015.i = phi i32 [ %inc6.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.then3.for.cond1.preheader.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.ni_660x_private, ptr %13, i32 0, i32 2, i32 %i.015.i, i32 0
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @mite_free_ring(ptr noundef %17) #6
  %arrayidx4.1.i = getelementptr %struct.ni_660x_private, ptr %13, i32 0, i32 2, i32 %i.015.i, i32 1
  %18 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4.1.i, align 4
  tail call void @mite_free_ring(ptr noundef %19) #6
  %arrayidx4.2.i = getelementptr %struct.ni_660x_private, ptr %13, i32 0, i32 2, i32 %i.015.i, i32 2
  %20 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx4.2.i, align 4
  tail call void @mite_free_ring(ptr noundef %21) #6
  %arrayidx4.3.i = getelementptr %struct.ni_660x_private, ptr %13, i32 0, i32 2, i32 %i.015.i, i32 3
  %22 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx4.3.i, align 4
  tail call void @mite_free_ring(ptr noundef %23) #6
  %inc6.i = add nuw i32 %i.015.i, 1
  %24 = ptrtoint ptr %n_chips.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_chips.i, align 4
  %cmp.i = icmp ult i32 %inc6.i, %25
  br i1 %cmp.i, label %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, label %for.cond1.preheader.i.ni_660x_free_mite_rings.exit_crit_edge

for.cond1.preheader.i.ni_660x_free_mite_rings.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_free_mite_rings.exit

for.cond1.preheader.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

ni_660x_free_mite_rings.exit:                     ; preds = %for.cond1.preheader.i.ni_660x_free_mite_rings.exit_crit_edge, %if.then3.ni_660x_free_mite_rings.exit_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  tail call void @mite_detach(ptr noundef %27) #6
  br label %if.end4

if.end4:                                          ; preds = %ni_660x_free_mite_rings.exit, %if.end.if.end4_crit_edge
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %28 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio, align 4
  %tobool5.not = icmp eq ptr %29, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %29) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  tail call void @comedi_pci_disable(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %context)
  %cmp = icmp ugt i32 %context, 6
  %arrayidx = getelementptr [7 x %struct.ni_660x_board], ptr @ni_660x_boards, i32 0, i32 %context
  %tobool.not218 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not218
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

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
  %call3 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call.i = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 312) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %mite_channel_lock.i = getelementptr inbounds %struct.ni_660x_private, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %mite_channel_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @ni_660x_allocate_private.__key, i16 noundef signext 3) #6
  %interrupt_lock.i = getelementptr inbounds %struct.ni_660x_private, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %interrupt_lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @ni_660x_allocate_private.__key.20, i16 noundef signext 3) #6
  %arrayidx.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 5
  %9 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 7
  %11 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 8
  %12 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 9
  %13 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 10
  %14 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 11
  %15 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 12
  %16 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx.12.i, align 4
  %arrayidx.13.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 13
  %17 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 14
  %18 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %arrayidx.14.i, align 4
  %arrayidx.15.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 15
  %19 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx.15.i, align 4
  %arrayidx.16.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 16
  %20 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %arrayidx.16.i, align 4
  %arrayidx.17.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 17
  %21 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx.17.i, align 4
  %arrayidx.18.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 18
  %22 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx.18.i, align 4
  %arrayidx.19.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 19
  %23 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx.19.i, align 4
  %arrayidx.20.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 20
  %24 = ptrtoint ptr %arrayidx.20.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx.20.i, align 4
  %arrayidx.21.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 21
  %25 = ptrtoint ptr %arrayidx.21.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx.21.i, align 4
  %arrayidx.22.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 22
  %26 = ptrtoint ptr %arrayidx.22.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %arrayidx.22.i, align 4
  %arrayidx.23.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 23
  %27 = ptrtoint ptr %arrayidx.23.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %arrayidx.23.i, align 4
  %arrayidx.24.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 24
  %28 = ptrtoint ptr %arrayidx.24.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %arrayidx.24.i, align 4
  %arrayidx.25.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 25
  %29 = ptrtoint ptr %arrayidx.25.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx.25.i, align 4
  %arrayidx.26.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 26
  %30 = ptrtoint ptr %arrayidx.26.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arrayidx.26.i, align 4
  %arrayidx.27.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 27
  %31 = ptrtoint ptr %arrayidx.27.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %arrayidx.27.i, align 4
  %arrayidx.28.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 28
  %32 = ptrtoint ptr %arrayidx.28.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %arrayidx.28.i, align 4
  %arrayidx.29.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 29
  %33 = ptrtoint ptr %arrayidx.29.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %arrayidx.29.i, align 4
  %arrayidx.30.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 30
  %34 = ptrtoint ptr %arrayidx.30.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %arrayidx.30.i, align 4
  %arrayidx.31.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 31
  %35 = ptrtoint ptr %arrayidx.31.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %arrayidx.31.i, align 4
  %arrayidx.32.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 32
  %36 = ptrtoint ptr %arrayidx.32.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %arrayidx.32.i, align 4
  %arrayidx.33.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 33
  %37 = ptrtoint ptr %arrayidx.33.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %arrayidx.33.i, align 4
  %arrayidx.34.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 34
  %38 = ptrtoint ptr %arrayidx.34.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %arrayidx.34.i, align 4
  %arrayidx.35.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 35
  %39 = ptrtoint ptr %arrayidx.35.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %arrayidx.35.i, align 4
  %arrayidx.36.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 36
  %40 = ptrtoint ptr %arrayidx.36.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %arrayidx.36.i, align 4
  %arrayidx.37.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 37
  %41 = ptrtoint ptr %arrayidx.37.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %arrayidx.37.i, align 4
  %arrayidx.38.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 38
  %42 = ptrtoint ptr %arrayidx.38.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %arrayidx.38.i, align 4
  %arrayidx.39.i = getelementptr %struct.ni_660x_private, ptr %call.i, i32 0, i32 6, i32 39
  %43 = ptrtoint ptr %arrayidx.39.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx.39.i, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private, align 4
  %call11 = tail call ptr @mite_attach(ptr noundef %dev, i1 noundef zeroext true) #6
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call11, ptr %45, align 8
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %47 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %board_ptr, align 4
  %49 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %private, align 4
  %n_chips.i = getelementptr inbounds %struct.ni_660x_board, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %n_chips.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_chips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp25.not.i = icmp eq i32 %52, 0
  br i1 %cmp25.not.i, label %if.end15.if.end19_crit_edge, label %if.end15.for.cond1.preheader.i_crit_edge

if.end15.for.cond1.preheader.i_crit_edge:         ; preds = %if.end15
  br label %for.cond1.preheader.i

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.cond1.preheader.i:                            ; preds = %for.cond1.3.i.for.cond1.preheader.i_crit_edge, %if.end15.for.cond1.preheader.i_crit_edge
  %i.026.i = phi i32 [ %inc9.i, %for.cond1.3.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.end15.for.cond1.preheader.i_crit_edge ]
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 8
  %call.i195 = tail call ptr @mite_alloc_ring(ptr noundef %54) #6
  %arrayidx4.i = getelementptr %struct.ni_660x_private, ptr %50, i32 0, i32 2, i32 %i.026.i, i32 0
  %55 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i195, ptr %arrayidx4.i, align 4
  %tobool.not.i196 = icmp eq ptr %call.i195, null
  br i1 %tobool.not.i196, label %for.cond1.preheader.i.cleanup_crit_edge, label %for.cond1.i

for.cond1.preheader.i.cleanup_crit_edge:          ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond1.i:                                      ; preds = %for.cond1.preheader.i
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %50, align 8
  %call.1.i = tail call ptr @mite_alloc_ring(ptr noundef %57) #6
  %arrayidx4.1.i = getelementptr %struct.ni_660x_private, ptr %50, i32 0, i32 2, i32 %i.026.i, i32 1
  %58 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.1.i, ptr %arrayidx4.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %for.cond1.i.cleanup_crit_edge, label %for.cond1.1.i

for.cond1.i.cleanup_crit_edge:                    ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond1.1.i:                                    ; preds = %for.cond1.i
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %50, align 8
  %call.2.i = tail call ptr @mite_alloc_ring(ptr noundef %60) #6
  %arrayidx4.2.i = getelementptr %struct.ni_660x_private, ptr %50, i32 0, i32 2, i32 %i.026.i, i32 2
  %61 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.2.i, ptr %arrayidx4.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %call.2.i, null
  br i1 %tobool.not.2.i, label %for.cond1.1.i.cleanup_crit_edge, label %for.cond1.2.i

for.cond1.1.i.cleanup_crit_edge:                  ; preds = %for.cond1.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond1.2.i:                                    ; preds = %for.cond1.1.i
  %62 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %50, align 8
  %call.3.i = tail call ptr @mite_alloc_ring(ptr noundef %63) #6
  %arrayidx4.3.i = getelementptr %struct.ni_660x_private, ptr %50, i32 0, i32 2, i32 %i.026.i, i32 3
  %64 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.3.i, ptr %arrayidx4.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %call.3.i, null
  br i1 %tobool.not.3.i, label %for.cond1.2.i.cleanup_crit_edge, label %for.cond1.3.i

for.cond1.2.i.cleanup_crit_edge:                  ; preds = %for.cond1.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond1.3.i:                                    ; preds = %for.cond1.2.i
  %inc9.i = add nuw i32 %i.026.i, 1
  %65 = ptrtoint ptr %n_chips.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_chips.i, align 4
  %cmp.i = icmp ult i32 %inc9.i, %66
  br i1 %cmp.i, label %for.cond1.3.i.for.cond1.preheader.i_crit_edge, label %for.cond1.3.i.if.end19_crit_edge

for.cond1.3.i.if.end19_crit_edge:                 ; preds = %for.cond1.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.cond1.3.i.for.cond1.preheader.i_crit_edge:    ; preds = %for.cond1.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

if.end19:                                         ; preds = %for.cond1.3.i.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %n_chips = getelementptr [7 x %struct.ni_660x_board], ptr @ni_660x_boards, i32 0, i32 %context, i32 1
  %67 = ptrtoint ptr %n_chips to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_chips, align 4
  %69 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %71 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #6, !srcloc !93
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc14.i.for.body.i_crit_edge, %if.end19
  %chip.045.i = phi i32 [ %inc15.i, %for.inc14.i.for.body.i_crit_edge ], [ 0, %if.end19 ]
  %arrayidx.i199 = getelementptr %struct.ni_660x_private, ptr %70, i32 0, i32 5, i32 %chip.045.i
  %73 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 522133279, ptr %arrayidx.i199, align 4
  %mul.i.i = shl i32 %chip.045.i, 11
  %add.i.i = or i32 %mul.i.i, 1900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %75, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 522133279) #6, !srcloc !92
  br label %for.body10.i

for.body10.i:                                     ; preds = %ni_660x_write.exit.i.for.body10.i_crit_edge, %for.body.i
  %chan.143.i = phi i32 [ 0, %for.body.i ], [ %inc12.i, %ni_660x_write.exit.i.for.body10.i_crit_edge ]
  %div33.i = lshr i32 %chan.143.i, 1
  %add.i = add nuw nsw i32 %div33.i, 80
  %arrayidx.i.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %add.i
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i, align 4
  %add.i35.i = add i32 %77, %mul.i.i
  %size.i.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %add.i, i32 1
  %78 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %79)
  %cmp.i.i = icmp eq i8 %79, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %81, i32 %add.i35.i
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body4.i.i

do.body.i.i:                                      ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37.i, i16 0) #6, !srcloc !93
  br label %ni_660x_write.exit.i

do.body4.i.i:                                     ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 0) #6, !srcloc !92
  br label %ni_660x_write.exit.i

ni_660x_write.exit.i:                             ; preds = %do.body4.i.i, %do.body.i.i
  %inc12.i = add nuw nsw i32 %chan.143.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, 40
  br i1 %exitcond.not.i, label %for.inc14.i, label %ni_660x_write.exit.i.for.body10.i_crit_edge

ni_660x_write.exit.i.for.body10.i_crit_edge:      ; preds = %ni_660x_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i

for.inc14.i:                                      ; preds = %ni_660x_write.exit.i
  %inc15.i = add nuw i32 %chip.045.i, 1
  %exitcond46.not.i = icmp eq i32 %inc15.i, %68
  br i1 %exitcond46.not.i, label %ni_660x_init_tio_chips.exit, label %for.inc14.i.for.body.i_crit_edge

for.inc14.i.for.body.i_crit_edge:                 ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ni_660x_init_tio_chips.exit:                      ; preds = %for.inc14.i
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx, align 4
  %routing_tables = getelementptr inbounds %struct.ni_660x_private, ptr %45, i32 0, i32 8
  %call21 = tail call i32 @ni_assign_device_routes(ptr noundef nonnull @.str, ptr noundef %83, ptr noundef null, ptr noundef %routing_tables) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end, label %if.else

do.end:                                           ; preds = %ni_660x_init_tio_chips.exit
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %84 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %class_dev, align 4
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %87) #9
  %88 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, ptr noundef %87) #9
  br label %if.end30

if.else:                                          ; preds = %ni_660x_init_tio_chips.exit
  call void @__sanitizer_cov_trace_pc() #8
  %insn_device_config = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 26
  %90 = ptrtoint ptr %insn_device_config to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @ni_global_insn_config, ptr %insn_device_config, align 4
  %get_valid_routes = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 27
  %91 = ptrtoint ptr %get_valid_routes to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @_ni_get_valid_routes, ptr %get_valid_routes, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %do.end
  %92 = ptrtoint ptr %n_chips to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %n_chips, align 4
  %mul = shl i32 %93, 2
  %call33 = tail call ptr @ni_gpct_device_construct(ptr noundef %dev, ptr noundef nonnull @ni_660x_gpct_write, ptr noundef nonnull @ni_660x_gpct_read, i32 noundef 2, i32 noundef %mul, i32 noundef 4, ptr noundef %routing_tables) #6
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end30.cleanup_crit_edge, label %if.end36

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %counter_dev = getelementptr inbounds %struct.ni_660x_private, ptr %45, i32 0, i32 1
  %94 = ptrtoint ptr %counter_dev to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call33, ptr %counter_dev, align 4
  %call37 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.body.preheader, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end36
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %95 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %type, align 4
  %98 = load ptr, ptr %subdevices, align 4
  %type45 = getelementptr %struct.comedi_subdevice, ptr %98, i32 1, i32 2
  %99 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 5, ptr %type45, align 4
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %98, i32 1, i32 4
  %100 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196608, ptr %subdev_flags, align 4
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %98, i32 1, i32 3
  %101 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 40, ptr %n_chan, align 4
  %maxdata = getelementptr %struct.comedi_subdevice, ptr %98, i32 1, i32 13
  %102 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %98, i32 1, i32 15
  %103 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %98, i32 1, i32 20
  %104 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @ni_660x_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %98, i32 1, i32 21
  %105 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @ni_660x_dio_insn_config, ptr %insn_config, align 4
  br label %for.body

for.cond51.preheader:                             ; preds = %ni_660x_set_pfi_routing.exit
  %counters = getelementptr inbounds %struct.ni_gpct_device, ptr %call33, i32 0, i32 4
  br label %for.body53

for.body:                                         ; preds = %ni_660x_set_pfi_routing.exit.for.body_crit_edge, %for.body.preheader
  %i.0220 = phi i32 [ %inc50, %ni_660x_set_pfi_routing.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0220)
  %cmp48 = icmp ult i32 %i.0220, 8
  %cond = select i1 %cmp48, i32 2, i32 1
  %106 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %i.0220)
  %cmp.i201 = icmp ugt i32 %i.0220, 32767
  %sub.i = add i32 %i.0220, -32768
  %spec.select.i = select i1 %cmp.i201, i32 %sub.i, i32 %i.0220
  br i1 %cmp48, label %sw.bb4.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select.i)
  %cmp1.i = icmp ult i32 %spec.select.i, 8
  br i1 %cmp1.i, label %sw.bb.i.ni_660x_set_pfi_routing.exit_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.ni_660x_set_pfi_routing.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_set_pfi_routing.exit

sw.bb4.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.select.i)
  %cmp5.i = icmp ugt i32 %spec.select.i, 31
  br i1 %cmp5.i, label %sw.bb4.i.ni_660x_set_pfi_routing.exit_crit_edge, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i.ni_660x_set_pfi_routing.exit_crit_edge:  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_set_pfi_routing.exit

sw.epilog.i:                                      ; preds = %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %arrayidx.i202 = getelementptr %struct.ni_660x_private, ptr %107, i32 0, i32 6, i32 %spec.select.i
  %108 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %cond, ptr %arrayidx.i202, align 4
  %109 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %spec.select.i)
  %cmp.i.i203 = icmp ugt i32 %spec.select.i, 32767
  %sub.i.i = add i32 %spec.select.i, -32768
  %spec.select.i.i = select i1 %cmp.i.i203, i32 %sub.i.i, i32 %spec.select.i
  %sh_prom.i.i = zext i32 %spec.select.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %io_dir.i.i = getelementptr inbounds %struct.ni_660x_private, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %io_dir.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %io_dir.i.i, align 8
  %and.i.i = and i64 %112, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %sw.epilog.i.ni_660x_set_pfi_routing.exit_crit_edge, label %if.then9.i

sw.epilog.i.ni_660x_set_pfi_routing.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_set_pfi_routing.exit

if.then9.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ni_660x_select_pfi_output(ptr noundef %dev, i32 noundef %spec.select.i, i32 noundef %cond) #6
  br label %ni_660x_set_pfi_routing.exit

ni_660x_set_pfi_routing.exit:                     ; preds = %if.then9.i, %sw.epilog.i.ni_660x_set_pfi_routing.exit_crit_edge, %sw.bb4.i.ni_660x_set_pfi_routing.exit_crit_edge, %sw.bb.i.ni_660x_set_pfi_routing.exit_crit_edge
  %113 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %private, align 4
  %sh_prom.i = zext i32 %spec.select.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %neg.i = xor i64 %shl.i, -1
  %io_dir3.i = getelementptr inbounds %struct.ni_660x_private, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %io_dir3.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %io_dir3.i, align 8
  %and.i = and i64 %116, %neg.i
  store i64 %and.i, ptr %io_dir3.i, align 8
  tail call fastcc void @ni_660x_select_pfi_output(ptr noundef %dev, i32 noundef %spec.select.i, i32 noundef 0) #6
  %inc50 = add nuw i32 %i.0220, 1
  %117 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %n_chan, align 4
  %cmp47 = icmp ult i32 %inc50, %118
  br i1 %cmp47, label %ni_660x_set_pfi_routing.exit.for.body_crit_edge, label %for.cond51.preheader

ni_660x_set_pfi_routing.exit.for.body_crit_edge:  ; preds = %ni_660x_set_pfi_routing.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body75.preheader:                             ; preds = %for.inc69
  %119 = ptrtoint ptr %n_chips to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %n_chips, align 4
  %umax = call i32 @llvm.umax.i32(i32 %120, i32 1)
  br label %for.body75

for.body53:                                       ; preds = %for.inc69.for.body53_crit_edge, %for.cond51.preheader
  %i.1222 = phi i32 [ 0, %for.cond51.preheader ], [ %inc70, %for.inc69.for.body53_crit_edge ]
  %subdev.0221 = phi i32 [ 2, %for.cond51.preheader ], [ %inc55, %for.inc69.for.body53_crit_edge ]
  %121 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %subdevices, align 4
  %inc55 = add nuw nsw i32 %subdev.0221, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1222, i32 %mul)
  %cmp57 = icmp ult i32 %i.1222, %mul
  br i1 %cmp57, label %if.then58, label %if.else66

if.then58:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %counters, align 4
  %arrayidx59 = getelementptr %struct.ni_gpct, ptr %124, i32 %i.1222
  %type60 = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 2
  %125 = ptrtoint ptr %type60 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 6, ptr %type60, align 4
  %subdev_flags61 = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 4
  %126 = ptrtoint ptr %subdev_flags61 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 268664832, ptr %subdev_flags61, align 4
  %n_chan62 = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 3
  %127 = ptrtoint ptr %n_chan62 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 3, ptr %n_chan62, align 4
  %maxdata63 = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 13
  %128 = ptrtoint ptr %maxdata63 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %maxdata63, align 4
  %insn_read = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 18
  %129 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @ni_tio_insn_read, ptr %insn_read, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 19
  %130 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @ni_tio_insn_write, ptr %insn_write, align 4
  %insn_config64 = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 21
  %131 = ptrtoint ptr %insn_config64 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @ni_tio_insn_config, ptr %insn_config64, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 5
  %132 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 22
  %133 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @ni_660x_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 23
  %134 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @ni_tio_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 25
  %135 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @ni_660x_cancel, ptr %cancel, align 4
  %poll = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 24
  %136 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @ni_660x_input_poll, ptr %poll, align 4
  %buf_change = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 26
  %137 = ptrtoint ptr %buf_change to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @ni_660x_buf_change, ptr %buf_change, align 4
  %async_dma_dir = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 28
  %138 = ptrtoint ptr %async_dma_dir to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %async_dma_dir, align 4
  %private65 = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 6
  %139 = ptrtoint ptr %private65 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %arrayidx59, ptr %private65, align 4
  tail call void @ni_tio_init_counter(ptr noundef %arrayidx59) #6
  br label %for.inc69

if.else66:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #8
  %type67 = getelementptr %struct.comedi_subdevice, ptr %122, i32 %subdev.0221, i32 2
  %140 = ptrtoint ptr %type67 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %type67, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %if.else66, %if.then58
  %inc70 = add nuw nsw i32 %i.1222, 1
  %exitcond.not = icmp eq i32 %inc70, 8
  br i1 %exitcond.not, label %for.body75.preheader, label %for.inc69.for.body53_crit_edge

for.inc69.for.body53_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body53

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.body75.preheader
  %i.2225 = phi i32 [ %inc77, %for.body75.for.body75_crit_edge ], [ 0, %for.body75.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2225)
  %tobool.not.i209 = icmp eq i32 %i.2225, 0
  %spec.store.select.i = select i1 %tobool.not.i209, i32 0, i32 8192
  %mul.i.i210 = shl i32 %i.2225, 11
  %add.i.i211 = or i32 %mul.i.i210, 1852
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i.i212 = getelementptr i8, ptr %142, i32 %add.i.i211
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i212, i32 %spec.store.select.i) #6, !srcloc !92
  %inc77 = add nuw i32 %i.2225, 1
  %exitcond226.not = icmp eq i32 %inc77, %umax
  br i1 %exitcond226.not, label %for.end78, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body75

for.end78:                                        ; preds = %for.body75
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %143 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %irq, align 4
  %145 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %board_name, align 4
  %call.i213 = tail call i32 @request_threaded_irq(i32 noundef %144, ptr noundef nonnull @ni_660x_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %146, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %cmp81 = icmp slt i32 %call.i213, 0
  br i1 %cmp81, label %do.end85, label %if.end87

do.end85:                                         ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev86 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %147 = ptrtoint ptr %class_dev86 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %class_dev86, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end87:                                         ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %irq, align 4
  %irq89 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %151 = ptrtoint ptr %irq89 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %irq89, align 4
  %152 = and i32 %context, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp91.not = icmp eq i32 %152, 0
  %spec.select194 = select i1 %cmp91.not, i32 -2147483648, i32 -1610612736
  tail call fastcc void @ni_660x_write(ptr noundef %dev, i32 noundef 0, i32 noundef %spec.select194, i32 noundef 79)
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %do.end85, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.cond1.2.i.cleanup_crit_edge, %for.cond1.1.i.cleanup_crit_edge, %for.cond1.i.cleanup_crit_edge, %for.cond1.preheader.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i213, %do.end85 ], [ 0, %if.end87 ], [ -19, %entry.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %for.cond1.preheader.i.cleanup_crit_edge ], [ -12, %for.cond1.i.cleanup_crit_edge ], [ -12, %for.cond1.1.i.cleanup_crit_edge ], [ -12, %for.cond1.2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ni_660x_write(ptr nocapture noundef readonly %dev, i32 noundef %chip, i32 noundef %bits, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chip, 11
  %arrayidx = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %reg
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %mul
  %size = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %reg, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp, label %do.body, label %do.body4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv3 = trunc i32 %bits to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #6, !srcloc !93
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %bits)
  %mmio7 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %8 = ptrtoint ptr %mmio7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio7, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #6, !srcloc !92
  br label %if.end

if.end:                                           ; preds = %do.body4, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_gpct_device_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_free_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mite_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_assign_device_routes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_global_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %data, i32 2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %call = tail call fastcc i32 @test_route(i32 noundef %4, i32 noundef %6, ptr noundef %dev)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %data, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5 = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %data, i32 2
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call fastcc i32 @connect_route(i32 noundef %9, i32 noundef %11, ptr noundef %dev)
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr i32, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %data, i32 2
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %call11 = tail call fastcc i32 @disconnect_route(i32 noundef %13, i32 noundef %15, ptr noundef %dev)
  br label %return

return:                                           ; preds = %sw.bb8, %sw.bb4, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call11, %sw.bb8 ], [ %call7, %sw.bb4 ], [ 2, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_ni_get_valid_routes(ptr nocapture noundef readonly %dev, i32 noundef %n_pairs, ptr noundef %pair_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %routing_tables = getelementptr inbounds %struct.ni_660x_private, ptr %1, i32 0, i32 8
  %call = tail call i32 @ni_get_valid_routes(ptr noundef %routing_tables, i32 noundef %n_pairs, ptr noundef %pair_data) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_gpct_device_construct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ni_660x_gpct_write(ptr nocapture noundef readonly %counter, i32 noundef %bits, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %chip_index = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 2
  %4 = ptrtoint ptr %chip_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_index, align 8
  %mul.i = shl i32 %5, 11
  %arrayidx.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %reg
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, %mul.i
  %size.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %reg, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp eq i8 %9, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp.i, label %do.body.i, label %do.body4.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i = trunc i32 %bits to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #6
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %10) #6, !srcloc !93
  br label %ni_660x_write.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %bits) #6
  %mmio7.i = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %mmio7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %13) #6, !srcloc !92
  br label %ni_660x_write.exit

ni_660x_write.exit:                               ; preds = %do.body4.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_gpct_read(ptr nocapture noundef readonly %counter, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %chip_index = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 2
  %4 = ptrtoint ptr %chip_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_index, align 8
  %mul.i = shl i32 %5, 11
  %arrayidx.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %reg
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, %mul.i
  %size.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %reg, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp eq i8 %9, 2
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !94
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %conv4.i = zext i16 %13 to i32
  br label %ni_660x_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !96
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ni_660x_read.exit

ni_660x_read.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %conv4.i, %if.then.i ], [ %15, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %shl = shl i32 %3, %and
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool.not = icmp eq i32 %shl, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %shl2 = shl i32 %5, %and
  %neg = xor i32 %shl, -1
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %and3 = and i32 %7, %neg
  %and4 = and i32 %shl2, %shl
  %or = or i32 %and3, %and4
  store i32 %or, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %mmio7.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %9 = ptrtoint ptr %mmio7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %10, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %8) #6, !srcloc !92
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1044
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !96
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %shr = lshr i32 %14, %and
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %arrayidx1, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_dio_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 28, label %sw.bb2
    i32 4099, label %sw.bb4
    i32 4109, label %sw.bb7
    i32 24, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and)
  %cmp.i = icmp ugt i32 %and, 32767
  %sub.i = add nsw i32 %and, -32768
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %and
  %sh_prom.i = zext i32 %spec.select.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %io_dir.i = getelementptr inbounds %struct.ni_660x_private, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %io_dir.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %io_dir.i, align 8
  %or.i = or i64 %8, %shl.i
  store i64 %or.i, ptr %io_dir.i, align 8
  %arrayidx.i = getelementptr %struct.ni_660x_private, ptr %6, i32 0, i32 6, i32 %spec.select.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  tail call fastcc void @ni_660x_select_pfi_output(ptr noundef %dev, i32 noundef %spec.select.i, i32 noundef %10) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private.i29 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %private.i29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and)
  %cmp.i30 = icmp ugt i32 %and, 32767
  %sub.i31 = add nsw i32 %and, -32768
  %spec.select.i32 = select i1 %cmp.i30, i32 %sub.i31, i32 %and
  %sh_prom.i33 = zext i32 %spec.select.i32 to i64
  %shl.i34 = shl nuw i64 1, %sh_prom.i33
  %neg.i = xor i64 %shl.i34, -1
  %io_dir3.i = getelementptr inbounds %struct.ni_660x_private, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %io_dir3.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %io_dir3.i, align 8
  %and.i = and i64 %14, %neg.i
  store i64 %and.i, ptr %io_dir3.i, align 8
  tail call fastcc void @ni_660x_select_pfi_output(ptr noundef %dev, i32 noundef %spec.select.i32, i32 noundef 0) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private.i35 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %15 = ptrtoint ptr %private.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and)
  %cmp.i36 = icmp ugt i32 %and, 32767
  %sub.i37 = add nsw i32 %and, -32768
  %spec.select.i38 = select i1 %cmp.i36, i32 %sub.i37, i32 %and
  %sh_prom.i39 = zext i32 %spec.select.i38 to i64
  %shl.i40 = shl nuw i64 1, %sh_prom.i39
  %io_dir.i41 = getelementptr inbounds %struct.ni_660x_private, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %io_dir.i41 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %io_dir.i41, align 8
  %and.i42 = and i64 %18, %shl.i40
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i42)
  %tobool.not.i = icmp ne i64 %and.i42, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %arrayidx3 = getelementptr i32, ptr %data, i32 1
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i, ptr %arrayidx3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %arrayidx5 = getelementptr i32, ptr %data, i32 1
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx5, align 4
  %private.i43 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %private.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and)
  %cmp.i44 = icmp ugt i32 %and, 32767
  %sub.i45 = add nsw i32 %and, -32768
  %spec.select.i46 = select i1 %cmp.i44, i32 %sub.i45, i32 %and
  %24 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %21, label %sw.bb4.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select.i46)
  %cmp1.i = icmp ult i32 %spec.select.i46, 8
  br i1 %cmp1.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.select.i46)
  %cmp5.i = icmp ugt i32 %spec.select.i46, 31
  br i1 %cmp5.i, label %sw.bb4.i.cleanup_crit_edge, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %arrayidx.i47 = getelementptr %struct.ni_660x_private, ptr %23, i32 0, i32 6, i32 %spec.select.i46
  %25 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %arrayidx.i47, align 4
  %26 = ptrtoint ptr %private.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private.i43, align 4
  %sh_prom.i.i = zext i32 %spec.select.i46 to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %io_dir.i.i = getelementptr inbounds %struct.ni_660x_private, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %io_dir.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %io_dir.i.i, align 8
  %and.i.i = and i64 %29, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %sw.epilog.i.sw.epilog_crit_edge, label %if.then9.i

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then9.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ni_660x_select_pfi_output(ptr noundef %dev, i32 noundef %spec.select.i46, i32 noundef %21) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private.i48 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %30 = ptrtoint ptr %private.i48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and)
  %cmp.i49 = icmp ugt i32 %and, 32767
  %sub.i50 = add nsw i32 %and, -32768
  %spec.select.i51 = select i1 %cmp.i49, i32 %sub.i50, i32 %and
  %arrayidx.i52 = getelementptr %struct.ni_660x_private, ptr %31, i32 0, i32 6, i32 %spec.select.i51
  %32 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i52, align 4
  %arrayidx9 = getelementptr i32, ptr %data, i32 1
  %34 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx9, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %arrayidx11 = getelementptr i32, ptr %data, i32 1
  %35 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and)
  %cmp.i53 = icmp ugt i32 %and, 32767
  %sub.i54 = add nsw i32 %and, -32768
  %spec.select.i55 = select i1 %cmp.i53, i32 %sub.i54, i32 %and
  %div16.i = lshr i32 %spec.select.i55, 1
  %add.i = add nuw nsw i32 %div16.i, 80
  %arrayidx.i.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %add.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %size.i.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %add.i, i32 1
  %39 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp.i.i56 = icmp eq i8 %40, 2
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %41 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %38
  br i1 %cmp.i.i56, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !94
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %conv4.i.i = zext i16 %44 to i32
  br label %ni_660x_read.exit.i

if.end.i.i:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !96
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ni_660x_read.exit.i

ni_660x_read.exit.i:                              ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv4.i.i, %if.then.i.i ], [ %46, %if.end.i.i ]
  %rem.i = and i32 %spec.select.i55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i57 = icmp eq i32 %rem.i, 0
  %cond.i58 = select i1 %tobool.not.i57, i32 12, i32 4
  %shl.i59 = shl nuw nsw i32 7, %cond.i58
  %neg.i60 = xor i32 %shl.i59, -1
  %and.i61 = and i32 %retval.0.i.i, %neg.i60
  %and1.i = and i32 %36, 7
  %shl5.i = shl nuw nsw i32 %and1.i, %cond.i58
  %or.i62 = or i32 %and.i61, %shl5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp.i.i56, label %do.body.i.i, label %do.body4.i.i

do.body.i.i:                                      ; preds = %ni_660x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i.i = trunc i32 %or.i62 to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #6
  %48 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %49, i32 %38
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i, i16 %47) #6, !srcloc !93
  br label %sw.epilog

do.body4.i.i:                                     ; preds = %ni_660x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i62) #6
  %51 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %52, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %50) #6, !srcloc !92
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body4.i.i, %do.body.i.i, %sw.bb7, %if.then9.i, %sw.epilog.i.sw.epilog_crit_edge, %sw.bb2, %sw.bb1, %sw.bb
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %53 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb4.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %54, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb4.i.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_insn_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_insn_write(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_cmd(ptr noundef %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %mite_channel_lock.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mite_channel_lock.i) #6
  %chip_index.i = getelementptr inbounds %struct.ni_gpct, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %chip_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_index.i, align 8
  %counter_index.i = getelementptr inbounds %struct.ni_gpct, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %counter_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %counter_index.i, align 4
  %arrayidx6.i = getelementptr %struct.ni_660x_private, ptr %3, i32 0, i32 2, i32 %5, i32 %7
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call7.i = tail call ptr @mite_request_channel(ptr noundef %11, ptr noundef %9) #6
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mite_channel_lock.i, i32 noundef %call2.i) #6
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.31) #9
  %14 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dir.i = getelementptr inbounds %struct.mite_channel, ptr %call7.i, i32 0, i32 2
  %16 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dir.i, align 4
  tail call void @ni_tio_set_mite_channel(ptr noundef %1, ptr noundef nonnull %call7.i) #6
  %channel.i = getelementptr inbounds %struct.mite_channel, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel.i, align 4
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private.i, align 4
  %21 = ptrtoint ptr %chip_index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chip_index.i, align 8
  %mul.i.i = shl i32 %18, 3
  %shl.i.i = shl i32 31, %mul.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %arrayidx.i.i = getelementptr %struct.ni_660x_private, ptr %20, i32 0, i32 5, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %24, %neg.i.i
  store i32 %and.i.i, ptr %arrayidx.i.i, align 4
  %25 = ptrtoint ptr %counter_index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %counter_index.i, align 4
  %and1.i.i = and i32 %26, 31
  %shl3.i.i = shl i32 %and1.i.i, %mul.i.i
  %or.i.i = or i32 %shl3.i.i, %and.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %mul.i.i.i = shl i32 %22, 11
  %add.i.i.i = or i32 %mul.i.i.i, 1900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %mmio7.i.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %28 = ptrtoint ptr %mmio7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio7.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %29, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i.i, i32 %27) #6, !srcloc !92
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mite_channel_lock.i, i32 noundef %call2.i) #6
  tail call void @ni_tio_acknowledge(ptr noundef %1) #6
  %call2 = tail call i32 @ni_tio_cmd(ptr noundef %dev, ptr noundef %s) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_cmdtest(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @ni_tio_cancel(ptr noundef %1) #6
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %mite_channel_lock.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mite_channel_lock.i) #6
  %mite_chan.i = getelementptr inbounds %struct.ni_gpct, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %mite_chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mite_chan.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.ni_660x_release_mite_channel.exit_crit_edge, label %if.then.i

entry.ni_660x_release_mite_channel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_release_mite_channel.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %channel.i = getelementptr inbounds %struct.mite_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %chip_index.i.i = getelementptr inbounds %struct.ni_gpct, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %chip_index.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_index.i.i, align 8
  %mul.i.i = shl i32 %7, 3
  %shl.i.i = shl i32 31, %mul.i.i
  %arrayidx.i.i = getelementptr %struct.ni_660x_private, ptr %9, i32 0, i32 5, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %13, %shl.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %mul.i.i.i = shl i32 %11, 11
  %add.i.i.i = or i32 %mul.i.i.i, 1900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %mmio7.i.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %15 = ptrtoint ptr %mmio7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio7.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %16, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i.i, i32 %14) #6, !srcloc !92
  tail call void @ni_tio_set_mite_channel(ptr noundef %1, ptr noundef null) #6
  tail call void @mite_release_channel(ptr noundef nonnull %5) #6
  br label %ni_660x_release_mite_channel.exit

ni_660x_release_mite_channel.exit:                ; preds = %if.then.i, %entry.ni_660x_release_mite_channel.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mite_channel_lock.i, i32 noundef %call2.i) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_input_poll(ptr nocapture noundef readonly %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  %interrupt_lock = getelementptr inbounds %struct.ni_660x_private, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %interrupt_lock) #6
  %mite_chan = getelementptr inbounds %struct.ni_gpct, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mite_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mite_chan, align 8
  tail call void @mite_sync_dma(ptr noundef %5, ptr noundef %s) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %interrupt_lock, i32 noundef %call3) #6
  %call7 = tail call i32 @comedi_buf_read_n_available(ptr noundef %s) #6
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_buf_change(ptr nocapture noundef readonly %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  %chip_index = getelementptr inbounds %struct.ni_gpct, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %chip_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_index, align 8
  %counter_index = getelementptr inbounds %struct.ni_gpct, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %counter_index, align 4
  %arrayidx3 = getelementptr %struct.ni_660x_private, ptr %1, i32 0, i32 2, i32 %5, i32 %7
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %call = tail call i32 @mite_buf_change(ptr noundef %9, ptr noundef %s) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_tio_init_counter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !98
  %interrupt_lock = getelementptr inbounds %struct.ni_660x_private, ptr %2, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %interrupt_lock) #6
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 15
  %3 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1130.not = icmp eq i32 %4, 0
  br i1 %cmp1130.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdevices, align 4
  %type = getelementptr %struct.comedi_subdevice, ptr %6, i32 %i.031, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp13 = icmp eq i32 %8, 6
  br i1 %cmp13, label %if.then15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %6, i32 %i.031
  %private.i = getelementptr %struct.comedi_subdevice, ptr %6, i32 %i.031, i32 6
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 4
  tail call void @ni_tio_handle_interrupt(ptr noundef %10, ptr noundef %arrayidx) #6
  %call.i = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %arrayidx) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.031, 1
  %11 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_subdevices, align 4
  %cmp11 = icmp ult i32 %inc, %12
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %interrupt_lock, i32 noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mite_alloc_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_route(i32 noundef %src, i32 noundef %dest, ptr nocapture noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %and = and i32 %src, 65535
  %routing_tables = getelementptr inbounds %struct.ni_660x_private, ptr %1, i32 0, i32 8
  %call = tail call signext i8 @ni_route_to_register(i32 noundef %and, i32 noundef %dest, ptr noundef %routing_tables) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp = icmp slt i8 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %4 = and i32 %dest, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %4)
  %5 = icmp eq i32 %4, 32768
  br i1 %5, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %sub.i.i = add nsw i32 %dest, -32768
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %io_dir.i.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %io_dir.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %io_dir.i.i, align 8
  %and.i.i = and i64 %7, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then.i.get_output_select_source.exit_crit_edge, label %if.then2.i

if.then.i.get_output_select_source.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_output_select_source.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.ni_660x_private, ptr %3, i32 0, i32 6, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end
  %10 = and i32 %dest, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32832, i32 %10)
  %11 = icmp eq i32 %10, 32832
  br i1 %11, label %do.body.i, label %if.else12.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_output_select_source.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route, %get_output_select_source.exit)) #6
          to label %if.then10.i [label %get_output_select_source.exit], !srcloc !99

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_output_select_source.__UNIQUE_ID_ddebug236, ptr noundef %13, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %dest) #6
  br label %get_output_select_source.exit

if.else12.i:                                      ; preds = %if.else.i
  %14 = add i32 %dest, -32844
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %14)
  %15 = icmp ult i32 %14, 80
  br i1 %15, label %if.then14.i, label %do.body17.i

if.then14.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  %counter_dev.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %counter_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %counter_dev.i, align 4
  %call15.i = tail call i32 @ni_tio_get_routing(ptr noundef %17, i32 noundef %dest) #6
  br label %if.end38.i

do.body17.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_output_select_source.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route, %get_output_select_source.exit)) #6
          to label %if.then31.i [label %get_output_select_source.exit], !srcloc !99

if.then31.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev32.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev32.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_output_select_source.__UNIQUE_ID_ddebug237, ptr noundef %19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %dest) #6
  br label %get_output_select_source.exit

if.end38.i:                                       ; preds = %if.then14.i, %if.then2.i
  %reg.0.i = phi i32 [ %9, %if.then2.i ], [ %call15.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %reg.0.i)
  %cmp39.i = icmp sgt i32 %reg.0.i, -1
  br i1 %cmp39.i, label %if.then40.i, label %if.end38.i.get_output_select_source.exit_crit_edge

if.end38.i.get_output_select_source.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_output_select_source.exit

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %reg.0.i to i8
  %routing_tables.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 8
  %call41.i = tail call i32 @ni_find_route_source(i8 noundef zeroext %conv.i, i32 noundef %dest, ptr noundef %routing_tables.i) #6
  br label %get_output_select_source.exit

get_output_select_source.exit:                    ; preds = %if.then40.i, %if.end38.i.get_output_select_source.exit_crit_edge, %if.then31.i, %do.body17.i, %if.then10.i, %do.body.i, %if.then.i.get_output_select_source.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.then40.i ], [ -22, %if.end38.i.get_output_select_source.exit_crit_edge ], [ -22, %if.then.i.get_output_select_source.exit_crit_edge ], [ -22, %if.then10.i ], [ -22, %if.then31.i ], [ -22, %do.body.i ], [ -22, %do.body17.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %and)
  %cmp4.not = icmp eq i32 %retval.0.i, %and
  %. = zext i1 %cmp4.not to i32
  br label %cleanup

cleanup:                                          ; preds = %get_output_select_source.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %., %get_output_select_source.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @connect_route(i32 noundef %src, i32 noundef %dest, ptr nocapture noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %and = and i32 %src, 65535
  %routing_tables = getelementptr inbounds %struct.ni_660x_private, ptr %1, i32 0, i32 8
  %call = tail call signext i8 @ni_route_to_register(i32 noundef %and, i32 noundef %dest, ptr noundef %routing_tables) #6
  %conv = sext i8 %call to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp = icmp slt i8 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %4 = and i32 %dest, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %4)
  %5 = icmp eq i32 %4, 32768
  br i1 %5, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %sub.i.i = add nsw i32 %dest, -32768
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %io_dir.i.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %io_dir.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %io_dir.i.i, align 8
  %and.i.i = and i64 %7, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then.i.get_output_select_source.exit_crit_edge, label %if.then2.i

if.then.i.get_output_select_source.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_output_select_source.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.ni_660x_private, ptr %3, i32 0, i32 6, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end
  %10 = and i32 %dest, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32832, i32 %10)
  %11 = icmp eq i32 %10, 32832
  br i1 %11, label %do.body.i, label %if.else12.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_output_select_source.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@connect_route, %get_output_select_source.exit)) #6
          to label %if.then10.i [label %get_output_select_source.exit], !srcloc !99

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_output_select_source.__UNIQUE_ID_ddebug236, ptr noundef %13, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %dest) #6
  br label %get_output_select_source.exit

if.else12.i:                                      ; preds = %if.else.i
  %14 = add i32 %dest, -32844
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %14)
  %15 = icmp ult i32 %14, 80
  br i1 %15, label %if.then14.i, label %do.body17.i

if.then14.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  %counter_dev.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %counter_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %counter_dev.i, align 4
  %call15.i = tail call i32 @ni_tio_get_routing(ptr noundef %17, i32 noundef %dest) #6
  br label %if.end38.i

do.body17.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_output_select_source.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@connect_route, %get_output_select_source.exit)) #6
          to label %if.then31.i [label %get_output_select_source.exit], !srcloc !99

if.then31.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev32.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev32.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_output_select_source.__UNIQUE_ID_ddebug237, ptr noundef %19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %dest) #6
  br label %get_output_select_source.exit

if.end38.i:                                       ; preds = %if.then14.i, %if.then2.i
  %reg.0.i = phi i32 [ %9, %if.then2.i ], [ %call15.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %reg.0.i)
  %cmp39.i = icmp sgt i32 %reg.0.i, -1
  br i1 %cmp39.i, label %if.then40.i, label %if.end38.i.get_output_select_source.exit_crit_edge

if.end38.i.get_output_select_source.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_output_select_source.exit

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %reg.0.i to i8
  %routing_tables.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 8
  %call41.i = tail call i32 @ni_find_route_source(i8 noundef zeroext %conv.i, i32 noundef %dest, ptr noundef %routing_tables.i) #6
  %phi.bo = shl i32 %call41.i, 24
  br label %get_output_select_source.exit

get_output_select_source.exit:                    ; preds = %if.then40.i, %if.end38.i.get_output_select_source.exit_crit_edge, %if.then31.i, %do.body17.i, %if.then10.i, %do.body.i, %if.then.i.get_output_select_source.exit_crit_edge
  %retval.0.i60 = phi i32 [ %phi.bo, %if.then40.i ], [ -369098752, %if.end38.i.get_output_select_source.exit_crit_edge ], [ -369098752, %if.then.i.get_output_select_source.exit_crit_edge ], [ -369098752, %if.then10.i ], [ -369098752, %if.then31.i ], [ -369098752, %do.body.i ], [ -369098752, %do.body17.i ]
  %conv4 = ashr exact i32 %retval.0.i60, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %and)
  %cmp6 = icmp eq i32 %conv4, %and
  br i1 %cmp6, label %get_output_select_source.exit.cleanup_crit_edge, label %if.end9

get_output_select_source.exit.cleanup_crit_edge:  ; preds = %get_output_select_source.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %get_output_select_source.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %retval.0.i60)
  %cmp11 = icmp sgt i32 %retval.0.i60, -16777216
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %and15 = and i32 %dest, 65535
  %20 = and i32 %dest, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %20)
  %21 = icmp eq i32 %20, 32768
  br i1 %21, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %22 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private, align 4
  %sub.i = add i32 %dest, -32768
  %24 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %conv, label %if.then17.ni_660x_set_pfi_routing.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
  ]

if.then17.ni_660x_set_pfi_routing.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_set_pfi_routing.exit

sw.bb.i:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp1.i = icmp ult i32 %sub.i, 8
  br i1 %cmp1.i, label %sw.bb.i.ni_660x_set_pfi_routing.exit_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.ni_660x_set_pfi_routing.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_set_pfi_routing.exit

sw.bb4.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub.i)
  %cmp5.i = icmp ugt i32 %sub.i, 31
  br i1 %cmp5.i, label %sw.bb4.i.ni_660x_set_pfi_routing.exit_crit_edge, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i.ni_660x_set_pfi_routing.exit_crit_edge:  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_set_pfi_routing.exit

sw.epilog.i:                                      ; preds = %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %arrayidx.i = getelementptr %struct.ni_660x_private, ptr %23, i32 0, i32 6, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %sub.i, 32767
  %sub.i.i62 = add i32 %dest, -65536
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i62, i32 %sub.i
  %sh_prom.i.i63 = zext i32 %spec.select.i.i to i64
  %shl.i.i64 = shl nuw i64 1, %sh_prom.i.i63
  %io_dir.i.i65 = getelementptr inbounds %struct.ni_660x_private, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %io_dir.i.i65 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %io_dir.i.i65, align 8
  %and.i.i66 = and i64 %29, %shl.i.i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i66)
  %tobool.not.i.not.i67 = icmp eq i64 %and.i.i66, 0
  br i1 %tobool.not.i.not.i67, label %sw.epilog.i.ni_660x_set_pfi_routing.exit_crit_edge, label %if.then9.i

sw.epilog.i.ni_660x_set_pfi_routing.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_660x_set_pfi_routing.exit

if.then9.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ni_660x_select_pfi_output(ptr noundef %dev, i32 noundef %sub.i, i32 noundef %conv) #6
  br label %ni_660x_set_pfi_routing.exit

ni_660x_set_pfi_routing.exit:                     ; preds = %if.then9.i, %sw.epilog.i.ni_660x_set_pfi_routing.exit_crit_edge, %sw.bb4.i.ni_660x_set_pfi_routing.exit_crit_edge, %sw.bb.i.ni_660x_set_pfi_routing.exit_crit_edge, %if.then17.ni_660x_set_pfi_routing.exit_crit_edge
  %30 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private, align 4
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %io_dir.i = getelementptr inbounds %struct.ni_660x_private, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %io_dir.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %io_dir.i, align 8
  %or.i = or i64 %33, %shl.i
  store i64 %or.i, ptr %io_dir.i, align 8
  %arrayidx.i73 = getelementptr %struct.ni_660x_private, ptr %31, i32 0, i32 6, i32 %sub.i
  %34 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i73, align 4
  tail call fastcc void @ni_660x_select_pfi_output(ptr noundef %dev, i32 noundef %sub.i, i32 noundef %35) #6
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %36 = and i32 %dest, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 32832, i32 %36)
  %37 = icmp eq i32 %36, 32832
  br i1 %37, label %do.body, label %if.else29

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @connect_route.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@connect_route, %cleanup)) #6
          to label %if.then27 [label %cleanup], !srcloc !99

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %38 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @connect_route.__UNIQUE_ID_ddebug238, ptr noundef %39, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %dest) #6
  br label %cleanup

if.else29:                                        ; preds = %if.else
  %40 = add nsw i32 %and15, -32844
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %40)
  %41 = icmp ult i32 %40, 80
  br i1 %41, label %if.then32, label %if.else29.cleanup_crit_edge

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  %counter_dev = getelementptr inbounds %struct.ni_660x_private, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %counter_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %counter_dev, align 4
  %and34 = and i32 %src, -65536
  %or = or i32 %and34, %conv
  %call35 = tail call i32 @ni_tio_set_routing(ptr noundef %43, i32 noundef %dest, i32 noundef %or) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.else29.cleanup_crit_edge, %if.then27, %do.body, %ni_660x_set_pfi_routing.exit, %if.end9.cleanup_crit_edge, %get_output_select_source.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -114, %get_output_select_source.exit.cleanup_crit_edge ], [ -16, %if.end9.cleanup_crit_edge ], [ -22, %if.then27 ], [ -22, %if.else29.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %ni_660x_set_pfi_routing.exit ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @disconnect_route(i32 noundef %src, i32 noundef %dest, ptr nocapture noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %and = and i32 %src, 65535
  %and1 = and i32 %dest, 65535
  %routing_tables = getelementptr inbounds %struct.ni_660x_private, ptr %1, i32 0, i32 8
  %call = tail call signext i8 @ni_route_to_register(i32 noundef %and, i32 noundef %and1, ptr noundef %routing_tables) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp = icmp slt i8 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %4 = and i32 %dest, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %4)
  %5 = icmp eq i32 %4, 32768
  br i1 %5, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %sub.i.i = add nsw i32 %dest, -32768
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %io_dir.i.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %io_dir.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %io_dir.i.i, align 8
  %and.i.i = and i64 %7, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then.i.cleanup_crit_edge, label %if.then2.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.ni_660x_private, ptr %3, i32 0, i32 6, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end
  %10 = and i32 %dest, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32832, i32 %10)
  %11 = icmp eq i32 %10, 32832
  br i1 %11, label %do.body.i, label %if.else12.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_output_select_source.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@disconnect_route, %get_output_select_source.exit)) #6
          to label %if.then10.i [label %get_output_select_source.exit], !srcloc !99

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_output_select_source.__UNIQUE_ID_ddebug236, ptr noundef %13, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %dest) #6
  br label %cleanup

if.else12.i:                                      ; preds = %if.else.i
  %14 = add i32 %dest, -32844
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %14)
  %15 = icmp ult i32 %14, 80
  br i1 %15, label %if.then14.i, label %do.body17.i

if.then14.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  %counter_dev.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %counter_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %counter_dev.i, align 4
  %call15.i = tail call i32 @ni_tio_get_routing(ptr noundef %17, i32 noundef %dest) #6
  br label %if.end38.i

do.body17.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_output_select_source.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@disconnect_route, %get_output_select_source.exit)) #6
          to label %if.then31.i [label %get_output_select_source.exit], !srcloc !99

if.then31.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev32.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev32.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_output_select_source.__UNIQUE_ID_ddebug237, ptr noundef %19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %dest) #6
  br label %cleanup

if.end38.i:                                       ; preds = %if.then14.i, %if.then2.i
  %reg.0.i = phi i32 [ %9, %if.then2.i ], [ %call15.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %reg.0.i)
  %cmp39.i = icmp sgt i32 %reg.0.i, -1
  br i1 %cmp39.i, label %if.then40.i, label %if.end38.i.cleanup_crit_edge

if.end38.i.cleanup_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %reg.0.i to i8
  %routing_tables.i = getelementptr inbounds %struct.ni_660x_private, ptr %3, i32 0, i32 8
  %call41.i = tail call i32 @ni_find_route_source(i8 noundef zeroext %conv.i, i32 noundef %dest, ptr noundef %routing_tables.i) #6
  br label %get_output_select_source.exit

get_output_select_source.exit:                    ; preds = %if.then40.i, %do.body17.i, %do.body.i
  %retval.0.i50 = phi i32 [ %call41.i, %if.then40.i ], [ -22, %do.body.i ], [ -22, %do.body17.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i50, i32 %and)
  %cmp5.not = icmp eq i32 %retval.0.i50, %and
  br i1 %cmp5.not, label %if.end8, label %get_output_select_source.exit.cleanup_crit_edge

get_output_select_source.exit.cleanup_crit_edge:  ; preds = %get_output_select_source.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %get_output_select_source.exit
  %20 = and i32 %dest, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %20)
  %21 = icmp eq i32 %20, 32768
  %22 = and i32 %dest, 65528
  br i1 %21, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %22)
  %cmp13 = icmp eq i32 %22, 32768
  %cond = select i1 %cmp13, i32 2, i32 1
  %23 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private, align 4
  %sub.i = add i32 %dest, -32768
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %neg.i = xor i64 %shl.i, -1
  %io_dir3.i = getelementptr inbounds %struct.ni_660x_private, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %io_dir3.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %io_dir3.i, align 8
  %and.i = and i64 %26, %neg.i
  store i64 %and.i, ptr %io_dir3.i, align 8
  tail call fastcc void @ni_660x_select_pfi_output(ptr noundef %dev, i32 noundef %sub.i, i32 noundef 0) #6
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private, align 4
  br i1 %cmp13, label %sw.bb4.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp1.i = icmp ult i32 %sub.i, 8
  br i1 %cmp1.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub.i)
  %cmp5.i = icmp ugt i32 %sub.i, 31
  br i1 %cmp5.i, label %sw.bb4.i.cleanup_crit_edge, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %arrayidx.i = getelementptr %struct.ni_660x_private, ptr %28, i32 0, i32 6, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %sub.i, 32767
  %sub.i.i57 = add i32 %dest, -65536
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i57, i32 %sub.i
  %sh_prom.i.i58 = zext i32 %spec.select.i.i to i64
  %shl.i.i59 = shl nuw i64 1, %sh_prom.i.i58
  %io_dir.i.i60 = getelementptr inbounds %struct.ni_660x_private, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %io_dir.i.i60 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %io_dir.i.i60, align 8
  %and.i.i61 = and i64 %33, %shl.i.i59
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i61)
  %tobool.not.i.not.i62 = icmp eq i64 %and.i.i61, 0
  br i1 %tobool.not.i.not.i62, label %sw.epilog.i.cleanup_crit_edge, label %if.then9.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ni_660x_select_pfi_output(ptr noundef %dev, i32 noundef %sub.i, i32 noundef %cond) #6
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32832, i32 %22)
  %34 = icmp eq i32 %22, 32832
  br i1 %34, label %do.body, label %if.else25

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disconnect_route.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@disconnect_route, %cleanup)) #6
          to label %if.then23 [label %cleanup], !srcloc !99

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %35 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disconnect_route.__UNIQUE_ID_ddebug239, ptr noundef %36, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %dest) #6
  br label %cleanup

if.else25:                                        ; preds = %if.else
  %37 = add nsw i32 %and1, -32844
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %37)
  %38 = icmp ult i32 %37, 80
  br i1 %38, label %if.then28, label %if.else25.cleanup_crit_edge

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  %counter_dev = getelementptr inbounds %struct.ni_660x_private, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %counter_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %counter_dev, align 4
  %call29 = tail call i32 @ni_tio_unset_routing(ptr noundef %40, i32 noundef %dest) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.else25.cleanup_crit_edge, %if.then23, %do.body, %if.then9.i, %sw.epilog.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %get_output_select_source.exit.cleanup_crit_edge, %if.end38.i.cleanup_crit_edge, %if.then31.i, %if.then10.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %get_output_select_source.exit.cleanup_crit_edge ], [ -22, %if.then23 ], [ -22, %if.else25.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %sw.bb4.i.cleanup_crit_edge ], [ 0, %sw.epilog.i.cleanup_crit_edge ], [ 0, %if.then9.i ], [ -22, %if.end38.i.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.then10.i ], [ -22, %if.then31.i ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @ni_route_to_register(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_get_routing(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_find_route_source(i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_set_routing(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_unset_routing(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_get_valid_routes(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ni_660x_select_pfi_output(ptr nocapture noundef readonly %dev, i32 noundef %chan, i32 noundef %out_sel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %chan)
  %cmp = icmp ugt i32 %chan, 32767
  %sub = add i32 %chan, -32768
  %spec.select = select i1 %cmp, i32 %sub, i32 %chan
  %n_chips = getelementptr inbounds %struct.ni_660x_board, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %n_chips to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_chips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1
  br i1 %cmp1, label %if.end9, label %if.end18.thread

if.end18.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = lshr i32 %spec.select, 1
  %.pre104 = add nuw nsw i32 %.pre, 80
  br label %26

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %out_sel)
  %cmp3 = icmp eq i32 %out_sel, 1
  %4 = add i32 %spec.select, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %5 = icmp ult i32 %4, 16
  %6 = and i1 %cmp3, %5
  %div62 = lshr i32 %spec.select, 1
  %add = add nuw nsw i32 %div62, 80
  %mul.i = select i1 %6, i32 0, i32 2048
  %arrayidx.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %add
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %mul.i
  %size.i = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %add, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.i = icmp eq i8 %10, 2
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !94
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %conv4.i = zext i16 %14 to i32
  br label %ni_660x_read.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !96
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ni_660x_read.exit

ni_660x_read.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %conv4.i, %if.then.i ], [ %16, %if.end.i ]
  %rem = shl i32 %spec.select, 3
  %17 = and i32 %rem, 8
  %18 = xor i32 %17, 8
  %shl = shl i32 3, %18
  %neg = xor i32 %shl, -1
  %and = and i32 %retval.0.i, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp.i, label %if.end18, label %do.body4.i

do.body4.i:                                       ; preds = %ni_660x_read.exit
  %19 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %21, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %19) #6, !srcloc !92
  br i1 %6, label %do.body4.i._crit_edge, label %do.body4.i._crit_edge109

do.body4.i._crit_edge109:                         ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %26

do.body4.i._crit_edge:                            ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %25

if.end18:                                         ; preds = %ni_660x_read.exit
  %conv3.i = trunc i32 %and to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #6
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %24, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i72, i16 %22) #6, !srcloc !93
  br i1 %6, label %if.end18._crit_edge, label %if.end18._crit_edge110

if.end18._crit_edge110:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %26

if.end18._crit_edge:                              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %25

25:                                               ; preds = %if.end18._crit_edge, %do.body4.i._crit_edge
  br label %26

26:                                               ; preds = %25, %if.end18._crit_edge110, %do.body4.i._crit_edge109, %if.end18.thread
  %add20.pre-phi107 = phi i32 [ %add, %25 ], [ %add, %if.end18._crit_edge110 ], [ %.pre104, %if.end18.thread ], [ %add, %do.body4.i._crit_edge109 ]
  %27 = phi i32 [ 2048, %25 ], [ 0, %if.end18._crit_edge110 ], [ 0, %if.end18.thread ], [ 0, %do.body4.i._crit_edge109 ]
  %arrayidx.i75 = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %add20.pre-phi107
  %28 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i75, align 4
  %add.i76 = add i32 %29, %27
  %size.i77 = getelementptr [100 x %struct.ni_660x_register_data], ptr @ni_660x_reg_data, i32 0, i32 %add20.pre-phi107, i32 1
  %30 = ptrtoint ptr %size.i77 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %size.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp.i78 = icmp eq i8 %31, 2
  %mmio.i79 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %32 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i79, align 4
  %add.ptr.i80 = getelementptr i8, ptr %33, i32 %add.i76
  br i1 %cmp.i78, label %if.then.i82, label %if.end.i83

if.then.i82:                                      ; preds = %26
  call void @__sanitizer_cov_trace_pc() #8
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i80) #6, !srcloc !94
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %conv4.i81 = zext i16 %35 to i32
  br label %ni_660x_read.exit85

if.end.i83:                                       ; preds = %26
  call void @__sanitizer_cov_trace_pc() #8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #6, !srcloc !96
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ni_660x_read.exit85

ni_660x_read.exit85:                              ; preds = %if.end.i83, %if.then.i82
  %retval.0.i84 = phi i32 [ %conv4.i81, %if.then.i82 ], [ %37, %if.end.i83 ]
  %rem22 = shl i32 %spec.select, 3
  %38 = and i32 %rem22, 8
  %39 = xor i32 %38, 8
  %shl25 = shl i32 3, %39
  %neg26 = xor i32 %shl25, -1
  %and27 = and i32 %retval.0.i84, %neg26
  %and28 = and i32 %out_sel, 3
  %shl32 = shl i32 %and28, %39
  %or33 = or i32 %and27, %shl32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp.i78, label %do.body.i94, label %do.body4.i97

do.body.i94:                                      ; preds = %ni_660x_read.exit85
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i91 = trunc i32 %or33 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv3.i91) #6
  %41 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i79, align 4
  %add.ptr.i93 = getelementptr i8, ptr %42, i32 %add.i76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i93, i16 %40) #6, !srcloc !93
  br label %ni_660x_write.exit99

do.body4.i97:                                     ; preds = %ni_660x_read.exit85
  call void @__sanitizer_cov_trace_pc() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %or33) #6
  %44 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i79, align 4
  %add.ptr8.i96 = getelementptr i8, ptr %45, i32 %add.i76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i96, i32 %43) #6, !srcloc !92
  br label %ni_660x_write.exit99

ni_660x_write.exit99:                             ; preds = %do.body4.i97, %do.body.i94
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_tio_acknowledge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mite_request_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_tio_set_mite_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_sync_dma(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_n_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mite_buf_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_tio_handle_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_660x_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @ni_660x_driver, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_ni_660x__240_1250_ni_660x_driver_init6, !1, !"__initcall__kmod_ni_660x__240_1250_ni_660x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1250, i32 1}
!2 = !{ptr @__exitcall_ni_660x_driver_exit, !1, !"__exitcall_ni_660x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1252, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1253, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1254, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1220, i32 17}
!12 = !{ptr @ni_660x_driver, !13, !"ni_660x_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1219, i32 29}
!14 = !{ptr @ni_660x_reg_data, !15, !"ni_660x_reg_data", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 97, i32 43}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1039, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ni_660x_auto_attach._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ni_660x_auto_attach._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1041, i32 3}
!26 = !{ptr @ni_660x_auto_attach._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ni_660x_auto_attach._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1188, i32 3}
!30 = !{ptr @ni_660x_auto_attach._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ni_660x_auto_attach._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 217, i32 12}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 221, i32 12}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 225, i32 12}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 229, i32 12}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 233, i32 12}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 237, i32 12}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 241, i32 12}
!46 = !{ptr @ni_660x_boards, !47, !"ni_660x_boards", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 215, i32 35}
!48 = !{ptr @ni_660x_allocate_private.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 492, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ni_660x_allocate_private.__key.20, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 493, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 762, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @get_output_select_source.__UNIQUE_ID_ddebug236, !55, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 786, i32 3}
!60 = !{ptr @get_output_select_source.__UNIQUE_ID_ddebug237, !59, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 847, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @connect_route.__UNIQUE_ID_ddebug238, !62, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 910, i32 3}
!67 = !{ptr @disconnect_route.__UNIQUE_ID_ddebug239, !66, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 385, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ni_660x_cmd._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @ni_660x_cmd._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 350, i32 3}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ni_660x_request_mite_channel._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ni_660x_request_mite_channel._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @ni_660x_pci_driver, !80, !"ni_660x_pci_driver", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1244, i32 26}
!81 = !{ptr @ni_660x_pci_table, !82, !"ni_660x_pci_table", i1 false, i1 false}
!82 = !{!"../drivers/comedi/drivers/ni_660x.c", i32 1232, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 4650833}
!93 = !{i64 4650213}
!94 = !{i64 4650413}
!95 = !{i64 2154584104}
!96 = !{i64 4651251}
!97 = !{i64 2154584586}
!98 = !{i64 2154590018}
!99 = !{i64 2148988328, i64 2148988333, i64 2148988346, i64 2148988390, i64 2148988424, i64 2148988445}
