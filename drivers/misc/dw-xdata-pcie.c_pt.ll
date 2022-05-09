; ModuleID = '/llk/IR_all_yes/drivers/misc/dw-xdata-pcie.c_pt.bc'
source_filename = "../drivers/misc/dw-xdata-pcie.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.dw_xdata = type { %struct.dw_xdata_region, i32, i32, %struct.mutex, ptr, %struct.miscdevice }
%struct.dw_xdata_region = type { i32, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.dw_xdata_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [14 x i32], i32, [41 x i32], i32, i32, i32, i32 }

@__initcall__kmod_dw_xdata_pcie__254_415_dw_xdata_pcie_driver_init6 = internal global ptr @dw_xdata_pcie_driver_init, section ".initcall6.init", align 4
@dw_xdata_pcie_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @dw_xdata_pcie_id_table, ptr @dw_xdata_pcie_probe, ptr @dw_xdata_pcie_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dw_xdata_pcie_driver_exit = internal global ptr @dw_xdata_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file255 = internal constant [46 x i8] c"dw_xdata_pcie.file=drivers/misc/dw-xdata-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [29 x i8] c"dw_xdata_pcie.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [64 x i8] c"dw_xdata_pcie.description=Synopsys DesignWare xData PCIe driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [70 x i8] c"dw_xdata_pcie.author=Gustavo Pimentel <gustavo.pimentel@synopsys.com>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw_xdata_pcie\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw-xdata-pcie\00", [18 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5827, i32 60890, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 301, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enabling device failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dw_xdata_pcie_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/misc/dw-xdata-pcie.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_probe._entry_ptr = internal global ptr @dw_xdata_pcie_probe._entry, section ".printk_index", align 4
@dw_xdata_pcie_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xData BAR I/O remapping failed\0A\00", [32 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_probe._entry_ptr.9 = internal global ptr @dw_xdata_pcie_probe._entry.7, section ".printk_index", align 4
@dw_xdata_pcie_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dw->mutex\00", [21 x i8] zeroinitializer }, align 32
@xdata_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 338, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xData: unable to get id\0A\00", [39 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_probe._entry_ptr.13 = internal global ptr @dw_xdata_pcie_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw-xdata-pcie.%d\00", [47 x i8] zeroinitializer }, align 32
@xdata_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @xdata_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.15, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xData: target address = 0x%.16llx\0A\00", [61 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_probe.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xData: wr_len = %zu, rd_len = %zu\0A\00", [61 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xData: failed to register device\0A\00", [62 x i8] zeroinitializer }, align 32
@dw_xdata_pcie_probe._entry_ptr.19 = internal global ptr @dw_xdata_pcie_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xdata_ida.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@xdata_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @xdata_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@xdata_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_write, ptr @dev_attr_read, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_write = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_show, ptr @write_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_show, ptr @read_store }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dw_xdata_perf.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw_xdata_perf\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xData: time=%llu us, %s=%llu MB/s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@write_store.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write_store\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xData: requested write transfer\0A\00", [63 x i8] zeroinitializer }, align 32
@write_store.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.28, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xData: requested stop transfer\0A\00", [32 x i8] zeroinitializer }, align 32
@dw_xdata_start.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dw_xdata_start\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xData: started %s direction\0A\00", [35 x i8] zeroinitializer }, align 32
@read_store.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read_store\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xData: requested read transfer\0A\00", [32 x i8] zeroinitializer }, align 32
@read_store.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.28, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"dw_xdata_pcie_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 408, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 415, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 409, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"dw_xdata_pcie_id_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 402, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 301, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 308, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 320, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"xdata_ida\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 338, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 342, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"xdata_groups\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 359, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 361, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 370, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 24, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"xdata_group\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 286, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"xdata_attrs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 280, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"dev_attr_write\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"dev_attr_read\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 278, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 241, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 215, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 197, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 231, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 234, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 134, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [32 x i8] c"../drivers/misc/dw-xdata-pcie.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 268, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_dw_xdata_pcie_driver_exit, ptr @__initcall__kmod_dw_xdata_pcie__254_415_dw_xdata_pcie_driver_init6, ptr @dw_xdata_pcie_driver_exit, ptr @dw_xdata_pcie_probe._entry, ptr @dw_xdata_pcie_probe._entry.11, ptr @dw_xdata_pcie_probe._entry.17, ptr @dw_xdata_pcie_probe._entry.7, ptr @dw_xdata_pcie_probe._entry_ptr, ptr @dw_xdata_pcie_probe._entry_ptr.13, ptr @dw_xdata_pcie_probe._entry_ptr.19, ptr @dw_xdata_pcie_probe._entry_ptr.9, ptr @dw_xdata_pcie_driver, ptr @.str, ptr @.str.1, ptr @dw_xdata_pcie_id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @dw_xdata_pcie_probe.__key, ptr @.str.10, ptr @xdata_ida, ptr @.str.12, ptr @.str.14, ptr @xdata_groups, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @xdata_group, ptr @xdata_attrs, ptr @dev_attr_write, ptr @dev_attr_read, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_xdata_pcie_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_xdata_pcie_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_xdata_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_xdata_pcie_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_xdata_pcie_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdata_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_xdata_pcie_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdata_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_xdata_pcie_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdata_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdata_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_xdata_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @dw_xdata_pcie_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_xdata_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @dw_xdata_pcie_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_xdata_pcie_probe(ptr noundef %pdev, ptr nocapture noundef readnone %pid) #2 align 64 {
entry:
  %name = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 24)
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.end.pci_name.exit_crit_edge ]
  %call3 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end9:                                          ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 152, i32 noundef 3520) #7
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.body14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body14:                                        ; preds = %if.end9
  %mutex = getelementptr inbounds %struct.dw_xdata, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @dw_xdata_pcie_probe.__key) #7
  %call17 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #7
  %5 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call17, align 4
  %vaddr = getelementptr inbounds %struct.dw_xdata_region, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %vaddr, align 4
  %tobool20.not = icmp eq ptr %6, null
  br i1 %tobool20.not, label %do.body14.cleanup_crit_edge, label %if.end22

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %do.body14
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i, align 4
  %call25 = tail call i32 @pcie_get_mps(ptr noundef %pdev) #7
  %max_wr_len = getelementptr inbounds %struct.dw_xdata, ptr %call.i, i32 0, i32 1
  %shr = lshr i32 %call25, 2
  %11 = ptrtoint ptr %max_wr_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr, ptr %max_wr_len, align 4
  %call27 = tail call i32 @pcie_get_readrq(ptr noundef %pdev) #7
  %max_rd_len = getelementptr inbounds %struct.dw_xdata, ptr %call.i, i32 0, i32 2
  %shr29 = lshr i32 %call27, 2
  %12 = ptrtoint ptr %max_rd_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr29, ptr %max_rd_len, align 4
  %pdev30 = getelementptr inbounds %struct.dw_xdata, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %pdev30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pdev, ptr %pdev30, align 4
  %call31 = tail call i32 @ida_alloc_range(ptr noundef nonnull @xdata_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end22
  %call37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 24, ptr noundef nonnull @.str.14, i32 noundef %call31)
  %call39 = call noalias ptr @kstrdup(ptr noundef nonnull %name, i32 noundef 3264) #7
  %misc_dev = getelementptr inbounds %struct.dw_xdata, ptr %call.i, i32 0, i32 5
  %name40 = getelementptr inbounds %struct.dw_xdata, ptr %call.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %name40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call39, ptr %name40, align 4
  %tobool43.not = icmp eq ptr %call39, null
  br i1 %tobool43.not, label %if.end36.err_ida_remove_crit_edge, label %if.end45

if.end36.err_ida_remove_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ida_remove

if.end45:                                         ; preds = %if.end36
  %15 = ptrtoint ptr %misc_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 255, ptr %misc_dev, align 4
  %parent = getelementptr inbounds %struct.dw_xdata, ptr %call.i, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %parent, align 4
  %groups = getelementptr inbounds %struct.dw_xdata, ptr %call.i, i32 0, i32 5, i32 6
  %17 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xdata_groups, ptr %groups, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vaddr, align 4
  %RAM_addr = getelementptr inbounds %struct.dw_xdata_regs, ptr %19, i32 0, i32 6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RAM_addr, i32 0) #7, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vaddr, align 4
  %RAM_port = getelementptr inbounds %struct.dw_xdata_regs, ptr %21, i32 0, i32 7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RAM_port, i32 0) #7, !srcloc !95
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call.i, align 4
  %add = add i32 %23, 134217728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  call void @arm_heavy_mb() #7
  %24 = call i32 @llvm.bswap.i32(i32 %add)
  %25 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vaddr, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vaddr, align 4
  %addr_msb = getelementptr inbounds %struct.dw_xdata_regs, ptr %28, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr_msb, i32 0) #7, !srcloc !95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_xdata_pcie_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_xdata_pcie_probe, %if.then76)) #7
          to label %do.body80 [label %if.then76], !srcloc !99

if.then76:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %add to i64
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_xdata_pcie_probe.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.15, i64 noundef %conv) #7
  br label %do.body80

do.body80:                                        ; preds = %if.then76, %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_xdata_pcie_probe.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_xdata_pcie_probe, %if.then92)) #7
          to label %do.end98 [label %if.then92], !srcloc !99

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %max_wr_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_wr_len, align 4
  %mul = shl i32 %30, 2
  %31 = ptrtoint ptr %max_rd_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_rd_len, align 4
  %mul95 = shl i32 %32, 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_xdata_pcie_probe.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %mul, i32 noundef %mul95) #7
  br label %do.end98

do.end98:                                         ; preds = %if.then92, %do.body80
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call100 = call i32 @misc_register(ptr noundef %misc_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.end98.cleanup_crit_edge, label %do.end105

do.end98.cleanup_crit_edge:                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end105:                                        ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  %34 = ptrtoint ptr %name40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name40, align 4
  call void @kfree(ptr noundef %35) #7
  br label %err_ida_remove

err_ida_remove:                                   ; preds = %do.end105, %if.end36.err_ida_remove_crit_edge
  %err.0 = phi i32 [ %call100, %do.end105 ], [ -12, %if.end36.err_ida_remove_crit_edge ]
  call void @ida_free(ptr noundef nonnull @xdata_ida, i32 noundef %call31) #7
  br label %cleanup

cleanup:                                          ; preds = %err_ida_remove, %do.end98.cleanup_crit_edge, %do.end35, %do.body14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ %call31, %do.end35 ], [ %err.0, %err_ida_remove ], [ -12, %if.end9.cleanup_crit_edge ], [ -12, %do.body14.cleanup_crit_edge ], [ 0, %do.end98.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %name) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_xdata_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %id, align 4, !annotation !100
  %misc_dev = getelementptr inbounds %struct.dw_xdata, ptr %1, i32 0, i32 5
  %name = getelementptr inbounds %struct.dw_xdata, ptr %1, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.dw_xdata, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %vaddr.i.i = getelementptr inbounds %struct.dw_xdata_region, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr.i.i, align 4
  %burst_cnt.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %8, i32 0, i32 2
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %burst_cnt.i) #7, !srcloc !101
  %10 = call i32 @llvm.bswap.i32(i32 %9) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i = icmp sgt i32 %10, -1
  br i1 %tobool.not.i, label %if.end4.dw_xdata_stop.exit_crit_edge, label %if.then.i

if.end4.dw_xdata_stop.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_xdata_stop.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %10, 2147483647
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  call void @arm_heavy_mb() #7
  %11 = call i32 @llvm.bswap.i32(i32 %and3.i) #7
  %12 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vaddr.i.i, align 4
  %burst_cnt5.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %13, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %burst_cnt5.i, i32 %11) #7, !srcloc !95
  br label %dw_xdata_stop.exit

dw_xdata_stop.exit:                               ; preds = %if.then.i, %if.end4.dw_xdata_stop.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @misc_deregister(ptr noundef %misc_dev) #7
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %15) #7
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  call void @ida_free(ptr noundef nonnull @xdata_ida, i32 noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %dw_xdata_stop.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_mps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %rate = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rate) #7
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %rate, align 8, !annotation !100
  call fastcc void @dw_xdata_perf(ptr noundef %add.ptr.i, ptr noundef nonnull %rate, i1 noundef zeroext true)
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rate, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.22, i64 noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rate) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %enabled = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -112
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enabled) #7
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enabled, align 1, !annotation !100
  %call2 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %enabled) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body10, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_store.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_store, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !99

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_store.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.27) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call fastcc void @dw_xdata_start(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  br label %cleanup

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_store.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_store, %if.then22)) #7
          to label %do.end25 [label %if.then22], !srcloc !99

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_store.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.28) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %mutex.i = getelementptr i8, ptr %1, i32 -96
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %vaddr.i.i = getelementptr i8, ptr %1, i32 -108
  %5 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vaddr.i.i, align 4
  %burst_cnt.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %6, i32 0, i32 2
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %burst_cnt.i) #7, !srcloc !101
  %8 = call i32 @llvm.bswap.i32(i32 %7) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i = icmp sgt i32 %8, -1
  br i1 %tobool.not.i, label %do.end25.dw_xdata_stop.exit_crit_edge, label %if.then.i

do.end25.dw_xdata_stop.exit_crit_edge:            ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_xdata_stop.exit

if.then.i:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %8, 2147483647
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  call void @arm_heavy_mb() #7
  %9 = call i32 @llvm.bswap.i32(i32 %and3.i) #7
  %10 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr.i.i, align 4
  %burst_cnt5.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %11, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %burst_cnt5.i, i32 %9) #7, !srcloc !95
  br label %dw_xdata_stop.exit

dw_xdata_stop.exit:                               ; preds = %if.then.i, %do.end25.dw_xdata_stop.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %dw_xdata_stop.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %size, %dw_xdata_stop.exit ], [ %size, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enabled) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_xdata_perf(ptr noundef %dw, ptr nocapture noundef %rate, i1 noundef zeroext %write) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.dw_xdata, ptr %dw, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %mutex = getelementptr inbounds %struct.dw_xdata, ptr %dw, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %vaddr.i = getelementptr inbounds %struct.dw_xdata_region, ptr %dw, i32 0, i32 1
  %2 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr.i, align 4
  %perf_control = getelementptr inbounds %struct.dw_xdata_regs, ptr %3, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %perf_control, i32 0) #7, !srcloc !95
  %4 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr.i, align 4
  br i1 %write, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wr_cnt_msb.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %5, i32 0, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_cnt_msb.i) #7, !srcloc !101
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %8 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr.i, align 4
  %wr_cnt_lsb.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %9, i32 0, i32 11
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_cnt_lsb.i) #7, !srcloc !101
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  br label %dw_xdata_perf_meas.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rd_cnt_msb.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %5, i32 0, i32 14
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_cnt_msb.i) #7, !srcloc !101
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %14 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vaddr.i, align 4
  %rd_cnt_lsb.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %15, i32 0, i32 13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_cnt_lsb.i) #7, !srcloc !101
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  br label %dw_xdata_perf_meas.exit

dw_xdata_perf_meas.exit:                          ; preds = %if.else.i, %if.then.i
  %data.sroa.0.0.in.in = phi i32 [ %7, %if.then.i ], [ %13, %if.else.i ]
  %.sink.i = phi i32 [ %11, %if.then.i ], [ %17, %if.else.i ]
  %data.sroa.0.0.in = zext i32 %data.sroa.0.0.in.in to i64
  %data.sroa.0.0.neg79 = mul i64 %data.sroa.0.0.in, -4294967296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vaddr.i, align 4
  %perf_control7 = getelementptr inbounds %struct.dw_xdata_regs, ptr %20, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %perf_control7, i32 536870912) #7, !srcloc !95
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %dw_xdata_perf_meas.exit
  %__ms.078 = phi i32 [ 100, %dw_xdata_perf_meas.exit ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.078, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  %conv24.i = zext i32 %.sink.i to i64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr.i, align 4
  %perf_control13 = getelementptr inbounds %struct.dw_xdata_regs, ptr %23, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %perf_control13, i32 0) #7, !srcloc !95
  %24 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vaddr.i, align 4
  br i1 %write, label %if.then.i60, label %if.else.i65

if.then.i60:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %wr_cnt_msb.i56 = getelementptr inbounds %struct.dw_xdata_regs, ptr %25, i32 0, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_cnt_msb.i56) #7, !srcloc !101
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %28 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaddr.i, align 4
  %wr_cnt_lsb.i59 = getelementptr inbounds %struct.dw_xdata_regs, ptr %29, i32 0, i32 11
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_cnt_lsb.i59) #7, !srcloc !101
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  br label %dw_xdata_perf_meas.exit69

if.else.i65:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %rd_cnt_msb.i61 = getelementptr inbounds %struct.dw_xdata_regs, ptr %25, i32 0, i32 14
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_cnt_msb.i61) #7, !srcloc !101
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %34 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vaddr.i, align 4
  %rd_cnt_lsb.i64 = getelementptr inbounds %struct.dw_xdata_regs, ptr %35, i32 0, i32 13
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_cnt_lsb.i64) #7, !srcloc !101
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  br label %dw_xdata_perf_meas.exit69

dw_xdata_perf_meas.exit69:                        ; preds = %if.else.i65, %if.then.i60
  %data.sroa.8.0.in.in = phi i32 [ %27, %if.then.i60 ], [ %33, %if.else.i65 ]
  %.sink.i66 = phi i32 [ %31, %if.then.i60 ], [ %37, %if.else.i65 ]
  %data.sroa.8.0.in = zext i32 %data.sroa.8.0.in.in to i64
  %data.sroa.8.0 = shl nuw i64 %data.sroa.8.0.in, 32
  %conv24.i67 = zext i32 %.sink.i66 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vaddr.i, align 4
  %perf_control22 = getelementptr inbounds %struct.dw_xdata_regs, ptr %40, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %perf_control22, i32 536870912) #7, !srcloc !95
  %sub = sub i32 %38, %18
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef %sub) #7
  %conv.i71 = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i71, 1000
  %or25.i.neg = sub i64 %data.sroa.0.0.neg79, %conv24.i
  %or25.i68 = add i64 %or25.i.neg, %conv24.i67
  %sub.i = add i64 %or25.i68, %data.sroa.8.0
  %mul.i72 = mul i64 %sub.i, 1000000000
  %shr.i = lshr i64 %mul.i72, 20
  %div271.i = lshr exact i64 %mul.i, 1
  %add.i = add nuw nsw i64 %div271.i, %shr.i
  %conv.i73 = trunc i64 %mul.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp171.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !113

if.then175.i:                                     ; preds = %dw_xdata_perf_meas.exit69
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i = trunc i64 %add.i to i32
  %div179.i = udiv i32 %conv176.i, %conv.i73
  %conv180.i = zext i32 %div179.i to i64
  br label %dw_xdata_perf_diff.exit

if.else181.i:                                     ; preds = %dw_xdata_perf_meas.exit69
  call void @__sanitizer_cov_trace_pc() #9
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i73, i64 %add.i) #11, !srcloc !114
  %asmresult1.i.i = extractvalue { i64, i64 } %41, 1
  br label %dw_xdata_perf_diff.exit

dw_xdata_perf_diff.exit:                          ; preds = %if.else181.i, %if.then175.i
  %_tmp.0.i = phi i64 [ %conv180.i, %if.then175.i ], [ %asmresult1.i.i, %if.else181.i ]
  %42 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %_tmp.0.i, ptr %rate, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_xdata_perf.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_xdata_perf, %if.then)) #7
          to label %do.end40 [label %if.then], !srcloc !99

if.then:                                          ; preds = %dw_xdata_perf_diff.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %write, ptr @.str.21, ptr @.str.25
  %43 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rate, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_xdata_perf.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.24, i64 noundef %mul.i, ptr noundef nonnull %cond, i64 noundef %44) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then, %dw_xdata_perf_diff.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_xdata_start(ptr noundef %dw, i1 noundef zeroext %write) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.dw_xdata, ptr %dw, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %mutex.i = getelementptr inbounds %struct.dw_xdata, ptr %dw, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %vaddr.i.i = getelementptr inbounds %struct.dw_xdata_region, ptr %dw, i32 0, i32 1
  %2 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr.i.i, align 4
  %burst_cnt.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %burst_cnt.i) #7, !srcloc !101
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i = icmp sgt i32 %5, -1
  br i1 %tobool.not.i, label %entry.dw_xdata_stop.exit_crit_edge, label %if.then.i

entry.dw_xdata_stop.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_xdata_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %5, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #7
  %7 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr.i.i, align 4
  %burst_cnt5.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %burst_cnt5.i, i32 %6) #7, !srcloc !95
  br label %dw_xdata_stop.exit

dw_xdata_stop.exit:                               ; preds = %if.then.i, %entry.dw_xdata_stop.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vaddr.i.i, align 4
  %status2 = getelementptr inbounds %struct.dw_xdata_regs, ptr %10, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status2, i32 0) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vaddr.i.i, align 4
  %burst_cnt = getelementptr inbounds %struct.dw_xdata_regs, ptr %12, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %burst_cnt, i32 17825920) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vaddr.i.i, align 4
  %pattern = getelementptr inbounds %struct.dw_xdata_regs, ptr %14, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pattern, i32 0) #7, !srcloc !95
  %max_wr_len = getelementptr inbounds %struct.dw_xdata, ptr %dw, i32 0, i32 1
  %max_rd_len = getelementptr inbounds %struct.dw_xdata, ptr %dw, i32 0, i32 2
  %.sink112.in = select i1 %write, ptr %max_wr_len, ptr %max_rd_len
  %.sink = select i1 %write, i32 327683, i32 327681
  %15 = ptrtoint ptr %.sink112.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink112 = load i32, ptr %.sink112.in, align 4
  %shl = shl i32 %.sink112, 2
  %and30 = and i32 %shl, 16380
  %or31 = or i32 %and30, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %17 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vaddr.i.i, align 4
  %control64 = getelementptr inbounds %struct.dw_xdata_regs, ptr %18, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control64, i32 %16) #7, !srcloc !95
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #7
  %19 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vaddr.i.i, align 4
  %status66 = getelementptr inbounds %struct.dw_xdata_regs, ptr %20, i32 0, i32 5
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status66) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool72.not = icmp eq i32 %22, 0
  br i1 %tobool72.not, label %do.body74, label %dw_xdata_stop.exit.if.end86_crit_edge

dw_xdata_stop.exit.if.end86_crit_edge:            ; preds = %dw_xdata_stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

do.body74:                                        ; preds = %dw_xdata_stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_xdata_start.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_xdata_start, %if.then81)) #7
          to label %if.end86 [label %if.then81], !srcloc !99

if.then81:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %write, ptr @.str.21, ptr @.str.25
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_xdata_start.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond) #7
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %do.body74, %dw_xdata_stop.exit.if.end86_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %rate = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rate) #7
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %rate, align 8, !annotation !100
  call fastcc void @dw_xdata_perf(ptr noundef %add.ptr.i, ptr noundef nonnull %rate, i1 noundef zeroext false)
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rate, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.22, i64 noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rate) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %enabled = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -112
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enabled) #7
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enabled, align 1, !annotation !100
  %call2 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %enabled) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body10, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_store.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_store, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !99

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_store.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.32) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call fastcc void @dw_xdata_start(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  br label %cleanup

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_store.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_store, %if.then22)) #7
          to label %do.end25 [label %if.then22], !srcloc !99

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_store.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.28) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %mutex.i = getelementptr i8, ptr %1, i32 -96
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %vaddr.i.i = getelementptr i8, ptr %1, i32 -108
  %5 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vaddr.i.i, align 4
  %burst_cnt.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %6, i32 0, i32 2
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %burst_cnt.i) #7, !srcloc !101
  %8 = call i32 @llvm.bswap.i32(i32 %7) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i = icmp sgt i32 %8, -1
  br i1 %tobool.not.i, label %do.end25.dw_xdata_stop.exit_crit_edge, label %if.then.i

do.end25.dw_xdata_stop.exit_crit_edge:            ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_xdata_stop.exit

if.then.i:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %8, 2147483647
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  call void @arm_heavy_mb() #7
  %9 = call i32 @llvm.bswap.i32(i32 %and3.i) #7
  %10 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr.i.i, align 4
  %burst_cnt5.i = getelementptr inbounds %struct.dw_xdata_regs, ptr %11, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %burst_cnt5.i, i32 %9) #7, !srcloc !95
  br label %dw_xdata_stop.exit

dw_xdata_stop.exit:                               ; preds = %if.then.i, %do.end25.dw_xdata_stop.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %dw_xdata_stop.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %size, %dw_xdata_stop.exit ], [ %size, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enabled) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_dw_xdata_pcie__254_415_dw_xdata_pcie_driver_init6, !1, !"__initcall__kmod_dw_xdata_pcie__254_415_dw_xdata_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 415, i32 1}
!2 = !{ptr @__exitcall_dw_xdata_pcie_driver_exit, !1, !"__exitcall_dw_xdata_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file255, !4, !"__UNIQUE_ID_file255", i1 false, i1 false}
!4 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 417, i32 1}
!5 = !{ptr @__UNIQUE_ID_license256, !4, !"__UNIQUE_ID_license256", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description257, !7, !"__UNIQUE_ID_description257", i1 false, i1 false}
!7 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 418, i32 1}
!8 = !{ptr @__UNIQUE_ID_author258, !9, !"__UNIQUE_ID_author258", i1 false, i1 false}
!9 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 419, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 409, i32 11}
!13 = !{ptr @dw_xdata_pcie_driver, !14, !"dw_xdata_pcie_driver", i1 false, i1 false}
!14 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 408, i32 26}
!15 = !{ptr @dw_xdata_pcie_id_table, !16, !"dw_xdata_pcie_id_table", i1 false, i1 false}
!16 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 402, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 301, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dw_xdata_pcie_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @dw_xdata_pcie_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 308, i32 3}
!27 = !{ptr @dw_xdata_pcie_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dw_xdata_pcie_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dw_xdata_pcie_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 320, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 338, i32 3}
!34 = !{ptr @dw_xdata_pcie_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dw_xdata_pcie_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 342, i32 31}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 359, i32 2}
!40 = !{ptr @dw_xdata_pcie_probe.__UNIQUE_ID_ddebug252, !39, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 361, i32 2}
!43 = !{ptr @dw_xdata_pcie_probe.__UNIQUE_ID_ddebug253, !42, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 370, i32 3}
!46 = !{ptr @dw_xdata_pcie_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dw_xdata_pcie_probe._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 24, i32 8}
!50 = !{ptr @xdata_ida, !49, !"xdata_ida", i1 false, i1 false}
!51 = !{ptr @xdata_groups, !52, !"xdata_groups", i1 false, i1 false}
!52 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 286, i32 1}
!53 = !{ptr @xdata_group, !52, !"xdata_group", i1 false, i1 false}
!54 = !{ptr @xdata_attrs, !55, !"xdata_attrs", i1 false, i1 false}
!55 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 280, i32 26}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 241, i32 8}
!58 = !{ptr @dev_attr_write, !57, !"dev_attr_write", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 215, i32 25}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 197, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @dw_xdata_perf.__UNIQUE_ID_ddebug247, !62, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!65 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 231, i32 3}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @write_store.__UNIQUE_ID_ddebug248, !67, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 234, i32 3}
!72 = !{ptr @write_store.__UNIQUE_ID_ddebug249, !71, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 134, i32 3}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @dw_xdata_start.__UNIQUE_ID_ddebug246, !74, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!77 = !{ptr @dev_attr_read, !78, !"dev_attr_read", i1 false, i1 false}
!78 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 278, i32 8}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 268, i32 3}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @read_store.__UNIQUE_ID_ddebug250, !80, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!83 = !{ptr @read_store.__UNIQUE_ID_ddebug251, !84, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!84 = !{!"../drivers/misc/dw-xdata-pcie.c", i32 271, i32 3}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2154611009}
!95 = !{i64 5042766}
!96 = !{i64 2154611416}
!97 = !{i64 2154611891}
!98 = !{i64 2154612439}
!99 = !{i64 2148409479, i64 2148409484, i64 2148409497, i64 2148409541, i64 2148409575, i64 2148409596}
!100 = !{!"auto-init"}
!101 = !{i64 5043184}
!102 = !{i64 2154488321}
!103 = !{i64 2154488715}
!104 = !{i8 0, i8 2}
!105 = !{i64 2154585857}
!106 = !{i64 2154578768}
!107 = !{i64 2154579298}
!108 = !{i64 2154579828}
!109 = !{i64 2154580358}
!110 = !{i64 2154586384}
!111 = !{i64 2154588197}
!112 = !{i64 2154588724}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2148434666, i64 2148434946, i64 2148435280, i64 2148435614}
!115 = !{i64 2154489165}
!116 = !{i64 2154489696}
!117 = !{i64 2154490209}
!118 = !{i64 2154575065}
!119 = !{i64 2154575774}
