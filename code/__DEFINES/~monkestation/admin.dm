///Sends all admins the chosen sound
#define SEND_ADMINS_NOTFICATION_SOUND(sound_to_play) for(var/client/X in GLOB.admins){X << sound(sound_to_play);}
///Sends a message in adminchat
#define SEND_ADMINCHAT_MESSAGE(message) to_chat(GLOB.admins, type = MESSAGE_TYPE_ADMINCHAT, html = message, confidential = TRUE)
///Sends a message in adminchat with the chosen notfication sound
#define SEND_NOTFIED_ADMIN_MESSAGE(sound, message) SEND_ADMINS_NOTFICATION_SOUND(sound); SEND_ADMINCHAT_MESSAGE(message)

#define POLICY_DEATH			"Death"
#define POLICY_REVIVAL			"Revival"
#define POLICY_REVIVAL_CLONER	"Revival via Cloning"
