; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_pcidio.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_pcidio.c"
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
%struct.nidio_board = type { ptr, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nidio96_private = type { ptr, i32, i32, i16, ptr, ptr, %struct.spinlock }
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
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.mite_channel = type { ptr, i32, i32, i32, ptr }

@__UNIQUE_ID_firmware236 = internal constant [31 x i8] c"ni_pcidio.firmware=ni6534a.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware237 = internal constant [32 x i8] c"ni_pcidio.firmware=niscrb01.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware238 = internal constant [32 x i8] c"ni_pcidio.firmware=niscrb02.bin\00", section ".modinfo", align 1
@__initcall__kmod_ni_pcidio__241_1005_ni_pcidio_driver_init6 = internal global ptr @ni_pcidio_driver_init, section ".initcall6.init", align 4
@ni_pcidio_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @nidio_detach, ptr @nidio_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ni_pcidio_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ni_pcidio_pci_table, ptr @ni_pcidio_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ni_pcidio_driver_exit = internal global ptr @ni_pcidio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [47 x i8] c"ni_pcidio.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [46 x i8] c"ni_pcidio.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [48 x i8] c"ni_pcidio.file=drivers/comedi/drivers/ni_pcidio\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [22 x i8] c"ni_pcidio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ni_pcidio\00", [22 x i8] zeroinitializer }, align 32
@nidio_boards = internal constant { [3 x %struct.nidio_board], [60 x i8] } { [3 x %struct.nidio_board] [%struct.nidio_board { ptr @.str.7, i8 0, i32 50 }, %struct.nidio_board { ptr @.str.8, i8 0, i32 50 }, %struct.nidio_board { ptr @.str.9, i8 -128, i32 50 }], [60 x i8] zeroinitializer }, align 32
@nidio_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&devpriv->mite_channel_lock\00", [36 x i8] zeroinitializer }, align 32
@nidio_auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 927, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s rev=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nidio_auto_attach\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/comedi/drivers/ni_pcidio.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nidio_auto_attach._entry_ptr = internal global ptr @nidio_auto_attach._entry, section ".printk_index", align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci-dio-32hs\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxi-6533\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6534\00", [23 x i8] zeroinitializer }, align 32
@pci_6534_upload_firmware.fw_file = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12], [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"niscrb01.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"niscrb02.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ni6534a.bin\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pci_6534_load_fpga._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 774, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ni_pcidio: failed to load fpga %i, waiting for status 0x2\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_6534_load_fpga\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pci_6534_load_fpga._entry_ptr = internal global ptr @pci_6534_load_fpga._entry, section ".printk_index", align 4
@pci_6534_load_fpga._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.4, i32 786, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ni_pcidio: failed to load fpga %i, waiting for status 0x3\0A\00", [37 x i8] zeroinitializer }, align 32
@pci_6534_load_fpga._entry_ptr.18 = internal global ptr @pci_6534_load_fpga._entry.16, section ".printk_index", align 4
@pci_6534_load_fpga._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.4, i32 802, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ni_pcidio: failed to load word into fpga %i\0A\00", [51 x i8] zeroinitializer }, align 32
@pci_6534_load_fpga._entry_ptr.21 = internal global ptr @pci_6534_load_fpga._entry.19, section ".printk_index", align 4
@ni_pcidio_request_di_mite_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 305, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reserve mite dma channel\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ni_pcidio_request_di_mite_channel\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ni_pcidio_request_di_mite_channel._entry_ptr = internal global ptr @ni_pcidio_request_di_mite_channel._entry, section ".printk_index", align 4
@nidio_interrupt.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nidio_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"too much work in interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@ni_pcidio_pci_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4243, i32 4432, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4243, i32 4784, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4243, i32 4896, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"ni_pcidio_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 978, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"ni_pcidio_pci_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 999, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 979, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"nidio_boards\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 267, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 904, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 926, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 269, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 273, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 277, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"fw_file\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 845, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 846, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 847, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 848, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 772, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 784, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 800, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 305, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 406, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"ni_pcidio_pci_table\00", align 1
@___asan_gen_.127 = private constant [38 x i8] c"../drivers/comedi/drivers/ni_pcidio.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 991, i32 35 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_firmware236, ptr @__UNIQUE_ID_firmware237, ptr @__UNIQUE_ID_firmware238, ptr @__UNIQUE_ID_license245, ptr @__exitcall_ni_pcidio_driver_exit, ptr @__initcall__kmod_ni_pcidio__241_1005_ni_pcidio_driver_init6, ptr @ni_pcidio_driver_exit, ptr @ni_pcidio_request_di_mite_channel._entry, ptr @ni_pcidio_request_di_mite_channel._entry_ptr, ptr @nidio_auto_attach._entry, ptr @nidio_auto_attach._entry_ptr, ptr @pci_6534_load_fpga._entry, ptr @pci_6534_load_fpga._entry.16, ptr @pci_6534_load_fpga._entry.19, ptr @pci_6534_load_fpga._entry_ptr, ptr @pci_6534_load_fpga._entry_ptr.18, ptr @pci_6534_load_fpga._entry_ptr.21, ptr @ni_pcidio_driver, ptr @ni_pcidio_pci_driver, ptr @.str, ptr @nidio_boards, ptr @nidio_auto_attach.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pci_6534_upload_firmware.fw_file, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ni_pcidio_pci_table], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_pcidio_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_pcidio_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nidio_boards to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nidio_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nidio_auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_6534_upload_firmware.fw_file to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_6534_load_fpga._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_6534_load_fpga._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_6534_load_fpga._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_pcidio_request_di_mite_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_pcidio_pci_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_pcidio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @ni_pcidio_driver, ptr noundef nonnull @ni_pcidio_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ni_pcidio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @ni_pcidio_driver, ptr noundef nonnull @ni_pcidio_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nidio_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %di_mite_ring = getelementptr inbounds %struct.nidio96_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %di_mite_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %di_mite_ring, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then3.if.end8_crit_edge, label %if.then5

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mite_free_ring(ptr noundef nonnull %5) #7
  %6 = ptrtoint ptr %di_mite_ring to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %di_mite_ring, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then3.if.end8_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @mite_detach(ptr noundef %8) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end.if.end9_crit_edge
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %10) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  tail call void @comedi_pci_disable(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nidio_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %context)
  %cmp = icmp ugt i32 %context, 2
  %arrayidx = getelementptr [3 x %struct.nidio_board], ptr @nidio_boards, i32 0, i32 %context
  %tobool.not107 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not107
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call3 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 68) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %do.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end6
  %mite_channel_lock = getelementptr inbounds %struct.nidio96_private, ptr %call7, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %mite_channel_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nidio_auto_attach.__key, i16 noundef signext 3) #7
  %call12 = tail call ptr @mite_attach(ptr noundef %dev, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %call7, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %do.body.cleanup_crit_edge, label %if.end16

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.body
  %call18 = tail call ptr @mite_alloc_ring(ptr noundef nonnull %call12) #7
  %di_mite_ring = getelementptr inbounds %struct.nidio96_private, ptr %call7, i32 0, i32 5
  %5 = ptrtoint ptr %di_mite_ring to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %di_mite_ring, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %6 = and i32 %context, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end22.if.end29_crit_edge, label %if.then24

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then24:                                        ; preds = %if.end22
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #7, !srcloc !90
  %call.i.i.i = tail call i32 @pci_6534_load_fpga(ptr noundef %dev, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp1.i.i, label %if.then24.pci_6534_reset_fpgas.exit.i_crit_edge, label %for.cond.i.i

if.then24.pci_6534_reset_fpgas.exit.i_crit_edge:  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_6534_reset_fpgas.exit.i

for.cond.i.i:                                     ; preds = %if.then24
  %call.i.1.i.i = tail call i32 @pci_6534_load_fpga(ptr noundef %dev, ptr noundef null, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i)
  %cmp1.1.i.i = icmp slt i32 %call.i.1.i.i, 0
  br i1 %cmp1.1.i.i, label %for.cond.i.i.pci_6534_reset_fpgas.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.pci_6534_reset_fpgas.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_6534_reset_fpgas.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.2.i.i = tail call i32 @pci_6534_load_fpga(ptr noundef %dev, ptr noundef null, i32 noundef 0, i32 noundef 2) #7
  br label %pci_6534_reset_fpgas.exit.i

pci_6534_reset_fpgas.exit.i:                      ; preds = %for.cond.1.i.i, %for.cond.i.i.pci_6534_reset_fpgas.exit.i_crit_edge, %if.then24.pci_6534_reset_fpgas.exit.i_crit_edge
  %call.i.lcssa.i.i = phi i32 [ %call.i.i.i, %if.then24.pci_6534_reset_fpgas.exit.i_crit_edge ], [ %call.i.1.i.i, %for.cond.i.i.pci_6534_reset_fpgas.exit.i_crit_edge ], [ %call.i.2.i.i, %for.cond.1.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %13, i32 268
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i.i, i16 0) #7, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa.i.i)
  %cmp.i = icmp slt i32 %call.i.lcssa.i.i, 0
  br i1 %cmp.i, label %pci_6534_reset_fpgas.exit.i.cleanup_crit_edge, label %pci_6534_reset_fpgas.exit.i.for.body.i_crit_edge

pci_6534_reset_fpgas.exit.i.for.body.i_crit_edge: ; preds = %pci_6534_reset_fpgas.exit.i
  br label %for.body.i

pci_6534_reset_fpgas.exit.i.cleanup_crit_edge:    ; preds = %pci_6534_reset_fpgas.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.backedge, %pci_6534_reset_fpgas.exit.i.for.body.i_crit_edge
  %n.027.i = phi i32 [ %n.027.i.be, %for.body.i.backedge ], [ 2, %pci_6534_reset_fpgas.exit.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %arrayidx.i = getelementptr [3 x ptr], ptr @pci_6534_upload_firmware.fw_file, i32 0, i32 %n.027.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call3.i = tail call i32 @comedi_load_firmware(ptr noundef %dev, ptr noundef %dev2.i, ptr noundef %19, ptr noundef nonnull @pci_6534_load_fpga, i32 noundef %n.027.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n.027.i)
  %cmp5.i = icmp eq i32 %n.027.i, 2
  %or.cond.i = and i1 %cmp5.i, %cmp4.i
  br i1 %or.cond.i, label %if.end7.thread.i, label %if.end7.i

if.end7.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %21, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %23, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %25, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %27, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %29, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %31, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 0) #7, !srcloc !93
  br label %for.body.i.backedge

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp8.i = icmp sgt i32 %call3.i, -1
  %dec.i = add nsw i32 %n.027.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.027.i)
  %cmp1.i = icmp sgt i32 %n.027.i, 0
  %or.cond28.i = and i1 %cmp1.i, %cmp8.i
  br i1 %or.cond28.i, label %if.end7.i.for.body.i.backedge_crit_edge, label %pci_6534_upload_firmware.exit

if.end7.i.for.body.i.backedge_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %if.end7.i.for.body.i.backedge_crit_edge, %if.end7.thread.i
  %n.027.i.be = phi i32 [ 1, %if.end7.thread.i ], [ %dec.i, %if.end7.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

pci_6534_upload_firmware.exit:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp26 = icmp slt i32 %call3.i, 0
  br i1 %cmp26, label %pci_6534_upload_firmware.exit.cleanup_crit_edge, label %pci_6534_upload_firmware.exit.if.end29_crit_edge

pci_6534_upload_firmware.exit.if.end29_crit_edge: ; preds = %pci_6534_upload_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

pci_6534_upload_firmware.exit.cleanup_crit_edge:  ; preds = %pci_6534_upload_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %pci_6534_upload_firmware.exit.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %35, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %37, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %39, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 0) #7, !srcloc !103
  %call30 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.end36, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36:                                         ; preds = %if.end29
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %40 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %class_dev, align 4
  %42 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %board_name, align 4
  %44 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 27
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %conv = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.2, ptr noundef %43, i32 noundef %conv) #10
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %47 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %subdevices, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %49 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %read_subdev, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 2
  %50 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 4
  %51 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 805535744, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 3
  %52 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 32, ptr %n_chan, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 15
  %53 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 13
  %54 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %maxdata, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 21
  %55 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @ni_pcidio_insn_config, ptr %insn_config, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 20
  %56 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ni_pcidio_insn_bits, ptr %insn_bits, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 22
  %57 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ni_pcidio_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 23
  %58 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ni_pcidio_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 25
  %59 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ni_pcidio_cancel, ptr %cancel, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 5
  %60 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 32, ptr %len_chanlist, align 4
  %buf_change = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 26
  %61 = ptrtoint ptr %buf_change to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ni_pcidio_change, ptr %buf_change, align 4
  %async_dma_dir = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 28
  %62 = ptrtoint ptr %async_dma_dir to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %async_dma_dir, align 4
  %poll = getelementptr inbounds %struct.comedi_subdevice, ptr %48, i32 0, i32 24
  %63 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ni_pcidio_poll, ptr %poll, align 4
  %irq41 = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %64 = ptrtoint ptr %irq41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool42.not = icmp eq i32 %65, 0
  br i1 %tobool42.not, label %do.end36.cleanup_crit_edge, label %if.then43

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %do.end36
  %66 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %65, ptr noundef nonnull @nidio_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %67, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp46 = icmp eq i32 %call.i, 0
  br i1 %cmp46, label %if.then48, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %irq49 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %68 = ptrtoint ptr %irq49 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %irq49, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.then43.cleanup_crit_edge, %do.end36.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %pci_6534_upload_firmware.exit.cleanup_crit_edge, %pci_6534_reset_fpgas.exit.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %call3.i, %pci_6534_upload_firmware.exit.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %do.end36.cleanup_crit_edge ], [ %call.i.lcssa.i.i, %pci_6534_reset_fpgas.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_free_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mite_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mite_alloc_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_pcidio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5005, i32 %1)
  %cmp = icmp eq i32 %1, 5005
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board_ptr, align 4
  %dio_speed = getelementptr inbounds %struct.nidio_board, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dio_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dio_speed, align 4
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx2, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %8 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_bits, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #7, !srcloc !93
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %14, %do.body ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_pcidio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !93
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %mmio1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio1, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !108
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_pcidio_cmd(ptr noundef readonly %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 15) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 77
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 0) #7, !srcloc !103
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %10 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp = icmp eq i32 %11, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 67
  br i1 %cmp, label %do.body12, label %do.body87

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26, i8 1) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 70
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 4) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %add.ptr36 = getelementptr i8, ptr %21, i32 71
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 4) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %add.ptr41 = getelementptr i8, ptr %23, i32 73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 3) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio, align 4
  %add.ptr46 = getelementptr i8, ptr %25, i32 74
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 -64) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %26 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp sgt i32 %27, 0
  %cond.in.v.i = select i1 %cmp.i, i32 25, i32 -25
  %cond.in.i = add i32 %cond.in.v.i, %27
  %divider.0.i = sdiv i32 %cond.in.i, 50
  %mul.i = mul nsw i32 %divider.0.i, 50
  %28 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i, ptr %scan_begin_arg, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %divider.0.i)
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %add.ptr51 = getelementptr i8, ptr %31, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %29) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio, align 4
  %add.ptr56 = getelementptr i8, ptr %33, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 1) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %add.ptr61 = getelementptr i8, ptr %35, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61, i8 1) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr66 = getelementptr i8, ptr %37, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66, i8 1) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio, align 4
  %add.ptr71 = getelementptr i8, ptr %39, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr71, i8 11) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio, align 4
  %add.ptr76 = getelementptr i8, ptr %41, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr76, i8 1) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio, align 4
  %add.ptr81 = getelementptr i8, ptr %43, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr81, i16 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio, align 4
  %add.ptr86 = getelementptr i8, ptr %45, i32 79
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86, i8 0) #7, !srcloc !103
  br label %if.end170

do.body87:                                        ; preds = %entry
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26, i8 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio, align 4
  %add.ptr106 = getelementptr i8, ptr %47, i32 70
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr106, i8 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio, align 4
  %add.ptr111 = getelementptr i8, ptr %49, i32 71
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr111, i8 4) #7, !srcloc !103
  %scan_begin_arg112 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %50 = ptrtoint ptr %scan_begin_arg112 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_begin_arg112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %tobool.not = icmp sgt i32 %51, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio, align 4
  %add.ptr118 = getelementptr i8, ptr %53, i32 73
  br i1 %tobool.not, label %do.body114, label %do.body120

do.body114:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr118, i8 0) #7, !srcloc !103
  br label %do.body125

do.body120:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr118, i8 2) #7, !srcloc !103
  br label %do.body125

do.body125:                                       ; preds = %do.body120, %do.body114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio, align 4
  %add.ptr129 = getelementptr i8, ptr %55, i32 74
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr129, i8 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio, align 4
  %add.ptr134 = getelementptr i8, ptr %57, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 16777216) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio, align 4
  %add.ptr139 = getelementptr i8, ptr %59, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr139, i8 1) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio, align 4
  %add.ptr144 = getelementptr i8, ptr %61, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr144, i8 1) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio, align 4
  %add.ptr149 = getelementptr i8, ptr %63, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr149, i8 1) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio, align 4
  %add.ptr154 = getelementptr i8, ptr %65, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr154, i8 12) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %66 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio, align 4
  %add.ptr159 = getelementptr i8, ptr %67, i32 86
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr159, i8 16) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio, align 4
  %add.ptr164 = getelementptr i8, ptr %69, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr164, i16 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio, align 4
  %add.ptr169 = getelementptr i8, ptr %71, i32 79
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr169, i8 96) #7, !srcloc !103
  br label %if.end170

if.end170:                                        ; preds = %do.body125, %do.body12
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %72 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %73)
  %cmp171 = icmp eq i32 %73, 32
  br i1 %cmp171, label %do.body173, label %if.end170.do.body180_crit_edge

if.end170.do.body180_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body180

do.body173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %74 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %stop_arg, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio, align 4
  %add.ptr177 = getelementptr i8, ptr %78, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %76) #7, !srcloc !93
  br label %do.body180

do.body180:                                       ; preds = %do.body173, %if.end170.do.body180_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %79 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio, align 4
  %add.ptr184 = getelementptr i8, ptr %80, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr184, i8 48) #7, !srcloc !103
  %81 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %private, align 4
  %mite_channel_lock.i.i = getelementptr inbounds %struct.nidio96_private, ptr %82, i32 0, i32 6
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mite_channel_lock.i.i) #7
  %di_mite_chan.i.i = getelementptr inbounds %struct.nidio96_private, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %di_mite_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %di_mite_chan.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i, label %do.end15.i.i, label %do.body8.i.i, !prof !138

do.body8.i.i:                                     ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/comedi/drivers/ni_pcidio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 299, 0\0A.popsection", ""() #7, !srcloc !139
  unreachable

do.end15.i.i:                                     ; preds = %do.body180
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %82, align 4
  %di_mite_ring.i.i = getelementptr inbounds %struct.nidio96_private, ptr %82, i32 0, i32 5
  %87 = ptrtoint ptr %di_mite_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %di_mite_ring.i.i, align 4
  %call16.i.i = tail call ptr @mite_request_channel_in_range(ptr noundef %86, ptr noundef %88, i32 noundef 1, i32 noundef 2) #7
  %89 = ptrtoint ptr %di_mite_chan.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call16.i.i, ptr %di_mite_chan.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %call16.i.i, null
  br i1 %tobool19.not.i.i, label %setup_mite_dma.exit.thread, label %if.end.i

setup_mite_dma.exit.thread:                       ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mite_channel_lock.i.i, i32 noundef %call2.i.i) #7
  %class_dev.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %90 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %class_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.22) #10
  br label %cleanup229

if.end.i:                                         ; preds = %do.end15.i.i
  %dir.i.i = getelementptr inbounds %struct.mite_channel, ptr %call16.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %dir.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %93 = ptrtoint ptr %di_mite_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %di_mite_chan.i.i, align 4
  %channel.i.i = getelementptr inbounds %struct.mite_channel, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %channel.i.i, align 4
  %and.i.i.i = and i32 %96, 3
  %shl.i.i.i = shl i32 %96, 2
  %and.i51.i.i = and i32 %shl.i.i.i, 12
  %or.i.i = or i32 %and.i51.i.i, %and.i.i.i
  %conv35.i.i = trunc i32 %or.i.i to i8
  %97 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i = getelementptr i8, ptr %98, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv35.i.i) #7, !srcloc !103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mite_channel_lock.i.i, i32 noundef %call2.i.i) #7
  %99 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %async, align 4
  %prealloc_bufsz.i = getelementptr inbounds %struct.comedi_async, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prealloc_bufsz.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %prealloc_bufsz.i, align 4
  %call2.i = tail call i32 @comedi_buf_write_alloc(ptr noundef %s, i32 noundef %102) #7
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mite_channel_lock.i.i) #7
  %103 = ptrtoint ptr %di_mite_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %di_mite_chan.i.i, align 4
  %tobool8.not.i = icmp eq ptr %104, null
  br i1 %tobool8.not.i, label %setup_mite_dma.exit, label %do.body190

setup_mite_dma.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mite_channel_lock.i.i, i32 noundef %call5.i) #7
  br label %cleanup229

do.body190:                                       ; preds = %if.end.i
  tail call void @mite_prep_dma(ptr noundef nonnull %104, i32 noundef 32, i32 noundef 32) #7
  %105 = ptrtoint ptr %di_mite_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %di_mite_chan.i.i, align 4
  tail call void @mite_dma_arm(ptr noundef %106) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mite_channel_lock.i.i, i32 noundef %call5.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio, align 4
  %add.ptr194 = getelementptr i8, ptr %108, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr194, i8 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %109 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio, align 4
  %add.ptr199 = getelementptr i8, ptr %110, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr199, i8 -1) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio, align 4
  %add.ptr204 = getelementptr i8, ptr %112, i32 75
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr204, i8 -30) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %113 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio, align 4
  %add.ptr209 = getelementptr i8, ptr %114, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr209, i8 3) #7, !srcloc !103
  %115 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp211 = icmp eq i32 %116, 1
  %spec.select = select i1 %cmp211, i16 7, i16 15
  %117 = getelementptr inbounds %struct.nidio96_private, ptr %1, i32 0, i32 3
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %spec.select, ptr %117, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %119 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp216 = icmp eq i32 %120, 2
  br i1 %cmp216, label %do.body218, label %if.else225

do.body218:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %117, align 4
  %conv = trunc i16 %122 to i8
  %123 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mmio, align 4
  %add.ptr223 = getelementptr i8, ptr %124, i32 65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr223, i8 %conv) #7, !srcloc !103
  %125 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %126, i32 0, i32 20
  %127 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup229

if.else225:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %async, align 4
  %inttrig227 = getelementptr inbounds %struct.comedi_async, ptr %129, i32 0, i32 20
  %130 = ptrtoint ptr %inttrig227 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @ni_pcidio_inttrig, ptr %inttrig227, align 4
  br label %cleanup229

cleanup229:                                       ; preds = %if.else225, %do.body218, %setup_mite_dma.exit, %setup_mite_dma.exit.thread
  %retval.1 = phi i32 [ -5, %setup_mite_dma.exit ], [ 0, %if.else225 ], [ 0, %do.body218 ], [ -16, %setup_mite_dma.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ni_pcidio_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 130
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i106 = and i32 %3, 80
  store i32 %and.i106, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %cmp.i107 = icmp ne i32 %and.i106, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i106, i32 %3)
  %cmp1.not.i108 = icmp eq i32 %and.i106, %3
  %or.cond.i109 = and i1 %cmp.i107, %cmp1.not.i108
  %4 = select i1 %or.cond.i, i1 %or.cond.i109, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i111 = and i32 %6, 2
  store i32 %and.i111, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %cmp.i112 = icmp ne i32 %and.i111, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i111, i32 %6)
  %cmp1.not.i113 = icmp eq i32 %and.i111, %6
  %or.cond.i114 = and i1 %cmp.i112, %cmp1.not.i113
  %7 = select i1 %4, i1 %or.cond.i114, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i116 = and i32 %9, 32
  store i32 %and.i116, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %cmp.i117 = icmp ne i32 %and.i116, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i116, i32 %9)
  %cmp1.not.i118 = icmp eq i32 %and.i116, %9
  %or.cond.i119 = and i1 %cmp.i117, %cmp1.not.i118
  %10 = select i1 %7, i1 %or.cond.i119, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i121 = and i32 %12, 33
  store i32 %and.i121, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %cmp.i122 = icmp ne i32 %and.i121, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i121, i32 %12)
  %cmp1.not.i123 = icmp eq i32 %and.i121, %12
  %or.cond.i124 = and i1 %cmp.i122, %cmp1.not.i123
  %13 = select i1 %10, i1 %or.cond.i124, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #7, !range !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %3) #7, !range !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i126 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i126, i1 false
  %17 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i128 = icmp ult i32 %17, 2
  %18 = select i1 %16, i1 %cmp.not.i128, i1 false
  br i1 %18, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i130 = icmp eq i32 %20, 0
  br i1 %cmp.not.i130, label %if.end20.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end20.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i131 = phi i32 [ -22, %if.then.i ], [ 0, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp eq i32 %3, 16
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_begin_arg, align 4
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %23)
  %cmp.i132 = icmp ult i32 %23, 50
  br i1 %cmp.i132, label %if.then.i133, label %if.then24.comedi_check_trigger_arg_min.exit_crit_edge

if.then24.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit

if.then.i133:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 50, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i133, %if.then24.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i134 = phi i32 [ -22, %if.then.i133 ], [ 0, %if.then24.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or26 = or i32 %retval.0.i134, %retval.0.i131
  br label %if.end34

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit
  %and = and i32 %23, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp28.not = icmp eq i32 %and, 0
  br i1 %cmp28.not, label %if.else.if.end34_crit_edge, label %if.then29

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and31 = and i32 %23, -1073741824
  %25 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and31, ptr %scan_begin_arg, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.else.if.end34_crit_edge, %comedi_check_trigger_arg_min.exit
  %err.0 = phi i32 [ %or26, %comedi_check_trigger_arg_min.exit ], [ -22, %if.then29 ], [ %retval.0.i131, %if.else.if.end34_crit_edge ]
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %26 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i135 = icmp eq i32 %27, 0
  br i1 %cmp.not.i135, label %if.end34.comedi_check_trigger_arg_is.exit138_crit_edge, label %if.then.i136

if.end34.comedi_check_trigger_arg_is.exit138_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit138

if.then.i136:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit138

comedi_check_trigger_arg_is.exit138:              ; preds = %if.then.i136, %if.end34.comedi_check_trigger_arg_is.exit138_crit_edge
  %retval.0.i137 = phi i32 [ -22, %if.then.i136 ], [ 0, %if.end34.comedi_check_trigger_arg_is.exit138_crit_edge ]
  %or36 = or i32 %retval.0.i137, %err.0
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %29 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chanlist_len, align 4
  %31 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.not.i139 = icmp eq i32 %32, %30
  br i1 %cmp.not.i139, label %comedi_check_trigger_arg_is.exit138.comedi_check_trigger_arg_is.exit142_crit_edge, label %if.then.i140

comedi_check_trigger_arg_is.exit138.comedi_check_trigger_arg_is.exit142_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit142

if.then.i140:                                     ; preds = %comedi_check_trigger_arg_is.exit138
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit142

comedi_check_trigger_arg_is.exit142:              ; preds = %if.then.i140, %comedi_check_trigger_arg_is.exit138.comedi_check_trigger_arg_is.exit142_crit_edge
  %retval.0.i141 = phi i32 [ -22, %if.then.i140 ], [ 0, %comedi_check_trigger_arg_is.exit138.comedi_check_trigger_arg_is.exit142_crit_edge ]
  %or38 = or i32 %or36, %retval.0.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp40 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %34 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i143 = icmp eq i32 %35, 0
  br i1 %cmp40, label %if.then41, label %if.else44

if.then41:                                        ; preds = %comedi_check_trigger_arg_is.exit142
  br i1 %cmp.i143, label %if.then41.if.end48.sink.split_crit_edge, label %if.then41.if.end48_crit_edge

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then41.if.end48.sink.split_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.sink.split

if.else44:                                        ; preds = %comedi_check_trigger_arg_is.exit142
  br i1 %cmp.i143, label %if.else44.if.end48_crit_edge, label %if.else44.if.end48.sink.split_crit_edge

if.else44.if.end48.sink.split_crit_edge:          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.sink.split

if.else44.if.end48_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end48.sink.split:                              ; preds = %if.else44.if.end48.sink.split_crit_edge, %if.then41.if.end48.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then41.if.end48.sink.split_crit_edge ], [ 0, %if.else44.if.end48.sink.split_crit_edge ]
  %36 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.else44.if.end48_crit_edge, %if.then41.if.end48_crit_edge
  %call42.pn = phi i32 [ 0, %if.then41.if.end48_crit_edge ], [ 0, %if.else44.if.end48_crit_edge ], [ -22, %if.end48.sink.split ]
  %err.1 = or i32 %or38, %call42.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool49.not = icmp ne i32 %err.1, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool49.not, i1 true, i1 %cmp.not
  %.mux = select i1 %tobool49.not, i32 3, i32 0
  br i1 %brmerge, label %if.end48.cleanup_crit_edge, label %if.then54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then54:                                        ; preds = %if.end48
  %scan_begin_arg55 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %37 = ptrtoint ptr %scan_begin_arg55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scan_begin_arg55, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and.i151 = and i32 %40, 196608
  %41 = zext i32 %and.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i151, label %sw.default.i [
    i32 131072, label %sw.bb10.i
    i32 65536, label %if.then54.ni_pcidio_ns_to_timer.exit_crit_edge
  ]

if.then54.ni_pcidio_ns_to_timer.exit_crit_edge:   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %ni_pcidio_ns_to_timer.exit

sw.default.i:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i152 = icmp sgt i32 %38, 0
  %cond.in.v.i = select i1 %cmp.i152, i32 25, i32 -25
  %cond.in.i = add i32 %cond.in.v.i, %38
  br label %ni_pcidio_ns_to_timer.exit

sw.bb10.i:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %sub12.i = add i32 %38, 49
  br label %ni_pcidio_ns_to_timer.exit

ni_pcidio_ns_to_timer.exit:                       ; preds = %sw.bb10.i, %sw.default.i, %if.then54.ni_pcidio_ns_to_timer.exit_crit_edge
  %divider.0.in.i = phi i32 [ %cond.in.i, %sw.default.i ], [ %sub12.i, %sw.bb10.i ], [ %38, %if.then54.ni_pcidio_ns_to_timer.exit_crit_edge ]
  %42 = srem i32 %divider.0.in.i, 50
  %mul.i = sub i32 %divider.0.in.i, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %mul.i)
  %cmp.not.i153 = icmp eq i32 %38, %mul.i
  br i1 %cmp.not.i153, label %ni_pcidio_ns_to_timer.exit.cleanup_crit_edge, label %if.end60

ni_pcidio_ns_to_timer.exit.cleanup_crit_edge:     ; preds = %ni_pcidio_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %ni_pcidio_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %scan_begin_arg55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul.i, ptr %scan_begin_arg55, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %ni_pcidio_ns_to_timer.exit.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %.mux, %if.end48.cleanup_crit_edge ], [ 4, %if.end60 ], [ 0, %ni_pcidio_ns_to_timer.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_pcidio_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !103
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %mite_channel_lock.i = getelementptr inbounds %struct.nidio96_private, ptr %3, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mite_channel_lock.i) #7
  %di_mite_chan.i = getelementptr inbounds %struct.nidio96_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %di_mite_chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %di_mite_chan.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.ni_pcidio_release_di_mite_channel.exit_crit_edge, label %if.then.i

entry.ni_pcidio_release_di_mite_channel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ni_pcidio_release_di_mite_channel.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mite_release_channel(ptr noundef nonnull %5) #7
  %6 = ptrtoint ptr %di_mite_chan.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %di_mite_chan.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #7, !srcloc !103
  br label %ni_pcidio_release_di_mite_channel.exit

ni_pcidio_release_di_mite_channel.exit:           ; preds = %if.then.i, %entry.ni_pcidio_release_di_mite_channel.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mite_channel_lock.i, i32 noundef %call2.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_pcidio_change(ptr nocapture noundef readonly %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %di_mite_ring = getelementptr inbounds %struct.nidio96_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %di_mite_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di_mite_ring, align 4
  %call = tail call i32 @mite_buf_change(ptr noundef %3, ptr noundef %s) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prealloc_bufsz, align 4
  %10 = call ptr @memset(ptr %7, i32 170, i32 %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_pcidio_poll(ptr noundef %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %mite_channel_lock = getelementptr inbounds %struct.nidio96_private, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mite_channel_lock) #7
  %di_mite_chan = getelementptr inbounds %struct.nidio96_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %di_mite_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di_mite_chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mite_sync_dma(ptr noundef nonnull %3, ptr noundef %s) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mite_channel_lock) #7
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async.i, align 4
  %buf_write_count.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %buf_write_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_write_count.i, align 4
  %buf_read_count.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %buf_read_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_read_count.i, align 4
  %sub.i = sub i32 %7, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #7
  ret i32 %sub.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nidio_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 6
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %mite_channel_lock = getelementptr inbounds %struct.nidio96_private, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mite_channel_lock) #7
  %di_mite_chan = getelementptr inbounds %struct.nidio96_private, ptr %6, i32 0, i32 4
  %13 = ptrtoint ptr %di_mite_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %di_mite_chan, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mite_ack_linkc(ptr noundef nonnull %14, ptr noundef %1, i1 noundef zeroext false) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mite_channel_lock) #7
  %15 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not201 = icmp eq i8 %15, 0
  br i1 %tobool16.not201, label %if.end14.out_crit_edge, label %while.body.lr.ph

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body.lr.ph:                                 ; preds = %if.end14
  %events119 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end135.while.body_crit_edge, %while.body.lr.ph
  %flags.0.in203 = phi i8 [ %12, %while.body.lr.ph ], [ %39, %if.end135.while.body_crit_edge ]
  %work.0202 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end135.while.body_crit_edge ]
  %inc = add nuw nsw i32 %work.0202, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %work.0202)
  %exitcond = icmp eq i32 %work.0202, 20
  br i1 %exitcond, label %do.body, label %if.end32

do.body:                                          ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nidio_interrupt.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nidio_interrupt, %do.body27)) #7
          to label %if.then25 [label %do.body27], !srcloc !151

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nidio_interrupt.__UNIQUE_ID_ddebug239, ptr noundef %17, ptr noundef nonnull @.str.26) #7
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 0) #7, !srcloc !103
  br label %out

if.end32:                                         ; preds = %while.body
  %20 = and i8 %flags.0.in203, -30
  %and33 = zext i8 %20 to i32
  %and87 = and i32 %and33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else, label %do.body90

do.body90:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 4
  %add.ptr94 = getelementptr i8, ptr %22, i32 46
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr94, i8 1) #7, !srcloc !103
  %23 = ptrtoint ptr %events119 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %events119, align 4
  %or = or i32 %24, 2
  store i32 %or, ptr %events119, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr99 = getelementptr i8, ptr %26, i32 65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr99, i8 0) #7, !srcloc !103
  br label %out

if.else:                                          ; preds = %if.end32
  %and100 = and i32 %and33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else110, label %do.body103

do.body103:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %add.ptr107 = getelementptr i8, ptr %28, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107, i8 8) #7, !srcloc !103
  %29 = ptrtoint ptr %events119 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events119, align 4
  %or109 = or i32 %30, 16
  store i32 %or109, ptr %events119, align 4
  br label %out

if.else110:                                       ; preds = %if.else
  %and111 = and i32 %and33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.else121, label %do.body114

do.body114:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio, align 4
  %add.ptr118 = getelementptr i8, ptr %32, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr118, i8 16) #7, !srcloc !103
  br label %if.end135.sink.split

if.else121:                                       ; preds = %if.else110
  %and122 = and i32 %and33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.else121.if.end135_crit_edge, label %do.body125

if.else121.if.end135_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

do.body125:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 4
  %add.ptr129 = getelementptr i8, ptr %34, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr129, i8 32) #7, !srcloc !103
  br label %if.end135.sink.split

if.end135.sink.split:                             ; preds = %do.body125, %do.body114
  %35 = ptrtoint ptr %events119 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %events119, align 4
  %or131 = or i32 %36, 2
  store i32 %or131, ptr %events119, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.end135.sink.split, %if.else121.if.end135_crit_edge
  %37 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio, align 4
  %add.ptr139 = getelementptr i8, ptr %38, i32 6
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr139) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %40 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio, align 4
  %add.ptr147 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr147) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %43 = and i8 %42, 1
  %tobool16.not = icmp eq i8 %43, 0
  br i1 %tobool16.not, label %if.end135.out_crit_edge, label %if.end135.while.body_crit_edge

if.end135.while.body_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end135.out_crit_edge:                          ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %if.end135.out_crit_edge, %do.body103, %do.body90, %do.body27, %if.end14.out_crit_edge
  %call153 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #7
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_load_firmware(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_6534_load_fpga(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, i32 noundef %data_len, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %0 = trunc i32 %context to i16
  %conv = or i16 %0, 128
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %1) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %conv5 = or i16 %0, 192
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %4) #7, !srcloc !90
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr9140 = getelementptr i8, ptr %8, i32 260
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9140) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %10 = and i16 %9, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp141 = icmp eq i16 %10, 0
  br i1 %cmp141, label %entry.for.body_crit_edge, label %entry.do.body20_crit_edge

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0142 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.0142, 1
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 260
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %15 = and i16 %14, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp = icmp eq i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.0142)
  %cmp13 = icmp ult i32 %i.0142, 999
  %or.cond = select i1 %cmp, i1 %cmp13, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 1000
  br i1 %phi.cmp, label %do.end19, label %for.end.do.body20_crit_edge

for.end.do.body20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.end19:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef %context) #10
  br label %cleanup107

do.body20:                                        ; preds = %for.end.do.body20_crit_edge, %entry.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr26 = getelementptr i8, ptr %19, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26, i16 %1) #7, !srcloc !90
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %add.ptr31143 = getelementptr i8, ptr %21, i32 260
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr31143) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %22)
  %cmp36.not144.not = icmp eq i16 %22, 768
  br i1 %cmp36.not144.not, label %do.body20.for.cond54.preheader_crit_edge, label %do.body20.for.body42_crit_edge

do.body20.for.body42_crit_edge:                   ; preds = %do.body20
  br label %for.body42

do.body20.for.cond54.preheader_crit_edge:         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond54.preheader

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %do.body20.for.body42_crit_edge
  %i.1145 = phi i32 [ %inc44, %for.body42.for.body42_crit_edge ], [ 0, %do.body20.for.body42_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  %inc44 = add nuw nsw i32 %i.1145, 1
  %24 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio, align 4
  %add.ptr31 = getelementptr i8, ptr %25, i32 260
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr31) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %26)
  %cmp36.not = icmp ne i16 %26, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.1145)
  %cmp39 = icmp ult i32 %i.1145, 999
  %or.cond137 = select i1 %cmp36.not, i1 %cmp39, i1 false
  br i1 %or.cond137, label %for.body42.for.body42_crit_edge, label %for.end45

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

for.end45:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc44)
  %phi.cmp155 = icmp eq i32 %inc44, 1000
  br i1 %phi.cmp155, label %do.end51, label %for.end45.for.cond54.preheader_crit_edge

for.end45.for.cond54.preheader_crit_edge:         ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %for.end45.for.cond54.preheader_crit_edge, %do.body20.for.cond54.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_len)
  %cmp55152 = icmp ugt i32 %data_len, 1
  br i1 %cmp55152, label %for.cond54.preheader.for.body57_crit_edge, label %for.cond54.preheader.do.body102_crit_edge

for.cond54.preheader.do.body102_crit_edge:        ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

for.cond54.preheader.for.body57_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body57

do.end51:                                         ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev52 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %27 = ptrtoint ptr %class_dev52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %class_dev52, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.17, i32 noundef %context) #10
  br label %cleanup107

for.body57:                                       ; preds = %for.cond54.backedge.for.body57_crit_edge, %for.cond54.preheader.for.body57_crit_edge
  %add154 = phi i32 [ %add, %for.cond54.backedge.for.body57_crit_edge ], [ 1, %for.cond54.preheader.for.body57_crit_edge ]
  %j.0153 = phi i32 [ %inc60, %for.cond54.backedge.for.body57_crit_edge ], [ 0, %for.cond54.preheader.for.body57_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %j.0153
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %conv59 = zext i8 %30 to i16
  %inc60 = add i32 %j.0153, 2
  %arrayidx61 = getelementptr i8, ptr %data, i32 %add154
  %31 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %32 to i16
  %shl = shl nuw i16 %conv62, 8
  %or63 = or i16 %shl, %conv59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %33 = tail call i16 @llvm.bswap.i16(i16 %or63)
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %add.ptr69 = getelementptr i8, ptr %35, i32 264
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr69, i16 %33) #7, !srcloc !90
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr74147 = getelementptr i8, ptr %37, i32 260
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr74147) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  %39 = and i16 %38, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp80148 = icmp eq i16 %39, 0
  br i1 %cmp80148, label %for.body57.for.body86_crit_edge, label %for.body57.if.end97_crit_edge

for.body57.if.end97_crit_edge:                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

for.body57.for.body86_crit_edge:                  ; preds = %for.body57
  br label %for.body86

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %for.body57.for.body86_crit_edge
  %i.2150 = phi i32 [ %inc88, %for.body86.for.body86_crit_edge ], [ 0, %for.body57.for.body86_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #7
  %inc88 = add nuw nsw i32 %i.2150, 1
  %41 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio, align 4
  %add.ptr74 = getelementptr i8, ptr %42, i32 260
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr74) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  %44 = and i16 %43, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp80 = icmp eq i16 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.2150)
  %cmp83 = icmp ult i32 %i.2150, 999
  %or.cond138 = select i1 %cmp80, i1 %cmp83, i1 false
  br i1 %or.cond138, label %for.body86.for.body86_crit_edge, label %for.end89

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body86

for.end89:                                        ; preds = %for.body86
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc88)
  %cmp90 = icmp eq i32 %inc88, 1000
  br i1 %cmp90, label %do.end95, label %for.end89.if.end97_crit_edge

for.end89.if.end97_crit_edge:                     ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end95:                                         ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev96 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %45 = ptrtoint ptr %class_dev96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %class_dev96, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.20, i32 noundef %context) #10
  br label %cleanup107

if.end97:                                         ; preds = %for.end89.if.end97_crit_edge, %for.body57.if.end97_crit_edge
  %47 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 16384
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not = icmp eq i32 %51, 0
  br i1 %tobool.i.not, label %if.end97.for.cond54.backedge_crit_edge, label %if.then99

if.end97.for.cond54.backedge_crit_edge:           ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond54.backedge

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @schedule() #7
  br label %for.cond54.backedge

for.cond54.backedge:                              ; preds = %if.then99, %if.end97.for.cond54.backedge_crit_edge
  %add = or i32 %inc60, 1
  %cmp55 = icmp ult i32 %add, %data_len
  br i1 %cmp55, label %for.cond54.backedge.for.body57_crit_edge, label %for.cond54.backedge.do.body102_crit_edge

for.cond54.backedge.do.body102_crit_edge:         ; preds = %for.cond54.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

for.cond54.backedge.for.body57_crit_edge:         ; preds = %for.cond54.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57

do.body102:                                       ; preds = %for.cond54.backedge.do.body102_crit_edge, %for.cond54.preheader.do.body102_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio, align 4
  %add.ptr106 = getelementptr i8, ptr %53, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr106, i16 0) #7, !srcloc !90
  br label %cleanup107

cleanup107:                                       ; preds = %do.body102, %do.end95, %do.end51, %do.end19
  %retval.2 = phi i32 [ -5, %do.end19 ], [ -5, %do.end51 ], [ 0, %do.body102 ], [ -5, %do.end95 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_pcidio_inttrig(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @arm_heavy_mb() #7
  %OP_MODEBits = getelementptr inbounds %struct.nidio96_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %OP_MODEBits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %OP_MODEBits, align 4
  %conv = trunc i16 %7 to i8
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #7, !srcloc !103
  %10 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_prep_dma(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_dma_arm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mite_request_channel_in_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mite_buf_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_sync_dma(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_ack_linkc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_pcidio_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @ni_pcidio_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_firmware236, !1, !"__UNIQUE_ID_firmware236", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 213, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware237, !3, !"__UNIQUE_ID_firmware237", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 214, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware238, !5, !"__UNIQUE_ID_firmware238", i1 false, i1 false}
!5 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 215, i32 1}
!6 = !{ptr @__initcall__kmod_ni_pcidio__241_1005_ni_pcidio_driver_init6, !7, !"__initcall__kmod_ni_pcidio__241_1005_ni_pcidio_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 1005, i32 1}
!8 = !{ptr @__exitcall_ni_pcidio_driver_exit, !7, !"__exitcall_ni_pcidio_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author242, !10, !"__UNIQUE_ID_author242", i1 false, i1 false}
!10 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 1007, i32 1}
!11 = !{ptr @__UNIQUE_ID_description243, !12, !"__UNIQUE_ID_description243", i1 false, i1 false}
!12 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 1008, i32 1}
!13 = !{ptr @__UNIQUE_ID_file244, !14, !"__UNIQUE_ID_file244", i1 false, i1 false}
!14 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 1009, i32 1}
!15 = !{ptr @__UNIQUE_ID_license245, !14, !"__UNIQUE_ID_license245", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 979, i32 17}
!18 = !{ptr @ni_pcidio_driver, !19, !"ni_pcidio_driver", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 978, i32 29}
!20 = !{ptr @nidio_auto_attach.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 904, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 926, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nidio_auto_attach._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @nidio_auto_attach._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 269, i32 12}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 273, i32 12}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 277, i32 12}
!37 = !{ptr @nidio_boards, !38, !"nidio_boards", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 267, i32 33}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 846, i32 3}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 847, i32 3}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 848, i32 3}
!45 = !{ptr @pci_6534_upload_firmware.fw_file, !46, !"fw_file", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 845, i32 27}
!47 = distinct !{null, !48, !"timeout", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 759, i32 19}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 772, i32 3}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pci_6534_load_fpga._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @pci_6534_load_fpga._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 784, i32 3}
!57 = !{ptr @pci_6534_load_fpga._entry.16, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pci_6534_load_fpga._entry_ptr.18, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 800, i32 4}
!61 = !{ptr @pci_6534_load_fpga._entry.19, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pci_6534_load_fpga._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 305, i32 3}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ni_pcidio_request_di_mite_channel._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @ni_pcidio_request_di_mite_channel._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 406, i32 4}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nidio_interrupt.__UNIQUE_ID_ddebug239, !70, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!73 = distinct !{null, !74, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 418, i32 6}
!75 = !{ptr @ni_pcidio_pci_driver, !76, !"ni_pcidio_pci_driver", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 999, i32 26}
!77 = !{ptr @ni_pcidio_pci_table, !78, !"ni_pcidio_pci_table", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/ni_pcidio.c", i32 991, i32 35}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2154603234}
!90 = !{i64 4647794}
!91 = !{i64 2154603660}
!92 = !{i64 2154604081}
!93 = !{i64 4648414}
!94 = !{i64 2154604496}
!95 = !{i64 2154604916}
!96 = !{i64 2154605341}
!97 = !{i64 2154605766}
!98 = !{i64 2154606191}
!99 = !{i64 2154606658}
!100 = !{i64 2154607066}
!101 = !{i64 2154607474}
!102 = !{i64 2154607860}
!103 = !{i64 4648217}
!104 = !{i64 4648612}
!105 = !{i64 2154610372}
!106 = !{i64 2154575002}
!107 = !{i64 2154575444}
!108 = !{i64 4648832}
!109 = !{i64 2154576168}
!110 = !{i64 2154577342}
!111 = !{i64 2154577748}
!112 = !{i64 2154578073}
!113 = !{i64 2154579863}
!114 = !{i64 2154580146}
!115 = !{i64 2154580426}
!116 = !{i64 2154580709}
!117 = !{i64 2154581058}
!118 = !{i64 2154581621}
!119 = !{i64 2154581902}
!120 = !{i64 2154582183}
!121 = !{i64 2154582467}
!122 = !{i64 2154582754}
!123 = !{i64 2154583038}
!124 = !{i64 2154583437}
!125 = !{i64 2154584566}
!126 = !{i64 2154584849}
!127 = !{i64 2154585703}
!128 = !{i64 2154585986}
!129 = !{i64 2154586384}
!130 = !{i64 2154586665}
!131 = !{i64 2154586946}
!132 = !{i64 2154587230}
!133 = !{i64 2154587517}
!134 = !{i64 2154587801}
!135 = !{i64 2154588203}
!136 = !{i64 2154588489}
!137 = !{i64 2154589121}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{i64 2154560133, i64 2154560632, i64 2154560170, i64 2154560226, i64 2154560260, i64 2154560284, i64 2154560325, i64 2154560346, i64 2154560374, i64 2154560408}
!140 = !{i64 2154563447}
!141 = !{i64 2154589441}
!142 = !{i64 2154589706}
!143 = !{i64 2154590469}
!144 = !{i64 2154590850}
!145 = !{i64 2154591298}
!146 = !{i32 0, i32 33}
!147 = !{i64 2154591590}
!148 = !{i64 2154564292}
!149 = !{i64 2154565395}
!150 = !{i64 2154565621}
!151 = !{i64 2148978161, i64 2148978166, i64 2148978179, i64 2148978223, i64 2148978257, i64 2148978278}
!152 = !{i64 2154568244}
!153 = !{i64 2154572530}
!154 = !{i64 2154572839}
!155 = !{i64 2154573290}
!156 = !{i64 2154573763}
!157 = !{i64 2154574236}
!158 = !{i64 2154574535}
!159 = !{i64 2154574761}
!160 = !{i64 2154591888}
!161 = !{i64 2154592373}
!162 = !{i64 4647994}
!163 = !{i64 2154593172}
!164 = !{i64 2154595911}
!165 = !{i64 2154596710}
!166 = !{i64 2154599434}
!167 = !{i64 2154600194}
!168 = !{i64 2154602793}
!169 = !{i64 2154577026}
