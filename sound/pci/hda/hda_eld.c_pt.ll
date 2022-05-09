; ModuleID = '/llk/IR_all_yes/sound/pci/hda/hda_eld.c_pt.bc'
source_filename = "../sound/pci/hda/hda_eld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.parsed_hdmi_eld = type { i32, i32, i32, [17 x i8], i32, i32, i64, i32, i32, i32, i32, i32, i32, [16 x %struct.cea_sad] }
%struct.cea_sad = type { i32, i32, i32, i32, i32, i32 }
%struct.hdmi_eld = type { i8, i8, i32, [256 x i8], %struct.parsed_hdmi_eld }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }

@snd_hdmi_parse_eld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI: Unknown ELD version %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_hdmi_parse_eld\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/pci/hda/hda_eld.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_hdmi_parse_eld._entry_ptr = internal global ptr @snd_hdmi_parse_eld._entry, section ".printk_index", align 4
@snd_hdmi_parse_eld._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HDMI: MNL is reserved value %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_hdmi_parse_eld._entry_ptr.7 = internal global ptr @snd_hdmi_parse_eld._entry.5, section ".printk_index", align 4
@snd_hdmi_parse_eld._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI: out of range MNL %d\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_hdmi_parse_eld._entry_ptr.10 = internal global ptr @snd_hdmi_parse_eld._entry.8, section ".printk_index", align 4
@snd_hdmi_parse_eld._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI: out of range SAD %d\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_hdmi_parse_eld._entry_ptr.13 = internal global ptr @snd_hdmi_parse_eld._entry.11, section ".printk_index", align 4
@snd_hdmi_get_eld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HDMI: ELD buf size is 0, force 128\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_hdmi_get_eld\00", [47 x i8] zeroinitializer }, align 32
@snd_hdmi_get_eld._entry_ptr = internal global ptr @snd_hdmi_get_eld._entry, section ".printk_index", align 4
@snd_hdmi_get_eld._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 313, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI: invalid ELD buf size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_hdmi_get_eld._entry_ptr.18 = internal global ptr @snd_hdmi_get_eld._entry.16, section ".printk_index", align 4
@snd_hdmi_get_eld._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HDMI: invalid ELD data byte %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_hdmi_get_eld._entry_ptr.21 = internal global ptr @snd_hdmi_get_eld._entry.19, section ".printk_index", align 4
@snd_hdmi_get_eld.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.15, ptr @.str.2, ptr @.str.23, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_hda_codec_hdmi\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI: 0 ELD data\0A\00", [46 x i8] zeroinitializer }, align 32
@snd_hdmi_show_eld.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_hdmi_show_eld\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"HDMI: detected monitor %s at connection type %s\0A\00", [47 x i8] zeroinitializer }, align 32
@eld_connection_type_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [16 x i8] zeroinitializer }, align 32
@snd_hdmi_show_eld.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI: available speakers:%s\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_hdmi_print_eld_info.eld_version_names = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.27, ptr @.str.27, ptr @.str.28, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.29], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CEA-861D or below\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"partial\00", [24 x i8] zeroinitializer }, align 32
@snd_hdmi_print_eld_info.cea_edid_version_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.27], [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"no CEA EDID Timing Extension block present\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CEA-861\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CEA-861-A\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CEA-861-B, C or D\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"monitor_present\09\09%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"eld_valid\09\09%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"monitor_name\09\09%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"connection_type\09\09%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"eld_version\09\09[0x%x] %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edid_version\09\09[0x%x] %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"manufacture_id\09\090x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"product_id\09\090x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_id\09\09\090x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"support_hdcp\09\09%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"support_ai\09\09%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"audio_sync_delay\09%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"speakers\09\09[0x%x]%s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sad_count\09\09%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %llx\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"monitor_present\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eld_valid\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"connection_type\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port_id\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"support_hdcp\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"support_ai\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audio_sync_delay\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"speakers\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sad_count\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sad\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_coding_type\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_channels\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"_rates\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"_bits\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_max_bitrate\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_profile\00", [23 x i8] zeroinitializer }, align 32
@snd_hdmi_get_eld_ati._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 644, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"HDMI ATI/AMD: no speaker allocation for ELD\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_hdmi_get_eld_ati\00", [43 x i8] zeroinitializer }, align 32
@snd_hdmi_get_eld_ati._entry_ptr = internal global ptr @snd_hdmi_get_eld_ati._entry, section ".printk_index", align 4
@snd_hdmi_get_eld_ati._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 686, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"HDMI ATI/AMD: Truncating HDMI sink description with length %d\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_hdmi_get_eld_ati._entry_ptr.69 = internal global ptr @snd_hdmi_get_eld_ati._entry.67, section ".printk_index", align 4
@snd_hdmi_get_eld_ati._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 727, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HDMI ATI/AMD: no audio descriptors for ELD\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_hdmi_get_eld_ati._entry_ptr.72 = internal global ptr @snd_hdmi_get_eld_ati._entry.70, section ".printk_index", align 4
@hdmi_update_short_audio_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI: audio coding type 0 not expected\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hdmi_update_short_audio_desc\00", [35 x i8] zeroinitializer }, align 32
@hdmi_update_short_audio_desc._entry_ptr = internal global ptr @hdmi_update_short_audio_desc._entry, section ".printk_index", align 4
@hdmi_update_short_audio_desc._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HDMI: audio coding xtype %d not expected\0A\00", [54 x i8] zeroinitializer }, align 32
@hdmi_update_short_audio_desc._entry_ptr.77 = internal global ptr @hdmi_update_short_audio_desc._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DisplayPort\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2-reserved\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"3-reserved\00", [21 x i8] zeroinitializer }, align 32
@__const.hdmi_show_short_audio_desc.buf2 = private unnamed_addr constant [24 x i8] c", bits =\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c", max bitrate = %d\00", [45 x i8] zeroinitializer }, align 32
@hdmi_show_short_audio_desc.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hdmi_show_short_audio_desc\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"HDMI: supports coding type %s: channels = %d, rates =%s%s\0A\00", [37 x i8] zeroinitializer }, align 32
@cea_audio_coding_type_names = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], [56 x i8] zeroinitializer }, align 32
@hdmi_print_pcm_rates.alsa_rates = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 5512, i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000, i32 384000], [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LPCM\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AC-3\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MPEG1\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP3\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MPEG2\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AAC-LC\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DTS\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATRAC\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSD (One Bit Audio)\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"E-AC-3/DD+ (Dolby Digital Plus)\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DTS-HD\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MLP (Dolby TrueHD)\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DST\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WMAPro\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HE-AAC\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HE-AACv2\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MPEG Surround\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sad%d_coding_type\09[0x%x] %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sad%d_channels\09\09%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sad%d_rates\09\09[0x%x]%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sad%d_bits\09\09[0x%x]%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sad%d_max_bitrate\09%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sad%d_profile\09\09%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 5, i64 2, i64 31]
@__sancov_gen_cov_switch_values.110 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 14, i64 15]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 13]
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 234, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 257, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 260, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 267, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 309, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 313, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 325, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 337, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 400, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [26 x i8] c"eld_connection_type_names\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 33, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 407, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [18 x i8] c"eld_version_names\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 448, i32 28 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 449, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 451, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 453, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant [23 x i8] c"cea_edid_version_names\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 455, i32 28 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 456, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 457, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 458, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 459, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 463, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 464, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 467, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 468, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 470, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 472, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 474, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 475, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 476, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 477, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 478, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 479, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 482, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 484, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 501, i32 20 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 508, i32 21 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 510, i32 26 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 512, i32 26 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 514, i32 26 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 516, i32 26 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 518, i32 26 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 520, i32 26 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 522, i32 26 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 524, i32 26 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 526, i32 27 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 535, i32 23 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 537, i32 28 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 539, i32 28 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 541, i32 28 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 543, i32 28 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 545, i32 28 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 644, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 685, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 727, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 166, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 210, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 34, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 35, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 36, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 37, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 386, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 390, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [28 x i8] c"cea_audio_coding_type_names\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 71, i32 27 }
@___asan_gen_.367 = private unnamed_addr constant [11 x i8] c"alsa_rates\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 355, i32 28 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 363, i32 41 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 72, i32 11 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 73, i32 11 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 74, i32 11 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 75, i32 11 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 76, i32 11 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 77, i32 11 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 78, i32 11 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 79, i32 11 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 80, i32 11 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 81, i32 11 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 82, i32 11 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 83, i32 11 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 84, i32 11 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 85, i32 11 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 86, i32 11 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 87, i32 11 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 88, i32 11 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 89, i32 11 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 421, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 423, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 426, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 430, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 435, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.443 = private constant [27 x i8] c"../sound/pci/hda/hda_eld.c\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 439, i32 3 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @hdmi_update_short_audio_desc._entry, ptr @hdmi_update_short_audio_desc._entry.75, ptr @hdmi_update_short_audio_desc._entry_ptr, ptr @hdmi_update_short_audio_desc._entry_ptr.77, ptr @snd_hdmi_get_eld._entry, ptr @snd_hdmi_get_eld._entry.16, ptr @snd_hdmi_get_eld._entry.19, ptr @snd_hdmi_get_eld._entry_ptr, ptr @snd_hdmi_get_eld._entry_ptr.18, ptr @snd_hdmi_get_eld._entry_ptr.21, ptr @snd_hdmi_get_eld_ati._entry, ptr @snd_hdmi_get_eld_ati._entry.67, ptr @snd_hdmi_get_eld_ati._entry.70, ptr @snd_hdmi_get_eld_ati._entry_ptr, ptr @snd_hdmi_get_eld_ati._entry_ptr.69, ptr @snd_hdmi_get_eld_ati._entry_ptr.72, ptr @snd_hdmi_parse_eld._entry, ptr @snd_hdmi_parse_eld._entry.11, ptr @snd_hdmi_parse_eld._entry.5, ptr @snd_hdmi_parse_eld._entry.8, ptr @snd_hdmi_parse_eld._entry_ptr, ptr @snd_hdmi_parse_eld._entry_ptr.10, ptr @snd_hdmi_parse_eld._entry_ptr.13, ptr @snd_hdmi_parse_eld._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @eld_connection_type_names, ptr @.str.26, ptr @snd_hdmi_print_eld_info.eld_version_names, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @snd_hdmi_print_eld_info.cea_edid_version_names, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @cea_audio_coding_type_names, ptr @hdmi_print_pcm_rates.alsa_rates, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_parse_eld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_parse_eld._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_parse_eld._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_parse_eld._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_get_eld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_get_eld._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_get_eld._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eld_connection_type_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_print_eld_info.eld_version_names to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_print_eld_info.cea_edid_version_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_get_eld_ati._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_get_eld_ati._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hdmi_get_eld_ati._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_update_short_audio_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_update_short_audio_desc._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cea_audio_coding_type_names to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_print_pcm_rates.alsa_rates to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hdmi_parse_eld(ptr noundef %codec, ptr noundef %e, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %e, i32 0, i32 456)
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %3 = lshr i8 %2, 3
  %4 = zext i8 %3 to i32
  %eld_ver = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 1
  %5 = ptrtoint ptr %eld_ver to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %eld_ver, align 4
  %trunc = trunc i8 %3 to i5
  %6 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i5 %trunc, label %do.end14 [
    i5 2, label %entry.do.end24_crit_edge
    i5 -1, label %entry.do.end24_crit_edge255
  ]

entry.do.end24_crit_edge255:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

entry.do.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str, i32 noundef %4) #12
  br label %cleanup

do.end24:                                         ; preds = %entry.do.end24_crit_edge, %entry.do.end24_crit_edge255
  %arrayidx26 = getelementptr i8, ptr %buf, i32 2
  %7 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %8 to i32
  %9 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv27, ptr %e, align 8
  %arrayidx40 = getelementptr i8, ptr %buf, i32 4
  %10 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %11 to i32
  %and43 = and i32 %conv41, 31
  %12 = lshr i32 %conv41, 5
  %cea_edid_ver = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 2
  %13 = ptrtoint ptr %cea_edid_ver to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cea_edid_ver, align 8
  %arrayidx68 = getelementptr i8, ptr %buf, i32 5
  %14 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx68, align 1
  %16 = and i8 %15, 1
  %and71 = zext i8 %16 to i32
  %support_hdcp = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 7
  %17 = ptrtoint ptr %support_hdcp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and71, ptr %support_hdcp, align 8
  %18 = load i8, ptr %arrayidx68, align 1
  %19 = lshr i8 %18, 1
  %20 = and i8 %19, 1
  %and85 = zext i8 %20 to i32
  %support_ai = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 8
  %21 = ptrtoint ptr %support_ai to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and85, ptr %support_ai, align 4
  %22 = load i8, ptr %arrayidx68, align 1
  %23 = lshr i8 %22, 2
  %24 = and i8 %23, 3
  %and99 = zext i8 %24 to i32
  %conn_type = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 9
  %25 = ptrtoint ptr %conn_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and99, ptr %conn_type, align 8
  %26 = load i8, ptr %arrayidx68, align 1
  %27 = lshr i8 %26, 4
  %28 = zext i8 %27 to i32
  %sad_count = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 12
  %29 = ptrtoint ptr %sad_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sad_count, align 4
  %arrayidx124 = getelementptr i8, ptr %buf, i32 6
  %30 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %31 to i32
  %mul = shl nuw nsw i32 %conv125, 1
  %aud_synch_delay = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 10
  %32 = ptrtoint ptr %aud_synch_delay to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %aud_synch_delay, align 4
  %arrayidx138 = getelementptr i8, ptr %buf, i32 7
  %33 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx138, align 1
  %35 = and i8 %34, 127
  %and141 = zext i8 %35 to i32
  %spk_alloc = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 11
  %36 = ptrtoint ptr %spk_alloc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and141, ptr %spk_alloc, align 8
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %add.ptr, align 1
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #9
  %port_id = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 6
  %40 = ptrtoint ptr %port_id to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %port_id, align 8
  %add.ptr142 = getelementptr i8, ptr %buf, i32 16
  %41 = ptrtoint ptr %add.ptr142 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %add.ptr142, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #9
  %conv144 = zext i16 %43 to i32
  %manufacture_id = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 4
  %44 = ptrtoint ptr %manufacture_id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv144, ptr %manufacture_id, align 8
  %add.ptr145 = getelementptr i8, ptr %buf, i32 18
  %45 = ptrtoint ptr %add.ptr145 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %add.ptr145, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #9
  %conv147 = zext i16 %47 to i32
  %product_id = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 5
  %48 = ptrtoint ptr %product_id to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv147, ptr %product_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and43)
  %cmp148 = icmp ugt i32 %and43, 16
  br i1 %cmp148, label %do.end153, label %if.else

do.end153:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.6, i32 noundef %and43) #12
  br label %cleanup

if.else:                                          ; preds = %do.end24
  %add = add nuw nsw i32 %and43, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp156 = icmp sgt i32 %add, %size
  br i1 %cmp156, label %do.end161, label %if.else164

do.end161:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.9, i32 noundef %and43) #12
  br label %cleanup

if.else164:                                       ; preds = %if.else
  %monitor_name = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 3
  %add.ptr165 = getelementptr i8, ptr %buf, i32 20
  %add166 = add nuw nsw i32 %and43, 1
  %call167 = tail call i32 @strscpy(ptr noundef %monitor_name, ptr noundef %add.ptr165, i32 noundef %add166) #9
  %49 = ptrtoint ptr %sad_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sad_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp171248 = icmp sgt i32 %50, 0
  br i1 %cmp171248, label %for.body.lr.ph, label %if.else164.for.end_crit_edge

if.else164.for.end_crit_edge:                     ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else164
  %sad = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 13
  %add.ptr189 = getelementptr i8, ptr %add.ptr165, i32 %and43
  br label %for.body

for.body:                                         ; preds = %hdmi_update_short_audio_desc.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %add174, %hdmi_update_short_audio_desc.exit.for.body_crit_edge ]
  %add174 = add nuw nsw i32 %i.0249, 1
  %mul175 = mul i32 %add174, 3
  %add176 = add i32 %mul175, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add176, i32 %size)
  %cmp177 = icmp sgt i32 %add176, %size
  br i1 %cmp177, label %do.end182, label %if.end185

do.end182:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.12, i32 noundef %i.0249) #12
  br label %cleanup

if.end185:                                        ; preds = %for.body
  %add.ptr187 = getelementptr %struct.cea_sad, ptr %sad, i32 %i.0249
  %mul190 = mul i32 %i.0249, 3
  %add.ptr191 = getelementptr i8, ptr %add.ptr189, i32 %mul190
  %arrayidx.i = getelementptr i8, ptr %add.ptr191, i32 1
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i, align 1
  %53 = and i8 %52, 127
  %and.i = zext i8 %53 to i32
  %rates.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.0249, i32 2
  %and8.i = shl nuw nsw i32 %and.i, 5
  %54 = and i32 %and8.i, 32
  %55 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %rates.i, align 4
  %and8.1.i = and i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1.i)
  %tobool.not.1.i = icmp eq i32 %and8.1.i, 0
  br i1 %tobool.not.1.i, label %if.end185.for.inc.1.i_crit_edge, label %if.then.1.i

if.end185.for.inc.1.i_crit_edge:                  ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rates.i, align 4
  %or.1.i = or i32 %57, 64
  store i32 %or.1.i, ptr %rates.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %if.end185.for.inc.1.i_crit_edge
  %and8.2.i = and i32 %and.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2.i)
  %tobool.not.2.i = icmp eq i32 %and8.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rates.i, align 4
  %or.2.i = or i32 %59, 128
  store i32 %or.2.i, ptr %rates.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %and8.3.i = and i32 %and.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.3.i)
  %tobool.not.3.i = icmp eq i32 %and8.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rates.i, align 4
  %or.3.i = or i32 %61, 512
  store i32 %or.3.i, ptr %rates.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %and8.4.i = and i32 %and.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.4.i)
  %tobool.not.4.i = icmp eq i32 %and8.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rates.i, align 4
  %or.4.i = or i32 %63, 1024
  store i32 %or.4.i, ptr %rates.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %and8.5.i = and i32 %and.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.5.i)
  %tobool.not.5.i = icmp eq i32 %and8.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rates.i, align 4
  %or.5.i = or i32 %65, 2048
  store i32 %or.5.i, ptr %rates.i, align 4
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %and8.6.i = and i32 %and.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.6.i)
  %tobool.not.6.i = icmp eq i32 %and8.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rates.i, align 4
  %or.6.i = or i32 %67, 4096
  store i32 %or.6.i, ptr %rates.i, align 4
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %68 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %add.ptr191, align 1
  %70 = and i8 %69, 7
  %narrow.i = add nuw nsw i8 %70, 1
  %inc26.i = zext i8 %narrow.i to i32
  %71 = ptrtoint ptr %add.ptr187 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %inc26.i, ptr %add.ptr187, align 4
  %sample_bits.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.0249, i32 3
  %72 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %sample_bits.i, align 4
  %max_bitrate.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.0249, i32 4
  %73 = ptrtoint ptr %max_bitrate.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %max_bitrate.i, align 4
  %74 = load i8, ptr %add.ptr191, align 1
  %75 = lshr i8 %74, 3
  %76 = and i8 %75, 15
  %and40.i = zext i8 %76 to i32
  %format.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.0249, i32 1
  %77 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and40.i, ptr %format.i, align 4
  %78 = zext i32 %and40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %and40.i, label %for.inc.6.i.hdmi_update_short_audio_desc.exit_crit_edge [
    i32 0, label %do.end44.i
    i32 1, label %do.end54.i
    i32 2, label %for.inc.6.i.do.end85.i_crit_edge
    i32 3, label %for.inc.6.i.do.end85.i_crit_edge256
    i32 4, label %for.inc.6.i.do.end85.i_crit_edge257
    i32 5, label %for.inc.6.i.do.end85.i_crit_edge258
    i32 6, label %for.inc.6.i.do.end85.i_crit_edge259
    i32 7, label %for.inc.6.i.do.end85.i_crit_edge260
    i32 8, label %for.inc.6.i.do.end85.i_crit_edge261
    i32 15, label %do.end117.i
    i32 14, label %do.end102.i
  ]

for.inc.6.i.do.end85.i_crit_edge261:              ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85.i

for.inc.6.i.do.end85.i_crit_edge260:              ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85.i

for.inc.6.i.do.end85.i_crit_edge259:              ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85.i

for.inc.6.i.do.end85.i_crit_edge258:              ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85.i

for.inc.6.i.do.end85.i_crit_edge257:              ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85.i

for.inc.6.i.do.end85.i_crit_edge256:              ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85.i

for.inc.6.i.do.end85.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85.i

for.inc.6.i.hdmi_update_short_audio_desc.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hdmi_update_short_audio_desc.exit

do.end44.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.73) #12
  br label %hdmi_update_short_audio_desc.exit

do.end54.i:                                       ; preds = %for.inc.6.i
  %arrayidx56.i = getelementptr i8, ptr %add.ptr191, i32 2
  %79 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx56.i, align 1
  %81 = and i8 %80, 7
  %and59.i = zext i8 %81 to i32
  %and65.i = and i32 %and59.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %do.end54.i.for.inc73.i_crit_edge, label %if.then67.i

do.end54.i.for.inc73.i_crit_edge:                 ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc73.i

if.then67.i:                                      ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 131072, ptr %sample_bits.i, align 4
  br label %for.inc73.i

for.inc73.i:                                      ; preds = %if.then67.i, %do.end54.i.for.inc73.i_crit_edge
  %and65.1.i = and i32 %and59.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.1.i)
  %tobool66.not.1.i = icmp eq i32 %and65.1.i, 0
  br i1 %tobool66.not.1.i, label %for.inc73.i.for.inc73.1.i_crit_edge, label %if.then67.1.i

for.inc73.i.for.inc73.1.i_crit_edge:              ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc73.1.i

if.then67.1.i:                                    ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sample_bits.i, align 4
  %or71.1.i = or i32 %84, 262144
  store i32 %or71.1.i, ptr %sample_bits.i, align 4
  br label %for.inc73.1.i

for.inc73.1.i:                                    ; preds = %if.then67.1.i, %for.inc73.i.for.inc73.1.i_crit_edge
  %and65.2.i = and i32 %and59.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.2.i)
  %tobool66.not.2.i = icmp eq i32 %and65.2.i, 0
  br i1 %tobool66.not.2.i, label %for.inc73.1.i.hdmi_update_short_audio_desc.exit_crit_edge, label %if.then67.2.i

for.inc73.1.i.hdmi_update_short_audio_desc.exit_crit_edge: ; preds = %for.inc73.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hdmi_update_short_audio_desc.exit

if.then67.2.i:                                    ; preds = %for.inc73.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sample_bits.i, align 4
  %or71.2.i = or i32 %86, 524288
  store i32 %or71.2.i, ptr %sample_bits.i, align 4
  br label %hdmi_update_short_audio_desc.exit

do.end85.i:                                       ; preds = %for.inc.6.i.do.end85.i_crit_edge, %for.inc.6.i.do.end85.i_crit_edge256, %for.inc.6.i.do.end85.i_crit_edge257, %for.inc.6.i.do.end85.i_crit_edge258, %for.inc.6.i.do.end85.i_crit_edge259, %for.inc.6.i.do.end85.i_crit_edge260, %for.inc.6.i.do.end85.i_crit_edge261
  %arrayidx87.i = getelementptr i8, ptr %add.ptr191, i32 2
  %87 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx87.i, align 1
  %conv88.i = zext i8 %88 to i32
  %mul.i = mul nuw nsw i32 %conv88.i, 8000
  %89 = ptrtoint ptr %max_bitrate.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %mul.i, ptr %max_bitrate.i, align 4
  br label %hdmi_update_short_audio_desc.exit

do.end102.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx104.i = getelementptr i8, ptr %add.ptr191, i32 2
  %90 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx104.i, align 1
  %92 = and i8 %91, 7
  %and107.i = zext i8 %92 to i32
  %profile.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.0249, i32 5
  %93 = ptrtoint ptr %profile.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and107.i, ptr %profile.i, align 4
  br label %hdmi_update_short_audio_desc.exit

do.end117.i:                                      ; preds = %for.inc.6.i
  %arrayidx119.i = getelementptr i8, ptr %add.ptr191, i32 2
  %94 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx119.i, align 1
  %96 = lshr i8 %95, 3
  %97 = zext i8 %96 to i32
  %98 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %format.i, align 4
  %99 = add i8 %95, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -24, i8 %99)
  %100 = icmp ult i8 %99, -24
  br i1 %100, label %do.end133.i, label %if.else.i

do.end133.i:                                      ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.76, i32 noundef %97) #12
  %101 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %format.i, align 4
  br label %hdmi_update_short_audio_desc.exit

if.else.i:                                        ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #11
  %add139.i = add nuw nsw i32 %97, 14
  %102 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add139.i, ptr %format.i, align 4
  br label %hdmi_update_short_audio_desc.exit

hdmi_update_short_audio_desc.exit:                ; preds = %if.else.i, %do.end133.i, %do.end102.i, %do.end85.i, %if.then67.2.i, %for.inc73.1.i.hdmi_update_short_audio_desc.exit_crit_edge, %do.end44.i, %for.inc.6.i.hdmi_update_short_audio_desc.exit_crit_edge
  %103 = ptrtoint ptr %sad_count to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sad_count, align 4
  %cmp171 = icmp slt i32 %add174, %104
  br i1 %cmp171, label %hdmi_update_short_audio_desc.exit.for.body_crit_edge, label %hdmi_update_short_audio_desc.exit.for.end_crit_edge

hdmi_update_short_audio_desc.exit.for.end_crit_edge: ; preds = %hdmi_update_short_audio_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

hdmi_update_short_audio_desc.exit.for.body_crit_edge: ; preds = %hdmi_update_short_audio_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %hdmi_update_short_audio_desc.exit.for.end_crit_edge, %if.else164.for.end_crit_edge
  %105 = ptrtoint ptr %spk_alloc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %spk_alloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not = icmp eq i32 %106, 0
  br i1 %tobool.not, label %if.then193, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then193:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %spk_alloc to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 65535, ptr %spk_alloc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then193, %for.end.cleanup_crit_edge, %do.end182, %do.end161, %do.end153, %do.end14
  %retval.0 = phi i32 [ 0, %if.then193 ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %do.end182 ], [ -22, %do.end161 ], [ -22, %do.end153 ], [ -22, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hdmi_get_eld_size(ptr noundef %codec, i16 noundef zeroext %nid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3886, i32 noundef 8) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hdmi_get_eld(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef writeonly %buf, ptr nocapture noundef writeonly %eld_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3886, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp eq i32 %call.i.i, 0
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.14) #12
  br label %for.body.preheader

if.end:                                           ; preds = %entry
  %0 = add i32 %call.i.i, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -237, i32 %0)
  %1 = icmp ult i32 %0, -237
  br i1 %1, label %do.end6, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.for.body.preheader_crit_edge, %if.end.thread
  %size.075 = phi i32 [ 128, %if.end.thread ], [ %call.i.i, %if.end.for.body.preheader_crit_edge ]
  br label %for.body

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.17, i32 noundef %call.i.i) #12
  br label %cleanup35

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.071 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call.i.i58 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3887, i32 noundef %i.071) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i58)
  %tobool.not = icmp sgt i32 %call.i.i58, -1
  br i1 %tobool.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.20, i32 noundef %i.071) #12
  br label %cleanup35

if.end18:                                         ; preds = %for.body
  %and19 = and i32 %call.i.i58, 255
  %2 = or i32 %and19, %i.071
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %do.body23, label %for.inc

do.body23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_hdmi_get_eld.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_hdmi_get_eld, %if.then28)) #9
          to label %cleanup35 [label %if.then28], !srcloc !229

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_hdmi_get_eld.__UNIQUE_ID_ddebug290, ptr noundef %codec, ptr noundef nonnull @.str.23) #9
  br label %cleanup35

for.inc:                                          ; preds = %if.end18
  %conv = trunc i32 %call.i.i58 to i8
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.071
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %size.075
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %eld_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size.075, ptr %eld_size, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %for.end, %if.then28, %do.body23, %do.end15, %do.end6
  %retval.0 = phi i32 [ -34, %do.end6 ], [ 0, %for.end ], [ -22, %do.body23 ], [ -22, %do.end15 ], [ -22, %if.then28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_hdmi_show_eld(ptr noundef %codec, ptr noundef %e) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_hdmi_show_eld.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_hdmi_show_eld, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %monitor_name = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 3
  %conn_type = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 9
  %0 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conn_type, align 8
  %arrayidx = getelementptr [4 x ptr], ptr @eld_connection_type_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_hdmi_show_eld.__UNIQUE_ID_ddebug292, ptr noundef %codec, ptr noundef nonnull @.str.25, ptr noundef %monitor_name, ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spk_alloc = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 11
  %4 = ptrtoint ptr %spk_alloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spk_alloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.end.if.end26_crit_edge, label %if.then4

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #9
  %6 = call ptr @memset(ptr %buf, i32 255, i32 80)
  call void @snd_hdac_print_channel_allocation(i32 noundef %5, ptr noundef nonnull %buf, i32 noundef 80) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_hdmi_show_eld.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_hdmi_show_eld, %if.then19)) #9
          to label %do.end25 [label %if.then19], !srcloc !229

if.then19:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_hdmi_show_eld.__UNIQUE_ID_ddebug293, ptr noundef %codec, ptr noundef nonnull @.str.26, ptr noundef nonnull %buf) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %if.then4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #9
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %do.end.if.end26_crit_edge
  %sad_count = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 12
  %7 = ptrtoint ptr %sad_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sad_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp42 = icmp sgt i32 %8, 0
  br i1 %cmp42, label %for.body.lr.ph, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %sad = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.cea_sad, ptr %sad, i32 %i.043
  call fastcc void @hdmi_show_short_audio_desc(ptr noundef %codec, ptr noundef %add.ptr)
  %inc = add nuw nsw i32 %i.043, 1
  %9 = ptrtoint ptr %sad_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sad_count, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end26.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_print_channel_allocation(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_show_short_audio_desc(ptr noundef %codec, ptr nocapture noundef readonly %a) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  %buf2 = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf2) #9
  %1 = call ptr @memcpy(ptr %buf2, ptr @__const.hdmi_show_short_audio_desc.buf2, i32 24)
  %format = getelementptr inbounds %struct.cea_sad, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rates = getelementptr inbounds %struct.cea_sad, ptr %a, i32 0, i32 2
  %4 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rates, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %j.03.i = phi i32 [ 0, %if.end ], [ %j.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.01.i
  %and.i = and i32 %shl.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %j.03.i
  %sub.i = sub i32 80, %j.03.i
  %arrayidx.i = getelementptr [14 x i32], ptr @hdmi_print_pcm_rates.alsa_rates, i32 0, i32 %i.01.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.85, i32 noundef %7) #9
  %add.i = add i32 %call.i, %j.03.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %add.i, %if.then.i ], [ %j.03.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %hdmi_print_pcm_rates.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

hdmi_print_pcm_rates.exit:                        ; preds = %for.inc.i
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 %j.1.i
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx1.i, align 1
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %hdmi_print_pcm_rates.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sample_bits = getelementptr inbounds %struct.cea_sad, ptr %a, i32 0, i32 3
  %11 = ptrtoint ptr %sample_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sample_bits, align 4
  %add.ptr = getelementptr inbounds i8, ptr %buf2, i32 8
  call void @snd_print_pcm_bits(i32 noundef %12, ptr noundef %add.ptr, i32 noundef 16) #9
  br label %do.body

if.else:                                          ; preds = %hdmi_print_pcm_rates.exit
  %max_bitrate = getelementptr inbounds %struct.cea_sad, ptr %a, i32 0, i32 4
  %13 = ptrtoint ptr %max_bitrate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_bitrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf2, i32 noundef 24, ptr noundef nonnull @.str.82, i32 noundef %14)
  br label %do.body

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %buf2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %buf2, align 1
  br label %do.body

do.body:                                          ; preds = %if.else8, %if.then5, %if.then2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_show_short_audio_desc.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_show_short_audio_desc, %if.then15)) #9
          to label %cleanup [label %if.then15], !srcloc !229

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 4
  %arrayidx17 = getelementptr [18 x ptr], ptr @cea_audio_coding_type_names, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17, align 4
  %20 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %a, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_show_short_audio_desc.__UNIQUE_ID_ddebug291, ptr noundef %codec, ptr noundef nonnull @.str.84, ptr noundef %19, i32 noundef %21, ptr noundef nonnull %buf, ptr noundef nonnull %buf2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf2) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_hdmi_print_eld_info(ptr noundef %eld, ptr nocapture noundef readonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [80 x i8], align 1
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  %3 = ptrtoint ptr %eld to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eld, align 8, !range !230
  %5 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef %5) #9
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %eld_valid = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 1
  %8 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %eld_valid, align 1, !range !230
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef %10) #9
  %11 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %eld_valid, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %monitor_name = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.36, ptr noundef %monitor_name) #9
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %conn_type = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 9
  %17 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %conn_type, align 8
  %arrayidx = getelementptr [4 x ptr], ptr @eld_connection_type_names, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.37, ptr noundef %20) #9
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %eld_ver = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %eld_ver to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %eld_ver, align 4
  %arrayidx11 = getelementptr [32 x ptr], ptr @snd_hdmi_print_eld_info.eld_version_names, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.38, i32 noundef %24, ptr noundef %26) #9
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  %cea_edid_ver = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %cea_edid_ver to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cea_edid_ver, align 8
  %arrayidx14 = getelementptr [8 x ptr], ptr @snd_hdmi_print_eld_info.cea_edid_version_names, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.39, i32 noundef %30, ptr noundef %32) #9
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %manufacture_id = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %manufacture_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %manufacture_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.40, i32 noundef %36) #9
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  %product_id = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 5
  %39 = ptrtoint ptr %product_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %product_id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.41, i32 noundef %40) #9
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  %port_id = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 6
  %43 = ptrtoint ptr %port_id to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %port_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %42, ptr noundef nonnull @.str.42, i64 noundef %44) #9
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  %support_hdcp = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 7
  %47 = ptrtoint ptr %support_hdcp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %support_hdcp, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.43, i32 noundef %48) #9
  %49 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer, align 4
  %support_ai = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 8
  %51 = ptrtoint ptr %support_ai to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %support_ai, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %50, ptr noundef nonnull @.str.44, i32 noundef %52) #9
  %53 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer, align 4
  %aud_synch_delay = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 10
  %55 = ptrtoint ptr %aud_synch_delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %aud_synch_delay, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %54, ptr noundef nonnull @.str.45, i32 noundef %56) #9
  %spk_alloc = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 11
  %57 = ptrtoint ptr %spk_alloc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %spk_alloc, align 8
  call void @snd_hdac_print_channel_allocation(i32 noundef %58, ptr noundef nonnull %buf, i32 noundef 80) #9
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  %61 = ptrtoint ptr %spk_alloc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %spk_alloc, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.46, i32 noundef %62, ptr noundef nonnull %buf) #9
  %63 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer, align 4
  %sad_count = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 12
  %65 = ptrtoint ptr %sad_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sad_count, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %64, ptr noundef nonnull @.str.47, i32 noundef %66) #9
  %67 = ptrtoint ptr %sad_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sad_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp67 = icmp sgt i32 %68, 0
  br i1 %cmp67, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %sad = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 13
  br label %for.body

for.body:                                         ; preds = %hdmi_print_sad_info.exit.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %hdmi_print_sad_info.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.cea_sad, ptr %sad, i32 %i.068
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf.i) #9
  %69 = call ptr @memset(ptr %buf.i, i32 255, i32 80)
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 4
  %format.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.068, i32 1
  %72 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %format.i, align 4
  %arrayidx.i = getelementptr [18 x ptr], ptr @cea_audio_coding_type_names, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %71, ptr noundef nonnull @.str.104, i32 noundef %i.068, i32 noundef %73, ptr noundef %75) #9
  %76 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffer, align 4
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %77, ptr noundef nonnull @.str.105, i32 noundef %i.068, i32 noundef %79) #9
  %rates.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.068, i32 2
  %80 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rates.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body
  %j.03.i.i = phi i32 [ 0, %for.body ], [ %j.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.01.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 1, %i.01.i.i
  %and.i.i = and i32 %shl.i.i, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %buf.i, i32 %j.03.i.i
  %sub.i.i = sub i32 80, %j.03.i.i
  %arrayidx.i.i = getelementptr [14 x i32], ptr @hdmi_print_pcm_rates.alsa_rates, i32 0, i32 %i.01.i.i
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @.str.85, i32 noundef %83) #9
  %add.i.i = add i32 %call.i.i, %j.03.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %j.1.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %j.03.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 14
  br i1 %exitcond.not.i.i, label %hdmi_print_pcm_rates.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

hdmi_print_pcm_rates.exit.i:                      ; preds = %for.inc.i.i
  %arrayidx1.i.i = getelementptr i8, ptr %buf.i, i32 %j.1.i.i
  %84 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %85 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %buffer, align 4
  %87 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rates.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %86, ptr noundef nonnull @.str.106, i32 noundef %i.068, i32 noundef %88, ptr noundef nonnull %buf.i) #9
  %89 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp.i = icmp eq i32 %90, 1
  br i1 %cmp.i, label %if.then.i, label %hdmi_print_pcm_rates.exit.i.if.end.i_crit_edge

hdmi_print_pcm_rates.exit.i.if.end.i_crit_edge:   ; preds = %hdmi_print_pcm_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %hdmi_print_pcm_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %sample_bits.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.068, i32 3
  %91 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sample_bits.i, align 4
  call void @snd_print_pcm_bits(i32 noundef %92, ptr noundef nonnull %buf.i, i32 noundef 80) #9
  %93 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %buffer, align 4
  %95 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sample_bits.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %94, ptr noundef nonnull @.str.107, i32 noundef %i.068, i32 noundef %96, ptr noundef nonnull %buf.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %hdmi_print_pcm_rates.exit.i.if.end.i_crit_edge
  %max_bitrate.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.068, i32 4
  %97 = ptrtoint ptr %max_bitrate.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_bitrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then12.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %100, ptr noundef nonnull @.str.108, i32 noundef %i.068, i32 noundef %98) #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end.i.if.end15.i_crit_edge
  %profile.i = getelementptr %struct.cea_sad, ptr %sad, i32 %i.068, i32 5
  %101 = ptrtoint ptr %profile.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %profile.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool16.not.i = icmp eq i32 %102, 0
  br i1 %tobool16.not.i, label %if.end15.i.hdmi_print_sad_info.exit_crit_edge, label %if.then17.i

if.end15.i.hdmi_print_sad_info.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hdmi_print_sad_info.exit

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %104, ptr noundef nonnull @.str.109, i32 noundef %i.068, i32 noundef %102) #9
  br label %hdmi_print_sad_info.exit

hdmi_print_sad_info.exit:                         ; preds = %if.then17.i, %if.end15.i.hdmi_print_sad_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf.i) #9
  %inc = add nuw nsw i32 %i.068, 1
  %105 = ptrtoint ptr %sad_count to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sad_count, align 4
  %cmp = icmp slt i32 %inc, %106
  br i1 %cmp, label %hdmi_print_sad_info.exit.for.body_crit_edge, label %hdmi_print_sad_info.exit.cleanup_crit_edge

hdmi_print_sad_info.exit.cleanup_crit_edge:       ; preds = %hdmi_print_sad_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

hdmi_print_sad_info.exit.for.body_crit_edge:      ; preds = %hdmi_print_sad_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %hdmi_print_sad_info.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_hdmi_write_eld_info(ptr nocapture noundef %eld, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %name = alloca [64 x i8], align 1
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #9
  %0 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #9
  %1 = call ptr @memset(ptr %name, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !231
  %call182 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool.not183 = icmp eq i32 %call182, 0
  br i1 %tobool.not183, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx = getelementptr inbounds [64 x i8], ptr %name, i32 0, i32 3
  %arrayidx62 = getelementptr inbounds [64 x i8], ptr %name, i32 0, i32 4
  %sad_count125 = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 12
  %spk_alloc = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 11
  %aud_synch_delay = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 10
  %support_ai = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 8
  %support_hdcp = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 7
  %port_id = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 6
  %conn_type = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 9
  %eld_valid = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.48, ptr noundef nonnull %name, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %name, ptr noundef nonnull dereferenceable(16) @.str.49, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool8 = icmp ne i64 %4, 0
  %frombool = zext i1 %tobool8 to i8
  %5 = ptrtoint ptr %eld to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %eld, align 8
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end
  %bcmp173 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %name, ptr noundef nonnull dereferenceable(10) @.str.50, i32 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp173)
  %tobool11.not = icmp eq i32 %bcmp173, 0
  br i1 %tobool11.not, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool13 = icmp ne i64 %7, 0
  %frombool14 = zext i1 %tobool13 to i8
  %8 = ptrtoint ptr %eld_valid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool14, ptr %eld_valid, align 1
  br label %while.cond.backedge

if.else15:                                        ; preds = %if.else
  %bcmp174 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %name, ptr noundef nonnull dereferenceable(16) @.str.51, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp174)
  %tobool18.not = icmp eq i32 %bcmp174, 0
  br i1 %tobool18.not, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %val, align 8
  %conv = trunc i64 %10 to i32
  %11 = ptrtoint ptr %conn_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %conn_type, align 8
  br label %while.cond.backedge

if.else20:                                        ; preds = %if.else15
  %bcmp175 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %name, ptr noundef nonnull dereferenceable(8) @.str.52, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp175)
  %tobool23.not = icmp eq i32 %bcmp175, 0
  br i1 %tobool23.not, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %val, align 8
  %14 = ptrtoint ptr %port_id to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %port_id, align 8
  br label %while.cond.backedge

if.else25:                                        ; preds = %if.else20
  %bcmp176 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %name, ptr noundef nonnull dereferenceable(13) @.str.53, i32 13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp176)
  %tobool28.not = icmp eq i32 %bcmp176, 0
  br i1 %tobool28.not, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %val, align 8
  %conv30 = trunc i64 %16 to i32
  %17 = ptrtoint ptr %support_hdcp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv30, ptr %support_hdcp, align 8
  br label %while.cond.backedge

if.else31:                                        ; preds = %if.else25
  %bcmp177 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %name, ptr noundef nonnull dereferenceable(11) @.str.54, i32 11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp177)
  %tobool34.not = icmp eq i32 %bcmp177, 0
  br i1 %tobool34.not, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %val, align 8
  %conv36 = trunc i64 %19 to i32
  %20 = ptrtoint ptr %support_ai to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv36, ptr %support_ai, align 4
  br label %while.cond.backedge

if.else37:                                        ; preds = %if.else31
  %bcmp178 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %name, ptr noundef nonnull dereferenceable(17) @.str.55, i32 17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp178)
  %tobool40.not = icmp eq i32 %bcmp178, 0
  br i1 %tobool40.not, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %val, align 8
  %conv42 = trunc i64 %22 to i32
  %23 = ptrtoint ptr %aud_synch_delay to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv42, ptr %aud_synch_delay, align 4
  br label %while.cond.backedge

if.else43:                                        ; preds = %if.else37
  %bcmp179 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %name, ptr noundef nonnull dereferenceable(9) @.str.56, i32 9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp179)
  %tobool46.not = icmp eq i32 %bcmp179, 0
  br i1 %tobool46.not, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %val, align 8
  %conv48 = trunc i64 %25 to i32
  %26 = ptrtoint ptr %spk_alloc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv48, ptr %spk_alloc, align 8
  br label %while.cond.backedge

if.else49:                                        ; preds = %if.else43
  %bcmp180 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %name, ptr noundef nonnull dereferenceable(10) @.str.57, i32 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp180)
  %tobool52.not = icmp eq i32 %bcmp180, 0
  br i1 %tobool52.not, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %val, align 8
  %conv54 = trunc i64 %28 to i32
  %29 = ptrtoint ptr %sad_count125 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv54, ptr %sad_count125, align 4
  br label %while.cond.backedge

if.else55:                                        ; preds = %if.else49
  %bcmp181 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %name, ptr noundef nonnull dereferenceable(3) @.str.58, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp181)
  %tobool58.not = icmp eq i32 %bcmp181, 0
  br i1 %tobool58.not, label %if.then59, label %if.else55.while.cond.backedge_crit_edge

if.else55.while.cond.backedge_crit_edge:          ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then59:                                        ; preds = %if.else55
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv61 = zext i8 %31 to i32
  %sub = add nsw i32 %conv61, -48
  %32 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %33 to i32
  %34 = add i8 %33, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %34)
  %35 = icmp ult i8 %34, 10
  %mul = mul nsw i32 %sub, 10
  %add = add nsw i32 %conv63, -48
  %sub73 = add nsw i32 %add, %mul
  %sname.0.v = select i1 %35, i32 5, i32 4
  %sname.0 = getelementptr inbounds i8, ptr %name, i32 %sname.0.v
  %n.0 = select i1 %35, i32 %sub73, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %n.0)
  %cmp75 = icmp ugt i32 %n.0, 15
  br i1 %cmp75, label %if.then59.while.cond.backedge_crit_edge, label %if.end78

if.then59.while.cond.backedge_crit_edge:          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end78:                                         ; preds = %if.then59
  %call79 = call i32 @strcmp(ptr noundef %sname.0, ptr noundef nonnull dereferenceable(13) @.str.59) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then81, label %if.else84

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %val, align 8
  %conv82 = trunc i64 %37 to i32
  %format = getelementptr %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 13, i32 %n.0, i32 1
  %38 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv82, ptr %format, align 4
  br label %if.end124

if.else84:                                        ; preds = %if.end78
  %call85 = call i32 @strcmp(ptr noundef %sname.0, ptr noundef nonnull dereferenceable(10) @.str.60) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.else91

if.then87:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %val, align 8
  %conv88 = trunc i64 %40 to i32
  %arrayidx90 = getelementptr %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 13, i32 %n.0
  %41 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv88, ptr %arrayidx90, align 8
  br label %if.end124

if.else91:                                        ; preds = %if.else84
  %call92 = call i32 @strcmp(ptr noundef %sname.0, ptr noundef nonnull dereferenceable(7) @.str.61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then94, label %if.else98

if.then94:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %val, align 8
  %conv95 = trunc i64 %43 to i32
  %rates = getelementptr %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 13, i32 %n.0, i32 2
  %44 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv95, ptr %rates, align 8
  br label %if.end124

if.else98:                                        ; preds = %if.else91
  %call99 = call i32 @strcmp(ptr noundef %sname.0, ptr noundef nonnull dereferenceable(6) @.str.62) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %if.else105

if.then101:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %val, align 8
  %conv102 = trunc i64 %46 to i32
  %sample_bits = getelementptr %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 13, i32 %n.0, i32 3
  %47 = ptrtoint ptr %sample_bits to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv102, ptr %sample_bits, align 4
  br label %if.end124

if.else105:                                       ; preds = %if.else98
  %call106 = call i32 @strcmp(ptr noundef %sname.0, ptr noundef nonnull dereferenceable(13) @.str.63) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then108, label %if.else112

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %val, align 8
  %conv109 = trunc i64 %49 to i32
  %max_bitrate = getelementptr %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 13, i32 %n.0, i32 4
  %50 = ptrtoint ptr %max_bitrate to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv109, ptr %max_bitrate, align 8
  br label %if.end124

if.else112:                                       ; preds = %if.else105
  %call113 = call i32 @strcmp(ptr noundef %sname.0, ptr noundef nonnull dereferenceable(9) @.str.64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then115, label %if.else112.if.end124_crit_edge

if.else112.if.end124_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then115:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %val, align 8
  %conv116 = trunc i64 %52 to i32
  %profile = getelementptr %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 13, i32 %n.0, i32 5
  %53 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv116, ptr %profile, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then115, %if.else112.if.end124_crit_edge, %if.then108, %if.then101, %if.then94, %if.then87, %if.then81
  %54 = ptrtoint ptr %sad_count125 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sad_count125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0, i32 %55)
  %cmp126.not = icmp ult i32 %n.0, %55
  br i1 %cmp126.not, label %if.end124.while.cond.backedge_crit_edge, label %if.then128

if.end124.while.cond.backedge_crit_edge:          ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %add129 = add nuw nsw i32 %n.0, 1
  %56 = ptrtoint ptr %sad_count125 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add129, ptr %sad_count125, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then128, %if.end124.while.cond.backedge_crit_edge, %if.then59.while.cond.backedge_crit_edge, %if.else55.while.cond.backedge_crit_edge, %if.then53, %if.then47, %if.then41, %if.then35, %if.then29, %if.then24, %if.then19, %if.then12, %if.then7, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_hdmi_eld_update_pcm_info(ptr nocapture noundef readonly %e, ptr nocapture noundef %hinfo) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sad_count = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 12
  %0 = ptrtoint ptr %sad_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sad_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp65 = icmp sgt i32 %1, 0
  br i1 %cmp65, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %entry.for.body_crit_edge
  %rates.071 = phi i32 [ %or, %if.end21.for.body_crit_edge ], [ 224, %entry.for.body_crit_edge ]
  %formats.070 = phi i64 [ %formats.2, %if.end21.for.body_crit_edge ], [ 4, %entry.for.body_crit_edge ]
  %i.068 = phi i32 [ %inc, %if.end21.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %channels_max.067 = phi i32 [ %6, %if.end21.for.body_crit_edge ], [ 2, %entry.for.body_crit_edge ]
  %maxbps.066 = phi i32 [ %maxbps.2, %if.end21.for.body_crit_edge ], [ 16, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 13, i32 %i.068
  %rates1 = getelementptr %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 13, i32 %i.068, i32 2
  %2 = ptrtoint ptr %rates1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rates1, align 4
  %or = or i32 %3, %rates.071
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %channels_max.067)
  %format = getelementptr %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 13, i32 %i.068, i32 1
  %7 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %if.then5, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sample_bits = getelementptr %struct.parsed_hdmi_eld, ptr %e, i32 0, i32 13, i32 %i.068, i32 3
  %9 = ptrtoint ptr %sample_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sample_bits, align 4
  %and = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or7 = or i64 %formats.070, 1024
  %11 = tail call i32 @llvm.umax.i32(i32 %maxbps.066, i32 20)
  %maxbps.1 = select i1 %tobool.not, i32 %maxbps.066, i32 %11
  %and13 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select63 = select i1 %tobool14.not, i32 %maxbps.1, i32 24
  %12 = and i32 %10, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  %spec.select64 = select i1 %13, i64 %formats.070, i64 %or7
  br label %if.end21

if.end21:                                         ; preds = %if.then5, %for.body.if.end21_crit_edge
  %maxbps.2 = phi i32 [ %maxbps.066, %for.body.if.end21_crit_edge ], [ %spec.select63, %if.then5 ]
  %formats.2 = phi i64 [ %formats.070, %for.body.if.end21_crit_edge ], [ %spec.select64, %if.then5 ]
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %entry.for.end_crit_edge
  %maxbps.0.lcssa = phi i32 [ 16, %entry.for.end_crit_edge ], [ %maxbps.2, %if.end21.for.end_crit_edge ]
  %channels_max.0.lcssa = phi i32 [ 2, %entry.for.end_crit_edge ], [ %6, %if.end21.for.end_crit_edge ]
  %formats.0.lcssa = phi i64 [ 4, %entry.for.end_crit_edge ], [ %formats.2, %if.end21.for.end_crit_edge ]
  %rates.0.lcssa = phi i32 [ 224, %entry.for.end_crit_edge ], [ %or, %if.end21.for.end_crit_edge ]
  %rates22 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 4
  %14 = ptrtoint ptr %rates22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rates22, align 8
  %and23 = and i32 %15, %rates.0.lcssa
  store i32 %and23, ptr %rates22, align 8
  %formats24 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 5
  %16 = ptrtoint ptr %formats24 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %formats24, align 8
  %and25 = and i64 %17, %formats.0.lcssa
  store i64 %and25, ptr %formats24, align 8
  %maxbps26 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 6
  %18 = ptrtoint ptr %maxbps26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxbps26, align 8
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %maxbps.0.lcssa)
  %21 = ptrtoint ptr %maxbps26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %maxbps26, align 8
  %channels_max29 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 2
  %22 = ptrtoint ptr %channels_max29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels_max29, align 8
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %channels_max.0.lcssa)
  %25 = ptrtoint ptr %channels_max29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %channels_max29, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hdmi_get_eld_ati(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef %buf, ptr nocapture noundef writeonly %eld_size, i1 noundef zeroext %rev3_or_later) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3952, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.65) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 83)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %buf, align 1
  %3 = trunc i32 %call.i to i8
  %conv = and i8 %3, 127
  %arrayidx1 = getelementptr i8, ptr %buf, i32 7
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx1, align 1
  %and2 = and i32 %call.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4 = getelementptr i8, ptr %buf, i32 5
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %7 = or i8 %6, 4
  store i8 %7, ptr %arrayidx4, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  br i1 %rev3_or_later, label %if.then9, label %if.end7.if.end55.peel_crit_edge

if.end7.if.end55.peel_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.peel

if.then9:                                         ; preds = %if.end7
  %call.i262 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1920, i32 noundef 3) #9
  %call.i263 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %call.i263) #9
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %add.ptr, align 1
  %call.i264 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1920, i32 noundef 4) #9
  %call.i265 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #9
  %add.ptr14 = getelementptr i8, ptr %buf, i32 12
  %10 = tail call i32 @llvm.bswap.i32(i32 %call.i265) #9
  %11 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %add.ptr14, align 1
  %call.i266 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1920, i32 noundef 0) #9
  %call.i267 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #9
  %conv17 = trunc i32 %call.i267 to i16
  %add.ptr18 = getelementptr i8, ptr %buf, i32 16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv17) #9
  %13 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %add.ptr18, align 1
  %call.i268 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1920, i32 noundef 1) #9
  %call.i269 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #9
  %conv21 = trunc i32 %call.i269 to i16
  %add.ptr22 = getelementptr i8, ptr %buf, i32 18
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv21) #9
  %15 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %add.ptr22, align 1
  %call.i270 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1920, i32 noundef 2) #9
  %call.i271 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i271)
  %cmp25 = icmp sgt i32 %call.i271, 16
  br i1 %cmp25, label %if.end33.thread, label %if.end33

if.end33.thread:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.68, i32 noundef %call.i271) #12
  %arrayidx34286 = getelementptr i8, ptr %buf, i32 4
  %16 = ptrtoint ptr %arrayidx34286 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx34286, align 1
  %conv37287 = or i8 %17, 16
  store i8 %conv37287, ptr %arrayidx34286, align 1
  br label %for.body.preheader

if.end33:                                         ; preds = %if.then9
  %arrayidx34 = getelementptr i8, ptr %buf, i32 4
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 1
  %20 = trunc i32 %call.i271 to i8
  %conv37 = or i8 %19, %20
  store i8 %conv37, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %cmp38277 = icmp sgt i32 %call.i271, 0
  br i1 %cmp38277, label %if.end33.for.body.preheader_crit_edge, label %if.end33.if.end55.peel_crit_edge

if.end33.if.end55.peel_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.peel

if.end33.for.body.preheader_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end33.for.body.preheader_crit_edge, %if.end33.thread
  %sink_desc_len.0289 = phi i32 [ 16, %if.end33.thread ], [ %call.i271, %if.end33.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0279 = phi i32 [ %inc44, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pos.0278 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 20, %for.body.preheader ]
  %add = add nuw nsw i32 %i.0279, 5
  %call.i272 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1920, i32 noundef %add) #9
  %call.i273 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #9
  %conv42 = trunc i32 %call.i273 to i8
  %inc = add nuw nsw i32 %pos.0278, 1
  %arrayidx43 = getelementptr i8, ptr %buf, i32 %pos.0278
  %21 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv42, ptr %arrayidx43, align 1
  %inc44 = add nuw nsw i32 %i.0279, 1
  %exitcond.not = icmp eq i32 %inc44, %sink_desc_len.0289
  br i1 %exitcond.not, label %for.body.if.end55.peel_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end55.peel_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.peel

if.end55.peel:                                    ; preds = %for.body.if.end55.peel_crit_edge, %if.end33.if.end55.peel_crit_edge, %if.end7.if.end55.peel_crit_edge
  %sink_desc_len.1 = phi i32 [ 0, %if.end7.if.end55.peel_crit_edge ], [ %call.i271, %if.end33.if.end55.peel_crit_edge ], [ %sink_desc_len.0289, %for.body.if.end55.peel_crit_edge ]
  %pos.1 = phi i32 [ 20, %if.end7.if.end55.peel_crit_edge ], [ 20, %if.end33.if.end55.peel_crit_edge ], [ %inc, %for.body.if.end55.peel_crit_edge ]
  %call.i274.peel = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1910, i32 noundef 8) #9
  %call.i275.peel = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3958, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i275.peel)
  %cmp58.peel = icmp slt i32 %call.i275.peel, 1
  br i1 %cmp58.peel, label %if.end55.peel.for.body49.preheader_crit_edge, label %if.end61.peel

if.end55.peel.for.body49.preheader_crit_edge:     ; preds = %if.end55.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49.preheader

if.end61.peel:                                    ; preds = %if.end55.peel
  %and62.peel = and i32 %call.i275.peel, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.peel)
  %tobool63.not.peel = icmp eq i32 %and62.peel, 0
  br i1 %tobool63.not.peel, label %if.end61.peel.land.lhs.true.peel_crit_edge, label %if.then64.peel

if.end61.peel.land.lhs.true.peel_crit_edge:       ; preds = %if.end61.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.peel

if.then64.peel:                                   ; preds = %if.end61.peel
  call void @__sanitizer_cov_trace_pc() #11
  %conv66.peel = trunc i32 %call.i275.peel to i8
  %inc67.peel = add i32 %pos.1, 1
  %arrayidx68.peel = getelementptr i8, ptr %buf, i32 %pos.1
  %22 = ptrtoint ptr %arrayidx68.peel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv66.peel, ptr %arrayidx68.peel, align 1
  %23 = lshr exact i32 %and62.peel, 8
  %conv71.peel = trunc i32 %23 to i8
  %inc72.peel = add i32 %pos.1, 2
  %arrayidx73.peel = getelementptr i8, ptr %buf, i32 %inc67.peel
  %24 = ptrtoint ptr %arrayidx73.peel to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv71.peel, ptr %arrayidx73.peel, align 1
  %and74.peel = lshr i32 %call.i275.peel, 16
  %conv76.peel = trunc i32 %and74.peel to i8
  %inc77.peel = add i32 %pos.1, 3
  %arrayidx78.peel = getelementptr i8, ptr %buf, i32 %inc72.peel
  %25 = ptrtoint ptr %arrayidx78.peel to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv76.peel, ptr %arrayidx78.peel, align 1
  br label %land.lhs.true.peel

land.lhs.true.peel:                               ; preds = %if.then64.peel, %if.end61.peel.land.lhs.true.peel_crit_edge
  %pos.3.peel = phi i32 [ %inc77.peel, %if.then64.peel ], [ %pos.1, %if.end61.peel.land.lhs.true.peel_crit_edge ]
  %and82.peel = and i32 %call.i275.peel, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.peel)
  %tobool83.not.peel = icmp eq i32 %and82.peel, 0
  %shr86.peel = lshr exact i32 %and82.peel, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr86.peel, i32 %and62.peel)
  %cmp88.not.peel = icmp eq i32 %shr86.peel, %and62.peel
  %or.cond.peel = select i1 %tobool83.not.peel, i1 true, i1 %cmp88.not.peel
  br i1 %or.cond.peel, label %land.lhs.true.peel.for.body49.preheader_crit_edge, label %if.then90.peel

land.lhs.true.peel.for.body49.preheader_crit_edge: ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49.preheader

if.then90.peel:                                   ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #11
  %26 = trunc i32 %call.i275.peel to i8
  %27 = and i8 %26, -8
  %conv94.peel = or i8 %27, 1
  %inc95.peel = add i32 %pos.3.peel, 1
  %arrayidx96.peel = getelementptr i8, ptr %buf, i32 %pos.3.peel
  %28 = ptrtoint ptr %arrayidx96.peel to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv94.peel, ptr %arrayidx96.peel, align 1
  %shr98.peel = lshr i32 %call.i275.peel, 24
  %conv99.peel = trunc i32 %shr98.peel to i8
  %inc100.peel = add i32 %pos.3.peel, 2
  %arrayidx101.peel = getelementptr i8, ptr %buf, i32 %inc95.peel
  %29 = ptrtoint ptr %arrayidx101.peel to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv99.peel, ptr %arrayidx101.peel, align 1
  %and102.peel = lshr i32 %call.i275.peel, 16
  %conv104.peel = trunc i32 %and102.peel to i8
  %inc105.peel = add i32 %pos.3.peel, 3
  %arrayidx106.peel = getelementptr i8, ptr %buf, i32 %inc100.peel
  %30 = ptrtoint ptr %arrayidx106.peel to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv104.peel, ptr %arrayidx106.peel, align 1
  br label %for.body49.preheader

for.body49.preheader:                             ; preds = %if.then90.peel, %land.lhs.true.peel.for.body49.preheader_crit_edge, %if.end55.peel.for.body49.preheader_crit_edge
  %pos.2280.ph = phi i32 [ %inc105.peel, %if.then90.peel ], [ %pos.3.peel, %land.lhs.true.peel.for.body49.preheader_crit_edge ], [ %pos.1, %if.end55.peel.for.body49.preheader_crit_edge ]
  br label %for.body49

for.body49:                                       ; preds = %for.inc108.for.body49_crit_edge, %for.body49.preheader
  %i.1281 = phi i32 [ %inc109, %for.inc108.for.body49_crit_edge ], [ 2, %for.body49.preheader ]
  %pos.2280 = phi i32 [ %pos.4, %for.inc108.for.body49_crit_edge ], [ %pos.2280.ph, %for.body49.preheader ]
  %31 = zext i32 %i.1281 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %i.1281, label %if.end55 [
    i32 9, label %for.body49.for.inc108_crit_edge
    i32 13, label %for.body49.for.inc108_crit_edge290
  ]

for.body49.for.inc108_crit_edge290:               ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108

for.body49.for.inc108_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108

if.end55:                                         ; preds = %for.body49
  %shl = shl i32 %i.1281, 3
  %call.i274 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1910, i32 noundef %shl) #9
  %call.i275 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3958, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i275)
  %cmp58 = icmp slt i32 %call.i275, 1
  br i1 %cmp58, label %if.end55.for.inc108_crit_edge, label %if.end61

if.end55.for.inc108_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108

if.end61:                                         ; preds = %if.end55
  %and62 = and i32 %call.i275, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.for.inc108_crit_edge, label %if.then64

if.end61.for.inc108_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %conv66 = trunc i32 %call.i275 to i8
  %inc67 = add i32 %pos.2280, 1
  %arrayidx68 = getelementptr i8, ptr %buf, i32 %pos.2280
  %32 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv66, ptr %arrayidx68, align 1
  %33 = lshr exact i32 %and62, 8
  %conv71 = trunc i32 %33 to i8
  %inc72 = add i32 %pos.2280, 2
  %arrayidx73 = getelementptr i8, ptr %buf, i32 %inc67
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv71, ptr %arrayidx73, align 1
  %and74 = lshr i32 %call.i275, 16
  %conv76 = trunc i32 %and74 to i8
  %inc77 = add i32 %pos.2280, 3
  %arrayidx78 = getelementptr i8, ptr %buf, i32 %inc72
  %35 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv76, ptr %arrayidx78, align 1
  br label %for.inc108

for.inc108:                                       ; preds = %if.then64, %if.end61.for.inc108_crit_edge, %if.end55.for.inc108_crit_edge, %for.body49.for.inc108_crit_edge, %for.body49.for.inc108_crit_edge290
  %pos.4 = phi i32 [ %pos.2280, %for.body49.for.inc108_crit_edge ], [ %pos.2280, %if.end55.for.inc108_crit_edge ], [ %pos.2280, %for.body49.for.inc108_crit_edge290 ], [ %inc77, %if.then64 ], [ %pos.2280, %if.end61.for.inc108_crit_edge ]
  %inc109 = add nuw nsw i32 %i.1281, 1
  %exitcond283.not = icmp eq i32 %inc109, 15
  br i1 %exitcond283.not, label %for.end110, label %for.inc108.for.body49_crit_edge, !llvm.loop !232

for.inc108.for.body49_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49

for.end110:                                       ; preds = %for.inc108
  %add111 = add i32 %sink_desc_len.1, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.4, i32 %add111)
  %cmp112 = icmp eq i32 %pos.4, %add111
  br i1 %cmp112, label %do.end117, label %if.end120

do.end117:                                        ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.71) #12
  br label %cleanup

if.end120:                                        ; preds = %for.end110
  %call.i276 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3963, i32 noundef 0) #9
  %and122 = and i32 %call.i276, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end120.if.end143_crit_edge, label %land.lhs.true124

if.end120.if.end143_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

land.lhs.true124:                                 ; preds = %if.end120
  %and125 = and i32 %call.i276, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %land.lhs.true124.if.end143_crit_edge, label %if.then127

land.lhs.true124.if.end143_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then127:                                       ; preds = %land.lhs.true124
  %36 = lshr exact i32 %and125, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %and122)
  %cmp131 = icmp ult i32 %and122, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 64512, i32 %and125)
  %cmp134 = icmp ult i32 %and125, 64512
  %or.cond260 = and i1 %cmp131, %cmp134
  call void @__sanitizer_cov_trace_cmp4(i32 %and122, i32 %36)
  %cmp137 = icmp ugt i32 %and122, %36
  %or.cond261 = select i1 %or.cond260, i1 %cmp137, i1 false
  br i1 %or.cond261, label %if.then139, label %if.then127.if.end143_crit_edge

if.then127.if.end143_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then139:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub nuw i32 %call.i276, %36
  %conv140 = trunc i32 %sub to i8
  %arrayidx141 = getelementptr i8, ptr %buf, i32 6
  %37 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv140, ptr %arrayidx141, align 1
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %if.then127.if.end143_crit_edge, %land.lhs.true124.if.end143_crit_edge, %if.end120.if.end143_crit_edge
  %sub144 = sub i32 -20, %sink_desc_len.1
  %sub145 = add i32 %sub144, %pos.4
  %div = sdiv i32 %sub145, 3
  %arrayidx147 = getelementptr i8, ptr %buf, i32 5
  %38 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx147, align 1
  %div.tr = trunc i32 %div to i8
  %40 = shl i8 %div.tr, 4
  %conv150 = or i8 %39, %40
  store i8 %conv150, ptr %arrayidx147, align 1
  %sub151 = add i32 %pos.4, -1
  %or152 = or i32 %sub151, 3
  %add153 = add i32 %or152, 1
  %41 = and i32 %sub151, -4
  %div155 = sdiv i32 %41, 4
  %conv156 = trunc i32 %div155 to i8
  %arrayidx157 = getelementptr i8, ptr %buf, i32 2
  %42 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv156, ptr %arrayidx157, align 1
  %43 = ptrtoint ptr %eld_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add153, ptr %eld_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %do.end117, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end117 ], [ 0, %if.end143 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_print_pcm_bits(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/hda_eld.c", i32 234, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_hdmi_parse_eld._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_hdmi_parse_eld._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/hda/hda_eld.c", i32 257, i32 3}
!10 = !{ptr @snd_hdmi_parse_eld._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_hdmi_parse_eld._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/hda/hda_eld.c", i32 260, i32 3}
!14 = !{ptr @snd_hdmi_parse_eld._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @snd_hdmi_parse_eld._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/hda/hda_eld.c", i32 267, i32 4}
!18 = !{ptr @snd_hdmi_parse_eld._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @snd_hdmi_parse_eld._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/hda/hda_eld.c", i32 309, i32 3}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @snd_hdmi_get_eld._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @snd_hdmi_get_eld._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/hda/hda_eld.c", i32 313, i32 3}
!27 = !{ptr @snd_hdmi_get_eld._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @snd_hdmi_get_eld._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/hda/hda_eld.c", i32 325, i32 4}
!31 = !{ptr @snd_hdmi_get_eld._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @snd_hdmi_get_eld._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/hda/hda_eld.c", i32 337, i32 4}
!35 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @snd_hdmi_get_eld.__UNIQUE_ID_ddebug290, !34, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/hda/hda_eld.c", i32 400, i32 2}
!39 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @snd_hdmi_show_eld.__UNIQUE_ID_ddebug292, !38, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/hda/hda_eld.c", i32 407, i32 3}
!43 = !{ptr @snd_hdmi_show_eld.__UNIQUE_ID_ddebug293, !42, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/hda/hda_eld.c", i32 449, i32 3}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/hda/hda_eld.c", i32 451, i32 3}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/hda/hda_eld.c", i32 453, i32 10}
!50 = !{ptr @snd_hdmi_print_eld_info.eld_version_names, !51, !"eld_version_names", i1 false, i1 false}
!51 = !{!"../sound/pci/hda/hda_eld.c", i32 448, i32 28}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/hda/hda_eld.c", i32 456, i32 3}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/hda/hda_eld.c", i32 457, i32 3}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/hda/hda_eld.c", i32 458, i32 3}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/hda/hda_eld.c", i32 459, i32 3}
!60 = !{ptr @snd_hdmi_print_eld_info.cea_edid_version_names, !61, !"cea_edid_version_names", i1 false, i1 false}
!61 = !{!"../sound/pci/hda/hda_eld.c", i32 455, i32 28}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/hda/hda_eld.c", i32 463, i32 2}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/hda/hda_eld.c", i32 464, i32 2}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/hda/hda_eld.c", i32 467, i32 2}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/hda/hda_eld.c", i32 468, i32 2}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/hda/hda_eld.c", i32 470, i32 2}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/hda/hda_eld.c", i32 472, i32 2}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/hda/hda_eld.c", i32 474, i32 2}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/hda/hda_eld.c", i32 475, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/hda/hda_eld.c", i32 476, i32 2}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/hda/hda_eld.c", i32 477, i32 2}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/hda/hda_eld.c", i32 478, i32 2}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/hda/hda_eld.c", i32 479, i32 2}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/hda/hda_eld.c", i32 482, i32 2}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/hda/hda_eld.c", i32 484, i32 2}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/hda/hda_eld.c", i32 501, i32 20}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/hda/hda_eld.c", i32 508, i32 21}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/hda/hda_eld.c", i32 510, i32 26}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/hda/hda_eld.c", i32 512, i32 26}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/hda/hda_eld.c", i32 514, i32 26}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/hda/hda_eld.c", i32 516, i32 26}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/hda/hda_eld.c", i32 518, i32 26}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/hda/hda_eld.c", i32 520, i32 26}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/hda/hda_eld.c", i32 522, i32 26}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/hda/hda_eld.c", i32 524, i32 26}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/hda/hda_eld.c", i32 526, i32 27}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/hda/hda_eld.c", i32 535, i32 23}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/hda/hda_eld.c", i32 537, i32 28}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/hda/hda_eld.c", i32 539, i32 28}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/hda/hda_eld.c", i32 541, i32 28}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/hda/hda_eld.c", i32 543, i32 28}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/hda/hda_eld.c", i32 545, i32 28}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/hda/hda_eld.c", i32 644, i32 3}
!126 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @snd_hdmi_get_eld_ati._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @snd_hdmi_get_eld_ati._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/hda/hda_eld.c", i32 685, i32 4}
!131 = !{ptr @snd_hdmi_get_eld_ati._entry.67, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @snd_hdmi_get_eld_ati._entry_ptr.69, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/hda/hda_eld.c", i32 727, i32 3}
!135 = !{ptr @snd_hdmi_get_eld_ati._entry.70, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @snd_hdmi_get_eld_ati._entry_ptr.72, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/hda/hda_eld.c", i32 166, i32 3}
!139 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @hdmi_update_short_audio_desc._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @hdmi_update_short_audio_desc._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/hda/hda_eld.c", i32 210, i32 4}
!144 = !{ptr @hdmi_update_short_audio_desc._entry.75, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @hdmi_update_short_audio_desc._entry_ptr.77, !143, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"cea_sampling_frequencies", i1 false, i1 false}
!147 = !{!"../sound/pci/hda/hda_eld.c", i32 111, i32 18}
!148 = distinct !{null, !149, !"cea_sample_sizes", i1 false, i1 false}
!149 = !{!"../sound/pci/hda/hda_eld.c", i32 101, i32 18}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/hda/hda_eld.c", i32 34, i32 2}
!152 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/hda/hda_eld.c", i32 35, i32 2}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/hda/hda_eld.c", i32 36, i32 2}
!156 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/hda/hda_eld.c", i32 37, i32 2}
!158 = !{ptr @eld_connection_type_names, !159, !"eld_connection_type_names", i1 false, i1 false}
!159 = !{!"../sound/pci/hda/hda_eld.c", i32 33, i32 27}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/hda/hda_eld.c", i32 386, i32 5}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/hda/hda_eld.c", i32 390, i32 2}
!164 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @hdmi_show_short_audio_desc.__UNIQUE_ID_ddebug291, !163, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!166 = !{ptr @hdmi_print_pcm_rates.alsa_rates, !167, !"alsa_rates", i1 false, i1 false}
!167 = !{!"../sound/pci/hda/hda_eld.c", i32 355, i32 28}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/hda/hda_eld.c", i32 363, i32 41}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/hda/hda_eld.c", i32 72, i32 11}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/hda/hda_eld.c", i32 73, i32 11}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/hda/hda_eld.c", i32 74, i32 11}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/hda/hda_eld.c", i32 75, i32 11}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/hda/hda_eld.c", i32 76, i32 11}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/hda/hda_eld.c", i32 77, i32 11}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/hda/hda_eld.c", i32 78, i32 11}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/hda/hda_eld.c", i32 79, i32 11}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/hda/hda_eld.c", i32 80, i32 11}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/hda/hda_eld.c", i32 81, i32 11}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/hda/hda_eld.c", i32 82, i32 11}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/hda/hda_eld.c", i32 83, i32 11}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/hda/hda_eld.c", i32 84, i32 11}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/hda/hda_eld.c", i32 85, i32 11}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/hda/hda_eld.c", i32 86, i32 11}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/hda/hda_eld.c", i32 87, i32 11}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/hda/hda_eld.c", i32 88, i32 11}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/hda/hda_eld.c", i32 89, i32 11}
!206 = !{ptr @cea_audio_coding_type_names, !207, !"cea_audio_coding_type_names", i1 false, i1 false}
!207 = !{!"../sound/pci/hda/hda_eld.c", i32 71, i32 27}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/hda/hda_eld.c", i32 421, i32 2}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/hda/hda_eld.c", i32 423, i32 2}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/hda/hda_eld.c", i32 426, i32 2}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/hda/hda_eld.c", i32 430, i32 3}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/hda/hda_eld.c", i32 435, i32 3}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/hda/hda_eld.c", i32 439, i32 3}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!229 = !{i64 2148221200, i64 2148221205, i64 2148221218, i64 2148221262, i64 2148221296, i64 2148221317}
!230 = !{i8 0, i8 2}
!231 = !{!"auto-init"}
!232 = distinct !{!232, !233}
!233 = !{!"llvm.loop.peeled.count", i32 1}
