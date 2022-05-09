; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_buscore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_firmware_mapping = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.99 = type { ptr }
%struct.brcmf_pciedev_info = type { i32, i8, ptr, [320 x i8], [320 x i8], ptr, ptr, i32, i32, ptr, i32, %struct.brcmf_pcie_shared_info, %struct.wait_queue_head, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr, ptr }
%struct.brcmf_pcie_shared_info = type { i32, i32, [5 x ptr], ptr, i16, i16, i16, i16, i32, i32, i32, i32, %struct.brcmf_pcie_console, ptr, i32, ptr, i32, i8 }
%struct.brcmf_pcie_console = type { i32, i32, i32, i32, [256 x i8], i8 }
%struct.brcmf_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8] }
%struct.brcmf_bus = type { %union.anon.132, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.132 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_pciedev = type { ptr, ptr }
%struct.brcmf_bus_msgbuf = type { [5 x ptr], ptr, i32, i32, i16, i16, i16 }
%struct.brcmf_fw_name = type { ptr, ptr }
%struct.brcmf_fw_request = type { i16, i16, i32, ptr, [0 x %struct.brcmf_fw_item] }
%struct.brcmf_fw_item = type { ptr, i32, i16, %union.anon.129 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { ptr, i32 }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.131 }
%union.anon.131 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.brcmf_pcie_dhi_ringinfo = type { i32, i32, i32, i32, i32, %struct.msgbuf_buf_addr, %struct.msgbuf_buf_addr, %struct.msgbuf_buf_addr, %struct.msgbuf_buf_addr, i16, i16, i16 }
%struct.msgbuf_buf_addr = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.brcmf_pcie_ringbuf = type { %struct.brcmf_commonring, i32, i32, i32, ptr, i8 }
%struct.brcmf_commonring = type { i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i8, i8, %struct.atomic_t }
%struct.brcmf_core = type { i16, i16, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_firmware345 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43602-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4350-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [47 x i8] c"brcmfmac.firmware=brcm/brcmfmac4350c2-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4356-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [50 x i8] c"brcmfmac.firmware=brcm/brcmfmac4356-pcie.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43570-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [51 x i8] c"brcmfmac.firmware=brcm/brcmfmac43570-pcie.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4358-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4359-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4364-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac4365b-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac4365c-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac4366b-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac4366c-pcie.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4371-pcie.bin\00", section ".modinfo", align 1
@__func__.brcmf_pcie_register = private unnamed_addr constant [20 x i8] c"brcmf_pcie_register\00", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@brcmf_pciedrvr = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @brcmf_pcie_devid_table, ptr @brcmf_pcie_probe, ptr @brcmf_pcie_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmf_pciedrvr_pm, ptr @brcmf_dev_coredump, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcmfmac\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_exit = private unnamed_addr constant [16 x i8] c"brcmf_pcie_exit\00", align 1
@brcmf_pcie_devid_table = internal constant { [22 x %struct.pci_device_id], [160 x i8] } { [22 x %struct.pci_device_id] [%struct.pci_device_id { i32 5348, i32 17315, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17237, i32 5348, i32 17237, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17236, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17388, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17363, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17369, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17385, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17391, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17338, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17339, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17340, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 43602, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17508, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17354, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17355, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17356, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17253, i32 5348, i32 17253, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17347, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17348, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17349, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17421, i32 -1, i32 -1, i32 163840, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@brcmf_pciedrvr_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmf_pcie_pm_enter_D3, ptr @brcmf_pcie_pm_leave_D3, ptr @brcmf_pcie_pm_enter_D3, ptr null, ptr null, ptr @brcmf_pcie_pm_leave_D3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_probe = private unnamed_addr constant [17 x i8] c"brcmf_pcie_probe\00", align 1
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Enter %x:%x\0A\00", [19 x i8] zeroinitializer }, align 32
@brcmf_pcie_buscore_ops = internal constant { %struct.brcmf_buscore_ops, [40 x i8] } { %struct.brcmf_buscore_ops { ptr @brcmf_pcie_buscore_read32, ptr @brcmf_pcie_buscore_write32, ptr @brcmf_pcie_buscoreprep, ptr @brcmf_pcie_buscore_reset, ptr null, ptr @brcmf_pcie_buscore_activate }, [40 x i8] zeroinitializer }, align 32
@brcmf_pcie_bus_ops = internal constant { %struct.brcmf_bus_ops, [48 x i8] } { %struct.brcmf_bus_ops { ptr null, ptr @brcmf_pcie_down, ptr @brcmf_pcie_tx, ptr @brcmf_pcie_tx_ctlpkt, ptr @brcmf_pcie_rx_ctlpkt, ptr null, ptr @brcmf_pcie_wowl_config, ptr @brcmf_pcie_get_ramsize, ptr @brcmf_pcie_get_memdump, ptr @brcmf_pcie_get_fwname, ptr null, ptr @brcmf_pcie_reset }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"failed %x:%x\0A\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.brcmf_pcie_get_resource = private unnamed_addr constant [24 x i8] c"brcmf_pcie_get_resource\00", align 1
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pci_enable_device failed err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"BAR1 Not enabled, device size=%ld, addr=%#016llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ioremap() failed (%p,%p)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Phys addr : reg space = %p base addr %#016llx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Phys addr : mem space = %p base addr %#016llx size 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@__const.brcmf_pcie_reset_device.cfg_offset = private unnamed_addr constant [11 x i16] [i16 4, i16 76, i16 88, i16 92, i16 96, i16 100, i16 220, i16 552, i16 584, i16 1248, i16 1268], align 2
@__func__.brcmf_pcie_reset_device = private unnamed_addr constant [24 x i8] c"brcmf_pcie_reset_device\00", align 1
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"config offset 0x%04x, value 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_select_core = private unnamed_addr constant [23 x i8] c"brcmf_pcie_select_core\00", align 1
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported core selected %x\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_wowl_config = private unnamed_addr constant [23 x i8] c"brcmf_pcie_wowl_config\00", align 1
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Configuring WOWL, enabled=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_get_memdump = private unnamed_addr constant [23 x i8] c"brcmf_pcie_get_memdump\00", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dump at 0x%08X: len=%zu\0A\00", [39 x i8] zeroinitializer }, align 32
@brcmf_pcie_fwnames = internal constant { [19 x %struct.brcmf_firmware_mapping], [60 x i8] } { [19 x %struct.brcmf_firmware_mapping] [%struct.brcmf_firmware_mapping { i32 43602, i32 -1, ptr @BRCM_43602_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43465, i32 -16, ptr @BRCM_4366C_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17232, i32 255, ptr @BRCM_4350C_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17232, i32 -256, ptr @BRCM_4350_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43525, i32 -16, ptr @BRCM_4365C_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17238, i32 -1, ptr @BRCM_4356_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43567, i32 -1, ptr @BRCM_43570_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43569, i32 -1, ptr @BRCM_43570_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43570, i32 -1, ptr @BRCM_43570_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17240, i32 -1, ptr @BRCM_4358_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17241, i32 -1, ptr @BRCM_4359_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17252, i32 -1, ptr @BRCM_4364_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17253, i32 15, ptr @BRCM_4365B_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17253, i32 -16, ptr @BRCM_4365C_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17254, i32 15, ptr @BRCM_4366B_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17254, i32 -16, ptr @BRCM_4366C_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43664, i32 -16, ptr @BRCM_4366C_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43666, i32 -16, ptr @BRCM_4366C_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17265, i32 -1, ptr @BRCM_4371_FIRMWARE_BASENAME }], [60 x i8] zeroinitializer }, align 32
@BRCM_43602_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43602-pcie\00", [40 x i8] zeroinitializer }, align 32
@BRCM_4366C_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac4366c-pcie\00", [40 x i8] zeroinitializer }, align 32
@BRCM_4350C_FIRMWARE_BASENAME = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcm/brcmfmac4350c2-pcie\00", [39 x i8] zeroinitializer }, align 32
@BRCM_4350_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4350-pcie\00", [41 x i8] zeroinitializer }, align 32
@BRCM_4365C_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac4365c-pcie\00", [40 x i8] zeroinitializer }, align 32
@BRCM_4356_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4356-pcie\00", [41 x i8] zeroinitializer }, align 32
@BRCM_43570_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43570-pcie\00", [40 x i8] zeroinitializer }, align 32
@BRCM_4358_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4358-pcie\00", [41 x i8] zeroinitializer }, align 32
@BRCM_4359_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4359-pcie\00", [41 x i8] zeroinitializer }, align 32
@BRCM_4364_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4364-pcie\00", [41 x i8] zeroinitializer }, align 32
@BRCM_4365B_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac4365b-pcie\00", [40 x i8] zeroinitializer }, align 32
@BRCM_4366B_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac4366b-pcie\00", [40 x i8] zeroinitializer }, align 32
@BRCM_4371_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4371-pcie\00", [41 x i8] zeroinitializer }, align 32
@brcmf_pcie_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 1445, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to prepare FW request\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmf_pcie_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_pcie_reset._entry_ptr = internal global ptr @brcmf_pcie_reset._entry, section ".printk_index", align 4
@brcmf_pcie_reset._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 1451, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@brcmf_pcie_reset._entry_ptr.19 = internal global ptr @brcmf_pcie_reset._entry.18, section ".printk_index", align 4
@brcmf_msg_level = external dso_local local_unnamed_addr global i32, align 4
@__func__.brcmf_pcie_bus_console_read = private unnamed_addr constant [28 x i8] c"brcmf_pcie_bus_console_read\00", align 1
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CONSOLE: %s\00", [20 x i8] zeroinitializer }, align 32
@brcmf_pcie_bus_console_read.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.brcmf_pcie_bus_console_read, ptr @.str.15, ptr @.str.20, i8 0, i8 -55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcmfmac: CONSOLE: %s\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_release_irq = private unnamed_addr constant [23 x i8] c"brcmf_pcie_release_irq\00", align 1
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Still in IRQ (processing) !!!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".bin\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".txt\00", [27 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_setup = private unnamed_addr constant [17 x i8] c"brcmf_pcie_setup\00", align 1
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get RAM info\0A\00", [40 x i8] zeroinitializer }, align 32
@brcmf_pcie_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&devinfo->mbdata_resp_wait\00", [37 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_adjust_ramsize = private unnamed_addr constant [26 x i8] c"brcmf_pcie_adjust_ramsize\00", align 1
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Found ramsize info in FW, adjusting to 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_download_fw_nvram = private unnamed_addr constant [29 x i8] c"brcmf_pcie_download_fw_nvram\00", align 1
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Halt ARM.\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Download FW %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Download NVRAM %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No matching NVRAM file found %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bring ARM in running state\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Wait for FW init\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FW failed to initialize\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid shared RAM address 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Shared RAM addr: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_init_share_ram_info = private unnamed_addr constant [31 x i8] c"brcmf_pcie_init_share_ram_info\00", align 1
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCIe protocol version %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported PCIE version %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"max rx buf post %d, rx dataoffset %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_bus_console_init = private unnamed_addr constant [28 x i8] c"brcmf_pcie_bus_console_init\00", align 1
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Console: base %x, buf %x, size %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_init_ringbuffers = private unnamed_addr constant [28 x i8] c"brcmf_pcie_init_ringbuffers\00", align 1
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Using TCM indices\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Using host memory indices\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Nr of flowrings is %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Allocating ring buffers failed\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmf_ring_itemsize_pre_v7 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 40, i32 32, i32 24, i32 16, i32 32], [44 x i8] zeroinitializer }, align 32
@brcmf_ring_itemsize = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 40, i32 32, i32 24, i32 24, i32 40], [44 x i8] zeroinitializer }, align 32
@brcmf_ring_max_item = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 64, i32 512, i32 64, i32 1024, i32 512], [44 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_ring_mb_ring_bell = private unnamed_addr constant [29 x i8] c"brcmf_pcie_ring_mb_ring_bell\00", align 1
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RING !\0A\00", [24 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_ring_mb_update_rptr = private unnamed_addr constant [31 x i8] c"brcmf_pcie_ring_mb_update_rptr\00", align 1
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R r_ptr %d (%d), ring %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_ring_mb_update_wptr = private unnamed_addr constant [31 x i8] c"brcmf_pcie_ring_mb_update_wptr\00", align 1
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R w_ptr %d (%d), ring %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_ring_mb_write_rptr = private unnamed_addr constant [30 x i8] c"brcmf_pcie_ring_mb_write_rptr\00", align 1
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"W r_ptr %d (%d), ring %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_ring_mb_write_wptr = private unnamed_addr constant [30 x i8] c"brcmf_pcie_ring_mb_write_wptr\00", align 1
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"W w_ptr %d (%d), ring %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_init_scratchbuffers = private unnamed_addr constant [31 x i8] c"brcmf_pcie_init_scratchbuffers\00", align 1
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Allocating scratch buffers failed\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_request_irq = private unnamed_addr constant [23 x i8] c"brcmf_pcie_request_irq\00", align 1
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcmf_pcie_intr\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_quick_check_isr = private unnamed_addr constant [27 x i8] c"brcmf_pcie_quick_check_isr\00", align 1
@__func__.brcmf_pcie_isr_thread = private unnamed_addr constant [22 x i8] c"brcmf_pcie_isr_thread\00", align 1
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Enter %x\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_handle_mb_data = private unnamed_addr constant [26 x i8] c"brcmf_pcie_handle_mb_data\00", align 1
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"D2H_MB_DATA: 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"D2H_MB_DATA: DEEP SLEEP REQ\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"D2H_MB_DATA: sent DEEP SLEEP ACK\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"D2H_MB_DATA: DEEP SLEEP EXIT\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"D2H_MB_DATA: D3 ACK\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"D2H_MB_DATA: FW HALT\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_send_mb_data = private unnamed_addr constant [24 x i8] c"brcmf_pcie_send_mb_data\00", align 1
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MB transaction is already pending 0x%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_remove = private unnamed_addr constant [18 x i8] c"brcmf_pcie_remove\00", align 1
@__func__.brcmf_pcie_pm_enter_D3 = private unnamed_addr constant [23 x i8] c"brcmf_pcie_pm_enter_D3\00", align 1
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Timeout on response for entering D3 substate\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.brcmf_pcie_pm_leave_D3 = private unnamed_addr constant [23 x i8] c"brcmf_pcie_pm_leave_D3\00", align 1
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enter, dev=%p, bus=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Try to wakeup device....\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Hot resume, continue....\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"probe after resume failed, err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2146, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"brcmf_pciedrvr\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2131, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2147, i32 9 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"brcmf_pcie_devid_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2102, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"brcmf_pciedrvr_pm\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2085, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1880, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"brcmf_pcie_buscore_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1741, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"brcmf_pcie_bus_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1458, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1958, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1632, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1645, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1654, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1658, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1660, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 610, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 558, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1378, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1399, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"brcmf_pcie_fwnames\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 62, i32 44 }
@___asan_gen_.123 = private unnamed_addr constant [29 x i8] c"BRCM_43602_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 48, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [29 x i8] c"BRCM_4366C_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 59, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [29 x i8] c"BRCM_4350C_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 50, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant [28 x i8] c"BRCM_4350_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 49, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [29 x i8] c"BRCM_4365C_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 57, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [28 x i8] c"BRCM_4356_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 51, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant [29 x i8] c"BRCM_43570_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 52, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant [28 x i8] c"BRCM_4358_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 53, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [28 x i8] c"BRCM_4359_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 54, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"BRCM_4364_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 55, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [29 x i8] c"BRCM_4365B_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 56, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant [29 x i8] c"BRCM_4366B_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 58, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [28 x i8] c"BRCM_4371_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 60, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1445, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1451, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 801, i32 32 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 804, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 916, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1849, i32 5 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1850, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1779, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1827, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1487, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1560, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1565, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1578, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1584, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1591, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1596, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1607, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1612, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1616, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1506, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1509, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1539, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 756, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1173, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1214, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1255, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1278, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [27 x i8] c"brcmf_ring_itemsize_pre_v7\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 325, i32 18 }
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c"brcmf_ring_itemsize\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 333, i32 18 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c"brcmf_ring_max_item\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 317, i32 18 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 969, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 988, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1006, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 934, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 952, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1341, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 885, i32 6 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 887, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 852, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 720, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 722, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 724, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 727, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 729, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 734, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 681, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2033, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2055, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2059, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2062, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.331 = private constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2079, i32 31 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @brcmf_pcie_reset._entry, ptr @brcmf_pcie_reset._entry.18, ptr @brcmf_pcie_reset._entry_ptr, ptr @brcmf_pcie_reset._entry_ptr.19, ptr @.str, ptr @brcmf_pciedrvr, ptr @.str.1, ptr @brcmf_pcie_devid_table, ptr @brcmf_pciedrvr_pm, ptr @.str.2, ptr @brcmf_pcie_buscore_ops, ptr @brcmf_pcie_bus_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @brcmf_pcie_fwnames, ptr @BRCM_43602_FIRMWARE_BASENAME, ptr @BRCM_4366C_FIRMWARE_BASENAME, ptr @BRCM_4350C_FIRMWARE_BASENAME, ptr @BRCM_4350_FIRMWARE_BASENAME, ptr @BRCM_4365C_FIRMWARE_BASENAME, ptr @BRCM_4356_FIRMWARE_BASENAME, ptr @BRCM_43570_FIRMWARE_BASENAME, ptr @BRCM_4358_FIRMWARE_BASENAME, ptr @BRCM_4359_FIRMWARE_BASENAME, ptr @BRCM_4364_FIRMWARE_BASENAME, ptr @BRCM_4365B_FIRMWARE_BASENAME, ptr @BRCM_4366B_FIRMWARE_BASENAME, ptr @BRCM_4371_FIRMWARE_BASENAME, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @brcmf_pcie_setup.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @brcmf_ring_itemsize_pre_v7, ptr @brcmf_ring_itemsize, ptr @brcmf_ring_max_item, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pciedrvr to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pcie_devid_table to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pciedrvr_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pcie_buscore_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pcie_bus_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pcie_fwnames to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43602_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4366C_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4350C_FIRMWARE_BASENAME to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4350_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4365C_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4356_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43570_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4358_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4359_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4364_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4365B_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4366B_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4371_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pcie_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pcie_reset._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pcie_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_ring_itemsize_pre_v7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_ring_itemsize to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_ring_max_item to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_pcie_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_register, ptr noundef nonnull @.str) #10
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @brcmf_pciedrvr, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_pcie_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_exit, ptr noundef nonnull @.str) #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @brcmf_pciedrvr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %conv = zext i16 %1 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv1 = zext i16 %3 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_probe, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1108) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev3 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev3, align 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %call5 = tail call ptr @brcmf_chip_attach(ptr noundef nonnull %call7.i.i, i16 noundef zeroext %7, ptr noundef nonnull @brcmf_pcie_buscore_ops) #10
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %ci, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call5 to i32
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ci, align 4
  br label %do.body61

if.end12:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i137 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 8) #13
  %cmp14 = icmp eq ptr %call7.i.i137, null
  br i1 %cmp14, label %if.end12.do.body61_crit_edge, label %if.end17

if.end12.do.body61_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

if.end17:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %chiprev = getelementptr inbounds %struct.brcmf_chip, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chiprev, align 4
  %call21 = tail call ptr @brcmf_get_module_param(ptr noundef %dev, i32 noundef 2, i32 noundef %17, i32 noundef %19) #10
  %settings = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %call7.i.i, i32 0, i32 22
  %20 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %settings, align 8
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %if.end17.do.body61_crit_edge, label %if.end24

if.end17.do.body61_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

if.end24:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i138 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 52) #13
  %tobool26.not = icmp eq ptr %call7.i.i138, null
  br i1 %tobool26.not, label %if.end24.do.body61_crit_edge, label %if.end28

if.end24.do.body61_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

if.end28:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i139 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 40) #13
  %msgbuf = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i138, i32 0, i32 12
  %23 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i139, ptr %msgbuf, align 8
  %tobool31.not = icmp eq ptr %call7.i.i139, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i138) #10
  br label %do.body61

if.end33:                                         ; preds = %if.end28
  %devinfo34 = getelementptr inbounds %struct.brcmf_pciedev, ptr %call7.i.i137, i32 0, i32 1
  %24 = ptrtoint ptr %devinfo34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %devinfo34, align 4
  %25 = ptrtoint ptr %call7.i.i137 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i138, ptr %call7.i.i137, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev37 = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i138, i32 0, i32 2
  %26 = ptrtoint ptr %dev37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev36, ptr %dev37, align 8
  %27 = ptrtoint ptr %call7.i.i138 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i137, ptr %call7.i.i138, align 8
  %ops = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i138, i32 0, i32 11
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @brcmf_pcie_bus_ops, ptr %ops, align 4
  %proto_type = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i138, i32 0, i32 1
  %29 = ptrtoint ptr %proto_type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %proto_type, align 4
  %coreid = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %call7.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %coreid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %coreid, align 8
  %chip38 = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i138, i32 0, i32 7
  %32 = ptrtoint ptr %chip38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %chip38, align 8
  %call39 = tail call zeroext i1 @pci_pme_capable(ptr noundef %pdev, i32 noundef 3) #10
  %wowl_supported = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i138, i32 0, i32 10
  %frombool = zext i1 %call39 to i8
  %33 = ptrtoint ptr %wowl_supported to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %wowl_supported, align 1
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %34 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i138, ptr %driver_data.i, align 4
  %35 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev3, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %settings, align 8
  %call44 = tail call i32 @brcmf_alloc(ptr noundef %dev42, ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end33.fail_bus_crit_edge

if.end33.fail_bus_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_bus

if.end47:                                         ; preds = %if.end33
  %call48 = tail call fastcc ptr @brcmf_pcie_prepare_fw_request(ptr noundef nonnull %call7.i.i)
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.fail_brcmf_crit_edge, label %if.end51

if.end47.fail_brcmf_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_brcmf

if.end51:                                         ; preds = %if.end47
  %39 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev37, align 8
  %call53 = tail call i32 @brcmf_fw_get_firmwares(ptr noundef %40, ptr noundef nonnull %call48, ptr noundef nonnull @brcmf_pcie_setup) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call48) #10
  br label %fail_brcmf

fail_brcmf:                                       ; preds = %if.then56, %if.end47.fail_brcmf_crit_edge
  %ret.0 = phi i32 [ %call53, %if.then56 ], [ -12, %if.end47.fail_brcmf_crit_edge ]
  %41 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev3, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void @brcmf_free(ptr noundef %dev59) #10
  br label %fail_bus

fail_bus:                                         ; preds = %fail_brcmf, %if.end33.fail_bus_crit_edge
  %ret.1 = phi i32 [ %call44, %if.end33.fail_bus_crit_edge ], [ %ret.0, %fail_brcmf ]
  %43 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %msgbuf, align 8
  tail call void @kfree(ptr noundef %44) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i138) #10
  br label %do.body61

do.body61:                                        ; preds = %fail_bus, %if.then32, %if.end24.do.body61_crit_edge, %if.end17.do.body61_crit_edge, %if.end12.do.body61_crit_edge, %if.then8
  %ret.2 = phi i32 [ %9, %if.then8 ], [ %ret.1, %fail_bus ], [ -12, %if.then32 ], [ -12, %if.end12.do.body61_crit_edge ], [ -12, %if.end17.do.body61_crit_edge ], [ -12, %if.end24.do.body61_crit_edge ]
  %pcie_bus_dev.0 = phi ptr [ null, %if.then8 ], [ %call7.i.i137, %fail_bus ], [ %call7.i.i137, %if.then32 ], [ null, %if.end12.do.body61_crit_edge ], [ %call7.i.i137, %if.end17.do.body61_crit_edge ], [ %call7.i.i137, %if.end24.do.body61_crit_edge ]
  %45 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vendor, align 8
  %conv63 = zext i16 %46 to i32
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %device, align 2
  %conv65 = zext i16 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_pcie_probe, ptr noundef nonnull @.str.3, i32 noundef %conv63, i32 noundef %conv65) #10
  %tcm.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %call7.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tcm.i, align 8
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %do.body61.if.end.i_crit_edge, label %if.then.i

do.body61.if.end.i_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %50) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body61.if.end.i_crit_edge
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %call7.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %tobool2.not.i = icmp eq ptr %52, null
  br i1 %tobool2.not.i, label %if.end.i.brcmf_pcie_release_resource.exit_crit_edge, label %if.then3.i

if.end.i.brcmf_pcie_release_resource.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_release_resource.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %52) #10
  br label %brcmf_pcie_release_resource.exit

brcmf_pcie_release_resource.exit:                 ; preds = %if.then3.i, %if.end.i.brcmf_pcie_release_resource.exit_crit_edge
  %53 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev3, align 8
  tail call void @pci_disable_device(ptr noundef %54) #10
  %55 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ci, align 4
  %tobool69.not = icmp eq ptr %56, null
  br i1 %tobool69.not, label %brcmf_pcie_release_resource.exit.if.end72_crit_edge, label %if.then70

brcmf_pcie_release_resource.exit.if.end72_crit_edge: ; preds = %brcmf_pcie_release_resource.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then70:                                        ; preds = %brcmf_pcie_release_resource.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_chip_detach(ptr noundef nonnull %56) #10
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %brcmf_pcie_release_resource.exit.if.end72_crit_edge
  %settings73 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %call7.i.i, i32 0, i32 22
  %57 = ptrtoint ptr %settings73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %settings73, align 8
  %tobool74.not = icmp eq ptr %58, null
  br i1 %tobool74.not, label %if.end72.if.end77_crit_edge, label %if.then75

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_release_module_param(ptr noundef nonnull %58) #10
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72.if.end77_crit_edge
  tail call void @kfree(ptr noundef %pcie_bus_dev.0) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.end77 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_pcie_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_remove, ptr noundef nonnull @.str) #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_pciedev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %regs.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !237
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @brcmf_detach(ptr noundef %dev) #10
  tail call void @brcmf_free(ptr noundef %dev) #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %12) #10
  %msgbuf = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msgbuf, align 4
  %flowrings = getelementptr inbounds %struct.brcmf_bus_msgbuf, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %flowrings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flowrings, align 4
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msgbuf, align 4
  tail call void @kfree(ptr noundef %18) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  tail call fastcc void @brcmf_pcie_release_irq(ptr noundef %5)
  %scratch.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 13
  %19 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scratch.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end3.if.end.i_crit_edge, label %if.then.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %scratch_dmahandle.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 14
  %23 = ptrtoint ptr %scratch_dmahandle.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scratch_dmahandle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 8, ptr noundef nonnull %20, i32 noundef %24, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end3.if.end.i_crit_edge
  %ringupd.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 15
  %25 = ptrtoint ptr %ringupd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ringupd.i, align 4
  %tobool5.not.i = icmp eq ptr %26, null
  br i1 %tobool5.not.i, label %if.end.i.brcmf_pcie_release_scratchbuffers.exit_crit_edge, label %if.then6.i

if.end.i.brcmf_pcie_release_scratchbuffers.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_release_scratchbuffers.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev7.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %pdev7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev7.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %ringupd_dmahandle.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 16
  %29 = ptrtoint ptr %ringupd_dmahandle.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ringupd_dmahandle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 1024, ptr noundef nonnull %26, i32 noundef %30, i32 noundef 0) #10
  br label %brcmf_pcie_release_scratchbuffers.exit

brcmf_pcie_release_scratchbuffers.exit:           ; preds = %if.then6.i, %if.end.i.brcmf_pcie_release_scratchbuffers.exit_crit_edge
  tail call fastcc void @brcmf_pcie_release_ringbuffers(ptr noundef %5)
  tail call fastcc void @brcmf_pcie_reset_device(ptr noundef %5)
  %tcm.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 6
  %31 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tcm.i, align 4
  %tobool.not.i40 = icmp eq ptr %32, null
  br i1 %tobool.not.i40, label %brcmf_pcie_release_scratchbuffers.exit.if.end.i42_crit_edge, label %if.then.i41

brcmf_pcie_release_scratchbuffers.exit.if.end.i42_crit_edge: ; preds = %brcmf_pcie_release_scratchbuffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i42

if.then.i41:                                      ; preds = %brcmf_pcie_release_scratchbuffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %32) #10
  br label %if.end.i42

if.end.i42:                                       ; preds = %if.then.i41, %brcmf_pcie_release_scratchbuffers.exit.if.end.i42_crit_edge
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 5
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %tobool2.not.i = icmp eq ptr %34, null
  br i1 %tobool2.not.i, label %if.end.i42.brcmf_pcie_release_resource.exit_crit_edge, label %if.then3.i

if.end.i42.brcmf_pcie_release_resource.exit_crit_edge: ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_release_resource.exit

if.then3.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %34) #10
  br label %brcmf_pcie_release_resource.exit

brcmf_pcie_release_resource.exit:                 ; preds = %if.then3.i, %if.end.i42.brcmf_pcie_release_resource.exit_crit_edge
  %pdev.i43 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 2
  %35 = ptrtoint ptr %pdev.i43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i43, align 4
  tail call void @pci_disable_device(ptr noundef %36) #10
  %37 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ci, align 4
  %tobool9.not = icmp eq ptr %38, null
  br i1 %tobool9.not, label %brcmf_pcie_release_resource.exit.if.end12_crit_edge, label %if.then10

brcmf_pcie_release_resource.exit.if.end12_crit_edge: ; preds = %brcmf_pcie_release_resource.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %brcmf_pcie_release_resource.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_chip_detach(ptr noundef nonnull %38) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %brcmf_pcie_release_resource.exit.if.end12_crit_edge
  %settings = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 22
  %39 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %settings, align 4
  %tobool13.not = icmp eq ptr %40, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_release_module_param(ptr noundef nonnull %40) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  tail call void @kfree(ptr noundef %5) #10
  %41 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_dev_coredump(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_attach(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_module_param(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_pme_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @brcmf_pcie_prepare_fw_request(ptr noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  %fwnames = alloca [2 x %struct.brcmf_fw_name], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fwnames) #10
  %0 = getelementptr inbounds %struct.brcmf_fw_name, ptr %fwnames, i32 0, i32 1
  %1 = getelementptr inbounds [2 x %struct.brcmf_fw_name], ptr %fwnames, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.brcmf_fw_name], ptr %fwnames, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %fwnames to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.23, ptr %fwnames, align 4
  %fw_name = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 3
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fw_name, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.24, ptr %1, align 4
  %nvram_name = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %nvram_name, ptr %2, align 4
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 9
  %7 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %chiprev = getelementptr inbounds %struct.brcmf_chip, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chiprev, align 4
  %call = call ptr @brcmf_fw_alloc_request(i32 noundef %10, i32 noundef %12, ptr noundef nonnull @brcmf_pcie_fwnames, i32 noundef 19, ptr noundef nonnull %fwnames, i32 noundef 2) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.brcmf_fw_request, ptr %call, i32 1, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %type, align 4
  %type8 = getelementptr %struct.brcmf_fw_request, ptr %call, i32 3
  %14 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type8, align 4
  %flags = getelementptr %struct.brcmf_fw_request, ptr %call, i32 3, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags, align 4
  %settings = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 22
  %16 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %settings, align 4
  %board_type = getelementptr inbounds %struct.brcmf_mp_device, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board_type, align 4
  %board_type11 = getelementptr inbounds %struct.brcmf_fw_request, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %board_type11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %board_type11, align 4
  %pdev = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %domain_nr.i, align 8
  %27 = trunc i32 %26 to i16
  %conv = add i16 %27, 1
  %28 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %call, align 4
  %29 = load ptr, ptr %pdev, align 4
  %bus14 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %bus14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus14, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %number, align 4
  %conv15 = zext i8 %33 to i16
  %bus_nr = getelementptr inbounds %struct.brcmf_fw_request, ptr %call, i32 0, i32 1
  %34 = ptrtoint ptr %bus_nr to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv15, ptr %bus_nr, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fwnames) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fw_get_firmwares(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_pcie_setup(ptr noundef %dev, i32 noundef %ret, ptr noundef %fwreq) #0 align 64 {
entry:
  %ringinfo.i = alloca %struct.brcmf_pcie_dhi_ringinfo, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %tobool.not = icmp eq i32 %ret, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_pciedev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo1, align 4
  tail call fastcc void @brcmf_pcie_select_core(ptr noundef %5, i16 noundef zeroext 2108) #10
  %regs.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -536608768) #10, !srcloc !237
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 292
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %12, i32 292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %10) #10, !srcloc !237
  %pdev.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call1.i = tail call i32 @device_wakeup_enable(ptr noundef %dev.i) #10
  %15 = getelementptr inbounds %struct.brcmf_fw_request, ptr %fwreq, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = getelementptr %struct.brcmf_fw_request, ptr %fwreq, i32 3, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %len = getelementptr %struct.brcmf_fw_request, ptr %fwreq, i32 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  tail call void @kfree(ptr noundef %fwreq) #10
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 9
  %23 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ci, align 4
  %call6 = tail call i32 @brcmf_chip_get_raminfo(ptr noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %1, ptr noundef nonnull @__func__.brcmf_pcie_setup, ptr noundef nonnull @.str.25) #10
  br label %fail

if.end9:                                          ; preds = %if.end
  %data10 = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data10, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %28)
  %cmp.i = icmp ult i32 %28, 116
  br i1 %cmp.i, label %if.end9.brcmf_pcie_adjust_ramsize.exit_crit_edge, label %if.end.i

if.end9.brcmf_pcie_adjust_ramsize.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_adjust_ramsize.exit

if.end.i:                                         ; preds = %if.end9
  %arrayidx.i = getelementptr i8, ptr %26, i32 108
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380011347, i32 %30)
  %cmp1.not.i = icmp eq i32 %30, 1380011347
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.brcmf_pcie_adjust_ramsize.exit_crit_edge

if.end.i.brcmf_pcie_adjust_ramsize.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_adjust_ramsize.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i = getelementptr i8, ptr %26, i32 112
  %31 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %incdec.ptr.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_adjust_ramsize, ptr noundef nonnull @.str.27, i32 noundef %33) #10
  %34 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ci, align 4
  %ramsize.i = getelementptr inbounds %struct.brcmf_chip, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %ramsize.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %ramsize.i, align 4
  br label %brcmf_pcie_adjust_ramsize.exit

brcmf_pcie_adjust_ramsize.exit:                   ; preds = %if.end3.i, %if.end.i.brcmf_pcie_adjust_ramsize.exit_crit_edge, %if.end9.brcmf_pcie_adjust_ramsize.exit_crit_edge
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_download_fw_nvram, ptr noundef nonnull @.str.28) #10
  %41 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ci, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43602, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 43602
  br i1 %cmp.i.i, label %if.then.i.i, label %brcmf_pcie_adjust_ramsize.exit.brcmf_pcie_enter_download_state.exit.i_crit_edge

brcmf_pcie_adjust_ramsize.exit.brcmf_pcie_enter_download_state.exit.i_crit_edge: ; preds = %brcmf_pcie_adjust_ramsize.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_enter_download_state.exit.i

if.then.i.i:                                      ; preds = %brcmf_pcie_adjust_ramsize.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @brcmf_pcie_select_core(ptr noundef %5, i16 noundef zeroext 2110) #10
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %46, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 83886080) #10, !srcloc !237
  %47 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %48, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 0) #10, !srcloc !237
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %50, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 117440512) #10, !srcloc !237
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %52, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #10, !srcloc !237
  br label %brcmf_pcie_enter_download_state.exit.i

brcmf_pcie_enter_download_state.exit.i:           ; preds = %if.then.i.i, %brcmf_pcie_adjust_ramsize.exit.brcmf_pcie_enter_download_state.exit.i_crit_edge
  %fw_name.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 3
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_download_fw_nvram, ptr noundef nonnull @.str.29, ptr noundef %fw_name.i) #10
  %53 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ci, align 4
  %rambase.i = getelementptr inbounds %struct.brcmf_chip, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %rambase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rambase.i, align 4
  %57 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data10, align 4
  %59 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %17, align 4
  tail call fastcc void @brcmf_pcie_copy_mem_todev(ptr noundef %5, i32 noundef %56, ptr noundef %58, i32 noundef %60) #10
  %61 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data10, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %62, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  tail call void @release_firmware(ptr noundef %17) #10
  %66 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ci, align 4
  %ramsize.i126 = getelementptr inbounds %struct.brcmf_chip, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %ramsize.i126 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ramsize.i126, align 4
  %sub.i = add i32 %69, -4
  %tcm.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 6
  %70 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tcm.i.i, align 4
  %rambase.i.i = getelementptr inbounds %struct.brcmf_chip, ptr %67, i32 0, i32 7
  %72 = ptrtoint ptr %rambase.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rambase.i.i, align 4
  %add.ptr.i.i127 = getelementptr i8, ptr %71, i32 %73
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i127, i32 %sub.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #10, !srcloc !237
  %tobool8.not.i = icmp eq ptr %20, null
  %nvram_name20.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 4
  br i1 %tobool8.not.i, label %do.body19.i, label %do.body10.i

do.body10.i:                                      ; preds = %brcmf_pcie_enter_download_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_download_fw_nvram, ptr noundef nonnull @.str.30, ptr noundef %nvram_name20.i) #10
  %74 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ci, align 4
  %rambase15.i = getelementptr inbounds %struct.brcmf_chip, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %rambase15.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rambase15.i, align 4
  %ramsize17.i = getelementptr inbounds %struct.brcmf_chip, ptr %75, i32 0, i32 8
  %78 = ptrtoint ptr %ramsize17.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ramsize17.i, align 4
  %add.i = sub i32 %77, %22
  %sub18.i = add i32 %add.i, %79
  tail call fastcc void @brcmf_pcie_copy_mem_todev(ptr noundef %5, i32 noundef %sub18.i, ptr noundef nonnull %20, i32 noundef %22) #10
  tail call void @brcmf_fw_nvram_free(ptr noundef nonnull %20) #10
  br label %if.end24.i

do.body19.i:                                      ; preds = %brcmf_pcie_enter_download_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_download_fw_nvram, ptr noundef nonnull @.str.31, ptr noundef %nvram_name20.i) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.body19.i, %do.body10.i
  %80 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ci, align 4
  %ramsize26.i = getelementptr inbounds %struct.brcmf_chip, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %ramsize26.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ramsize26.i, align 4
  %sub27.i = add i32 %83, -4
  %84 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tcm.i.i, align 4
  %rambase.i116.i = getelementptr inbounds %struct.brcmf_chip, ptr %81, i32 0, i32 7
  %86 = ptrtoint ptr %rambase.i116.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rambase.i116.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %85, i32 %87
  %add.ptr1.i118.i = getelementptr i8, ptr %add.ptr.i117.i, i32 %sub27.i
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i118.i) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_download_fw_nvram, ptr noundef nonnull @.str.32) #10
  %89 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ci, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43602, i32 %92)
  %cmp.i120.i = icmp eq i32 %92, 43602
  br i1 %cmp.i120.i, label %if.then.i121.i, label %if.end24.i.brcmf_pcie_exit_download_state.exit.i_crit_edge

if.end24.i.brcmf_pcie_exit_download_state.exit.i_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_exit_download_state.exit.i

if.then.i121.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @brcmf_chip_get_core(ptr noundef %90, i16 noundef zeroext 2062) #10
  tail call void @brcmf_chip_resetcore(ptr noundef %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %brcmf_pcie_exit_download_state.exit.i

brcmf_pcie_exit_download_state.exit.i:            ; preds = %if.then.i121.i, %if.end24.i.brcmf_pcie_exit_download_state.exit.i_crit_edge
  %93 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ci, align 4
  %call3.i.i = tail call zeroext i1 @brcmf_chip_set_active(ptr noundef %94, i32 noundef %65) #10
  br i1 %call3.i.i, label %do.body36.i, label %brcmf_pcie_exit_download_state.exit.i.fail_crit_edge

brcmf_pcie_exit_download_state.exit.i.fail_crit_edge: ; preds = %brcmf_pcie_exit_download_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body36.i:                                      ; preds = %brcmf_pcie_exit_download_state.exit.i
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_download_fw_nvram, ptr noundef nonnull @.str.33) #10
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body36.i
  %loop_counter.0129.i = phi i32 [ 100, %do.body36.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 50) #10
  %95 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ci, align 4
  %ramsize41.i = getelementptr inbounds %struct.brcmf_chip, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %ramsize41.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ramsize41.i, align 4
  %sub42.i = add i32 %98, -4
  %99 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tcm.i.i, align 4
  %rambase.i124.i = getelementptr inbounds %struct.brcmf_chip, ptr %96, i32 0, i32 7
  %101 = ptrtoint ptr %rambase.i124.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rambase.i124.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %100, i32 %102
  %add.ptr1.i126.i = getelementptr i8, ptr %add.ptr.i125.i, i32 %sub42.i
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i126.i) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %dec.i = add nsw i32 %loop_counter.0129.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %88)
  %cmp.i128 = icmp eq i32 %103, %88
  %cmp.not.i = xor i1 %cmp.i128, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool39.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool39.not.i
  br i1 %or.cond.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #10
  br i1 %cmp.i128, label %do.body46.i, label %if.end49.i

do.body46.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %40, ptr noundef nonnull @__func__.brcmf_pcie_download_fw_nvram, ptr noundef nonnull @.str.34) #10
  br label %fail

if.end49.i:                                       ; preds = %while.end.i
  %105 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ci, align 4
  %rambase51.i = getelementptr inbounds %struct.brcmf_chip, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %rambase51.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rambase51.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %108)
  %cmp52.i = icmp ult i32 %104, %108
  br i1 %cmp52.i, label %if.end49.i.do.body60.i_crit_edge, label %lor.lhs.false.i

if.end49.i.do.body60.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body60.i

lor.lhs.false.i:                                  ; preds = %if.end49.i
  %ramsize56.i = getelementptr inbounds %struct.brcmf_chip, ptr %106, i32 0, i32 8
  %109 = ptrtoint ptr %ramsize56.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ramsize56.i, align 4
  %add57.i = add i32 %110, %108
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %add57.i)
  %cmp58.not.i = icmp ult i32 %104, %add57.i
  br i1 %cmp58.not.i, label %do.body64.i, label %lor.lhs.false.i.do.body60.i_crit_edge

lor.lhs.false.i.do.body60.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body60.i

do.body60.i:                                      ; preds = %lor.lhs.false.i.do.body60.i_crit_edge, %if.end49.i.do.body60.i_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %40, ptr noundef nonnull @__func__.brcmf_pcie_download_fw_nvram, ptr noundef nonnull @.str.35, i32 noundef %104) #10
  br label %fail

do.body64.i:                                      ; preds = %lor.lhs.false.i
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_download_fw_nvram, ptr noundef nonnull @.str.36, i32 noundef %104) #10
  %111 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44, i32 8
  %113 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %driver_data.i.i.i, align 4
  %shared1.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11
  %115 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %104, ptr %shared1.i.i, align 4
  %116 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i.i127.i = getelementptr i8, ptr %117, i32 %104
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127.i) #10, !srcloc !238
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %flags.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 1
  %120 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %flags.i.i, align 4
  %conv.i.i = trunc i32 %119 to i8
  %version.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 17
  %121 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv.i.i, ptr %version.i.i, align 4
  %conv5.i.i = and i32 %119, 255
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_init_share_ram_info, ptr noundef nonnull @.str.37, i32 noundef %conv5.i.i) #10
  %122 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %version.i.i, align 4
  %124 = add i8 %123, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %124)
  %125 = icmp ult i8 %124, -3
  br i1 %125, label %do.body13.i.i, label %if.end.i.i

do.body13.i.i:                                    ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv15.i.i = zext i8 %123 to i32
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %114, ptr noundef nonnull @__func__.brcmf_pcie_init_share_ram_info, ptr noundef nonnull @.str.38, i32 noundef %conv15.i.i) #10
  br label %fail

if.end.i.i:                                       ; preds = %do.body64.i
  %126 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags.i.i, align 4
  %and19.i.i = and i32 %127, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end14_crit_edge, label %if.then20.i.i

if.end.i.i.if.end14_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then20.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and22.i.i = and i32 %127, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  %dma_idx_sz25.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 16
  %..i128.i = select i1 %tobool23.not.i.i, i8 4, i8 2
  %128 = ptrtoint ptr %dma_idx_sz25.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %..i128.i, ptr %dma_idx_sz25.i.i, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then20.i.i, %if.end.i.i.if.end14_crit_edge
  %add.i.i = add i32 %104, 34
  %129 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i91.i.i = getelementptr i8, ptr %130, i32 %add.i.i
  %131 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i91.i.i) #10, !srcloc !240
  %132 = tail call i16 @llvm.bswap.i16(i16 %131) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %max_rxbufpost.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp31.i.i = icmp eq i16 %131, 0
  %spec.select.i.i = select i1 %cmp31.i.i, i16 255, i16 %132
  %133 = ptrtoint ptr %max_rxbufpost.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %spec.select.i.i, ptr %max_rxbufpost.i.i, align 4
  %add36.i.i = add i32 %104, 36
  %134 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i93.i.i = getelementptr i8, ptr %135, i32 %add36.i.i
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i.i) #10, !srcloc !238
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %rx_dataoffset.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 8
  %138 = ptrtoint ptr %rx_dataoffset.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %rx_dataoffset.i.i, align 4
  %add38.i.i = add i32 %104, 40
  %139 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i95.i.i = getelementptr i8, ptr %140, i32 %add38.i.i
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95.i.i) #10, !srcloc !238
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %htod_mb_data_addr.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 9
  %143 = ptrtoint ptr %htod_mb_data_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %htod_mb_data_addr.i.i, align 4
  %add40.i.i = add i32 %104, 44
  %144 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i97.i.i = getelementptr i8, ptr %145, i32 %add40.i.i
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.i.i) #10, !srcloc !238
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %dtoh_mb_data_addr.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 10
  %148 = ptrtoint ptr %dtoh_mb_data_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %dtoh_mb_data_addr.i.i, align 4
  %add42.i.i = add i32 %104, 48
  %149 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i99.i.i = getelementptr i8, ptr %150, i32 %add42.i.i
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.i.i) #10, !srcloc !238
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %ring_info_addr.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 11
  %153 = ptrtoint ptr %ring_info_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %ring_info_addr.i.i, align 4
  %154 = ptrtoint ptr %max_rxbufpost.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %max_rxbufpost.i.i, align 4
  %conv46.i.i = zext i16 %155 to i32
  %156 = ptrtoint ptr %rx_dataoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rx_dataoffset.i.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_init_share_ram_info, ptr noundef nonnull @.str.39, i32 noundef %conv46.i.i, i32 noundef %157) #10
  %console2.i.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 12
  %158 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %shared1.i.i, align 4
  %add.i.i.i = add i32 %159, 20
  %160 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %161, i32 %add.i.i.i
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !238
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %164 = ptrtoint ptr %console2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %console2.i.i.i, align 4
  %add4.i.i.i = add i32 %163, 8
  %165 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i26.i.i.i = getelementptr i8, ptr %166, i32 %add4.i.i.i
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i.i.i) #10, !srcloc !238
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %buf_addr.i.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 12, i32 1
  %169 = ptrtoint ptr %buf_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %buf_addr.i.i.i, align 4
  %170 = ptrtoint ptr %console2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %console2.i.i.i, align 4
  %add7.i.i.i = add i32 %171, 12
  %172 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i28.i.i.i = getelementptr i8, ptr %173, i32 %add7.i.i.i
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i.i.i) #10, !srcloc !238
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %bufsize.i.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 12, i32 2
  %176 = ptrtoint ptr %bufsize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %bufsize.i.i.i, align 4
  %177 = ptrtoint ptr %console2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %console2.i.i.i, align 4
  %179 = ptrtoint ptr %buf_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %buf_addr.i.i.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 1048576, ptr noundef nonnull @__func__.brcmf_pcie_bus_console_init, ptr noundef nonnull @.str.40, i32 noundef %178, i32 noundef %180, i32 noundef %175) #10
  %181 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 1, ptr %5, align 4
  %182 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i130 = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44, i32 8
  %184 = ptrtoint ptr %driver_data.i.i130 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %driver_data.i.i130, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ringinfo.i) #10
  %186 = call ptr @memset(ptr %ringinfo.i, i32 255, i32 60)
  %187 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tcm.i.i, align 4
  %189 = ptrtoint ptr %ring_info_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ring_info_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %188, i32 %190
  call void @mmiocpy(ptr noundef nonnull %ringinfo.i, ptr noundef %add.ptr.i, i32 noundef 60) #10
  %191 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %192)
  %cmp.i131 = icmp ugt i8 %192, 5
  br i1 %cmp.i131, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %max_submissionrings3.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 10
  %193 = ptrtoint ptr %max_submissionrings3.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %max_submissionrings3.i, align 2
  %195 = call i16 @llvm.bswap.i16(i16 %194) #10
  %max_flowrings4.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 9
  %196 = ptrtoint ptr %max_flowrings4.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %max_flowrings4.i, align 4
  %198 = call i16 @llvm.bswap.i16(i16 %197) #10
  %max_completionrings5.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 11
  %199 = ptrtoint ptr %max_completionrings5.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %max_completionrings5.i, align 4
  %201 = call i16 @llvm.bswap.i16(i16 %200) #10
  br label %if.end.i133

if.else.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %max_flowrings6.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 9
  %202 = ptrtoint ptr %max_flowrings6.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %max_flowrings6.i, align 4
  %204 = call i16 @llvm.bswap.i16(i16 %203) #10
  %sub.i132 = add i16 %204, -2
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.else.i, %if.then.i
  %max_flowrings.0.i = phi i16 [ %198, %if.then.i ], [ %sub.i132, %if.else.i ]
  %max_submissionrings.0.i = phi i16 [ %195, %if.then.i ], [ %204, %if.else.i ]
  %max_completionrings.0.i = phi i16 [ %201, %if.then.i ], [ 3, %if.else.i ]
  %dma_idx_sz.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 16
  %205 = ptrtoint ptr %dma_idx_sz.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %dma_idx_sz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %cmp10.not.i = icmp eq i8 %206, 0
  br i1 %cmp10.not.i, label %if.end.i133.if.then30.i_crit_edge, label %if.then12.i

if.end.i133.if.then30.i_crit_edge:                ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

if.then12.i:                                      ; preds = %if.end.i133
  %conv9.i = zext i8 %206 to i32
  %conv13.i = zext i16 %max_submissionrings.0.i to i32
  %conv14.i = zext i16 %max_completionrings.0.i to i32
  %add.i134 = add nuw nsw i32 %conv14.i, %conv13.i
  %mul.i = shl nuw nsw i32 %conv9.i, 1
  %mul17.i = mul nuw nsw i32 %mul.i, %add.i134
  %207 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pdev.i, align 4
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %208, i32 0, i32 44
  %idxbuf_dmahandle.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 19
  %call.i.i135 = call ptr @dma_alloc_attrs(ptr noundef %dev19.i, i32 noundef %mul17.i, ptr noundef %idxbuf_dmahandle.i, i32 noundef 3264, i32 noundef 0) #10
  %idxbuf.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 17
  %209 = ptrtoint ptr %idxbuf.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call.i.i135, ptr %idxbuf.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i135, null
  br i1 %tobool.not.i, label %if.then22.i, label %if.end25.i

if.then22.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %dma_idx_sz.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %dma_idx_sz.i, align 1
  br label %if.then30.i

if.end25.i:                                       ; preds = %if.then12.i
  %211 = ptrtoint ptr %dma_idx_sz.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %.pr.i = load i8, ptr %dma_idx_sz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp28.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp28.i, label %if.end25.i.if.then30.i_crit_edge, label %if.else35.i

if.end25.i.if.then30.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

if.then30.i:                                      ; preds = %if.end25.i.if.then30.i_crit_edge, %if.then22.i, %if.end.i133.if.then30.i_crit_edge
  %d2h_w_idx_ptr31.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 3
  %212 = ptrtoint ptr %d2h_w_idx_ptr31.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %d2h_w_idx_ptr31.i, align 4
  %214 = call i32 @llvm.bswap.i32(i32 %213) #10
  %d2h_r_idx_ptr32.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 4
  %215 = ptrtoint ptr %d2h_r_idx_ptr32.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %d2h_r_idx_ptr32.i, align 4
  %217 = call i32 @llvm.bswap.i32(i32 %216) #10
  %h2d_w_idx_ptr33.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 1
  %218 = ptrtoint ptr %h2d_w_idx_ptr33.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %h2d_w_idx_ptr33.i, align 4
  %220 = call i32 @llvm.bswap.i32(i32 %219) #10
  %h2d_r_idx_ptr34.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 2
  %221 = ptrtoint ptr %h2d_r_idx_ptr34.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %h2d_r_idx_ptr34.i, align 4
  %223 = call i32 @llvm.bswap.i32(i32 %222) #10
  %write_ptr.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 21
  %224 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @brcmf_pcie_write_tcm16, ptr %write_ptr.i, align 4
  %read_ptr.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 20
  %225 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @brcmf_pcie_read_tcm16, ptr %read_ptr.i, align 4
  br label %if.end100.i

if.else35.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %226 = call ptr @memset(ptr %call.i.i135, i32 0, i32 %mul17.i)
  %idxbuf_sz.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 18
  %227 = ptrtoint ptr %idxbuf_sz.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %mul17.i, ptr %idxbuf_sz.i, align 4
  %228 = ptrtoint ptr %dma_idx_sz.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %dma_idx_sz.i, align 1
  %write_ptr38.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 21
  %230 = ptrtoint ptr %write_ptr38.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @brcmf_pcie_write_idx, ptr %write_ptr38.i, align 4
  %read_ptr39.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 20
  %231 = ptrtoint ptr %read_ptr39.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @brcmf_pcie_read_idx, ptr %read_ptr39.i, align 4
  %232 = ptrtoint ptr %idxbuf_dmahandle.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %idxbuf_dmahandle.i, align 4
  %conv41.i = zext i32 %233 to i64
  %234 = call i32 @llvm.bswap.i32(i32 %233) #10
  %h2d_w_idx_hostaddr.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 5
  %235 = ptrtoint ptr %h2d_w_idx_hostaddr.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %h2d_w_idx_hostaddr.i, align 4
  %high_addr.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 5, i32 1
  %236 = ptrtoint ptr %high_addr.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %high_addr.i, align 4
  %conv46.i = zext i8 %229 to i32
  %mul47.i = mul nuw nsw i32 %conv46.i, %conv13.i
  %237 = zext i32 %mul47.i to i64
  %add53.i = add nuw nsw i64 %conv41.i, %237
  %conv55.i = trunc i64 %add53.i to i32
  %238 = call i32 @llvm.bswap.i32(i32 %conv55.i) #10
  %h2d_r_idx_hostaddr.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 6
  %239 = ptrtoint ptr %h2d_r_idx_hostaddr.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %h2d_r_idx_hostaddr.i, align 4
  %sh.diff.i = lshr i64 %add53.i, 8
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %240 = and i32 %tr.sh.diff.i, 16777216
  %high_addr60.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 6, i32 1
  %241 = ptrtoint ptr %high_addr60.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %high_addr60.i, align 4
  %add64.i = shl nuw nsw i32 %mul47.i, 1
  %add69.i = add nuw nsw i64 %add53.i, %237
  %conv71.i = trunc i64 %add69.i to i32
  %242 = call i32 @llvm.bswap.i32(i32 %conv71.i) #10
  %d2h_w_idx_hostaddr.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 7
  %243 = ptrtoint ptr %d2h_w_idx_hostaddr.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %d2h_w_idx_hostaddr.i, align 4
  %sh.diff300.i = lshr i64 %add69.i, 8
  %tr.sh.diff301.i = trunc i64 %sh.diff300.i to i32
  %244 = and i32 %tr.sh.diff301.i, 50331648
  %high_addr76.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 7, i32 1
  %245 = ptrtoint ptr %high_addr76.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %244, ptr %high_addr76.i, align 4
  %mul79.i = mul nuw nsw i32 %conv46.i, %conv14.i
  %add80.i = add nuw nsw i32 %add64.i, %mul79.i
  %246 = zext i32 %mul79.i to i64
  %add85.i = add nuw nsw i64 %add69.i, %246
  %conv87.i = trunc i64 %add85.i to i32
  %247 = call i32 @llvm.bswap.i32(i32 %conv87.i) #10
  %d2h_r_idx_hostaddr.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 8
  %248 = ptrtoint ptr %d2h_r_idx_hostaddr.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %d2h_r_idx_hostaddr.i, align 4
  %sh.diff302.i = lshr i64 %add85.i, 8
  %tr.sh.diff303.i = trunc i64 %sh.diff302.i to i32
  %249 = and i32 %tr.sh.diff303.i, -16777216
  %high_addr92.i = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, ptr %ringinfo.i, i32 0, i32 8, i32 1
  %250 = ptrtoint ptr %high_addr92.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %high_addr92.i, align 4
  %251 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %tcm.i.i, align 4
  %253 = ptrtoint ptr %ring_info_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %ring_info_addr.i.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %252, i32 %254
  call void @mmiocpy(ptr noundef %add.ptr96.i, ptr noundef nonnull %ringinfo.i, i32 noundef 60) #10
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.else35.i, %if.then30.i
  %.str.42.sink.i = phi ptr [ @.str.42, %if.else35.i ], [ @.str.41, %if.then30.i ]
  %d2h_w_idx_ptr.0.i = phi i32 [ %add64.i, %if.else35.i ], [ %214, %if.then30.i ]
  %d2h_r_idx_ptr.0.i = phi i32 [ %add80.i, %if.else35.i ], [ %217, %if.then30.i ]
  %h2d_w_idx_ptr.0.i = phi i32 [ 0, %if.else35.i ], [ %220, %if.then30.i ]
  %h2d_r_idx_ptr.0.i = phi i32 [ %mul47.i, %if.else35.i ], [ %223, %if.then30.i ]
  %idx_offset.0.i = phi i32 [ %conv46.i, %if.else35.i ], [ 4, %if.then30.i ]
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_init_ringbuffers, ptr noundef nonnull %.str.42.sink.i) #10
  %255 = ptrtoint ptr %ringinfo.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %ringinfo.i, align 4
  %257 = call i32 @llvm.bswap.i32(i32 %256) #10
  %call103.i = call fastcc ptr @brcmf_pcie_alloc_dma_and_ring(ptr noundef %5, i32 noundef 0, i32 noundef %257) #10
  %tobool104.not.i = icmp eq ptr %call103.i, null
  br i1 %tobool104.not.i, label %if.end100.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, label %if.end106.i

if.end100.i.brcmf_pcie_init_ringbuffers.exit_crit_edge: ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_init_ringbuffers.exit

if.end106.i:                                      ; preds = %if.end100.i
  %w_idx_addr.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call103.i, i32 0, i32 2
  %258 = ptrtoint ptr %w_idx_addr.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %h2d_w_idx_ptr.0.i, ptr %w_idx_addr.i, align 4
  %r_idx_addr.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call103.i, i32 0, i32 3
  %259 = ptrtoint ptr %r_idx_addr.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %h2d_r_idx_ptr.0.i, ptr %r_idx_addr.i, align 4
  %id.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call103.i, i32 0, i32 5
  %260 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %id.i, align 4
  %arrayidx.i136 = getelementptr %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 2, i32 0
  %261 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call103.i, ptr %arrayidx.i136, align 4
  %add113.i = add i32 %257, 16
  %call103.1.i = call fastcc ptr @brcmf_pcie_alloc_dma_and_ring(ptr noundef %5, i32 noundef 1, i32 noundef %add113.i) #10
  %tobool104.not.1.i = icmp eq ptr %call103.1.i, null
  br i1 %tobool104.not.1.i, label %if.end106.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, label %if.end106.1.i

if.end106.i.brcmf_pcie_init_ringbuffers.exit_crit_edge: ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_init_ringbuffers.exit

if.end106.1.i:                                    ; preds = %if.end106.i
  %add112.i = add i32 %idx_offset.0.i, %h2d_r_idx_ptr.0.i
  %add110.i = add i32 %idx_offset.0.i, %h2d_w_idx_ptr.0.i
  %w_idx_addr.1.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call103.1.i, i32 0, i32 2
  %262 = ptrtoint ptr %w_idx_addr.1.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %add110.i, ptr %w_idx_addr.1.i, align 4
  %r_idx_addr.1.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call103.1.i, i32 0, i32 3
  %263 = ptrtoint ptr %r_idx_addr.1.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %add112.i, ptr %r_idx_addr.1.i, align 4
  %id.1.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call103.1.i, i32 0, i32 5
  %264 = ptrtoint ptr %id.1.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 1, ptr %id.1.i, align 4
  %arrayidx.1.i = getelementptr %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 2, i32 1
  %265 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call103.1.i, ptr %arrayidx.1.i, align 4
  %add113.1.i = add i32 %257, 32
  %call118.i = call fastcc ptr @brcmf_pcie_alloc_dma_and_ring(ptr noundef %5, i32 noundef 2, i32 noundef %add113.1.i) #10
  %tobool119.not.i = icmp eq ptr %call118.i, null
  br i1 %tobool119.not.i, label %if.end106.1.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, label %if.end121.i

if.end106.1.i.brcmf_pcie_init_ringbuffers.exit_crit_edge: ; preds = %if.end106.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_init_ringbuffers.exit

if.end121.i:                                      ; preds = %if.end106.1.i
  %w_idx_addr122.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call118.i, i32 0, i32 2
  %266 = ptrtoint ptr %w_idx_addr122.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %d2h_w_idx_ptr.0.i, ptr %w_idx_addr122.i, align 4
  %r_idx_addr123.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call118.i, i32 0, i32 3
  %267 = ptrtoint ptr %r_idx_addr123.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %d2h_r_idx_ptr.0.i, ptr %r_idx_addr123.i, align 4
  %id125.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call118.i, i32 0, i32 5
  %268 = ptrtoint ptr %id125.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 2, ptr %id125.i, align 4
  %arrayidx128.i = getelementptr %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 2, i32 2
  %269 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call118.i, ptr %arrayidx128.i, align 4
  %add133.i = add i32 %257, 48
  %call118.1.i = call fastcc ptr @brcmf_pcie_alloc_dma_and_ring(ptr noundef %5, i32 noundef 3, i32 noundef %add133.i) #10
  %tobool119.not.1.i = icmp eq ptr %call118.1.i, null
  br i1 %tobool119.not.1.i, label %if.end121.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, label %if.end121.1.i

if.end121.i.brcmf_pcie_init_ringbuffers.exit_crit_edge: ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_init_ringbuffers.exit

if.end121.1.i:                                    ; preds = %if.end121.i
  %add132.i = add i32 %idx_offset.0.i, %d2h_r_idx_ptr.0.i
  %add130.i = add i32 %idx_offset.0.i, %d2h_w_idx_ptr.0.i
  %w_idx_addr122.1.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call118.1.i, i32 0, i32 2
  %270 = ptrtoint ptr %w_idx_addr122.1.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %add130.i, ptr %w_idx_addr122.1.i, align 4
  %r_idx_addr123.1.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call118.1.i, i32 0, i32 3
  %271 = ptrtoint ptr %r_idx_addr123.1.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %add132.i, ptr %r_idx_addr123.1.i, align 4
  %id125.1.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call118.1.i, i32 0, i32 5
  %272 = ptrtoint ptr %id125.1.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 3, ptr %id125.1.i, align 4
  %arrayidx128.1.i = getelementptr %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 2, i32 3
  %273 = ptrtoint ptr %arrayidx128.1.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call118.1.i, ptr %arrayidx128.1.i, align 4
  %add133.1.i = add i32 %257, 64
  %call118.2.i = call fastcc ptr @brcmf_pcie_alloc_dma_and_ring(ptr noundef %5, i32 noundef 4, i32 noundef %add133.1.i) #10
  %tobool119.not.2.i = icmp eq ptr %call118.2.i, null
  br i1 %tobool119.not.2.i, label %if.end121.1.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, label %if.end121.2.i

if.end121.1.i.brcmf_pcie_init_ringbuffers.exit_crit_edge: ; preds = %if.end121.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_init_ringbuffers.exit

if.end121.2.i:                                    ; preds = %if.end121.1.i
  %add132.1.i = add i32 %add132.i, %idx_offset.0.i
  %add130.1.i = add i32 %add130.i, %idx_offset.0.i
  %w_idx_addr122.2.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call118.2.i, i32 0, i32 2
  %274 = ptrtoint ptr %w_idx_addr122.2.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %add130.1.i, ptr %w_idx_addr122.2.i, align 4
  %r_idx_addr123.2.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call118.2.i, i32 0, i32 3
  %275 = ptrtoint ptr %r_idx_addr123.2.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %add132.1.i, ptr %r_idx_addr123.2.i, align 4
  %id125.2.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call118.2.i, i32 0, i32 5
  %276 = ptrtoint ptr %id125.2.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 4, ptr %id125.2.i, align 4
  %arrayidx128.2.i = getelementptr %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 2, i32 4
  %277 = ptrtoint ptr %arrayidx128.2.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %call118.2.i, ptr %arrayidx128.2.i, align 4
  %max_flowrings138.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 5
  %278 = ptrtoint ptr %max_flowrings138.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %max_flowrings.0.i, ptr %max_flowrings138.i, align 2
  %max_submissionrings140.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 6
  %279 = ptrtoint ptr %max_submissionrings140.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %max_submissionrings.0.i, ptr %max_submissionrings140.i, align 4
  %max_completionrings142.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 7
  %280 = ptrtoint ptr %max_completionrings142.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %max_completionrings.0.i, ptr %max_completionrings142.i, align 2
  %conv143.i = zext i16 %max_flowrings.0.i to i32
  %281 = mul nuw nsw i32 %conv143.i, 116
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %281, i32 noundef 3520) #14
  %tobool145.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool145.not.i, label %if.end121.2.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, label %do.body148.i

if.end121.2.i.brcmf_pcie_init_ringbuffers.exit_crit_edge: ; preds = %if.end121.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_init_ringbuffers.exit

do.body148.i:                                     ; preds = %if.end121.2.i
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_init_ringbuffers, ptr noundef nonnull @.str.43, i32 noundef %conv143.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %max_flowrings.0.i)
  %cmp154324.not.i = icmp eq i16 %max_flowrings.0.i, 0
  br i1 %cmp154324.not.i, label %do.body148.i.if.end18_crit_edge, label %do.body148.i.for.body156.i_crit_edge

do.body148.i.for.body156.i_crit_edge:             ; preds = %do.body148.i
  br label %for.body156.i

do.body148.i.if.end18_crit_edge:                  ; preds = %do.body148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.body156.i:                                    ; preds = %for.body156.i.for.body156.i_crit_edge, %do.body148.i.for.body156.i_crit_edge
  %i.2327.i = phi i32 [ %inc169.i, %for.body156.i.for.body156.i_crit_edge ], [ 0, %do.body148.i.for.body156.i_crit_edge ]
  %h2d_r_idx_ptr.2326.pn.i = phi i32 [ %h2d_r_idx_ptr.2326.i, %for.body156.i.for.body156.i_crit_edge ], [ %add112.i, %do.body148.i.for.body156.i_crit_edge ]
  %h2d_w_idx_ptr.2325.pn.i = phi i32 [ %h2d_w_idx_ptr.2325.i, %for.body156.i.for.body156.i_crit_edge ], [ %add110.i, %do.body148.i.for.body156.i_crit_edge ]
  %h2d_w_idx_ptr.2325.i = add i32 %h2d_w_idx_ptr.2325.pn.i, %idx_offset.0.i
  %h2d_r_idx_ptr.2326.i = add i32 %h2d_r_idx_ptr.2326.pn.i, %idx_offset.0.i
  %arrayidx157.i = getelementptr %struct.brcmf_pcie_ringbuf, ptr %call8.i.i.i, i32 %i.2327.i
  %devinfo158.i = getelementptr %struct.brcmf_pcie_ringbuf, ptr %call8.i.i.i, i32 %i.2327.i, i32 4
  %282 = ptrtoint ptr %devinfo158.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %5, ptr %devinfo158.i, align 4
  %283 = trunc i32 %i.2327.i to i8
  %conv160.i = add i8 %283, 2
  %id161.i = getelementptr %struct.brcmf_pcie_ringbuf, ptr %call8.i.i.i, i32 %i.2327.i, i32 5
  %284 = ptrtoint ptr %id161.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %conv160.i, ptr %id161.i, align 4
  call void @brcmf_commonring_register_cb(ptr noundef %arrayidx157.i, ptr noundef nonnull @brcmf_pcie_ring_mb_ring_bell, ptr noundef nonnull @brcmf_pcie_ring_mb_update_rptr, ptr noundef nonnull @brcmf_pcie_ring_mb_update_wptr, ptr noundef nonnull @brcmf_pcie_ring_mb_write_rptr, ptr noundef nonnull @brcmf_pcie_ring_mb_write_wptr, ptr noundef %arrayidx157.i) #10
  %w_idx_addr162.i = getelementptr %struct.brcmf_pcie_ringbuf, ptr %call8.i.i.i, i32 %i.2327.i, i32 2
  %285 = ptrtoint ptr %w_idx_addr162.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %h2d_w_idx_ptr.2325.i, ptr %w_idx_addr162.i, align 4
  %r_idx_addr163.i = getelementptr %struct.brcmf_pcie_ringbuf, ptr %call8.i.i.i, i32 %i.2327.i, i32 3
  %286 = ptrtoint ptr %r_idx_addr163.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %h2d_r_idx_ptr.2326.i, ptr %r_idx_addr163.i, align 4
  %inc169.i = add nuw nsw i32 %i.2327.i, 1
  %exitcond.not.i = icmp eq i32 %inc169.i, %conv143.i
  br i1 %exitcond.not.i, label %for.body156.i.if.end18_crit_edge, label %for.body156.i.for.body156.i_crit_edge

for.body156.i.for.body156.i_crit_edge:            ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body156.i

for.body156.i.if.end18_crit_edge:                 ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

brcmf_pcie_init_ringbuffers.exit:                 ; preds = %if.end121.2.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, %if.end121.1.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, %if.end121.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, %if.end106.1.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, %if.end106.i.brcmf_pcie_init_ringbuffers.exit_crit_edge, %if.end100.i.brcmf_pcie_init_ringbuffers.exit_crit_edge
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %185, ptr noundef nonnull @__func__.brcmf_pcie_init_ringbuffers, ptr noundef nonnull @.str.44) #10
  call fastcc void @brcmf_pcie_release_ringbuffers(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ringinfo.i) #10
  br label %fail

if.end18:                                         ; preds = %for.body156.i.if.end18_crit_edge, %do.body148.i.if.end18_crit_edge
  %flowrings.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 3
  %287 = ptrtoint ptr %flowrings.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %call8.i.i.i, ptr %flowrings.i, align 4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ringinfo.i) #10
  %call19 = call fastcc i32 @brcmf_pcie_init_scratchbuffers(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.fail_crit_edge

if.end18.fail_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end22:                                         ; preds = %if.end18
  call fastcc void @brcmf_pcie_select_core(ptr noundef %5, i16 noundef zeroext 2108)
  %call23 = call fastcc i32 @brcmf_pcie_request_irq(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.cond.preheader, label %if.end22.fail_crit_edge

if.end22.fail_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

for.cond.preheader:                               ; preds = %if.end22
  %msgbuf = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 12
  %288 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx.i136, align 4
  %290 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %msgbuf, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %289, ptr %291, align 4
  %293 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx.1.i, align 4
  %295 = load ptr, ptr %msgbuf, align 4
  %arrayidx29.1 = getelementptr [5 x ptr], ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %294, ptr %arrayidx29.1, align 4
  %297 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx128.i, align 4
  %299 = load ptr, ptr %msgbuf, align 4
  %arrayidx29.2 = getelementptr [5 x ptr], ptr %299, i32 0, i32 2
  %300 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %298, ptr %arrayidx29.2, align 4
  %301 = ptrtoint ptr %arrayidx128.1.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %arrayidx128.1.i, align 4
  %303 = load ptr, ptr %msgbuf, align 4
  %arrayidx29.3 = getelementptr [5 x ptr], ptr %303, i32 0, i32 3
  %304 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %302, ptr %arrayidx29.3, align 4
  %305 = ptrtoint ptr %arrayidx128.2.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %arrayidx128.2.i, align 4
  %307 = load ptr, ptr %msgbuf, align 4
  %arrayidx29.4 = getelementptr [5 x ptr], ptr %307, i32 0, i32 4
  %308 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %306, ptr %arrayidx29.4, align 4
  %309 = ptrtoint ptr %max_flowrings138.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %max_flowrings138.i, align 2
  %conv = zext i16 %310 to i32
  %311 = shl nuw nsw i32 %conv, 2
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %311, i32 noundef 3520) #14
  %tobool32.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool32.not, label %for.cond.preheader.fail_crit_edge, label %for.cond35.preheader

for.cond.preheader.fail_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

for.cond35.preheader:                             ; preds = %for.cond.preheader
  %312 = ptrtoint ptr %max_flowrings138.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %max_flowrings138.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %313)
  %cmp39152.not = icmp eq i16 %313, 0
  br i1 %cmp39152.not, label %for.cond35.preheader.for.end49_crit_edge, label %for.cond35.preheader.for.body41_crit_edge

for.cond35.preheader.for.body41_crit_edge:        ; preds = %for.cond35.preheader
  br label %for.body41

for.cond35.preheader.for.end49_crit_edge:         ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.cond35.preheader.for.body41_crit_edge
  %i.1153 = phi i32 [ %inc48, %for.body41.for.body41_crit_edge ], [ 0, %for.cond35.preheader.for.body41_crit_edge ]
  %314 = ptrtoint ptr %flowrings.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %flowrings.i, align 4
  %arrayidx44 = getelementptr %struct.brcmf_pcie_ringbuf, ptr %315, i32 %i.1153
  %arrayidx46 = getelementptr ptr, ptr %call8.i.i, i32 %i.1153
  %316 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %arrayidx44, ptr %arrayidx46, align 4
  %inc48 = add nuw nsw i32 %i.1153, 1
  %317 = ptrtoint ptr %max_flowrings138.i to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %max_flowrings138.i, align 2
  %conv38 = zext i16 %318 to i32
  %cmp39 = icmp ult i32 %inc48, %conv38
  br i1 %cmp39, label %for.body41.for.body41_crit_edge, label %for.body41.for.end49_crit_edge

for.body41.for.end49_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41

for.end49:                                        ; preds = %for.body41.for.end49_crit_edge, %for.cond35.preheader.for.end49_crit_edge
  %319 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %msgbuf, align 4
  %flowrings51 = getelementptr inbounds %struct.brcmf_bus_msgbuf, ptr %320, i32 0, i32 1
  %321 = ptrtoint ptr %flowrings51 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %call8.i.i, ptr %flowrings51, align 4
  %322 = ptrtoint ptr %rx_dataoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %rx_dataoffset.i.i, align 4
  %324 = load ptr, ptr %msgbuf, align 4
  %rx_dataoffset54 = getelementptr inbounds %struct.brcmf_bus_msgbuf, ptr %324, i32 0, i32 2
  %325 = ptrtoint ptr %rx_dataoffset54 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %323, ptr %rx_dataoffset54, align 4
  %326 = ptrtoint ptr %max_rxbufpost.i.i to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %max_rxbufpost.i.i, align 4
  %conv56 = zext i16 %327 to i32
  %328 = load ptr, ptr %msgbuf, align 4
  %max_rxbufpost58 = getelementptr inbounds %struct.brcmf_bus_msgbuf, ptr %328, i32 0, i32 3
  %329 = ptrtoint ptr %max_rxbufpost58 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %conv56, ptr %max_rxbufpost58, align 4
  %330 = ptrtoint ptr %max_flowrings138.i to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %max_flowrings138.i, align 2
  %332 = load ptr, ptr %msgbuf, align 4
  %max_flowrings62 = getelementptr inbounds %struct.brcmf_bus_msgbuf, ptr %332, i32 0, i32 4
  %333 = ptrtoint ptr %max_flowrings62 to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 %331, ptr %max_flowrings62, align 4
  %mbdata_resp_wait = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 12
  call void @__init_waitqueue_head(ptr noundef %mbdata_resp_wait, ptr noundef nonnull @.str.26, ptr noundef nonnull @brcmf_pcie_setup.__key) #10
  %334 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i143 = getelementptr i8, ptr %335, i32 76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i143, i32 261888) #10, !srcloc !237
  call fastcc void @brcmf_pcie_hostready(ptr noundef %5)
  %336 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %pdev.i, align 4
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %337, i32 0, i32 44
  %call67 = call i32 @brcmf_attach(ptr noundef %dev66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %for.end49.fail_crit_edge

for.end49.fail_crit_edge:                         ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end70:                                         ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @brcmf_pcie_bus_console_read(ptr noundef %5, i1 noundef zeroext false)
  br label %cleanup

fail:                                             ; preds = %for.end49.fail_crit_edge, %for.cond.preheader.fail_crit_edge, %if.end22.fail_crit_edge, %if.end18.fail_crit_edge, %brcmf_pcie_init_ringbuffers.exit, %do.body13.i.i, %do.body60.i, %do.body46.i, %brcmf_pcie_exit_download_state.exit.i.fail_crit_edge, %do.body, %entry.fail_crit_edge
  call void @device_release_driver(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_chip_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_release_module_param(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_buscore_read32(ptr nocapture noundef readonly %ctx, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %and.i = and i32 %addr, 4095
  %and1.i = and i32 %addr, -4096
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 128, i32 noundef %and1.i) #10
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %and.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !238
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_pcie_buscore_write32(ptr nocapture noundef readonly %ctx, i32 noundef %addr, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %and.i = and i32 %addr, 4095
  %and1.i = and i32 %addr, -4096
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 128, i32 noundef %and1.i) #10
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %value) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #10, !srcloc !237
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_buscoreprep(ptr nocapture noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2.i = tail call i32 @pci_enable_device(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %3, ptr noundef nonnull @__func__.brcmf_pcie_get_resource, ptr noundef nonnull @.str.4, i32 noundef %call2.i) #10
  br label %brcmf_pcie_get_resource.exit

if.end.i:                                         ; preds = %entry
  tail call void @pci_set_master(ptr noundef %1) #10
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource.i, align 8
  %arrayidx4.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 2, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp14.i = icmp eq i32 %cond.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15.i = icmp eq i32 %7, 0
  %or.cond.i = select i1 %cmp14.i, i1 true, i1 %cmp15.i
  br i1 %or.cond.i, label %do.body17.i, label %if.end20.i

do.body17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i32 %7 to i64
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %3, ptr noundef nonnull @__func__.brcmf_pcie_get_resource, ptr noundef nonnull @.str.5, i32 noundef %cond.i, i64 noundef %conv.i) #10
  br label %brcmf_pcie_get_resource.exit

if.end20.i:                                       ; preds = %if.end.i
  %call21.i = tail call ptr @ioremap(i32 noundef %5, i32 noundef 32768) #10
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 5
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21.i, ptr %regs.i, align 4
  %call22.i = tail call ptr @ioremap(i32 noundef %7, i32 noundef %cond.i) #10
  %tcm.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 6
  %11 = ptrtoint ptr %tcm.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22.i, ptr %tcm.i, align 4
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %tobool24.not.i = icmp eq ptr %13, null
  %tobool27.not.i = icmp eq ptr %call22.i, null
  %or.cond78.i = select i1 %tobool24.not.i, i1 true, i1 %tobool27.not.i
  br i1 %or.cond78.i, label %do.body29.i, label %do.body35.i

do.body29.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %3, ptr noundef nonnull @__func__.brcmf_pcie_get_resource, ptr noundef nonnull @.str.6, ptr noundef %13, ptr noundef %call22.i) #10
  br label %brcmf_pcie_get_resource.exit

do.body35.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv37.i = zext i32 %5 to i64
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_get_resource, ptr noundef nonnull @.str.7, ptr noundef nonnull %13, i64 noundef %conv37.i) #10
  %14 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcm.i, align 4
  %conv42.i = zext i32 %7 to i64
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_get_resource, ptr noundef nonnull @.str.8, ptr noundef %15, i64 noundef %conv42.i, i32 noundef %cond.i) #10
  br label %brcmf_pcie_get_resource.exit

brcmf_pcie_get_resource.exit:                     ; preds = %do.body35.i, %do.body29.i, %do.body17.i, %do.body.i
  %retval.0.i = phi i32 [ %call2.i, %do.body.i ], [ -22, %do.body17.i ], [ 0, %do.body35.i ], [ -22, %do.body29.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_buscore_reset(ptr nocapture noundef %ctx, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %chip, ptr %ci, align 4
  tail call fastcc void @brcmf_pcie_reset_device(ptr noundef %ctx)
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 5
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 72
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %3) #10, !srcloc !237
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_pcie_buscore_activate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %chip, i32 noundef %rstvec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tcm.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcm.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %rstvec) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #10, !srcloc !237
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_pcie_reset_device(ptr nocapture noundef readonly %devinfo) unnamed_addr #0 align 64 {
entry:
  %lsc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsc) #10
  %0 = ptrtoint ptr %lsc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lsc, align 4, !annotation !242
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 9
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ci, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @brcmf_pcie_select_core(ptr noundef %devinfo, i16 noundef zeroext 2108)
  %pdev = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef 188, ptr noundef nonnull %lsc) #10
  %5 = ptrtoint ptr %lsc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lsc, align 4
  %and = and i32 %6, -4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %call2 = call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef 188, i32 noundef %and) #10
  call fastcc void @brcmf_pcie_select_core(ptr noundef %devinfo, i16 noundef zeroext 2048)
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 5
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #10, !srcloc !237
  call void @msleep(i32 noundef 100) #10
  call fastcc void @brcmf_pcie_select_core(ptr noundef %devinfo, i16 noundef zeroext 2108)
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %13 = ptrtoint ptr %lsc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lsc, align 4
  %call4 = call i32 @pci_write_config_dword(ptr noundef %12, i32 noundef 188, i32 noundef %14) #10
  %15 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ci, align 4
  %call6 = call ptr @brcmf_chip_get_core(ptr noundef %16, i16 noundef zeroext 2108) #10
  %rev = getelementptr inbounds %struct.brcmf_core, ptr %call6, i32 0, i32 1
  %17 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %18)
  %cmp = icmp ult i16 %18, 14
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x i16], ptr @__const.brcmf_pcie_reset_device.cfg_offset, i32 0, i32 %i.042
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 2
  %conv11 = zext i16 %20 to i32
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %22, i32 288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  call void @arm_heavy_mb() #10
  %23 = call i32 @llvm.bswap.i32(i32 %conv11) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %23) #10, !srcloc !237
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %25, i32 292
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #10, !srcloc !238
  %27 = call i32 @llvm.bswap.i32(i32 %26) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_reset_device, ptr noundef nonnull @.str.9, i32 noundef %conv11, i32 noundef %27) #10
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %29, i32 292
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %26) #10, !srcloc !237
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsc) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_pcie_select_core(ptr nocapture noundef readonly %devinfo, i16 noundef zeroext %coreid) unnamed_addr #0 align 64 {
entry:
  %bar0_win = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar0_win) #10
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 9
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci, align 4
  %call2 = tail call ptr @brcmf_chip_get_core(ptr noundef %5, i16 noundef zeroext %coreid) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.brcmf_core, ptr %call2, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %8 = ptrtoint ptr %bar0_win to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bar0_win, align 4
  %call3 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 128, i32 noundef %7) #10
  %call4 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 128, ptr noundef nonnull %bar0_win) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then5:                                         ; preds = %if.then
  %9 = ptrtoint ptr %bar0_win to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bar0_win, align 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp7.not = icmp eq i32 %10, %12
  br i1 %cmp7.not, label %if.then5.if.end12_crit_edge, label %if.then8

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %bar0_win to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %bar0_win, align 4
  %call10 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 128, i32 noundef %12) #10
  br label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %coreid to i32
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %3, ptr noundef nonnull @__func__.brcmf_pcie_select_core, ptr noundef nonnull @.str.10, i32 noundef %conv) #10
  br label %if.end12

if.end12:                                         ; preds = %do.body, %if.then8, %if.then5.if.end12_crit_edge, %if.then.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar0_win) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_get_core(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @brcmf_pcie_down(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_pcie_tx(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_pcie_tx_ctlpkt(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %msg, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_pcie_rx_ctlpkt(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %msg, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_pcie_wowl_config(ptr nocapture noundef readonly %dev, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_pciedev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo1, align 4
  %conv = zext i1 %enabled to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_wowl_config, ptr noundef nonnull @.str.11, i32 noundef %conv) #10
  %wowl_enabled = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %wowl_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %wowl_enabled, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_pcie_get_ramsize(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_pciedev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo1, align 4
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci, align 4
  %ramsize = getelementptr inbounds %struct.brcmf_chip, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %ramsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ramsize, align 4
  %srsize = getelementptr inbounds %struct.brcmf_chip, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %srsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %srsize, align 4
  %sub = sub i32 %9, %11
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_get_memdump(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_pciedev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo1, align 4
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci, align 4
  %rambase = getelementptr inbounds %struct.brcmf_chip, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %rambase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rambase, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_get_memdump, ptr noundef nonnull @.str.12, i32 noundef %9, i32 noundef %len) #10
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci, align 4
  %rambase3 = getelementptr inbounds %struct.brcmf_chip, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %rambase3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rambase3, align 4
  %tcm.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %13
  %16 = ptrtoint ptr %add.ptr.i to i32
  %17 = ptrtoint ptr %data to i32
  %18 = or i32 %17, %len
  %19 = or i32 %18, %16
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.else25.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %22 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %if.else.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool15.not66.i = icmp eq i32 %len, 0
  br i1 %tobool15.not66.i, label %while.cond.preheader.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_copy_dev_tomem.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dst8.069.i = phi ptr [ %incdec.ptr16.i, %while.body.i.while.body.i_crit_edge ], [ %data, %while.cond.preheader.i.while.body.i_crit_edge ]
  %address.068.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %len.addr.067.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %len, %while.cond.preheader.i.while.body.i_crit_edge ]
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %address.068.i) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  %25 = ptrtoint ptr %dst8.069.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %dst8.069.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %address.068.i, i32 1
  %incdec.ptr16.i = getelementptr i8, ptr %dst8.069.i, i32 1
  %dec.i = add i32 %len.addr.067.i, -1
  %tobool15.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool15.not.i, label %while.body.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_copy_dev_tomem.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %tobool18.not70.i = icmp ult i32 %len, 2
  br i1 %tobool18.not70.i, label %if.else.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, label %while.body19.preheader.i

if.else.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_copy_dev_tomem.exit

while.body19.preheader.i:                         ; preds = %if.else.i
  %div60.i = lshr i32 %len, 1
  br label %while.body19.i

while.body19.i:                                   ; preds = %while.body19.i.while.body19.i_crit_edge, %while.body19.preheader.i
  %dst16.073.i = phi ptr [ %incdec.ptr22.i, %while.body19.i.while.body19.i_crit_edge ], [ %data, %while.body19.preheader.i ]
  %address.172.i = phi ptr [ %add.ptr21.i, %while.body19.i.while.body19.i_crit_edge ], [ %add.ptr.i, %while.body19.preheader.i ]
  %len.addr.171.i = phi i32 [ %dec23.i, %while.body19.i.while.body19.i_crit_edge ], [ %div60.i, %while.body19.preheader.i ]
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %address.172.i) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %27 = ptrtoint ptr %dst16.073.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %dst16.073.i, align 2
  %add.ptr21.i = getelementptr i8, ptr %address.172.i, i32 2
  %incdec.ptr22.i = getelementptr i16, ptr %dst16.073.i, i32 1
  %dec23.i = add nsw i32 %len.addr.171.i, -1
  %tobool18.not.i = icmp eq i32 %dec23.i, 0
  br i1 %tobool18.not.i, label %while.body19.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, label %while.body19.i.while.body19.i_crit_edge

while.body19.i.while.body19.i_crit_edge:          ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body19.i

while.body19.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge: ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_copy_dev_tomem.exit

if.else25.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %tobool28.not74.i = icmp ult i32 %len, 4
  br i1 %tobool28.not74.i, label %if.else25.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, label %while.body29.preheader.i

if.else25.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge: ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_copy_dev_tomem.exit

while.body29.preheader.i:                         ; preds = %if.else25.i
  %div2659.i = lshr i32 %len, 2
  br label %while.body29.i

while.body29.i:                                   ; preds = %while.body29.i.while.body29.i_crit_edge, %while.body29.preheader.i
  %dst32.077.i = phi ptr [ %incdec.ptr32.i, %while.body29.i.while.body29.i_crit_edge ], [ %data, %while.body29.preheader.i ]
  %address.276.i = phi ptr [ %add.ptr31.i, %while.body29.i.while.body29.i_crit_edge ], [ %add.ptr.i, %while.body29.preheader.i ]
  %len.addr.275.i = phi i32 [ %dec33.i, %while.body29.i.while.body29.i_crit_edge ], [ %div2659.i, %while.body29.preheader.i ]
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %address.276.i) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %29 = ptrtoint ptr %dst32.077.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dst32.077.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %address.276.i, i32 4
  %incdec.ptr32.i = getelementptr i32, ptr %dst32.077.i, i32 1
  %dec33.i = add nsw i32 %len.addr.275.i, -1
  %tobool28.not.i = icmp eq i32 %dec33.i, 0
  br i1 %tobool28.not.i, label %while.body29.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, label %while.body29.i.while.body29.i_crit_edge

while.body29.i.while.body29.i_crit_edge:          ; preds = %while.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body29.i

while.body29.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge: ; preds = %while.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_copy_dev_tomem.exit

brcmf_pcie_copy_dev_tomem.exit:                   ; preds = %while.body29.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, %if.else25.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, %while.body19.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, %if.else.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, %while.body.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge, %while.cond.preheader.i.brcmf_pcie_copy_dev_tomem.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_get_fwname(ptr nocapture noundef readonly %dev, ptr noundef %ext, ptr noundef %fw_name) #0 align 64 {
entry:
  %fwnames = alloca [1 x %struct.brcmf_fw_name], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fwnames) #10
  %2 = getelementptr inbounds %struct.brcmf_fw_name, ptr %fwnames, i32 0, i32 1
  %3 = ptrtoint ptr %fwnames to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ext, ptr %fwnames, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fw_name, ptr %2, align 4
  %chip = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip, align 4
  %chiprev = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chiprev, align 4
  %call1 = call ptr @brcmf_fw_alloc_request(i32 noundef %6, i32 noundef %8, ptr noundef nonnull @brcmf_pcie_fwnames, i32 noundef 19, ptr noundef nonnull %fwnames, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fwnames) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_reset(ptr noundef %dev) #0 align 64 {
entry:
  %fwnames.i = alloca [2 x %struct.brcmf_fw_name], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_pciedev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo1, align 4
  %regs.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !237
  tail call fastcc void @brcmf_pcie_bus_console_read(ptr noundef %5, i1 noundef zeroext true)
  tail call void @brcmf_detach(ptr noundef %dev) #10
  tail call fastcc void @brcmf_pcie_release_irq(ptr noundef %5)
  %scratch.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 13
  %8 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scratch.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %scratch_dmahandle.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 14
  %12 = ptrtoint ptr %scratch_dmahandle.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scratch_dmahandle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 8, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %ringupd.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 15
  %14 = ptrtoint ptr %ringupd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ringupd.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %if.end.i.brcmf_pcie_release_scratchbuffers.exit_crit_edge, label %if.then6.i

if.end.i.brcmf_pcie_release_scratchbuffers.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_release_scratchbuffers.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev7.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %pdev7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev7.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %ringupd_dmahandle.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 16
  %18 = ptrtoint ptr %ringupd_dmahandle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ringupd_dmahandle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 1024, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #10
  br label %brcmf_pcie_release_scratchbuffers.exit

brcmf_pcie_release_scratchbuffers.exit:           ; preds = %if.then6.i, %if.end.i.brcmf_pcie_release_scratchbuffers.exit_crit_edge
  tail call fastcc void @brcmf_pcie_release_ringbuffers(ptr noundef %5)
  tail call fastcc void @brcmf_pcie_reset_device(ptr noundef %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fwnames.i) #10
  %20 = getelementptr inbounds %struct.brcmf_fw_name, ptr %fwnames.i, i32 0, i32 1
  %21 = getelementptr inbounds [2 x %struct.brcmf_fw_name], ptr %fwnames.i, i32 0, i32 1
  %22 = getelementptr inbounds [2 x %struct.brcmf_fw_name], ptr %fwnames.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %fwnames.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.23, ptr %fwnames.i, align 4
  %fw_name.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %fw_name.i, ptr %20, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.24, ptr %21, align 4
  %nvram_name.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %nvram_name.i, ptr %22, align 4
  %ci.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 9
  %27 = ptrtoint ptr %ci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ci.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %chiprev.i = getelementptr inbounds %struct.brcmf_chip, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chiprev.i, align 4
  %call.i = call ptr @brcmf_fw_alloc_request(i32 noundef %30, i32 noundef %32, ptr noundef nonnull @brcmf_pcie_fwnames, i32 noundef 19, ptr noundef nonnull %fwnames.i, i32 noundef 2) #10
  %tobool.not.i27 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i27, label %do.end, label %if.end

do.end:                                           ; preds = %brcmf_pcie_release_scratchbuffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fwnames.i) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #15
  br label %cleanup

if.end:                                           ; preds = %brcmf_pcie_release_scratchbuffers.exit
  %type.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %call.i, i32 1, i32 2
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %type.i, align 4
  %type8.i = getelementptr %struct.brcmf_fw_request, ptr %call.i, i32 3
  %34 = ptrtoint ptr %type8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type8.i, align 4
  %flags.i = getelementptr %struct.brcmf_fw_request, ptr %call.i, i32 3, i32 2
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %flags.i, align 4
  %settings.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 22
  %36 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %settings.i, align 4
  %board_type.i = getelementptr inbounds %struct.brcmf_mp_device, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %board_type.i, align 4
  %board_type11.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %board_type11.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %board_type11.i, align 4
  %pdev.i28 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 2
  %41 = ptrtoint ptr %pdev.i28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i28, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %domain_nr.i.i, align 8
  %47 = trunc i32 %46 to i16
  %conv.i = add i16 %47, 1
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i, ptr %call.i, align 4
  %49 = load ptr, ptr %pdev.i28, align 4
  %bus14.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %bus14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus14.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %number.i, align 4
  %conv15.i = zext i8 %53 to i16
  %bus_nr.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %bus_nr.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv15.i, ptr %bus_nr.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fwnames.i) #10
  %call3 = call i32 @brcmf_fw_get_firmwares(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @brcmf_pcie_setup) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #15
  call void @kfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call3, %do.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_fw_alloc_request(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_pcie_bus_console_read(ptr noundef %devinfo, i1 noundef zeroext %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  br i1 %error, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %4 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %console3 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 12
  %5 = ptrtoint ptr %console3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %console3, align 4
  %add = add i32 %6, 16
  %tcm.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 6
  %7 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !238
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %read_idx = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 12, i32 3
  %11 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not98 = icmp eq i32 %10, %12
  br i1 %cmp.not98, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %buf_addr = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 12, i32 1
  %bufsize = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 12, i32 2
  %log_str = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 12, i32 4
  %log_idx = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 12, i32 5
  %arrayidx32 = getelementptr %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 12, i32 4, i32 254
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %13 = phi i32 [ %12, %while.body.lr.ph ], [ %34, %while.cond.backedge.while.body_crit_edge ]
  %14 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_addr, align 4
  %add6 = add i32 %15, %13
  %16 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %17, i32 %add6
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i94) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  %19 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read_idx, align 4
  %inc = add i32 %20, 1
  %21 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %22)
  %cmp10 = icmp eq i32 %inc, %22
  %spec.store.select = select i1 %cmp10, i32 0, i32 %inc
  %23 = ptrtoint ptr %read_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.store.select, ptr %read_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %18)
  %cmp14 = icmp eq i8 %18, 13
  br i1 %cmp14, label %while.body.while.cond.backedge_crit_edge, label %if.end17

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end17:                                         ; preds = %while.body
  %24 = ptrtoint ptr %log_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %log_idx, align 4
  %idxprom = zext i8 %25 to i32
  %arrayidx = getelementptr %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 12, i32 4, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %18, ptr %arrayidx, align 1
  %inc19 = add i8 %25, 1
  store i8 %inc19, ptr %log_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cmp21.not = icmp ne i8 %18, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %inc19)
  %cmp26 = icmp eq i8 %inc19, -2
  %or.cond = select i1 %cmp21.not, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.end35.thread, label %if.end35

if.end35.thread:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 10, ptr %arrayidx32, align 1
  %inc34 = add nuw nsw i8 %25, 2
  %28 = ptrtoint ptr %log_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %inc34, ptr %log_idx, align 4
  br label %if.then39

if.end35:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cmp37 = icmp eq i8 %18, 10
  br i1 %cmp37, label %if.end35.if.then39_crit_edge, label %if.end35.while.cond.backedge_crit_edge

if.end35.while.cond.backedge_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end35.if.then39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

if.then39:                                        ; preds = %if.end35.if.then39_crit_edge, %if.end35.thread
  %29 = ptrtoint ptr %log_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log_idx, align 4
  %idxprom42 = zext i8 %30 to i32
  %arrayidx43 = getelementptr %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 12, i32 4, i32 %idxprom42
  %31 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx43, align 1
  br i1 %error, label %if.then45, label %do.body

if.then45:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %3, ptr noundef nonnull @__func__.brcmf_pcie_bus_console_read, ptr noundef nonnull @.str.20, ptr noundef %log_str) #10
  br label %if.end57

do.body:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmf_pcie_bus_console_read.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmf_pcie_bus_console_read, %if.end57)) #10
          to label %if.then53 [label %if.end57], !srcloc !245

if.then53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcmf_pcie_bus_console_read.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.21, ptr noundef %log_str) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %do.body, %if.then45
  %32 = ptrtoint ptr %log_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %log_idx, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end57, %if.end35.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %33 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %read_idx, align 4
  %cmp.not = icmp eq i32 %10, %34
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_pcie_release_irq(ptr noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %irq_allocated = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 14
  %4 = ptrtoint ptr %irq_allocated to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_allocated, align 1, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 5
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !237
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %devinfo) #10
  tail call void @pci_disable_msi(ptr noundef %1) #10
  tail call void @msleep(i32 noundef 50) #10
  %in_irq = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 1
  %10 = ptrtoint ptr %in_irq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_irq, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not26.not = icmp eq i8 %11, 0
  br i1 %tobool3.not26.not, label %if.end.if.end7_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %count.027 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  tail call void @msleep(i32 noundef 50) #10
  %inc = add nuw nsw i32 %count.027, 1
  %12 = ptrtoint ptr %in_irq to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %in_irq, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp ne i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.027)
  %cmp = icmp ult i32 %count.027, 19
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %phi.cmp = icmp eq i8 %13, 0
  br i1 %phi.cmp, label %while.end.if.end7_crit_edge, label %do.body

while.end.if.end7_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %3, ptr noundef nonnull @__func__.brcmf_pcie_release_irq, ptr noundef nonnull @.str.22) #10
  br label %if.end7

if.end7:                                          ; preds = %do.body, %while.end.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 72
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %18, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %16) #10, !srcloc !237
  %19 = ptrtoint ptr %irq_allocated to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %irq_allocated, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_pcie_release_ringbuffers(ptr nocapture noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %arrayidx = getelementptr %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.brcmf_pcie_release_ringbuffer.exit_crit_edge, label %if.end.i

entry.brcmf_pcie_release_ringbuffer.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_release_ringbuffer.exit

if.end.i:                                         ; preds = %entry
  %buf_addr.i = getelementptr inbounds %struct.brcmf_commonring, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_addr.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %depth.i = getelementptr inbounds %struct.brcmf_commonring, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %depth.i, align 2
  %conv.i = zext i16 %7 to i32
  %item_len.i = getelementptr inbounds %struct.brcmf_commonring, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %item_len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %item_len.i, align 4
  %conv5.i = zext i16 %9 to i32
  %mul.i = mul nuw i32 %conv5.i, %conv.i
  %dma_handle.i = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul.i, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %brcmf_pcie_release_ringbuffer.exit

brcmf_pcie_release_ringbuffer.exit:               ; preds = %if.end6.i, %entry.brcmf_pcie_release_ringbuffer.exit_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %arrayidx.1 = getelementptr %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %16, null
  br i1 %tobool.not.i.1, label %brcmf_pcie_release_ringbuffer.exit.brcmf_pcie_release_ringbuffer.exit.1_crit_edge, label %if.end.i.1

brcmf_pcie_release_ringbuffer.exit.brcmf_pcie_release_ringbuffer.exit.1_crit_edge: ; preds = %brcmf_pcie_release_ringbuffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_release_ringbuffer.exit.1

if.end.i.1:                                       ; preds = %brcmf_pcie_release_ringbuffer.exit
  %buf_addr.i.1 = getelementptr inbounds %struct.brcmf_commonring, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %buf_addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf_addr.i.1, align 4
  %tobool1.not.i.1 = icmp eq ptr %18, null
  br i1 %tobool1.not.i.1, label %if.end.i.1.if.end6.i.1_crit_edge, label %if.then2.i.1

if.end.i.1.if.end6.i.1_crit_edge:                 ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.1

if.then2.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %depth.i.1 = getelementptr inbounds %struct.brcmf_commonring, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %depth.i.1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %depth.i.1, align 2
  %conv.i.1 = zext i16 %20 to i32
  %item_len.i.1 = getelementptr inbounds %struct.brcmf_commonring, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %item_len.i.1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %item_len.i.1, align 4
  %conv5.i.1 = zext i16 %22 to i32
  %mul.i.1 = mul nuw i32 %conv5.i.1, %conv.i.1
  %dma_handle.i.1 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %dma_handle.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_handle.i.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.1, i32 noundef %mul.i.1, ptr noundef nonnull %18, i32 noundef %24, i32 noundef 0) #10
  br label %if.end6.i.1

if.end6.i.1:                                      ; preds = %if.then2.i.1, %if.end.i.1.if.end6.i.1_crit_edge
  tail call void @kfree(ptr noundef nonnull %16) #10
  br label %brcmf_pcie_release_ringbuffer.exit.1

brcmf_pcie_release_ringbuffer.exit.1:             ; preds = %if.end6.i.1, %brcmf_pcie_release_ringbuffer.exit.brcmf_pcie_release_ringbuffer.exit.1_crit_edge
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.1, align 4
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev.2 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %arrayidx.2 = getelementptr %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i.2 = icmp eq ptr %29, null
  br i1 %tobool.not.i.2, label %brcmf_pcie_release_ringbuffer.exit.1.brcmf_pcie_release_ringbuffer.exit.2_crit_edge, label %if.end.i.2

brcmf_pcie_release_ringbuffer.exit.1.brcmf_pcie_release_ringbuffer.exit.2_crit_edge: ; preds = %brcmf_pcie_release_ringbuffer.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_release_ringbuffer.exit.2

if.end.i.2:                                       ; preds = %brcmf_pcie_release_ringbuffer.exit.1
  %buf_addr.i.2 = getelementptr inbounds %struct.brcmf_commonring, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %buf_addr.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf_addr.i.2, align 4
  %tobool1.not.i.2 = icmp eq ptr %31, null
  br i1 %tobool1.not.i.2, label %if.end.i.2.if.end6.i.2_crit_edge, label %if.then2.i.2

if.end.i.2.if.end6.i.2_crit_edge:                 ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.2

if.then2.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %depth.i.2 = getelementptr inbounds %struct.brcmf_commonring, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %depth.i.2 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %depth.i.2, align 2
  %conv.i.2 = zext i16 %33 to i32
  %item_len.i.2 = getelementptr inbounds %struct.brcmf_commonring, ptr %29, i32 0, i32 4
  %34 = ptrtoint ptr %item_len.i.2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %item_len.i.2, align 4
  %conv5.i.2 = zext i16 %35 to i32
  %mul.i.2 = mul nuw i32 %conv5.i.2, %conv.i.2
  %dma_handle.i.2 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %29, i32 0, i32 1
  %36 = ptrtoint ptr %dma_handle.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_handle.i.2, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.2, i32 noundef %mul.i.2, ptr noundef nonnull %31, i32 noundef %37, i32 noundef 0) #10
  br label %if.end6.i.2

if.end6.i.2:                                      ; preds = %if.then2.i.2, %if.end.i.2.if.end6.i.2_crit_edge
  tail call void @kfree(ptr noundef nonnull %29) #10
  br label %brcmf_pcie_release_ringbuffer.exit.2

brcmf_pcie_release_ringbuffer.exit.2:             ; preds = %if.end6.i.2, %brcmf_pcie_release_ringbuffer.exit.1.brcmf_pcie_release_ringbuffer.exit.2_crit_edge
  %38 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.2, align 4
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %dev.3 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %arrayidx.3 = getelementptr %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 2, i32 3
  %41 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i.3 = icmp eq ptr %42, null
  br i1 %tobool.not.i.3, label %brcmf_pcie_release_ringbuffer.exit.2.brcmf_pcie_release_ringbuffer.exit.3_crit_edge, label %if.end.i.3

brcmf_pcie_release_ringbuffer.exit.2.brcmf_pcie_release_ringbuffer.exit.3_crit_edge: ; preds = %brcmf_pcie_release_ringbuffer.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_release_ringbuffer.exit.3

if.end.i.3:                                       ; preds = %brcmf_pcie_release_ringbuffer.exit.2
  %buf_addr.i.3 = getelementptr inbounds %struct.brcmf_commonring, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %buf_addr.i.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf_addr.i.3, align 4
  %tobool1.not.i.3 = icmp eq ptr %44, null
  br i1 %tobool1.not.i.3, label %if.end.i.3.if.end6.i.3_crit_edge, label %if.then2.i.3

if.end.i.3.if.end6.i.3_crit_edge:                 ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.3

if.then2.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %depth.i.3 = getelementptr inbounds %struct.brcmf_commonring, ptr %42, i32 0, i32 3
  %45 = ptrtoint ptr %depth.i.3 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %depth.i.3, align 2
  %conv.i.3 = zext i16 %46 to i32
  %item_len.i.3 = getelementptr inbounds %struct.brcmf_commonring, ptr %42, i32 0, i32 4
  %47 = ptrtoint ptr %item_len.i.3 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %item_len.i.3, align 4
  %conv5.i.3 = zext i16 %48 to i32
  %mul.i.3 = mul nuw i32 %conv5.i.3, %conv.i.3
  %dma_handle.i.3 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %42, i32 0, i32 1
  %49 = ptrtoint ptr %dma_handle.i.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_handle.i.3, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.3, i32 noundef %mul.i.3, ptr noundef nonnull %44, i32 noundef %50, i32 noundef 0) #10
  br label %if.end6.i.3

if.end6.i.3:                                      ; preds = %if.then2.i.3, %if.end.i.3.if.end6.i.3_crit_edge
  tail call void @kfree(ptr noundef nonnull %42) #10
  br label %brcmf_pcie_release_ringbuffer.exit.3

brcmf_pcie_release_ringbuffer.exit.3:             ; preds = %if.end6.i.3, %brcmf_pcie_release_ringbuffer.exit.2.brcmf_pcie_release_ringbuffer.exit.3_crit_edge
  %51 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx.3, align 4
  %52 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev, align 4
  %dev.4 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %arrayidx.4 = getelementptr %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 2, i32 4
  %54 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i.4 = icmp eq ptr %55, null
  br i1 %tobool.not.i.4, label %brcmf_pcie_release_ringbuffer.exit.3.brcmf_pcie_release_ringbuffer.exit.4_crit_edge, label %if.end.i.4

brcmf_pcie_release_ringbuffer.exit.3.brcmf_pcie_release_ringbuffer.exit.4_crit_edge: ; preds = %brcmf_pcie_release_ringbuffer.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_pcie_release_ringbuffer.exit.4

if.end.i.4:                                       ; preds = %brcmf_pcie_release_ringbuffer.exit.3
  %buf_addr.i.4 = getelementptr inbounds %struct.brcmf_commonring, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %buf_addr.i.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf_addr.i.4, align 4
  %tobool1.not.i.4 = icmp eq ptr %57, null
  br i1 %tobool1.not.i.4, label %if.end.i.4.if.end6.i.4_crit_edge, label %if.then2.i.4

if.end.i.4.if.end6.i.4_crit_edge:                 ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.4

if.then2.i.4:                                     ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  %depth.i.4 = getelementptr inbounds %struct.brcmf_commonring, ptr %55, i32 0, i32 3
  %58 = ptrtoint ptr %depth.i.4 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %depth.i.4, align 2
  %conv.i.4 = zext i16 %59 to i32
  %item_len.i.4 = getelementptr inbounds %struct.brcmf_commonring, ptr %55, i32 0, i32 4
  %60 = ptrtoint ptr %item_len.i.4 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %item_len.i.4, align 4
  %conv5.i.4 = zext i16 %61 to i32
  %mul.i.4 = mul nuw i32 %conv5.i.4, %conv.i.4
  %dma_handle.i.4 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %55, i32 0, i32 1
  %62 = ptrtoint ptr %dma_handle.i.4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_handle.i.4, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.4, i32 noundef %mul.i.4, ptr noundef nonnull %57, i32 noundef %63, i32 noundef 0) #10
  br label %if.end6.i.4

if.end6.i.4:                                      ; preds = %if.then2.i.4, %if.end.i.4.if.end6.i.4_crit_edge
  tail call void @kfree(ptr noundef nonnull %55) #10
  br label %brcmf_pcie_release_ringbuffer.exit.4

brcmf_pcie_release_ringbuffer.exit.4:             ; preds = %if.end6.i.4, %brcmf_pcie_release_ringbuffer.exit.3.brcmf_pcie_release_ringbuffer.exit.4_crit_edge
  %64 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx.4, align 4
  %flowrings = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 3
  %65 = ptrtoint ptr %flowrings to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %flowrings, align 4
  tail call void @kfree(ptr noundef %66) #10
  %67 = ptrtoint ptr %flowrings to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %flowrings, align 4
  %idxbuf = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 17
  %68 = ptrtoint ptr %idxbuf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %idxbuf, align 4
  %tobool.not = icmp eq ptr %69, null
  br i1 %tobool.not, label %brcmf_pcie_release_ringbuffer.exit.4.if.end_crit_edge, label %if.then

brcmf_pcie_release_ringbuffer.exit.4.if.end_crit_edge: ; preds = %brcmf_pcie_release_ringbuffer.exit.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %brcmf_pcie_release_ringbuffer.exit.4
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %idxbuf_sz = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 18
  %72 = ptrtoint ptr %idxbuf_sz to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %idxbuf_sz, align 4
  %idxbuf_dmahandle = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 19
  %74 = ptrtoint ptr %idxbuf_dmahandle to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %idxbuf_dmahandle, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8, i32 noundef %73, ptr noundef nonnull %69, i32 noundef %75, i32 noundef 0) #10
  %76 = ptrtoint ptr %idxbuf to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %idxbuf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %brcmf_pcie_release_ringbuffer.exit.4.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_chip_get_raminfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_pcie_init_scratchbuffers(ptr noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %shared = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11
  %scratch_dmahandle = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 14
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8, ptr noundef %scratch_dmahandle, i32 noundef 3264, i32 noundef 0) #10
  %scratch = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 13
  %4 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %scratch, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shared, align 4
  %add = add i32 %6, 56
  %7 = ptrtoint ptr %scratch_dmahandle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scratch_dmahandle, align 4
  %tcm.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 6
  %9 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #10, !srcloc !237
  %add11 = add i32 %6, 60
  %12 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %13, i32 %add11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 0) #10, !srcloc !237
  %14 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shared, align 4
  %add15 = add i32 %15, 52
  %16 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %17, i32 %add15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 134217728) #10, !srcloc !237
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %ringupd_dmahandle = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 16
  %call.i75 = tail call ptr @dma_alloc_attrs(ptr noundef %dev17, i32 noundef 1024, ptr noundef %ringupd_dmahandle, i32 noundef 3264, i32 noundef 0) #10
  %ringupd = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 15
  %20 = ptrtoint ptr %ringupd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i75, ptr %ringupd, align 4
  %tobool23.not = icmp eq ptr %call.i75, null
  br i1 %tobool23.not, label %if.end.do.body_crit_edge, label %if.end25

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %shared, align 4
  %add28 = add i32 %22, 68
  %23 = ptrtoint ptr %ringupd_dmahandle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ringupd_dmahandle, align 4
  %25 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %26, i32 %add28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %27) #10, !srcloc !237
  %add34 = add i32 %22, 72
  %28 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %29, i32 %add34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 0) #10, !srcloc !237
  %30 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %shared, align 4
  %add39 = add i32 %31, 64
  %32 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %33, i32 %add39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 262144) #10, !srcloc !237
  br label %cleanup

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %3, ptr noundef nonnull @__func__.brcmf_pcie_init_scratchbuffers, ptr noundef nonnull @.str.50) #10
  %34 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scratch, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %do.body.if.end.i_crit_edge, label %if.then.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %scratch_dmahandle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scratch_dmahandle, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 8, ptr noundef nonnull %35, i32 noundef %39, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.if.end.i_crit_edge
  %ringupd.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 15
  %40 = ptrtoint ptr %ringupd.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ringupd.i, align 4
  %tobool5.not.i = icmp eq ptr %41, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.then6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %ringupd_dmahandle.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 16
  %44 = ptrtoint ptr %ringupd_dmahandle.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ringupd_dmahandle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 1024, ptr noundef nonnull %41, i32 noundef %45, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i.cleanup_crit_edge, %if.end25
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_pcie_request_irq(ptr noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %regs.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 5
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !237
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_request_irq, ptr noundef nonnull @.str) #10
  %call2 = tail call i32 @pci_enable_msi(ptr noundef %1) #10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call3 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @brcmf_pcie_quick_check_isr, ptr noundef nonnull @brcmf_pcie_isr_thread, i32 noundef 128, ptr noundef nonnull @.str.51, ptr noundef %devinfo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_disable_msi(ptr noundef %1) #10
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %3, ptr noundef nonnull @__func__.brcmf_pcie_request_irq, ptr noundef nonnull @.str.52, i32 noundef %9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_allocated = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 14
  %10 = ptrtoint ptr %irq_allocated to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %irq_allocated, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_pcie_hostready(ptr nocapture noundef readonly %devinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #10, !srcloc !237
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_pcie_copy_mem_todev(ptr nocapture noundef readonly %devinfo, i32 noundef %mem_offset, ptr noundef %srcaddr, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tcm = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 6
  %0 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcm, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %mem_offset
  %2 = ptrtoint ptr %add.ptr to i32
  %3 = ptrtoint ptr %srcaddr to i32
  %4 = or i32 %3, %len
  %5 = or i32 %4, %2
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.else24, label %if.then

if.then:                                          ; preds = %entry
  %8 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool15.not64 = icmp eq i32 %len, 0
  br i1 %tobool15.not64, label %while.cond.preheader.if.end33_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end33_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %src8.067 = phi ptr [ %incdec.ptr16, %while.body.while.body_crit_edge ], [ %srcaddr, %while.cond.preheader.while.body_crit_edge ]
  %address.066 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr, %while.cond.preheader.while.body_crit_edge ]
  %len.addr.065 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %while.cond.preheader.while.body_crit_edge ]
  %10 = ptrtoint ptr %src8.067 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %src8.067, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %address.066, i8 %11) #10, !srcloc !248
  %incdec.ptr = getelementptr i8, ptr %address.066, i32 1
  %incdec.ptr16 = getelementptr i8, ptr %src8.067, i32 1
  %dec = add i32 %len.addr.065, -1
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %while.body.if.end33_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.if.end33_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %tobool18.not68 = icmp ult i32 %len, 2
  br i1 %tobool18.not68, label %if.else.if.end33_crit_edge, label %while.body19.preheader

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

while.body19.preheader:                           ; preds = %if.else
  %div58 = lshr i32 %len, 1
  br label %while.body19

while.body19:                                     ; preds = %while.body19.while.body19_crit_edge, %while.body19.preheader
  %src16.071 = phi ptr [ %incdec.ptr21, %while.body19.while.body19_crit_edge ], [ %srcaddr, %while.body19.preheader ]
  %address.170 = phi ptr [ %add.ptr20, %while.body19.while.body19_crit_edge ], [ %add.ptr, %while.body19.preheader ]
  %len.addr.169 = phi i32 [ %dec22, %while.body19.while.body19_crit_edge ], [ %div58, %while.body19.preheader ]
  %12 = ptrtoint ptr %src16.071 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %src16.071, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %address.170, i16 %13) #10, !srcloc !250
  %add.ptr20 = getelementptr i8, ptr %address.170, i32 2
  %incdec.ptr21 = getelementptr i16, ptr %src16.071, i32 1
  %dec22 = add nsw i32 %len.addr.169, -1
  %tobool18.not = icmp eq i32 %dec22, 0
  br i1 %tobool18.not, label %while.body19.if.end33_crit_edge, label %while.body19.while.body19_crit_edge

while.body19.while.body19_crit_edge:              ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body19

while.body19.if.end33_crit_edge:                  ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.else24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %tobool27.not72 = icmp ult i32 %len, 4
  br i1 %tobool27.not72, label %if.else24.if.end33_crit_edge, label %while.body28.preheader

if.else24.if.end33_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

while.body28.preheader:                           ; preds = %if.else24
  %div2557 = lshr i32 %len, 2
  br label %while.body28

while.body28:                                     ; preds = %while.body28.while.body28_crit_edge, %while.body28.preheader
  %src32.075 = phi ptr [ %incdec.ptr30, %while.body28.while.body28_crit_edge ], [ %srcaddr, %while.body28.preheader ]
  %address.274 = phi ptr [ %add.ptr29, %while.body28.while.body28_crit_edge ], [ %add.ptr, %while.body28.preheader ]
  %len.addr.273 = phi i32 [ %dec31, %while.body28.while.body28_crit_edge ], [ %div2557, %while.body28.preheader ]
  %14 = ptrtoint ptr %src32.075 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src32.075, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %address.274, i32 %15) #10, !srcloc !237
  %add.ptr29 = getelementptr i8, ptr %address.274, i32 4
  %incdec.ptr30 = getelementptr i32, ptr %src32.075, i32 1
  %dec31 = add nsw i32 %len.addr.273, -1
  %tobool27.not = icmp eq i32 %dec31, 0
  br i1 %tobool27.not, label %while.body28.if.end33_crit_edge, label %while.body28.while.body28_crit_edge

while.body28.while.body28_crit_edge:              ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body28

while.body28.if.end33_crit_edge:                  ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %while.body28.if.end33_crit_edge, %if.else24.if.end33_crit_edge, %while.body19.if.end33_crit_edge, %if.else.if.end33_crit_edge, %while.body.if.end33_crit_edge, %while.cond.preheader.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fw_nvram_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_chip_resetcore(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_chip_set_active(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @brcmf_pcie_read_tcm16(ptr nocapture noundef readonly %devinfo, i32 noundef %mem_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tcm = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 6
  %0 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcm, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %mem_offset
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !240
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_pcie_write_tcm16(ptr nocapture noundef readonly %devinfo, i32 noundef %mem_offset, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tcm = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 6
  %0 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcm, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %mem_offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %2 = tail call i16 @llvm.bswap.i16(i16 %value) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #10, !srcloc !250
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @brcmf_pcie_write_idx(ptr nocapture noundef readonly %devinfo, i32 noundef %mem_offset, i16 noundef zeroext %value) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxbuf = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 17
  %0 = ptrtoint ptr %idxbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idxbuf, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %mem_offset
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %value, ptr %add.ptr, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @brcmf_pcie_read_idx(ptr nocapture noundef readonly %devinfo, i32 noundef %mem_offset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxbuf = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 17
  %0 = ptrtoint ptr %idxbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idxbuf, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %mem_offset
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr, align 2
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @brcmf_pcie_alloc_dma_and_ring(ptr noundef %devinfo, i32 noundef %ring_id, i32 noundef %tcm_ring_phys_addr) unnamed_addr #0 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #10
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !242
  %version = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 17
  %1 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %2)
  %cmp = icmp ult i8 %2, 7
  %brcmf_ring_itemsize_pre_v7.brcmf_ring_itemsize = select i1 %cmp, ptr @brcmf_ring_itemsize_pre_v7, ptr @brcmf_ring_itemsize
  %arrayidx = getelementptr [5 x i32], ptr @brcmf_ring_max_item, i32 0, i32 %ring_id
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %brcmf_ring_itemsize_pre_v7.brcmf_ring_itemsize, i32 %ring_id
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %mul = mul i32 %6, %4
  %pdev.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %add = add i32 %tcm_ring_phys_addr, 8
  %9 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_handle, align 4
  %tcm.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 6
  %11 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %add
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  call void @arm_heavy_mb() #10
  %13 = call i32 @llvm.bswap.i32(i32 %10) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #10, !srcloc !237
  %add.i = add i32 %tcm_ring_phys_addr, 12
  %14 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %15, i32 %add.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #10, !srcloc !237
  %add5 = add i32 %tcm_ring_phys_addr, 4
  %conv7 = trunc i32 %4 to i16
  %16 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @arm_heavy_mb() #10
  %18 = call i16 @llvm.bswap.i16(i16 %conv7) #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %18) #10, !srcloc !250
  %add8 = add i32 %tcm_ring_phys_addr, 6
  %conv10 = trunc i32 %6 to i16
  %19 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %20, i32 %add8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @arm_heavy_mb() #10
  %21 = call i16 @llvm.bswap.i16(i16 %conv10) #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i52, i16 %21) #10, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 116) #13
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %call.i.i, i32 noundef %26, i32 noundef 0) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @brcmf_commonring_config(ptr noundef nonnull %call7.i.i, i16 noundef zeroext %conv7, i16 noundef zeroext %conv10, ptr noundef nonnull %call.i.i) #10
  %27 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_handle, align 4
  %dma_handle19 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %dma_handle19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dma_handle19, align 8
  %devinfo20 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %devinfo20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %devinfo, ptr %devinfo20, align 4
  call void @brcmf_commonring_register_cb(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @brcmf_pcie_ring_mb_ring_bell, ptr noundef nonnull @brcmf_pcie_ring_mb_update_rptr, ptr noundef nonnull @brcmf_pcie_ring_mb_update_wptr, ptr noundef nonnull @brcmf_pcie_ring_mb_write_rptr, ptr noundef nonnull @brcmf_pcie_ring_mb_write_wptr, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end14 ], [ null, %if.then13 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_commonring_register_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_ring_mb_ring_bell(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devinfo1 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devinfo1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_ring_mb_ring_bell, ptr noundef nonnull @.str.45) #10
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #10, !srcloc !237
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_ring_mb_update_rptr(ptr nocapture noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devinfo1 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devinfo1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %read_ptr = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_ptr, align 4
  %r_idx_addr = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %r_idx_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_idx_addr, align 4
  %call = tail call zeroext i16 %5(ptr noundef %1, i32 noundef %7) #10
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call, ptr %ctx, align 4
  %conv = zext i16 %call to i32
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %w_ptr, align 2
  %conv4 = zext i16 %10 to i32
  %id = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 5
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 4
  %conv5 = zext i8 %12 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_ring_mb_update_rptr, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_ring_mb_update_wptr(ptr nocapture noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devinfo1 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devinfo1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %read_ptr = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_ptr, align 4
  %w_idx_addr = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %w_idx_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %w_idx_addr, align 4
  %call = tail call zeroext i16 %5(ptr noundef %1, i32 noundef %7) #10
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %w_ptr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call, ptr %w_ptr, align 2
  %conv = zext i16 %call to i32
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctx, align 4
  %conv4 = zext i16 %10 to i32
  %id = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 5
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 4
  %conv5 = zext i8 %12 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_ring_mb_update_wptr, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_ring_mb_write_rptr(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devinfo1 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devinfo1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctx, align 4
  %conv = zext i16 %5 to i32
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %w_ptr, align 2
  %conv3 = zext i16 %7 to i32
  %id = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %conv4 = zext i8 %9 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_ring_mb_write_rptr, ptr noundef nonnull @.str.48, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #10
  %write_ptr = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_ptr, align 4
  %r_idx_addr = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 3
  %12 = ptrtoint ptr %r_idx_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r_idx_addr, align 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ctx, align 4
  tail call void %11(ptr noundef %1, i32 noundef %13, i16 noundef zeroext %15) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_ring_mb_write_wptr(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devinfo1 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devinfo1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %w_ptr, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ctx, align 4
  %conv3 = zext i16 %7 to i32
  %id = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %conv4 = zext i8 %9 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_ring_mb_write_wptr, ptr noundef nonnull @.str.49, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #10
  %write_ptr = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_ptr, align 4
  %w_idx_addr = getelementptr inbounds %struct.brcmf_pcie_ringbuf, ptr %ctx, i32 0, i32 2
  %12 = ptrtoint ptr %w_idx_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %w_idx_addr, align 4
  %14 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %w_ptr, align 2
  tail call void %11(ptr noundef %1, i32 noundef %13, i16 noundef zeroext %15) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_commonring_config(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_quick_check_isr(i32 noundef %irq, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !237
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_quick_check_isr, ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_isr_thread(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_irq = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %in_irq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %in_irq, align 4
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %arg, i32 0, i32 5
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 72
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !238
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_isr_thread, ptr noundef nonnull @.str.53, i32 noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %3) #10, !srcloc !237
  %and = and i32 %4, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  %dtoh_mb_data_addr.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %arg, i32 0, i32 11, i32 10
  %7 = ptrtoint ptr %dtoh_mb_data_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dtoh_mb_data_addr.i, align 4
  %tcm.i.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %arg, i32 0, i32 6
  %9 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !238
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then2.if.end_crit_edge, label %if.end.i

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then2
  %13 = ptrtoint ptr %tcm.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tcm.i.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %14, i32 %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 0) #10, !srcloc !237
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_handle_mb_data, ptr noundef nonnull @.str.54, i32 noundef %12) #10
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end11.i_crit_edge, label %do.body4.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

do.body4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_handle_mb_data, ptr noundef nonnull @.str.55) #10
  %call7.i = tail call fastcc i32 @brcmf_pcie_send_mb_data(ptr noundef %arg, i32 noundef 2) #10
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_handle_mb_data, ptr noundef nonnull @.str.56) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.body4.i, %if.end.i.if.end11.i_crit_edge
  %and12.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end18.i_crit_edge, label %do.body15.i

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

do.body15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_handle_mb_data, ptr noundef nonnull @.str.57) #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.body15.i, %if.end11.i.if.end18.i_crit_edge
  %and19.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end25.i_crit_edge, label %do.body22.i

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

do.body22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_handle_mb_data, ptr noundef nonnull @.str.58) #10
  %mbdata_completed.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %arg, i32 0, i32 13
  %15 = ptrtoint ptr %mbdata_completed.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %mbdata_completed.i, align 4
  %mbdata_resp_wait.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %arg, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %mbdata_resp_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.body22.i, %if.end18.i.if.end25.i_crit_edge
  %and26.i = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end_crit_edge, label %do.body29.i

if.end25.i.if.end_crit_edge:                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_handle_mb_data, ptr noundef nonnull @.str.59) #10
  %pdev.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %arg, i32 0, i32 2
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void @brcmf_fw_crashed(ptr noundef %dev.i) #10
  br label %if.end

if.end:                                           ; preds = %do.body29.i, %if.end25.i.if.end_crit_edge, %if.then2.if.end_crit_edge, %if.then.if.end_crit_edge
  %and3 = and i32 %4, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then6, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %arg, i32 0, i32 2
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call7 = tail call i32 @brcmf_proto_msgbuf_rx_trigger(ptr noundef %dev) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  tail call fastcc void @brcmf_pcie_bus_console_read(ptr noundef %arg, i1 noundef zeroext false)
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp12 = icmp eq i32 %23, 1
  br i1 %cmp12, label %if.then13, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 261888) #10, !srcloc !237
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %26 = ptrtoint ptr %in_irq to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %in_irq, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_proto_msgbuf_rx_trigger(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_pcie_send_mb_data(ptr nocapture noundef readonly %devinfo, i32 noundef %htod_mb_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %htod_mb_data_addr = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 11, i32 9
  %0 = ptrtoint ptr %htod_mb_data_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %htod_mb_data_addr, align 4
  %tcm.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 6
  %2 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_send_mb_data, ptr noundef nonnull @.str.60, i32 noundef %5) #10
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.body.preheader
  %i.035 = phi i32 [ %inc, %if.end5.while.body_crit_edge ], [ 0, %while.body.preheader ]
  tail call void @msleep(i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.035)
  %exitcond = icmp eq i32 %i.035, 100
  br i1 %exitcond, label %while.body.cleanup_crit_edge, label %if.end5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %inc = add nuw nsw i32 %i.035, 1
  %6 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %7, i32 %1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %cmp2.not = icmp eq i32 %8, 0
  br i1 %cmp2.not, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %entry.while.end_crit_edge
  %9 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcm.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %10, i32 %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %htod_mb_data) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %11) #10, !srcloc !237
  %pdev = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 2
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %call7 = tail call i32 @pci_write_config_dword(ptr noundef %13, i32 noundef 152, i32 noundef 1) #10
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %devinfo, i32 0, i32 9
  %14 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci, align 4
  %call8 = tail call ptr @brcmf_chip_get_core(ptr noundef %15, i16 noundef zeroext 2108) #10
  %rev = getelementptr inbounds %struct.brcmf_core, ptr %call8, i32 0, i32 1
  %16 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %17)
  %cmp9 = icmp ult i16 %17, 14
  br i1 %cmp9, label %if.then11, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %call13 = tail call i32 @pci_write_config_dword(ptr noundef %19, i32 noundef 152, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %while.end.cleanup_crit_edge ], [ -5, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fw_crashed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_pm_enter_D3(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_pm_enter_D3, ptr noundef nonnull @.str) #10
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_pciedev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo1, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %1, i32 noundef 0) #10
  %mbdata_completed = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %mbdata_completed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mbdata_completed, align 4
  %call2 = tail call fastcc i32 @brcmf_pcie_send_mb_data(ptr noundef %5, i32 noundef 1)
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 2031) #10
  %7 = ptrtoint ptr %mbdata_completed to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mbdata_completed, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then16, label %entry.if.end50_crit_edge

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then16:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %mbdata_resp_wait = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 12
  %call1975 = call i32 @prepare_to_wait_event(ptr noundef %mbdata_resp_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %10 = ptrtoint ptr %mbdata_completed to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mbdata_completed, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not76.not = icmp eq i8 %11, 0
  br i1 %tobool22.not76.not, label %if.then16.cleanup_crit_edge, label %if.then16.if.end42_crit_edge

if.then16.if.end42_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then16.cleanup_crit_edge
  %__ret17.178 = phi i32 [ %__ret17.1, %cleanup.cleanup_crit_edge ], [ 200, %if.then16.cleanup_crit_edge ]
  %call39 = call i32 @schedule_timeout(i32 noundef %__ret17.178) #10
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %mbdata_resp_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %12 = ptrtoint ptr %mbdata_completed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mbdata_completed, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool26.not = icmp eq i32 %call39, 0
  %spec.store.select53 = select i1 %tobool26.not, i32 1, i32 %call39
  %__ret17.1 = select i1 %tobool22.not, i32 %call39, i32 %spec.store.select53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret17.1)
  %tobool32.not = icmp eq i32 %__ret17.1, 0
  %not.tobool22.not = xor i1 %tobool22.not, true
  %14 = select i1 %not.tobool22.not, i1 true, i1 %tobool32.not
  br i1 %14, label %cleanup.if.end42_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.if.end42_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %cleanup.if.end42_crit_edge, %if.then16.if.end42_crit_edge
  call void @finish_wait(ptr noundef %mbdata_resp_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  %15 = ptrtoint ptr %mbdata_completed to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr = load i8, ptr %mbdata_completed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool45.not = icmp eq i8 %.pr, 0
  br i1 %tobool45.not, label %do.body47, label %if.end42.if.end50_crit_edge

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef %1, ptr noundef nonnull @__func__.brcmf_pcie_pm_enter_D3, ptr noundef nonnull @.str.61) #10
  call void @brcmf_bus_change_state(ptr noundef %1, i32 noundef 1) #10
  br label %cleanup51

if.end50:                                         ; preds = %if.end42.if.end50_crit_edge, %entry.if.end50_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %5, align 4
  br label %cleanup51

cleanup51:                                        ; preds = %if.end50, %do.body47
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -5, %do.body47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_pcie_pm_leave_D3(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_pm_leave_D3, ptr noundef nonnull @.str) #10
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_pciedev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_pm_leave_D3, ptr noundef nonnull @.str.62, ptr noundef %dev, ptr noundef %1) #10
  %regs.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.body6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body6:                                         ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_pm_leave_D3, ptr noundef nonnull @.str.63) #10
  %call9 = tail call fastcc i32 @brcmf_pcie_send_mb_data(ptr noundef %5, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %do.body11, label %do.body6.cleanup_crit_edge

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body11:                                        ; preds = %do.body6
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 524288, ptr noundef nonnull @__func__.brcmf_pcie_pm_leave_D3, ptr noundef nonnull @.str.64) #10
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %5, align 4
  tail call fastcc void @brcmf_pcie_select_core(ptr noundef %5, i16 noundef zeroext 2108)
  tail call void @brcmf_bus_change_state(ptr noundef %1, i32 noundef 1) #10
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 261888) #10, !srcloc !237
  %flags.i = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body11.cleanup21_crit_edge, label %if.then.i

do.body11.cleanup21_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

if.then.i:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %15, i32 324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 16777216) #10, !srcloc !237
  br label %cleanup21

cleanup:                                          ; preds = %do.body6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %ci = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 9
  %16 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ci, align 4
  tail call void @brcmf_chip_detach(ptr noundef %17) #10
  %18 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ci, align 4
  %pdev16 = getelementptr inbounds %struct.brcmf_pciedev_info, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev16, align 4
  tail call void @brcmf_pcie_remove(ptr noundef %20)
  %call17 = tail call i32 @brcmf_pcie_probe(ptr noundef %20, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.cleanup21_crit_edge, label %if.then19

cleanup.cleanup21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

if.then19:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_pcie_pm_leave_D3, ptr noundef nonnull @.str.65, i32 noundef %call17) #10
  br label %cleanup21

cleanup21:                                        ; preds = %if.then19, %cleanup.cleanup21_crit_edge, %if.then.i, %do.body11.cleanup21_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then19 ], [ 0, %cleanup.cleanup21_crit_edge ], [ 0, %do.body11.cleanup21_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_bus_change_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !60, !62, !63, !65, !67, !68, !70, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92, !93, !94, !96, !97, !99, !101, !103, !104, !106, !107, !109, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !144, !146, !148, !149, !151, !152, !154, !156, !158, !160, !162, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !186, !188, !190, !192, !193, !195, !196, !198, !200, !202, !204, !206, !208, !209, !211, !213, !215, !217, !219, !221, !223, !225}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__UNIQUE_ID_firmware345, !1, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware346, !3, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 49, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware347, !5, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 50, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware348, !7, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 51, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware349, !7, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_firmware350, !10, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 52, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware351, !10, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_firmware352, !13, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 53, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware353, !15, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 54, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware354, !17, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 55, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware355, !19, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 56, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware356, !21, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 57, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware357, !23, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 58, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware358, !25, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 59, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware359, !27, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 60, i32 1}
!28 = !{ptr @__func__.brcmf_pcie_register, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2146, i32 2}
!30 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2147, i32 9}
!33 = !{ptr @__func__.brcmf_pcie_exit, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2153, i32 2}
!35 = !{ptr @brcmf_pciedrvr, !36, !"brcmf_pciedrvr", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2131, i32 26}
!37 = !{ptr @brcmf_pcie_devid_table, !38, !"brcmf_pcie_devid_table", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2102, i32 35}
!39 = !{ptr @__func__.brcmf_pcie_probe, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1880, i32 2}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1958, i32 2}
!44 = !{ptr @brcmf_pcie_buscore_ops, !45, !"brcmf_pcie_buscore_ops", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1741, i32 39}
!46 = !{ptr @__func__.brcmf_pcie_get_resource, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1632, i32 3}
!48 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1645, i32 3}
!51 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1654, i32 3}
!53 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1658, i32 2}
!55 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1660, i32 2}
!57 = !{ptr @__func__.brcmf_pcie_reset_device, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 610, i32 4}
!59 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__func__.brcmf_pcie_select_core, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 558, i32 3}
!62 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @brcmf_pcie_bus_ops, !64, !"brcmf_pcie_bus_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1458, i32 35}
!65 = !{ptr @__func__.brcmf_pcie_wowl_config, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1378, i32 2}
!67 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__func__.brcmf_pcie_get_memdump, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1399, i32 2}
!70 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @brcmf_pcie_fwnames, !72, !"brcmf_pcie_fwnames", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 62, i32 44}
!73 = !{ptr @BRCM_43602_FIRMWARE_BASENAME, !1, !"BRCM_43602_FIRMWARE_BASENAME", i1 false, i1 false}
!74 = !{ptr @BRCM_4366C_FIRMWARE_BASENAME, !25, !"BRCM_4366C_FIRMWARE_BASENAME", i1 false, i1 false}
!75 = !{ptr @BRCM_4350C_FIRMWARE_BASENAME, !5, !"BRCM_4350C_FIRMWARE_BASENAME", i1 false, i1 false}
!76 = !{ptr @BRCM_4350_FIRMWARE_BASENAME, !3, !"BRCM_4350_FIRMWARE_BASENAME", i1 false, i1 false}
!77 = !{ptr @BRCM_4365C_FIRMWARE_BASENAME, !21, !"BRCM_4365C_FIRMWARE_BASENAME", i1 false, i1 false}
!78 = !{ptr @BRCM_4356_FIRMWARE_BASENAME, !7, !"BRCM_4356_FIRMWARE_BASENAME", i1 false, i1 false}
!79 = !{ptr @BRCM_43570_FIRMWARE_BASENAME, !10, !"BRCM_43570_FIRMWARE_BASENAME", i1 false, i1 false}
!80 = !{ptr @BRCM_4358_FIRMWARE_BASENAME, !13, !"BRCM_4358_FIRMWARE_BASENAME", i1 false, i1 false}
!81 = !{ptr @BRCM_4359_FIRMWARE_BASENAME, !15, !"BRCM_4359_FIRMWARE_BASENAME", i1 false, i1 false}
!82 = !{ptr @BRCM_4364_FIRMWARE_BASENAME, !17, !"BRCM_4364_FIRMWARE_BASENAME", i1 false, i1 false}
!83 = !{ptr @BRCM_4365B_FIRMWARE_BASENAME, !19, !"BRCM_4365B_FIRMWARE_BASENAME", i1 false, i1 false}
!84 = !{ptr @BRCM_4366B_FIRMWARE_BASENAME, !23, !"BRCM_4366B_FIRMWARE_BASENAME", i1 false, i1 false}
!85 = !{ptr @BRCM_4371_FIRMWARE_BASENAME, !27, !"BRCM_4371_FIRMWARE_BASENAME", i1 false, i1 false}
!86 = !{ptr @.str.13, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1445, i32 3}
!88 = !{ptr @.str.14, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.15, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.16, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @brcmf_pcie_reset._entry, !87, !"_entry", i1 false, i1 false}
!93 = !{ptr @brcmf_pcie_reset._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @brcmf_pcie_reset._entry.18, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1451, i32 3}
!96 = !{ptr @brcmf_pcie_reset._entry_ptr.19, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @__func__.brcmf_pcie_bus_console_read, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 801, i32 22}
!99 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 801, i32 32}
!101 = !{ptr @brcmf_pcie_bus_console_read.__UNIQUE_ID_ddebug360, !102, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 804, i32 5}
!103 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @__func__.brcmf_pcie_release_irq, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 916, i32 3}
!106 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.23, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1849, i32 5}
!109 = !{ptr @.str.24, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1850, i32 5}
!111 = !{ptr @__func__.brcmf_pcie_setup, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1779, i32 3}
!113 = !{ptr @.str.25, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @brcmf_pcie_setup.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1827, i32 2}
!116 = !{ptr @.str.26, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @__func__.brcmf_pcie_adjust_ramsize, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1487, i32 2}
!119 = !{ptr @.str.27, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__func__.brcmf_pcie_download_fw_nvram, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1560, i32 2}
!122 = !{ptr @.str.28, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.29, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1565, i32 2}
!125 = !{ptr @.str.30, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1578, i32 3}
!127 = !{ptr @.str.31, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1584, i32 3}
!129 = !{ptr @.str.32, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1591, i32 2}
!131 = !{ptr @.str.33, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1596, i32 2}
!133 = !{ptr @.str.34, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1607, i32 3}
!135 = !{ptr @.str.35, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1612, i32 3}
!137 = !{ptr @.str.36, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1616, i32 2}
!139 = !{ptr @__func__.brcmf_pcie_init_share_ram_info, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1506, i32 2}
!141 = !{ptr @.str.37, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.38, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1509, i32 3}
!144 = !{ptr @.str.39, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1539, i32 2}
!146 = !{ptr @__func__.brcmf_pcie_bus_console_init, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 756, i32 2}
!148 = !{ptr @.str.40, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @__func__.brcmf_pcie_init_ringbuffers, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1173, i32 3}
!151 = !{ptr @.str.41, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1214, i32 3}
!154 = !{ptr @.str.43, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1255, i32 2}
!156 = !{ptr @.str.44, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1278, i32 2}
!158 = !{ptr @brcmf_ring_itemsize_pre_v7, !159, !"brcmf_ring_itemsize_pre_v7", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 325, i32 18}
!160 = !{ptr @brcmf_ring_itemsize, !161, !"brcmf_ring_itemsize", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 333, i32 18}
!162 = !{ptr @brcmf_ring_max_item, !163, !"brcmf_ring_max_item", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 317, i32 18}
!164 = !{ptr @__func__.brcmf_pcie_ring_mb_ring_bell, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 969, i32 2}
!166 = !{ptr @.str.45, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @__func__.brcmf_pcie_ring_mb_update_rptr, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 988, i32 2}
!169 = !{ptr @.str.46, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @__func__.brcmf_pcie_ring_mb_update_wptr, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1006, i32 2}
!172 = !{ptr @.str.47, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @__func__.brcmf_pcie_ring_mb_write_rptr, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 934, i32 2}
!175 = !{ptr @.str.48, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @__func__.brcmf_pcie_ring_mb_write_wptr, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 952, i32 2}
!178 = !{ptr @.str.49, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @__func__.brcmf_pcie_init_scratchbuffers, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1341, i32 2}
!181 = !{ptr @.str.50, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @__func__.brcmf_pcie_request_irq, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 880, i32 2}
!184 = !{ptr @.str.51, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 885, i32 6}
!186 = !{ptr @.str.52, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 887, i32 3}
!188 = !{ptr @__func__.brcmf_pcie_quick_check_isr, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 838, i32 3}
!190 = !{ptr @__func__.brcmf_pcie_isr_thread, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 852, i32 2}
!192 = !{ptr @.str.53, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @__func__.brcmf_pcie_handle_mb_data, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 720, i32 2}
!195 = !{ptr @.str.54, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.55, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 722, i32 3}
!198 = !{ptr @.str.56, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 724, i32 3}
!200 = !{ptr @.str.57, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 727, i32 3}
!202 = !{ptr @.str.58, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 729, i32 3}
!204 = !{ptr @.str.59, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 734, i32 3}
!206 = !{ptr @__func__.brcmf_pcie_send_mb_data, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 681, i32 3}
!208 = !{ptr @.str.60, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @__func__.brcmf_pcie_remove, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 1976, i32 2}
!211 = !{ptr @brcmf_pciedrvr_pm, !212, !"brcmf_pciedrvr_pm", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2085, i32 32}
!213 = !{ptr @__func__.brcmf_pcie_pm_enter_D3, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2020, i32 2}
!215 = !{ptr @.str.61, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2033, i32 3}
!217 = !{ptr @__func__.brcmf_pcie_pm_leave_D3, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2051, i32 2}
!219 = !{ptr @.str.62, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2055, i32 2}
!221 = !{ptr @.str.63, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2059, i32 3}
!223 = !{ptr @.str.64, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2062, i32 3}
!225 = !{ptr @.str.65, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c", i32 2079, i32 31}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{i64 2152582564}
!237 = !{i64 5040442}
!238 = !{i64 5040860}
!239 = !{i64 2152581209}
!240 = !{i64 5040022}
!241 = !{i64 2152580597}
!242 = !{!"auto-init"}
!243 = !{i64 5040640}
!244 = !{i64 2152579985}
!245 = !{i64 2148749049, i64 2148749054, i64 2148749067, i64 2148749111, i64 2148749145, i64 2148749166}
!246 = !{i8 0, i8 2}
!247 = !{i64 2152581590}
!248 = !{i64 5040245}
!249 = !{i64 2152582014}
!250 = !{i64 5039822}
