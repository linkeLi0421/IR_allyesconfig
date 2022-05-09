; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/me_daq.c_pt.bc'
source_filename = "../drivers/comedi/drivers/me_daq.c"
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
%struct.me_board = type { ptr, i32, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.me_private_data = type { ptr, i16, i16, i16 }
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
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_me_daq__236_550_me_daq_driver_init6 = internal global ptr @me_daq_driver_init, section ".initcall6.init", align 4
@me_daq_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @me_detach, ptr @me_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@me_daq_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @me_daq_pci_table, ptr @me_daq_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_me_daq_driver_exit = internal global ptr @me_daq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [44 x i8] c"me_daq.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [43 x i8] c"me_daq.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [42 x i8] c"me_daq.file=drivers/comedi/drivers/me_daq\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [19 x i8] c"me_daq.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware241 = internal constant [36 x i8] c"me_daq.firmware=me2600_firmware.bin\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"me_daq\00", [25 x i8] zeroinitializer }, align 32
@me_boards = internal constant { [2 x %struct.me_board], [40 x i8] } { [2 x %struct.me_board] [%struct.me_board { ptr @.str.2, i32 1, i32 1 }, %struct.me_board { ptr @.str.3, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"me2600_firmware.bin\00", [44 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"me-2600i\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"me-2000i\00", [23 x i8] zeroinitializer }, align 32
@me2600_xilinx_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 392, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Xilinx download failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"me2600_xilinx_download\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/me_daq.c\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@me2600_xilinx_download._entry_ptr = internal global ptr @me2600_xilinx_download._entry, section ".printk_index", align 4
@me_ai_range = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@me_ao_range = internal constant { { i32, [3 x %struct.comedi_krange] }, [56 x i8] } { { i32, [3 x %struct.comedi_krange] } { i32 3, [3 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [56 x i8] zeroinitializer }, align 32
@me_daq_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5122, i32 9728, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5122, i32 8192, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"me_daq_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 524, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"me_daq_pci_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 544, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 525, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"me_boards\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 124, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 461, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 126, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 131, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 392, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"me_ai_range\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 92, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"me_ao_range\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 105, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"me_daq_pci_table\00", align 1
@___asan_gen_.57 = private constant [35 x i8] c"../drivers/comedi/drivers/me_daq.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 537, i32 35 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_firmware241, ptr @__UNIQUE_ID_license240, ptr @__exitcall_me_daq_driver_exit, ptr @__initcall__kmod_me_daq__236_550_me_daq_driver_init6, ptr @me2600_xilinx_download._entry, ptr @me2600_xilinx_download._entry_ptr, ptr @me_daq_driver_exit, ptr @me_daq_driver, ptr @me_daq_pci_driver, ptr @.str, ptr @me_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @me_ai_range, ptr @me_ao_range, ptr @me_daq_pci_table], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me_daq_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me_daq_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me_boards to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me2600_xilinx_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me_ai_range to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me_ao_range to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me_daq_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @me_daq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @me_daq_driver, ptr noundef nonnull @me_daq_pci_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @me_daq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @me_daq_driver, ptr noundef nonnull @me_daq_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @me_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 0) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 0) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr10.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 0) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr15.i = getelementptr i8, ptr %11, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i, i16 0) #5, !srcloc !50
  %dac_ctrl.i = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dac_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %dac_ctrl.i, align 4
  %ctrl1.i = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %ctrl1.i, align 4
  %ctrl2.i = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %ctrl2.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %16) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %context)
  %cmp = icmp ugt i32 %context, 1
  %arrayidx = getelementptr [2 x %struct.me_board], ptr @me_boards, i32 0, i32 %context
  %tobool.not115 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not115
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 12) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #5
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %call3, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 2) #5
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %mmio, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %context)
  %tobool21.not = icmp eq i32 %context, 1
  br i1 %tobool21.not, label %if.end20.if.end29_crit_edge, label %if.then22

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then22:                                        ; preds = %if.end20
  %call23 = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #5
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %call23, i32 0, i32 44
  %call25 = tail call i32 @comedi_load_firmware(ptr noundef %dev, ptr noundef %dev24, ptr noundef nonnull @.str.1, ptr noundef nonnull @me2600_xilinx_download, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then22.cleanup_crit_edge, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.then22.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 0) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 0) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr10.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 0) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr15.i = getelementptr i8, ptr %15, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i, i16 0) #5, !srcloc !50
  %dac_ctrl.i = getelementptr inbounds %struct.me_private_data, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %dac_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %dac_ctrl.i, align 4
  %ctrl1.i = getelementptr inbounds %struct.me_private_data, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %ctrl1.i, align 4
  %ctrl2.i = getelementptr inbounds %struct.me_private_data, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %ctrl2.i, align 2
  %call31 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %19 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 4
  %22 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6356992, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 13
  %24 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4095, ptr %maxdata, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %len_chanlist, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 15
  %26 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @me_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 18
  %27 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @me_ai_insn_read, ptr %insn_read, align 4
  %28 = load ptr, ptr %subdevices, align 4
  br i1 %tobool21.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end34
  %arrayidx37 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1
  %type40 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 2
  %29 = ptrtoint ptr %type40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %type40, align 4
  %subdev_flags41 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 4
  %30 = ptrtoint ptr %subdev_flags41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2228224, ptr %subdev_flags41, align 4
  %n_chan42 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 3
  %31 = ptrtoint ptr %n_chan42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %n_chan42, align 4
  %maxdata43 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 13
  %32 = ptrtoint ptr %maxdata43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4095, ptr %maxdata43, align 4
  %len_chanlist44 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 5
  %33 = ptrtoint ptr %len_chanlist44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %len_chanlist44, align 4
  %range_table45 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 15
  %34 = ptrtoint ptr %range_table45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @me_ao_range, ptr %range_table45, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 19
  %35 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @me_ao_insn_write, ptr %insn_write, align 4
  %call46 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then39.if.end51_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then39.if.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %type50 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 2
  %36 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %type50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then39.if.end51_crit_edge
  %37 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %subdevices, align 4
  %type54 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 2
  %39 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %type54, align 4
  %subdev_flags55 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 4
  %40 = ptrtoint ptr %subdev_flags55 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196608, ptr %subdev_flags55, align 4
  %n_chan56 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 3
  %41 = ptrtoint ptr %n_chan56 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 32, ptr %n_chan56, align 4
  %maxdata57 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 13
  %42 = ptrtoint ptr %maxdata57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %maxdata57, align 4
  %len_chanlist58 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 5
  %43 = ptrtoint ptr %len_chanlist58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 32, ptr %len_chanlist58, align 4
  %range_table59 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 15
  %44 = ptrtoint ptr %range_table59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @range_unipolar5, ptr %range_table59, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 20
  %45 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @me_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 21
  %46 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @me_dio_insn_config, ptr %insn_config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then39.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ %call25, %if.then22.cleanup_crit_edge ], [ %call31, %if.end29.cleanup_crit_edge ], [ %call46, %if.then39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_load_firmware(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me2600_xilinx_download(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, i32 noundef %size, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !55
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 66
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %call.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 100) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 0) #5, !srcloc !59
  %call.i89 = tail call i32 @schedule_timeout_interruptible(i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp = icmp ult i32 %size, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  %conv9 = zext i8 %10 to i32
  %shl = shl nuw i32 %conv9, 24
  %arrayidx10 = getelementptr i8, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %shl13 = shl nuw nsw i32 %conv11, 16
  %add = or i32 %shl13, %shl
  %arrayidx14 = getelementptr i8, ptr %data, i32 2
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %shl17 = shl nuw nsw i32 %conv15, 8
  %add18 = or i32 %add, %shl17
  %arrayidx19 = getelementptr i8, ptr %data, i32 3
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %16 to i32
  %add22 = or i32 %add18, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add22)
  %cmp2391.not = icmp eq i32 %add22, 0
  br i1 %cmp2391.not, label %if.end.for.cond35.preheader_crit_edge, label %if.end.do.body25_crit_edge

if.end.do.body25_crit_edge:                       ; preds = %if.end
  br label %do.body25

if.end.for.cond35.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %do.body25.for.cond35.preheader_crit_edge, %if.end.for.cond35.preheader_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 0) #5, !srcloc !59
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr50 = getelementptr i8, ptr %28, i32 76
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %30 = and i32 %29, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end64, label %do.body56

do.body25:                                        ; preds = %do.body25.do.body25_crit_edge, %if.end.do.body25_crit_edge
  %i.092 = phi i32 [ %inc, %do.body25.do.body25_crit_edge ], [ 0, %if.end.do.body25_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %add28 = add i32 %i.092, 16
  %arrayidx29 = getelementptr i8, ptr %data, i32 %add28
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx29, align 1
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %32) #5, !srcloc !59
  %inc = add nuw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %add22
  br i1 %exitcond.not, label %do.body25.for.cond35.preheader_crit_edge, label %do.body25.do.body25_crit_edge

do.body25.do.body25_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body25

do.body25.for.cond35.preheader_crit_edge:         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond35.preheader

do.body56:                                        ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr60 = getelementptr i8, ptr %36, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 0) #5, !srcloc !55
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %37 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end64:                                         ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call.i90 = tail call i32 @schedule_timeout_interruptible(i32 noundef 100) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr69 = getelementptr i8, ptr %40, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 1124073472) #5, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.body56, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.body56 ], [ 0, %if.end64 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %4 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %and = and i32 %3, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %5 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %6, i32 0, i32 1, i32 %and2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp sgt i32 %8, -1
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end8_crit_edge

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ctrl2 = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctrl2, align 2
  %11 = and i16 %10, -1537
  store i16 %11, ptr %ctrl2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ctrl2, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %14) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %add.ptr16 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 0) #5, !srcloc !50
  %19 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ctrl2, align 2
  %21 = or i16 %20, 1536
  store i16 %21, ptr %ctrl2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ctrl2, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr25 = getelementptr i8, ptr %26, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 %24) #5, !srcloc !50
  %and26 = and i32 %3, 15
  %and27 = shl nuw nsw i32 %shr, 4
  %shl28 = and i32 %and27, 48
  %or29 = or i32 %shl28, %and26
  %range_table.i128 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %27 = ptrtoint ptr %range_table.i128 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %range_table.i128, align 4
  %arrayidx.i129 = getelementptr %struct.comedi_lrange, ptr %28, i32 0, i32 1, i32 %and2
  %29 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i129, align 4
  %or32 = or i32 %or29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i130131 = icmp slt i32 %30, 0
  %spec.select = select i1 %cmp.i130131, i32 %or29, i32 %or32
  %31 = lshr exact i32 %4, 18
  %32 = or i32 %spec.select, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %conv42 = trunc i32 %32 to i16
  %33 = shl nuw i16 %conv42, 8
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %add.ptr44 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr44, i16 %33) #5, !srcloc !50
  %ctrl1 = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ctrl1, align 4
  %38 = or i16 %37, 1
  store i16 %38, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ctrl1, align 4
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %42 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %41) #5, !srcloc !50
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %44 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp54132.not = icmp eq i32 %45, 0
  br i1 %cmp54132.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %for.body.lr.ph
  %i.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end63.for.body_crit_edge ]
  %46 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio, align 4
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %47) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %call60 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @me_ai_eoc, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end63:                                         ; preds = %for.body
  %49 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio, align 4
  %add.ptr67 = getelementptr i8, ptr %50, i32 16
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr67) #5, !srcloc !56
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %conv71 = zext i16 %52 to i32
  %53 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %maxdata, align 4
  %55 = xor i32 %conv71, -1
  %xor.i = and i32 %54, %55
  %shr.i = lshr i32 %54, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0133
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %xor2.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0133, 1
  %57 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n, align 4
  %cmp54 = icmp ult i32 %inc, %58
  br i1 %cmp54, label %if.end63.for.body_crit_edge, label %if.end63.for.end_crit_edge

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end63.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %call60, %for.body.for.end_crit_edge ], [ 0, %if.end63.for.end_crit_edge ]
  %59 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ctrl1, align 4
  %61 = and i16 %60, -4
  store i16 %61, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ctrl1, align 4
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %65 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %66, i16 %64) #5, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool84.not = icmp eq i32 %ret.1, 0
  br i1 %tobool84.not, label %cond.false, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %68, %cond.false ], [ %ret.1, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %4 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %ctrl2 = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ctrl2, align 2
  %10 = or i16 %9, 2
  store i16 %10, ptr %ctrl2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ctrl2, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %13) #5, !srcloc !50
  %16 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ctrl2, align 2
  %18 = or i16 %17, 1
  store i16 %18, ptr %ctrl2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ctrl2, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %add.ptr14 = getelementptr i8, ptr %23, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 %21) #5, !srcloc !50
  %and15 = and i32 %3, 3
  %sub = xor i32 %and15, 7
  %shl = shl nuw i32 1, %sub
  %sub17 = sub nuw nsw i32 11, %and15
  %shl18 = shl nuw nsw i32 1, %sub17
  %or19 = or i32 %shl, %shl18
  %dac_ctrl = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %dac_ctrl to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dac_ctrl, align 4
  %26 = trunc i32 %or19 to i16
  %27 = xor i16 %26, -1
  %conv22 = and i16 %25, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp = icmp eq i32 %and2, 0
  %28 = trunc i32 %shl18 to i16
  %conv30 = select i1 %cmp, i16 %28, i16 0
  %storemerge = or i16 %conv22, %conv30
  %29 = ptrtoint ptr %dac_ctrl to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %storemerge, ptr %dac_ctrl, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %30 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %31, i32 0, i32 1, i32 %and2
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp slt i32 %33, 0
  br i1 %cmp.i, label %if.then31, label %entry.do.body40_crit_edge

entry.do.body40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

if.then31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %34 = trunc i32 %shl to i16
  %conv38 = or i16 %storemerge, %34
  %35 = ptrtoint ptr %dac_ctrl to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv38, ptr %dac_ctrl, align 4
  br label %do.body40

do.body40:                                        ; preds = %if.then31, %entry.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %dac_ctrl to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dac_ctrl, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %39 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio, align 4
  %add.ptr45 = getelementptr i8, ptr %40, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45, i16 %38) #5, !srcloc !50
  %41 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio, align 4
  %add.ptr47 = getelementptr i8, ptr %42, i32 18
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr47) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %44 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp5097.not = icmp eq i32 %45, 0
  br i1 %cmp5097.not, label %do.body40.for.end_crit_edge, label %for.body.lr.ph

do.body40.for.end_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body40
  %mul = shl nuw nsw i32 %and, 1
  %add = add nuw nsw i32 %mul, 20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx52 = getelementptr i32, ptr %data, i32 %i.098
  %46 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx52, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %conv56 = trunc i32 %47 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv56)
  %49 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio, align 4
  %add.ptr58 = getelementptr i8, ptr %50, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58, i16 %48) #5, !srcloc !50
  %inc = add nuw i32 %i.098, 1
  %51 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n, align 4
  %cmp50 = icmp ult i32 %inc, %52
  br i1 %cmp50, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body40.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %7, %do.body40.for.end_crit_edge ], [ %47, %for.body.for.end_crit_edge ]
  %53 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %readback, align 4
  %arrayidx60 = getelementptr i32, ptr %54, i32 %and
  %55 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %val.0.lcssa, ptr %arrayidx60, align 4
  %56 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio, align 4
  %add.ptr64 = getelementptr i8, ptr %57, i32 2
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr64) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %59 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %n, align 4
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 6
  %add.ptr2 = getelementptr i8, ptr %1, i32 8
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then:                                          ; preds = %entry
  %and = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %conv = trunc i32 %3 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #5, !srcloc !50
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call)
  %tobool7.not = icmp ult i32 %call, 65536
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %do.body9

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %state12 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state12, align 4
  %shr = lshr i32 %6, 16
  %conv14 = trunc i32 %shr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2, i16 %7) #5, !srcloc !50
  br label %if.end16

if.end16:                                         ; preds = %do.body9, %if.end.if.end16_crit_edge, %entry.if.end16_crit_edge
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %8 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_bits, align 4
  %and17 = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %state20 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %10 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state20, align 4
  %and21 = and i32 %11, 65535
  br label %if.end25

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !56
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %conv24 = zext i16 %13 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then19
  %val.0 = phi i32 [ %and21, %if.then19 ], [ %conv24, %if.else ]
  %14 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %15)
  %tobool28.not = icmp ult i32 %15, 65536
  br i1 %tobool28.not, label %if.else32, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %state30 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %16 = ptrtoint ptr %state30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state30, align 4
  %and31 = and i32 %17, -65536
  br label %if.end40

if.else32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #5, !srcloc !56
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %conv38 = zext i16 %19 to i32
  %shl = shl nuw i32 %conv38, 16
  br label %if.end40

if.end40:                                         ; preds = %if.else32, %if.then29
  %and31.pn = phi i32 [ %and31, %if.then29 ], [ %shl, %if.else32 ]
  %val.1 = or i32 %and31.pn, %val.0
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %val.1, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 65535, i32 -65536
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %.) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_bits, align 4
  %and3 = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %ctrl28 = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl28 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ctrl28, align 2
  %8 = and i16 %7, -65
  %masksel = select i1 %tobool4.not, i16 0, i16 64
  %.sink = or i16 %8, %masksel
  store i16 %.sink, ptr %ctrl28, align 2
  %9 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %10)
  %tobool15.not = icmp ult i32 %10, 65536
  %ctrl222 = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 2
  %11 = and i16 %.sink, -129
  %masksel43 = select i1 %tobool15.not, i16 0, i16 128
  %.sink42 = or i16 %11, %masksel43
  %12 = ptrtoint ptr %ctrl222 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink42, ptr %ctrl222, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %ctrl227 = getelementptr inbounds %struct.me_private_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl227 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ctrl227, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %15) #5, !srcloc !50
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %18 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %3 = and i16 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @me_daq_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @me_daq_driver, i32 noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_me_daq__236_550_me_daq_driver_init6, !1, !"__initcall__kmod_me_daq__236_550_me_daq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/me_daq.c", i32 550, i32 1}
!2 = !{ptr @__exitcall_me_daq_driver_exit, !1, !"__exitcall_me_daq_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/me_daq.c", i32 552, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/me_daq.c", i32 553, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/me_daq.c", i32 554, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware241, !11, !"__UNIQUE_ID_firmware241", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/me_daq.c", i32 555, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/me_daq.c", i32 525, i32 17}
!14 = !{ptr @me_daq_driver, !15, !"me_daq_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/me_daq.c", i32 524, i32 29}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/me_daq.c", i32 461, i32 9}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/me_daq.c", i32 126, i32 12}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/me_daq.c", i32 131, i32 12}
!22 = !{ptr @me_boards, !23, !"me_boards", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/me_daq.c", i32 124, i32 30}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/me_daq.c", i32 392, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @me2600_xilinx_download._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @me2600_xilinx_download._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @me_ai_range, !33, !"me_ai_range", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/me_daq.c", i32 92, i32 35}
!34 = !{ptr @me_ao_range, !35, !"me_ao_range", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/me_daq.c", i32 105, i32 35}
!36 = !{ptr @me_daq_pci_driver, !37, !"me_daq_pci_driver", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/me_daq.c", i32 544, i32 26}
!38 = !{ptr @me_daq_pci_table, !39, !"me_daq_pci_table", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/me_daq.c", i32 537, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2154555095}
!50 = !{i64 4628060}
!51 = !{i64 2154555491}
!52 = !{i64 2154555887}
!53 = !{i64 2154556283}
!54 = !{i64 2154549733}
!55 = !{i64 4628680}
!56 = !{i64 4628260}
!57 = !{i64 2154550408}
!58 = !{i64 2154550621}
!59 = !{i64 4628483}
!60 = !{i64 2154551188}
!61 = !{i64 4629098}
!62 = !{i64 2154551771}
!63 = !{i64 2154550906}
!64 = !{i64 2154552083}
!65 = !{i64 2154554439}
!66 = !{i64 2154542236}
!67 = !{i64 2154542662}
!68 = !{i64 2154543234}
!69 = !{i64 2154543877}
!70 = !{i64 2154544322}
!71 = !{i64 2154545016}
!72 = !{i64 2154545503}
!73 = !{i64 2154545774}
!74 = !{i64 2154546358}
!75 = !{i64 2154546876}
!76 = !{i64 2154547864}
!77 = !{i64 2154548567}
!78 = !{i64 2154548823}
!79 = !{i64 2154549503}
!80 = !{i64 2154539556}
!81 = !{i64 2154540003}
!82 = !{i64 2154540701}
!83 = !{i64 2154541159}
!84 = !{i64 2154539116}
!85 = !{i64 2154541646}
