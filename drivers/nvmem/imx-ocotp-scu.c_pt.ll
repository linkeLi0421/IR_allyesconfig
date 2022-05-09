; ModuleID = '/llk/IR_all_yes/drivers/nvmem/imx-ocotp-scu.c_pt.bc'
source_filename = "../drivers/nvmem/imx-ocotp-scu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ocotp_region = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ocotp_priv = type { ptr, ptr, ptr }
%struct.ocotp_devtype_data = type { i32, i32, i32, [0 x %struct.ocotp_region] }
%struct.imx_sc_msg_misc_fuse_read = type { %struct.imx_sc_rpc_msg, i32 }
%struct.imx_sc_rpc_msg = type { i8, i8, i8, i8 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@__initcall__kmod_nvmem_imx_ocotp_scu__183_270_imx_scu_ocotp_driver_init6 = internal global ptr @imx_scu_ocotp_driver_init, section ".initcall6.init", align 4
@imx_scu_ocotp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_scu_ocotp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_scu_ocotp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_scu_ocotp_driver_exit = internal global ptr @imx_scu_ocotp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [55 x i8] c"nvmem_imx_ocotp_scu.author=Peng Fan <peng.fan@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [64 x i8] c"nvmem_imx_ocotp_scu.description=i.MX8 SCU OCOTP fuse box driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [59 x i8] c"nvmem_imx_ocotp_scu.file=drivers/nvmem/nvmem-imx-ocotp-scu\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [35 x i8] c"nvmem_imx_ocotp_scu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_scu_ocotp\00", [18 x i8] zeroinitializer }, align 32
@imx_scu_ocotp_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-scu-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-scu-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qm_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@imx_scu_ocotp_nvmem_config = internal global { %struct.nvmem_config, [40 x i8] } { %struct.nvmem_config { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @imx_scu_ocotp_read, ptr @imx_scu_ocotp_write, ptr null, i32 0, i32 4, i32 1, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx-scu-ocotp\00", [18 x i8] zeroinitializer }, align 32
@scu_ocotp_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scu_ocotp_mutex, i64 52), ptr getelementptr (i8, ptr @scu_ocotp_mutex, i64 52) }, ptr @scu_ocotp_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scu_ocotp_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scu_ocotp_mutex\00", [16 x i8] zeroinitializer }, align 32
@imx_scu_ocotp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014ECC region, only program once\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_scu_ocotp_write\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/nvmem/imx-ocotp-scu.c\00", [34 x i8] zeroinitializer }, align 32
@imx_scu_ocotp_write._entry_ptr = internal global ptr @imx_scu_ocotp_write._entry, section ".printk_index", align 4
@imx_scu_ocotp_write._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014ECC region, already has value: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_scu_ocotp_write._entry_ptr.9 = internal global ptr @imx_scu_ocotp_write._entry.7, section ".printk_index", align 4
@imx8qxp_data = internal global { { i32, i32, i32, [3 x %struct.ocotp_region] }, [48 x i8] } { { i32, i32, i32, [3 x %struct.ocotp_region] } { i32 0, i32 800, i32 3, [3 x %struct.ocotp_region] [%struct.ocotp_region { i32 16, i32 271, i32 1 }, %struct.ocotp_region { i32 272, i32 543, i32 2 }, %struct.ocotp_region { i32 544, i32 799, i32 1 }] }, [48 x i8] zeroinitializer }, align 32
@imx8qm_data = internal global { { i32, i32, i32, [2 x %struct.ocotp_region] }, [60 x i8] } { { i32, i32, i32, [2 x %struct.ocotp_region] } { i32 1, i32 800, i32 2, [2 x %struct.ocotp_region] [%struct.ocotp_region { i32 16, i32 271, i32 1 }, %struct.ocotp_region { i32 416, i32 511, i32 1 }] }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"imx_scu_ocotp_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 263, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 266, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"imx_scu_ocotp_dt_ids\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 231, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"imx_scu_ocotp_nvmem_config\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 221, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 222, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"scu_ocotp_mutex\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 52, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 200, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 207, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"imx8qxp_data\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 54, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"imx8qm_data\00", align 1
@___asan_gen_.58 = private constant [33 x i8] c"../drivers/nvmem/imx-ocotp-scu.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 65, i32 34 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_imx_scu_ocotp_driver_exit, ptr @__initcall__kmod_nvmem_imx_ocotp_scu__183_270_imx_scu_ocotp_driver_init6, ptr @imx_scu_ocotp_driver_exit, ptr @imx_scu_ocotp_write._entry, ptr @imx_scu_ocotp_write._entry.7, ptr @imx_scu_ocotp_write._entry_ptr, ptr @imx_scu_ocotp_write._entry_ptr.9, ptr @imx_scu_ocotp_driver, ptr @.str, ptr @imx_scu_ocotp_dt_ids, ptr @imx_scu_ocotp_nvmem_config, ptr @.str.1, ptr @scu_ocotp_mutex, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @imx8qxp_data, ptr @imx8qm_data], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_ocotp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_ocotp_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_ocotp_nvmem_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_ocotp_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_ocotp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_ocotp_write._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qm_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_scu_ocotp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_scu_ocotp_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_scu_ocotp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_scu_ocotp_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_scu_ocotp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nvmem_ipc = getelementptr inbounds %struct.ocotp_priv, ptr %call.i, i32 0, i32 2
  %call2 = tail call i32 @imx_scu_get_handle(ptr noundef %nvmem_ipc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %data = getelementptr inbounds %struct.ocotp_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call6, ptr %data, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %nregs = getelementptr inbounds %struct.ocotp_devtype_data, ptr %call6, i32 0, i32 1
  %2 = ptrtoint ptr %nregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nregs, align 4
  %mul = shl i32 %3, 2
  store i32 %mul, ptr getelementptr inbounds (%struct.nvmem_config, ptr @imx_scu_ocotp_nvmem_config, i32 0, i32 18), align 4
  store ptr %dev1, ptr @imx_scu_ocotp_nvmem_config, align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.nvmem_config, ptr @imx_scu_ocotp_nvmem_config, i32 0, i32 21), align 4
  %call9 = tail call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull @imx_scu_ocotp_nvmem_config) #7
  %cmp.i.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %call9 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %4, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_get_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_scu_ocotp_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  %msg.i = alloca %struct.imx_sc_msg_misc_fuse_read, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %bytes, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %data = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %nregs = getelementptr inbounds %struct.ocotp_devtype_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nregs, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %shr = lshr exact i32 %add, 2
  %sub1 = sub i32 %3, %offset
  %4 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %sub1)
  tail call void @mutex_lock_nested(ptr noundef nonnull @scu_ocotp_mutex, i32 noundef 0) #7
  %add7 = add i32 %4, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %offset)
  %cmp848 = icmp ugt i32 %add7, %offset
  br i1 %cmp848, label %for.body.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %nvmem_ipc = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 2
  %5 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 3
  %8 = getelementptr inbounds %struct.imx_sc_msg_misc_fuse_read, ptr %msg.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ %offset, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.049 = phi ptr [ %call9.i.i, %for.body.lr.ph ], [ %buf.1, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %num_region.i = getelementptr inbounds %struct.ocotp_devtype_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %num_region.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_region.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp20.not.i = icmp eq i32 %12, 0
  br i1 %cmp20.not.i, label %for.body.if.end11_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %cmp23.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i_crit_edge ], [ true, %for.body.for.body.i_crit_edge ]
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %flag.i = getelementptr %struct.ocotp_devtype_data, ptr %10, i32 0, i32 3, i32 %i.021.i, i32 2
  %13 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ocotp_devtype_data, ptr %10, i32 0, i32 3, i32 %i.021.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %i.051)
  %cmp4.not.i = icmp ugt i32 %16, %i.051
  br i1 %cmp4.not.i, label %if.then.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %end.i = getelementptr %struct.ocotp_devtype_data, ptr %10, i32 0, i32 3, i32 %i.021.i, i32 1
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %i.051)
  %cmp7.not.i = icmp ult i32 %18, %i.051
  br i1 %cmp7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.in_hole.exit_crit_edge

land.lhs.true.i.in_hole.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %in_hole.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %12)
  %cmp.i = icmp ult i32 %inc.i, %12
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.in_hole.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.in_hole.exit_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %in_hole.exit

in_hole.exit:                                     ; preds = %for.inc.i.in_hole.exit_crit_edge, %land.lhs.true.i.in_hole.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.in_hole.exit_crit_edge ], [ %cmp23.i, %land.lhs.true.i.in_hole.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %if.then10, label %in_hole.exit.if.end11_crit_edge

in_hole.exit.if.end11_crit_edge:                  ; preds = %in_hole.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %in_hole.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %buf.049 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %buf.049, align 4
  br label %for.inc

if.end11:                                         ; preds = %in_hole.exit.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %20 = ptrtoint ptr %nvmem_ipc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nvmem_ipc, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #7
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %msg.i, align 1
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %6, align 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 11, ptr %7, align 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %5, align 1
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %i.051, ptr %8, align 1
  %call.i = call i32 @imx_scu_call_rpc(ptr noundef %21, ptr noundef nonnull %msg.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i43 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i43, label %imx_sc_misc_otp_fuse_read.exit.thread, label %if.then14

imx_sc_misc_otp_fuse_read.exit.thread:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %8, align 1
  %29 = ptrtoint ptr %buf.049 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %buf.049, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #7
  br label %for.inc

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #7
  br label %cleanup.sink.split

for.inc:                                          ; preds = %imx_sc_misc_otp_fuse_read.exit.thread, %if.then10
  %buf.1 = getelementptr i32, ptr %buf.049, i32 1
  %inc = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %add7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %30 = call ptr @memcpy(ptr %val, ptr %call9.i.i, i32 %bytes)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.then14
  %retval.0.ph = phi i32 [ 0, %for.end ], [ %call.i, %if.then14 ]
  call void @mutex_unlock(ptr noundef nonnull @scu_ocotp_mutex) #7
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_scu_ocotp_write(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp, align 4, !annotation !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp.not = icmp eq i32 %bytes, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data1.i = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  %num_region.i = getelementptr inbounds %struct.ocotp_devtype_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_region.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_region.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not.i = icmp eq i32 %5, 0
  br i1 %cmp20.not.i, label %if.end.if.end18_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %cmp23.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i_crit_edge ], [ true, %if.end.for.body.i_crit_edge ]
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %flag.i = getelementptr %struct.ocotp_devtype_data, ptr %3, i32 0, i32 3, i32 %i.021.i, i32 2
  %6 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ocotp_devtype_data, ptr %3, i32 0, i32 3, i32 %i.021.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %offset)
  %cmp4.not.i = icmp ugt i32 %9, %offset
  br i1 %cmp4.not.i, label %if.then.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %end.i = getelementptr %struct.ocotp_devtype_data, ptr %3, i32 0, i32 3, i32 %i.021.i, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %offset)
  %cmp7.not.i = icmp ult i32 %11, %offset
  br i1 %cmp7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.in_hole.exit_crit_edge

land.lhs.true.i.in_hole.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %in_hole.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %5)
  %cmp.i = icmp ult i32 %inc.i, %5
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.in_hole.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.in_hole.exit_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %in_hole.exit

in_hole.exit:                                     ; preds = %for.inc.i.in_hole.exit_crit_edge, %land.lhs.true.i.in_hole.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.in_hole.exit_crit_edge ], [ %cmp23.i, %land.lhs.true.i.in_hole.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %in_hole.exit.cleanup_crit_edge, label %in_hole.exit.for.body.i38_crit_edge

in_hole.exit.for.body.i38_crit_edge:              ; preds = %in_hole.exit
  br label %for.body.i38

in_hole.exit.cleanup_crit_edge:                   ; preds = %in_hole.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i38:                                     ; preds = %for.inc.i48.for.body.i38_crit_edge, %in_hole.exit.for.body.i38_crit_edge
  %cmp23.i33 = phi i1 [ %cmp.i46, %for.inc.i48.for.body.i38_crit_edge ], [ true, %in_hole.exit.for.body.i38_crit_edge ]
  %i.021.i34 = phi i32 [ %inc.i45, %for.inc.i48.for.body.i38_crit_edge ], [ 0, %in_hole.exit.for.body.i38_crit_edge ]
  %flag.i35 = getelementptr %struct.ocotp_devtype_data, ptr %3, i32 0, i32 3, i32 %i.021.i34, i32 2
  %12 = ptrtoint ptr %flag.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flag.i35, align 4
  %and.i36 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %for.body.i38.for.inc.i48_crit_edge, label %if.then.i41

for.body.i38.for.inc.i48_crit_edge:               ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i48

if.then.i41:                                      ; preds = %for.body.i38
  %arrayidx.i39 = getelementptr %struct.ocotp_devtype_data, ptr %3, i32 0, i32 3, i32 %i.021.i34
  %14 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %offset)
  %cmp4.not.i40 = icmp ugt i32 %15, %offset
  br i1 %cmp4.not.i40, label %if.then.i41.for.inc.i48_crit_edge, label %land.lhs.true.i44

if.then.i41.for.inc.i48_crit_edge:                ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i48

land.lhs.true.i44:                                ; preds = %if.then.i41
  %end.i42 = getelementptr %struct.ocotp_devtype_data, ptr %3, i32 0, i32 3, i32 %i.021.i34, i32 1
  %16 = ptrtoint ptr %end.i42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %offset)
  %cmp7.not.i43 = icmp ult i32 %17, %offset
  br i1 %cmp7.not.i43, label %land.lhs.true.i44.for.inc.i48_crit_edge, label %land.lhs.true.i44.in_ecc.exit_crit_edge

land.lhs.true.i44.in_ecc.exit_crit_edge:          ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %in_ecc.exit

land.lhs.true.i44.for.inc.i48_crit_edge:          ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i48

for.inc.i48:                                      ; preds = %land.lhs.true.i44.for.inc.i48_crit_edge, %if.then.i41.for.inc.i48_crit_edge, %for.body.i38.for.inc.i48_crit_edge
  %inc.i45 = add nuw i32 %i.021.i34, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i45, i32 %5)
  %cmp.i46 = icmp ult i32 %inc.i45, %5
  %exitcond.not.i47 = icmp eq i32 %inc.i45, %5
  br i1 %exitcond.not.i47, label %for.inc.i48.in_ecc.exit_crit_edge, label %for.inc.i48.for.body.i38_crit_edge

for.inc.i48.for.body.i38_crit_edge:               ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i38

for.inc.i48.in_ecc.exit_crit_edge:                ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %in_ecc.exit

in_ecc.exit:                                      ; preds = %for.inc.i48.in_ecc.exit_crit_edge, %land.lhs.true.i44.in_ecc.exit_crit_edge
  %cmp.lcssa.i49 = phi i1 [ %cmp.i46, %for.inc.i48.in_ecc.exit_crit_edge ], [ %cmp23.i33, %land.lhs.true.i44.in_ecc.exit_crit_edge ]
  br i1 %cmp.lcssa.i49, label %do.end, label %in_ecc.exit.if.end18_crit_edge

in_ecc.exit.if.end18_crit_edge:                   ; preds = %in_ecc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %in_ecc.exit
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @scu_ocotp_mutex, i32 noundef 0) #7
  %nvmem_ipc = getelementptr inbounds %struct.ocotp_priv, ptr %context, i32 0, i32 2
  %18 = ptrtoint ptr %nvmem_ipc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nvmem_ipc, align 4
  %call7 = call fastcc i32 @imx_sc_misc_otp_fuse_read(ptr noundef %19, i32 noundef %offset, ptr noundef nonnull %tmp)
  tail call void @mutex_unlock(ptr noundef nonnull @scu_ocotp_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %if.end9.if.end18_crit_edge, label %do.end14

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %21) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end9.if.end18_crit_edge, %in_ecc.exit.if.end18_crit_edge, %if.end.if.end18_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @scu_ocotp_mutex, i32 noundef 0) #7
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__arm_smccc_smc(i32 noundef -1040187381, i32 noundef %offset, i32 noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #7
  call void @mutex_unlock(ptr noundef nonnull @scu_ocotp_mutex) #7
  %24 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end14, %do.end.cleanup_crit_edge, %in_hole.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end14 ], [ %25, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %in_hole.exit.cleanup_crit_edge ], [ %call7, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_sc_misc_otp_fuse_read(ptr noundef %ipc, i32 noundef %word, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_misc_fuse_read, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #7
  %0 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.imx_sc_msg_misc_fuse_read, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %msg, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 7, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 11, ptr %2, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %0, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %word, ptr %3, align 1
  %call = call i32 @imx_scu_call_rpc(ptr noundef %ipc, ptr noundef nonnull %msg, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_call_rpc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_nvmem_imx_ocotp_scu__183_270_imx_scu_ocotp_driver_init6, !1, !"__initcall__kmod_nvmem_imx_ocotp_scu__183_270_imx_scu_ocotp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 270, i32 1}
!2 = !{ptr @__exitcall_imx_scu_ocotp_driver_exit, !1, !"__exitcall_imx_scu_ocotp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 272, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 273, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 274, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 266, i32 11}
!12 = !{ptr @imx_scu_ocotp_driver, !13, !"imx_scu_ocotp_driver", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 263, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 222, i32 10}
!16 = !{ptr @imx_scu_ocotp_nvmem_config, !17, !"imx_scu_ocotp_nvmem_config", i1 false, i1 false}
!17 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 221, i32 28}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 52, i32 8}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scu_ocotp_mutex, !19, !"scu_ocotp_mutex", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 200, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @imx_scu_ocotp_write._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @imx_scu_ocotp_write._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 207, i32 4}
!30 = !{ptr @imx_scu_ocotp_write._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @imx_scu_ocotp_write._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @imx_scu_ocotp_dt_ids, !33, !"imx_scu_ocotp_dt_ids", i1 false, i1 false}
!33 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 231, i32 34}
!34 = !{ptr @imx8qxp_data, !35, !"imx8qxp_data", i1 false, i1 false}
!35 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 54, i32 34}
!36 = !{ptr @imx8qm_data, !37, !"imx8qm_data", i1 false, i1 false}
!37 = !{!"../drivers/nvmem/imx-ocotp-scu.c", i32 65, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
